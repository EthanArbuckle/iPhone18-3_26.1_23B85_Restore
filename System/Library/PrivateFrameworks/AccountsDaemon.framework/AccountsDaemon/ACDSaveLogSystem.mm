@interface ACDSaveLogSystem
@end

@implementation ACDSaveLogSystem

uint64_t ___ACDSaveLogSystem_block_invoke()
{
  _ACDSaveLogSystem_log = os_log_create("com.apple.accounts", "save");

  return MEMORY[0x2821F96F8]();
}

@end