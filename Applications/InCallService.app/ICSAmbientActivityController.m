@interface ICSAmbientActivityController
- (void)handleCallStatusChanged:(id)a3;
- (void)requestActivityForCall:(id)a3;
@end

@implementation ICSAmbientActivityController

- (void)requestActivityForCall:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100009E84(v4);
}

- (void)handleCallStatusChanged:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  sub_10000BAC8(v8);

  (*(v5 + 8))(v8, v4);
}

@end