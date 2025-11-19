@interface PFLogGetErrorLog
@end

@implementation PFLogGetErrorLog

os_log_t ___PFLogGetErrorLog_block_invoke()
{
  result = os_log_create("com.apple.coredata", "error");
  __pflogFaultLog = result;
  return result;
}

@end