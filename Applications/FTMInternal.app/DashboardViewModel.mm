@interface DashboardViewModel
- (void)checLoadingStateWithNotification:(id)a3;
- (void)reloadDataWithNotification:(id)a3;
@end

@implementation DashboardViewModel

- (void)reloadDataWithNotification:(id)a3
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100273BB0();

  (*(v4 + 8))(v7, v3);
}

- (void)checLoadingStateWithNotification:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = *(*&self->metrics[7] + 16);

  sub_100274800(v9, 0);

  (*(v5 + 8))(v8, v4);
}

@end