@interface NUILog
@end

@implementation NUILog

os_log_t ___NUILog_block_invoke()
{
  result = os_log_create("com.apple.AppSupportUI", "NUIContainerView");
  qword_280AC30F0 = result;
  return result;
}

@end