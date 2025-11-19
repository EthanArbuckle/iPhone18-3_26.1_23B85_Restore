@interface LTOSLogTextAPI
@end

@implementation LTOSLogTextAPI

uint64_t ___LTOSLogTextAPI_block_invoke()
{
  _LTOSLogTextAPI_log = os_log_create("com.apple.Translation", "TextAPI");

  return MEMORY[0x2821F96F8]();
}

@end