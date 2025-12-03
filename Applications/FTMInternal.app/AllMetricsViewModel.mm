@interface AllMetricsViewModel
- (void)checLoadingStateWithNotification:(id)notification;
@end

@implementation AllMetricsViewModel

- (void)checLoadingStateWithNotification:(id)notification
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = *(*&self->metricsList[7] + 16);

  sub_1002322F0(v9, 0);

  (*(v5 + 8))(v8, v4);
}

@end