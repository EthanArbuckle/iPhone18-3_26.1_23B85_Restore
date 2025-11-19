@interface PKSignpostLog
@end

@implementation PKSignpostLog

void ___PKSignpostLog_block_invoke()
{
  v0 = os_log_create("com.apple.pencilkit", "signposts");
  v1 = _PKSignpostLog____PKSignpostLog;
  _PKSignpostLog____PKSignpostLog = v0;
}

@end