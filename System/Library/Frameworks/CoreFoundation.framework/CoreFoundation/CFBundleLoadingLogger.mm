@interface CFBundleLoadingLogger
@end

@implementation CFBundleLoadingLogger

os_log_t ___CFBundleLoadingLogger_block_invoke()
{
  result = os_log_create("com.apple.CFBundle", "loading");
  _CFBundleLoadingLogger__log = result;
  return result;
}

@end