@interface AccessibilityReaderProfileObserver
- (_TtC23AccessibilityReader_iOS34AccessibilityReaderProfileObserver)init;
- (void)dealloc;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info;
@end

@implementation AccessibilityReaderProfileObserver

- (_TtC23AccessibilityReader_iOS34AccessibilityReaderProfileObserver)init
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for AccessibilityReaderProfileObserver();
  v2 = [(AccessibilityReaderProfileObserver *)&v6 init];
  sharedConnection = [objc_opt_self() sharedConnection];
  if (sharedConnection)
  {
    v4 = sharedConnection;
    [sharedConnection registerObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  sharedConnection = [v3 sharedConnection];
  if (sharedConnection)
  {
    v6 = sharedConnection;
    [sharedConnection unregisterObserver:selfCopy];
  }

  v7.receiver = selfCopy;
  v7.super_class = type metadata accessor for AccessibilityReaderProfileObserver();
  [(AccessibilityReaderProfileObserver *)&v7 dealloc];
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info
{
  if (info)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  notificationCopy = notification;
  selfCopy = self;
  sub_10000BB40();
}

@end