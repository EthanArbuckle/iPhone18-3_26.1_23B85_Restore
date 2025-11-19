@interface AIDALogSystem
@end

@implementation AIDALogSystem

uint64_t ___AIDALogSystem_block_invoke()
{
  _AIDALogSystem_log = os_log_create("com.apple.appleaccount", "authentication");

  return MEMORY[0x1EEE66BB8]();
}

@end