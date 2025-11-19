@interface ACPLogSystem
@end

@implementation ACPLogSystem

uint64_t ___ACPLogSystem_block_invoke()
{
  _ACPLogSystem_log = os_log_create("com.apple.accounts", "persona");

  return MEMORY[0x1EEE66BB8]();
}

@end