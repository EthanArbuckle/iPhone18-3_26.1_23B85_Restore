@interface LSDefaultLog
@end

@implementation LSDefaultLog

void ___LSDefaultLog_block_invoke()
{
  v0 = os_log_create("com.apple.launchservices", "default");
  v1 = _LSDefaultLog_log;
  _LSDefaultLog_log = v0;
}

@end