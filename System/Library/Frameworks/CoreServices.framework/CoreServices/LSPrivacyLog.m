@interface LSPrivacyLog
@end

@implementation LSPrivacyLog

void ___LSPrivacyLog_block_invoke()
{
  v0 = os_log_create("com.apple.launchservices", "privacy");
  v1 = _LSPrivacyLog_log;
  _LSPrivacyLog_log = v0;
}

@end