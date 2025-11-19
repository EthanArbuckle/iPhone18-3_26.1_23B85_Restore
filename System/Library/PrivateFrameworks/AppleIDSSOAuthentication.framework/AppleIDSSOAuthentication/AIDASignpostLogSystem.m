@interface AIDASignpostLogSystem
@end

@implementation AIDASignpostLogSystem

uint64_t ___AIDASignpostLogSystem_block_invoke()
{
  _AIDASignpostLogSystem_log = os_log_create("com.apple.appleidauthentication", "signpost");

  return MEMORY[0x1EEE66BB8]();
}

@end