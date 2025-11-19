@interface LSProgressLog
@end

@implementation LSProgressLog

void ___LSProgressLog_block_invoke()
{
  v0 = os_log_create("com.apple.launchservices", "progress");
  v1 = _LSProgressLog_log;
  _LSProgressLog_log = v0;
}

@end