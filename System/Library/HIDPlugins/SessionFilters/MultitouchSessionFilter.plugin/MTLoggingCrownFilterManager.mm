@interface MTLoggingCrownFilterManager
@end

@implementation MTLoggingCrownFilterManager

void __MTLoggingCrownFilterManager_block_invoke(id a1)
{
  MTLoggingCrownFilterManager___logObj = os_log_create("com.apple.Multitouch.SessionFilter", "CrownFilterManager");

  _objc_release_x1();
}

@end