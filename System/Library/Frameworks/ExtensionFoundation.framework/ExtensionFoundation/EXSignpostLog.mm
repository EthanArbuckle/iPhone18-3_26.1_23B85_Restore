@interface EXSignpostLog
@end

@implementation EXSignpostLog

uint64_t ___EXSignpostLog_block_invoke()
{
  _EXSignpostLog_log = os_log_create("com.apple.extensionkit", "signpost");

  return MEMORY[0x1EEE66BB8]();
}

@end