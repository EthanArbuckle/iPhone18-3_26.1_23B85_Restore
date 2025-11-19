@interface CFBundleLocalizedStringLogger
@end

@implementation CFBundleLocalizedStringLogger

os_log_t ___CFBundleLocalizedStringLogger_block_invoke()
{
  result = os_log_create("com.apple.CFBundle", "strings");
  _CFBundleLocalizedStringLogger__log = result;
  return result;
}

@end