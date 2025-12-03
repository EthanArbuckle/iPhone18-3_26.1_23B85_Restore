@interface CRLAASApplicationTracker
- (void)updateBoardInitialAppStateEventData:(id)data;
@end

@implementation CRLAASApplicationTracker

- (void)updateBoardInitialAppStateEventData:(id)data
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100A0DE14();
  (*(v4 + 8))(v6, v3);
}

@end