@interface TodayCardOverlayReusePool
- (void)clearStackFor:(id)a3;
@end

@implementation TodayCardOverlayReusePool

- (void)clearStackFor:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = *(v5 + 8);

  v8(v7, v4);
  swift_beginAccess();
  *self->stack = _swiftEmptyArrayStorage;
}

@end