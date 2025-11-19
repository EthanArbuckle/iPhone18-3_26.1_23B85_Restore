@interface NSOSLog
@end

@implementation NSOSLog

os_log_t ___NSOSLog_block_invoke()
{
  result = os_log_create("com.apple.Foundation", "general");
  _MergedGlobals_110 = result;
  return result;
}

@end