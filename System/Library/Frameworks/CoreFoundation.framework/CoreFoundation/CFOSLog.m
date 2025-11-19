@interface CFOSLog
@end

@implementation CFOSLog

os_log_t ___CFOSLog_block_invoke()
{
  result = os_log_create("com.apple.foundation", "general");
  _CFOSLog_logger = result;
  return result;
}

@end