@interface LSAppProtectionLog
@end

@implementation LSAppProtectionLog

void ___LSAppProtectionLog_block_invoke()
{
  v0 = os_log_create("com.apple.launchservices", "appprotection");
  v1 = _LSAppProtectionLog_result;
  _LSAppProtectionLog_result = v0;
}

@end