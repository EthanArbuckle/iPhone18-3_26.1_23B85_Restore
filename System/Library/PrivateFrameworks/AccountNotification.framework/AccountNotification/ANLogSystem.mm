@interface ANLogSystem
@end

@implementation ANLogSystem

uint64_t ___ANLogSystem_block_invoke()
{
  _ANLogSystem_log = os_log_create("com.apple.and", "core");

  return MEMORY[0x2821F96F8]();
}

@end