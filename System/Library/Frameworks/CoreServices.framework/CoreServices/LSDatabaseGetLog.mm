@interface LSDatabaseGetLog
@end

@implementation LSDatabaseGetLog

void ___LSDatabaseGetLog_block_invoke()
{
  v0 = os_log_create("com.apple.launchservices", "db");
  v1 = _LSDatabaseGetLog_result;
  _LSDatabaseGetLog_result = v0;
}

@end