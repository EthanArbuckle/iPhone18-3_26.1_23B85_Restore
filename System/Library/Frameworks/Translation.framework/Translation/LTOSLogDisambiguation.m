@interface LTOSLogDisambiguation
@end

@implementation LTOSLogDisambiguation

uint64_t ___LTOSLogDisambiguation_block_invoke()
{
  _LTOSLogDisambiguation_log = os_log_create("com.apple.Translation", "Disambiguation");

  return MEMORY[0x2821F96F8]();
}

@end