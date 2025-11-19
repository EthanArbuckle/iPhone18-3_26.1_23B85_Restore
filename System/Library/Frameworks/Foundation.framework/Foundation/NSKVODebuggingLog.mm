@interface NSKVODebuggingLog
@end

@implementation NSKVODebuggingLog

os_log_t ___NSKVODebuggingLog_block_invoke()
{
  result = os_log_create("com.apple.Foundation", "KVODebugging");
  qword_1ED43FCD8 = result;
  return result;
}

@end