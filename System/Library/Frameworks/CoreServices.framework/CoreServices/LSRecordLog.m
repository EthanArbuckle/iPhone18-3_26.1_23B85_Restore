@interface LSRecordLog
@end

@implementation LSRecordLog

void ___LSRecordLog_block_invoke()
{
  v0 = os_log_create("com.apple.launchservices", "record");
  v1 = _LSRecordLog_log;
  _LSRecordLog_log = v0;
}

@end