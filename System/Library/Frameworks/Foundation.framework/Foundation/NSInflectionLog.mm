@interface NSInflectionLog
@end

@implementation NSInflectionLog

os_log_t ___NSInflectionLog_block_invoke()
{
  result = os_log_create("com.apple.Foundation", "Inflection");
  _NSInflectionLog_log = result;
  return result;
}

@end