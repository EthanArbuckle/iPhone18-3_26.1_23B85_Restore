@interface IOHIDLog
@end

@implementation IOHIDLog

os_log_t ___IOHIDLog_block_invoke()
{
  result = os_log_create("com.apple.iohid", "default");
  _IOHIDLog_log = result;
  return result;
}

@end