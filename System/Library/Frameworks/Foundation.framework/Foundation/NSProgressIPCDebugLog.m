@interface NSProgressIPCDebugLog
@end

@implementation NSProgressIPCDebugLog

os_log_t ___NSProgressIPCDebugLog_block_invoke()
{
  result = os_log_create("com.apple.foundation.progress", "ipc");
  _MergedGlobals_25_0 = result;
  return result;
}

@end