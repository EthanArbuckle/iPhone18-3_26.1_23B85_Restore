@interface DashboardItem
- (NSString)description;
- (_TtC11FTMInternal13DashboardItem)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DashboardItem

- (NSString)description
{
  selfCopy = self;
  sub_1001C04D8();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1001C0634(coderCopy);
}

- (_TtC11FTMInternal13DashboardItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end