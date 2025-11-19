@interface NSIPLogger
@end

@implementation NSIPLogger

os_log_t ___NSIPLogger_block_invoke()
{
  result = os_log_create("com.apple.foundation.NSItemProvider", "general");
  _MergedGlobals_1 = result;
  return result;
}

@end