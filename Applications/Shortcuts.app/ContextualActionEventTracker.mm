@interface ContextualActionEventTracker
- (void)mousePointerDevicesDidChange:(id)a3;
@end

@implementation ContextualActionEventTracker

- (void)mousePointerDevicesDidChange:(id)a3
{
  sub_100002FC4(0, &qword_100101EF0);
  sub_10009032C();
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  sub_10008CB58(v4);
}

@end