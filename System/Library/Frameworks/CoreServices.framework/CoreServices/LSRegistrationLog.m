@interface LSRegistrationLog
@end

@implementation LSRegistrationLog

void ___LSRegistrationLog_block_invoke()
{
  v0 = os_log_create("com.apple.launchservices", "registration");
  v1 = _LSRegistrationLog_log;
  _LSRegistrationLog_log = v0;
}

@end