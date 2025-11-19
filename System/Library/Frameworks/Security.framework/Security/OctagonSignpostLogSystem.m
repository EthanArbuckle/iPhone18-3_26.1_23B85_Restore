@interface OctagonSignpostLogSystem
@end

@implementation OctagonSignpostLogSystem

uint64_t ___OctagonSignpostLogSystem_block_invoke()
{
  _OctagonSignpostLogSystem_log = os_log_create("com.apple.security.signposts", "signpost");

  return MEMORY[0x1EEE66BB8]();
}

@end