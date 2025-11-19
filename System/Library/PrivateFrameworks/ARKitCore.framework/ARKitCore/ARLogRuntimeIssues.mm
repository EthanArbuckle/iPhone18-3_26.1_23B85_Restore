@interface ARLogRuntimeIssues
@end

@implementation ARLogRuntimeIssues

void ___ARLogRuntimeIssues_block_invoke()
{
  v0 = os_log_create("com.apple.ARKit", "RuntimeIssues");
  v1 = _ARLogRuntimeIssues_logObj;
  _ARLogRuntimeIssues_logObj = v0;
}

void ___ARLogRuntimeIssues_block_invoke_0()
{
  v0 = os_log_create("com.apple.ARKit", "RuntimeIssues");
  v1 = _ARLogRuntimeIssues_logObj_0;
  _ARLogRuntimeIssues_logObj_0 = v0;
}

@end