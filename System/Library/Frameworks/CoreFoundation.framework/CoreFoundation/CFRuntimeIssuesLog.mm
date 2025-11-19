@interface CFRuntimeIssuesLog
@end

@implementation CFRuntimeIssuesLog

os_log_t ___CFRuntimeIssuesLog_block_invoke()
{
  result = os_log_create("com.apple.runtime-issues", "CoreFoundation");
  _CFRuntimeIssuesLog_logger = result;
  return result;
}

@end