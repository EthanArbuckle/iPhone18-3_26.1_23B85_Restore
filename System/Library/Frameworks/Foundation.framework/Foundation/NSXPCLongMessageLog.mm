@interface NSXPCLongMessageLog
@end

@implementation NSXPCLongMessageLog

os_log_t ___NSXPCLongMessageLog_block_invoke()
{
  result = os_log_create("com.apple.Foundation", "xpc.exceptions");
  qword_1ED43F988 = result;
  return result;
}

@end