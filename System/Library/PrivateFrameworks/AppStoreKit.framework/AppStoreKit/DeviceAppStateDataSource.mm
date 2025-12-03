@interface DeviceAppStateDataSource
- (_TtC11AppStoreKit24DeviceAppStateDataSource)init;
- (void)appQuery:(id)query resultsDidChange:(id)change;
@end

@implementation DeviceAppStateDataSource

- (void)appQuery:(id)query resultsDidChange:(id)change
{
  sub_1E13006E4(0, &qword_1EE1E32C0);
  v6 = sub_1E1AF621C();
  queryCopy = query;
  selfCopy = self;
  sub_1E16C7F48(v6);
}

- (_TtC11AppStoreKit24DeviceAppStateDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end