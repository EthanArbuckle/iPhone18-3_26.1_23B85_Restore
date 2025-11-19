@interface NSRemoteUndoLogger
@end

@implementation NSRemoteUndoLogger

os_log_t ___NSRemoteUndoLogger_block_invoke()
{
  result = os_log_create("com.apple.foundation.NSUndoManager", "remote");
  _MergedGlobals_115 = result;
  return result;
}

@end