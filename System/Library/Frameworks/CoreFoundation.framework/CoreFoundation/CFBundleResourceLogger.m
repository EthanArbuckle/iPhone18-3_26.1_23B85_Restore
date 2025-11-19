@interface CFBundleResourceLogger
@end

@implementation CFBundleResourceLogger

os_log_t ___CFBundleResourceLogger_block_invoke()
{
  result = os_log_create("com.apple.CFBundle", "resources");
  _CFBundleResourceLogger__log = result;
  return result;
}

@end