@interface AAUISignpostLogSystem
@end

@implementation AAUISignpostLogSystem

uint64_t ___AAUISignpostLogSystem_block_invoke()
{
  _AAUISignpostLogSystem_log = os_log_create("com.apple.appleaccount", "ui.signpost");

  return MEMORY[0x1EEE66BB8]();
}

@end