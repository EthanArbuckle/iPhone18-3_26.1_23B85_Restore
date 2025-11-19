@interface AASignOutLogSystem
@end

@implementation AASignOutLogSystem

uint64_t ___AASignOutLogSystem_block_invoke()
{
  _AASignOutLogSystem_log = os_log_create("com.apple.appleaccount", "signout");

  return MEMORY[0x1EEE66BB8]();
}

@end