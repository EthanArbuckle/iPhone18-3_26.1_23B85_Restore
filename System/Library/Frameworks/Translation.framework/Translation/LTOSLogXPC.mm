@interface LTOSLogXPC
@end

@implementation LTOSLogXPC

uint64_t ___LTOSLogXPC_block_invoke()
{
  _LTOSLogXPC_log = os_log_create("com.apple.Translation", "XPC");

  return MEMORY[0x2821F96F8]();
}

@end