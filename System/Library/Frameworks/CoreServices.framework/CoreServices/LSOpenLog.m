@interface LSOpenLog
@end

@implementation LSOpenLog

void ___LSOpenLog_block_invoke()
{
  v0 = os_log_create("com.apple.launchservices", "open");
  v1 = _LSOpenLog_result;
  _LSOpenLog_result = v0;
}

@end