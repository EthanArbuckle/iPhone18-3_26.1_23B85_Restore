@interface AASignpostLogSystem
@end

@implementation AASignpostLogSystem

uint64_t ___AASignpostLogSystem_block_invoke()
{
  _AASignpostLogSystem_log = os_log_create("com.apple.appleaccount", "signpost");

  return MEMORY[0x1EEE66BB8]();
}

@end