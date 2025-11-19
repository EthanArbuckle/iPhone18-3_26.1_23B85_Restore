@interface ACSignpostLogSystem
@end

@implementation ACSignpostLogSystem

uint64_t ___ACSignpostLogSystem_block_invoke()
{
  _ACSignpostLogSystem_log = os_log_create("com.apple.accounts", "signpost");

  return MEMORY[0x1EEE66BB8]();
}

@end