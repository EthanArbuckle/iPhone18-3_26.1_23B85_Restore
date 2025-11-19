@interface SLGetLogSystem
@end

@implementation SLGetLogSystem

uint64_t ___SLGetLogSystem_block_invoke()
{
  _SLGetLogSystem_log = os_log_create("com.apple.social", "core");

  return MEMORY[0x1EEE66BB8]();
}

@end