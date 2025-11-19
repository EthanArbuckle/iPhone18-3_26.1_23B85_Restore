@interface SCHelperExecCopyBacktrace
@end

@implementation SCHelperExecCopyBacktrace

char *___SCHelperExecCopyBacktrace_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  result = getenv("ENABLE_SCHELPER_BACKTRACES");
  if (result)
  {
    _SCHelperExecCopyBacktrace_loggingEnabled = 1;
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

@end