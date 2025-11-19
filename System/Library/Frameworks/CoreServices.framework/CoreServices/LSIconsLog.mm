@interface LSIconsLog
@end

@implementation LSIconsLog

void ___LSIconsLog_block_invoke()
{
  v0 = os_log_create("com.apple.launchservices", "icons");
  v1 = _LSIconsLog_log;
  _LSIconsLog_log = v0;
}

@end