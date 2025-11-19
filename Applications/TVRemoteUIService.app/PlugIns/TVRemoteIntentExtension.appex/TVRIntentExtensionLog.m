@interface TVRIntentExtensionLog
@end

@implementation TVRIntentExtensionLog

void ___TVRIntentExtensionLog_block_invoke(id a1)
{
  _TVRIntentExtensionLog_log = os_log_create("com.apple.TVRemoteUIService", "IntentExtension");

  _objc_release_x1();
}

@end