@interface AAGroup
- (AAGroup)init;
- (NSDate)startDate;
- (NSString)name;
@end

@implementation AAGroup

- (NSString)name
{
  v2 = *(self + OBJC_IVAR___AAGroup_name);
  v3 = *(self + OBJC_IVAR___AAGroup_name + 8);

  v4 = sub_1B6AB92B0();

  return v4;
}

- (NSDate)startDate
{
  v3 = sub_1B6AB8DB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR___AAGroup_startDate, v3);
  v8 = sub_1B6AB8D20();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (AAGroup)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end