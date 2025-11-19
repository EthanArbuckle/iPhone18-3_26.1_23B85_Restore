@interface AAUILogSystem
@end

@implementation AAUILogSystem

uint64_t ___AAUILogSystem_block_invoke()
{
  _AAUILogSystem_log = os_log_create("com.apple.appleaccount", "ui");

  return MEMORY[0x1EEE66BB8]();
}

@end