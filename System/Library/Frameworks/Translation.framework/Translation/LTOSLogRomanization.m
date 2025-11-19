@interface LTOSLogRomanization
@end

@implementation LTOSLogRomanization

uint64_t ___LTOSLogRomanization_block_invoke()
{
  _LTOSLogRomanization_log = os_log_create("com.apple.Translation", "Romanization");

  return MEMORY[0x2821F96F8]();
}

@end