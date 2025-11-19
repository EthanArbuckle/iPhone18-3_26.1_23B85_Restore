@interface CFFoundationRuntimeIssuesLog
@end

@implementation CFFoundationRuntimeIssuesLog

os_log_t ___CFFoundationRuntimeIssuesLog_block_invoke()
{
  result = os_log_create("com.apple.runtime-issues", "Foundation");
  _CFFoundationRuntimeIssuesLog_logger = result;
  return result;
}

@end