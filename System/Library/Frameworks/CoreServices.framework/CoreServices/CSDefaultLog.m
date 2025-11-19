@interface CSDefaultLog
@end

@implementation CSDefaultLog

os_log_t ___CSDefaultLog_block_invoke()
{
  result = os_log_create("com.apple.coreservices", "default");
  _CSDefaultLog_log = result;
  return result;
}

@end