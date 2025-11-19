@interface ACDLogSystem
@end

@implementation ACDLogSystem

uint64_t ___ACDLogSystem_block_invoke()
{
  _ACDLogSystem_log = os_log_create("com.apple.accounts", "daemon");

  return MEMORY[0x2821F96F8]();
}

@end