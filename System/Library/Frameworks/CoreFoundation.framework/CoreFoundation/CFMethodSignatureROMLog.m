@interface CFMethodSignatureROMLog
@end

@implementation CFMethodSignatureROMLog

os_log_t ___CFMethodSignatureROMLog_block_invoke()
{
  result = os_log_create("com.apple.foundation", "MethodSignatureROM");
  _CFMethodSignatureROMLog_logger = result;
  return result;
}

@end