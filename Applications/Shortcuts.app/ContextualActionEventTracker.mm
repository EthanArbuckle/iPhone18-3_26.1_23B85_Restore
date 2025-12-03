@interface ContextualActionEventTracker
- (void)mousePointerDevicesDidChange:(id)change;
@end

@implementation ContextualActionEventTracker

- (void)mousePointerDevicesDidChange:(id)change
{
  sub_100002FC4(0, &qword_100101EF0);
  sub_10009032C();
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10008CB58(v4);
}

@end