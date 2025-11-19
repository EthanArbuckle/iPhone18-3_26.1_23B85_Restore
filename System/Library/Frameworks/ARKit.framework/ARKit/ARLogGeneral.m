@interface ARLogGeneral
@end

@implementation ARLogGeneral

uint64_t ___ARLogGeneral_block_invoke()
{
  _ARLogGeneral_logObj = os_log_create("com.apple.ARKit", "General");

  return MEMORY[0x2821F96F8]();
}

@end