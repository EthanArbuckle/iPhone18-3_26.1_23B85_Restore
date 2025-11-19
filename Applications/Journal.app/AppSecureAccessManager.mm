@interface AppSecureAccessManager
- (void)onAppUnlockedWithNotification:(id)a3;
@end

@implementation AppSecureAccessManager

- (void)onAppUnlockedWithNotification:(id)a3
{
  v4 = sub_1000F24EC(&qword_100AF6E60);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  if (a3)
  {
    static Notification._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = type metadata accessor for Notification();
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  }

  else
  {
    v8 = type metadata accessor for Notification();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  }

  sub_10004E570(v6);

  sub_100004F84(v6, &qword_100AF6E60);
}

@end