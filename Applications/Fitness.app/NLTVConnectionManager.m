@interface NLTVConnectionManager
- (NLTVConnectionManager)init;
- (id)presenter:(id)a3 userNotificationCenter:(id)a4;
- (void)beginDiscovery;
- (void)connectAutomatically;
- (void)endDiscovery;
- (void)updateDiscoveryStateIfNeeded;
@end

@implementation NLTVConnectionManager

- (id)presenter:(id)a3 userNotificationCenter:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = sub_1004FED6C(a3, v6);
  swift_unknownObjectRelease();

  return v7;
}

- (void)updateDiscoveryStateIfNeeded
{
  v2 = self;
  sub_1004FA8E4();
}

- (void)beginDiscovery
{
  v2 = self;
  sub_1004FAB54();
}

- (void)endDiscovery
{
  v2 = self;
  sub_1004FB17C();
}

- (void)connectAutomatically
{
  v2 = self;
  sub_1004FB840();
}

- (NLTVConnectionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end