@interface ICSAmbientActivityController
- (void)handleCallStatusChanged:(id)changed;
- (void)requestActivityForCall:(id)call;
@end

@implementation ICSAmbientActivityController

- (void)requestActivityForCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  sub_100009E84(callCopy);
}

- (void)handleCallStatusChanged:(id)changed
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10000BAC8(v8);

  (*(v5 + 8))(v8, v4);
}

@end