require 'chefspec'

describe 'my_cookbook::default' do
  let(:chef_run) {
    ChefSpec::Runner.new(
      platform: 'ubuntu', version: '12.04'
    ).converge(described_recipe)
  }

  it 'creates a greetings file, containing the platform name' do
    chef_run.should touch_template('/tmp/greeting.txt')
  end
end

