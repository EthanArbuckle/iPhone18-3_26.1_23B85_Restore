@interface AAFLogSystem
@end

@implementation AAFLogSystem

uint64_t ___AAFLogSystem_block_invoke()
{
  _AAFLogSystem_log = os_log_create("com.apple.aaafoundation", "log");

  return MEMORY[0x1EEE66BB8]();
}

@end