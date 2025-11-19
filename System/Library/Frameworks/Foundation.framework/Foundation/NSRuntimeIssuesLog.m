@interface NSRuntimeIssuesLog
@end

@implementation NSRuntimeIssuesLog

os_log_t ___NSRuntimeIssuesLog_block_invoke()
{
  result = os_log_create("com.apple.runtime-issues", "Foundation");
  qword_1ED43F978 = result;
  return result;
}

@end