@interface AIDASOSLog
@end

@implementation AIDASOSLog

os_log_t ___AIDASOSLog_block_invoke()
{
  result = os_log_create("com.apple.AppleIDAuthSupport", "general");
  _AIDASOSLog_log = result;
  return result;
}

@end