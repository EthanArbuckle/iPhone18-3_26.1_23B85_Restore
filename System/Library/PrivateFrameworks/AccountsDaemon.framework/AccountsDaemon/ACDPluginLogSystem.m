@interface ACDPluginLogSystem
@end

@implementation ACDPluginLogSystem

uint64_t ___ACDPluginLogSystem_block_invoke()
{
  _ACDPluginLogSystem_log = os_log_create("com.apple.accounts", "plugin");

  return MEMORY[0x2821F96F8]();
}

@end