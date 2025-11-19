@interface DeviceAppStateDataSource
- (_TtC11AppStoreKit24DeviceAppStateDataSource)init;
- (void)appQuery:(id)a3 resultsDidChange:(id)a4;
@end

@implementation DeviceAppStateDataSource

- (void)appQuery:(id)a3 resultsDidChange:(id)a4
{
  sub_1E13006E4(0, &qword_1EE1E32C0);
  v6 = sub_1E1AF621C();
  v7 = a3;
  v8 = self;
  sub_1E16C7F48(v6);
}

- (_TtC11AppStoreKit24DeviceAppStateDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end