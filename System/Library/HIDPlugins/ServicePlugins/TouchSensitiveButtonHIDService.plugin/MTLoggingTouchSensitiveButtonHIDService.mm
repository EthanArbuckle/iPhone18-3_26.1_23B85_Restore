@interface MTLoggingTouchSensitiveButtonHIDService
@end

@implementation MTLoggingTouchSensitiveButtonHIDService

void __MTLoggingTouchSensitiveButtonHIDService_block_invoke(id a1)
{
  MTLoggingTouchSensitiveButtonHIDService___logObj = os_log_create("com.apple.Multitouch", "TouchSensitiveButtonHIDService");

  _objc_release_x1();
}

@end