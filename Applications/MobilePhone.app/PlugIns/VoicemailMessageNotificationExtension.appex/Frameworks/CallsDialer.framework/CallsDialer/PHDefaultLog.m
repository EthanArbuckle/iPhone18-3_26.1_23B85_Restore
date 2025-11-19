@interface PHDefaultLog
@end

@implementation PHDefaultLog

void __PHDefaultLog_block_invoke(id a1)
{
  PHDefaultLog_PHDefaultLog = os_log_create("com.apple.calls.mobilephone", "Default");

  _objc_release_x1();
}

@end