@interface NLTVConnectionManager
- (NLTVConnectionManager)init;
- (id)presenter:(id)presenter userNotificationCenter:(id)center;
- (void)beginDiscovery;
- (void)connectAutomatically;
- (void)endDiscovery;
- (void)updateDiscoveryStateIfNeeded;
@end

@implementation NLTVConnectionManager

- (id)presenter:(id)presenter userNotificationCenter:(id)center
{
  swift_unknownObjectRetain();
  centerCopy = center;
  v7 = sub_1004FED6C(presenter, centerCopy);
  swift_unknownObjectRelease();

  return v7;
}

- (void)updateDiscoveryStateIfNeeded
{
  selfCopy = self;
  sub_1004FA8E4();
}

- (void)beginDiscovery
{
  selfCopy = self;
  sub_1004FAB54();
}

- (void)endDiscovery
{
  selfCopy = self;
  sub_1004FB17C();
}

- (void)connectAutomatically
{
  selfCopy = self;
  sub_1004FB840();
}

- (NLTVConnectionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end