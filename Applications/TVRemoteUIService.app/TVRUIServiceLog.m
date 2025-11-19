@interface TVRUIServiceLog
@end

@implementation TVRUIServiceLog

void ___TVRUIServiceLog_block_invoke(id a1)
{
  _TVRUIServiceLog_log = os_log_create("com.apple.TVRemoteUIService", "RemoteAlert");

  _objc_release_x1();
}

@end