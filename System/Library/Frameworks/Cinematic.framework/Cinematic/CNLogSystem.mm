@interface CNLogSystem
@end

@implementation CNLogSystem

uint64_t ___CNLogSystem_block_invoke()
{
  _CNLogSystem_log = os_log_create("com.apple.portrait", "cinematic");

  return MEMORY[0x2821F96F8]();
}

@end