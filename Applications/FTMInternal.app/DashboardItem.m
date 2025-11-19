@interface DashboardItem
- (NSString)description;
- (_TtC11FTMInternal13DashboardItem)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DashboardItem

- (NSString)description
{
  v2 = self;
  sub_1001C04D8();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001C0634(v4);
}

- (_TtC11FTMInternal13DashboardItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end