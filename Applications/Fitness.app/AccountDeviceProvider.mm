@interface AccountDeviceProvider
- (void)deviceListChangedWithNotification:(id)notification;
@end

@implementation AccountDeviceProvider

- (void)deviceListChangedWithNotification:(id)notification
{
  v4 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Notification();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = self;
  swift_retain_n();
  sub_10026E198(0, 0, v6, &unk_1006DCA08, v12);

  (*(v8 + 8))(v10, v7);
}

@end