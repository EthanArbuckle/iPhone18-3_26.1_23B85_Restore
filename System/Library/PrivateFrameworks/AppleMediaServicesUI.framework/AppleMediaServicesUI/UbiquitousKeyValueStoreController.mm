@interface UbiquitousKeyValueStoreController
- (void)storeDidChangeExternallyWithNotification:(id)notification;
@end

@implementation UbiquitousKeyValueStoreController

- (void)storeDidChangeExternallyWithNotification:(id)notification
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1001C1620(v7);

  (*(v4 + 8))(v7, v3);
}

@end