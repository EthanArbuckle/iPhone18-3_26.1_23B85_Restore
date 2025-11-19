@interface LSBindingLog
@end

@implementation LSBindingLog

void ___LSBindingLog_block_invoke()
{
  v0 = os_log_create("com.apple.launchservices", "binding");
  v1 = _LSBindingLog_result;
  _LSBindingLog_result = v0;
}

@end