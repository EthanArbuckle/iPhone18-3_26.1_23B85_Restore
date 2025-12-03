@interface SharedTranslationOptions
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info;
@end

@implementation SharedTranslationOptions

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info
{
  if (info)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  notificationCopy = notification;
  selfCopy = self;
  sub_10022D2E4();
}

@end