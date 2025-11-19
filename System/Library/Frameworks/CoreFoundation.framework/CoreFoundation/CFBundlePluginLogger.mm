@interface CFBundlePluginLogger
@end

@implementation CFBundlePluginLogger

os_log_t ___CFBundlePluginLogger_block_invoke()
{
  result = os_log_create("com.apple.CFBundle", "plugin");
  _CFBundlePluginLogger__log = result;
  return result;
}

@end