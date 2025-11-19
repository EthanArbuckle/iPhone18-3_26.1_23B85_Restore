@interface LifecycleManager
- (void)applicationDidEnterBackgroundWithNotification:(id)a3;
@end

@implementation LifecycleManager

- (void)applicationDidEnterBackgroundWithNotification:(id)a3
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  if (qword_1000DA5A8 != -1)
  {
    swift_once();
  }

  sub_100084E48();
  if ([objc_opt_self() isRunningStoreDemoMode])
  {
    sub_10007C15C();
  }

  (*(v4 + 8))(v7, v3);
}

@end