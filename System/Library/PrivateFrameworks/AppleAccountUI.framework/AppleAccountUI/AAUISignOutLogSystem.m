@interface AAUISignOutLogSystem
@end

@implementation AAUISignOutLogSystem

uint64_t ___AAUISignOutLogSystem_block_invoke()
{
  _AAUISignOutLogSystem_log = os_log_create("com.apple.appleaccount", "signout");

  return MEMORY[0x1EEE66BB8]();
}

@end