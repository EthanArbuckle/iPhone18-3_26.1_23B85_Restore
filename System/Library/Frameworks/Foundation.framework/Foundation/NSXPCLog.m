@interface NSXPCLog
@end

@implementation NSXPCLog

os_log_t ___NSXPCLog_block_invoke()
{
  result = os_log_create("com.apple.Foundation", "xpc");
  qword_1ED43F968 = result;
  return result;
}

@end