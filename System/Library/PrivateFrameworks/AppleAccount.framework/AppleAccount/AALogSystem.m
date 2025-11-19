@interface AALogSystem
@end

@implementation AALogSystem

uint64_t ___AALogSystem_block_invoke()
{
  _AALogSystem_log = os_log_create("com.apple.appleaccount", "log");

  return MEMORY[0x1EEE66BB8]();
}

@end