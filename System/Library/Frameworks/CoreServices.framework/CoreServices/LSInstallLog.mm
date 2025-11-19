@interface LSInstallLog
@end

@implementation LSInstallLog

void ___LSInstallLog_block_invoke()
{
  v0 = os_log_create("com.apple.launchservices", "appinstallation");
  v1 = _LSInstallLog_log;
  _LSInstallLog_log = v0;
}

@end