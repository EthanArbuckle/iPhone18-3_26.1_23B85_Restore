@interface AccessibilityReaderProfileObserver
- (_TtC23AccessibilityReader_iOS34AccessibilityReaderProfileObserver)init;
- (void)dealloc;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4;
@end

@implementation AccessibilityReaderProfileObserver

- (_TtC23AccessibilityReader_iOS34AccessibilityReaderProfileObserver)init
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for AccessibilityReaderProfileObserver();
  v2 = [(AccessibilityReaderProfileObserver *)&v6 init];
  v3 = [objc_opt_self() sharedConnection];
  if (v3)
  {
    v4 = v3;
    [v3 registerObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 sharedConnection];
  if (v5)
  {
    v6 = v5;
    [v5 unregisterObserver:v4];
  }

  v7.receiver = v4;
  v7.super_class = type metadata accessor for AccessibilityReaderProfileObserver();
  [(AccessibilityReaderProfileObserver *)&v7 dealloc];
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4
{
  if (a4)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v7 = self;
  sub_10000BB40();
}

@end