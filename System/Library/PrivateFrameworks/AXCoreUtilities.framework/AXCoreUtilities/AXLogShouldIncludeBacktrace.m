@interface AXLogShouldIncludeBacktrace
@end

@implementation AXLogShouldIncludeBacktrace

void ___AXLogShouldIncludeBacktrace_block_invoke()
{
  v0 = [getAXSettingsClass_1() sharedInstance];
  [v0 registerUpdateBlock:&__block_literal_global_44_0 forRetrieveSelector:sel_includeBacktraceInLogs withListener:0];

  ___AXLogShouldIncludeBacktrace_block_invoke_2();
}

void ___AXLogShouldIncludeBacktrace_block_invoke_2()
{
  v0 = [getAXSettingsClass_1() sharedInstance];
  _AXLogShouldIncludeBacktrace_IncludeBacktraceInLogs = [v0 includeBacktraceInLogs];
}

@end