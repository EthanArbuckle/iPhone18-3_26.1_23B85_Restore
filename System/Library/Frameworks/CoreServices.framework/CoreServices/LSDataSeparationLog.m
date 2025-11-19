@interface LSDataSeparationLog
@end

@implementation LSDataSeparationLog

void ___LSDataSeparationLog_block_invoke()
{
  v0 = os_log_create("com.apple.launchservices", "datasep");
  v1 = _LSDataSeparationLog_log;
  _LSDataSeparationLog_log = v0;
}

@end