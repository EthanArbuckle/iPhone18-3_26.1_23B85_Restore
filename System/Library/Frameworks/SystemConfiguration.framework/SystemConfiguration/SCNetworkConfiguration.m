@interface SCNetworkConfiguration
@end

@implementation SCNetworkConfiguration

void __avoid_SCNetworkConfiguration_deadlock_block_invoke()
{
  v1 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  __wait_for_PreferencesMonitor();
}

@end