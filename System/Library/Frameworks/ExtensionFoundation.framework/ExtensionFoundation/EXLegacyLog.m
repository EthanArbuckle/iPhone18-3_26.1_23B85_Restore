@interface EXLegacyLog
@end

@implementation EXLegacyLog

uint64_t ___EXLegacyLog_block_invoke()
{
  _EXLegacyLog_log = os_log_create("com.apple.extensionkit", "NSExtension");

  return MEMORY[0x1EEE66BB8]();
}

@end