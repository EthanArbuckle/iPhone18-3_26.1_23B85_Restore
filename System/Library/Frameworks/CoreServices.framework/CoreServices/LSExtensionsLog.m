@interface LSExtensionsLog
@end

@implementation LSExtensionsLog

void ___LSExtensionsLog_block_invoke()
{
  v0 = os_log_create("com.apple.launchservices", "extensions");
  v1 = _LSExtensionsLog_log;
  _LSExtensionsLog_log = v0;
}

@end