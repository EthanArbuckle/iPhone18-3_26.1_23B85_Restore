@interface ACLogSystem
@end

@implementation ACLogSystem

uint64_t ___ACLogSystem_block_invoke()
{
  _ACLogSystem_log = os_log_create("com.apple.accounts", "core");

  return MEMORY[0x1EEE66BB8]();
}

@end