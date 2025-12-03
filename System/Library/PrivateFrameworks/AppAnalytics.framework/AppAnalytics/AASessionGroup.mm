@interface AASessionGroup
+ (AASessionGroup)default;
- (AASessionGroup)init;
- (AASessionGroup)initWithGroupName:(id)name;
- (NSString)groupName;
- (void)setGroupName:(id)name;
@end

@implementation AASessionGroup

+ (AASessionGroup)default
{
  if (qword_1EDBC8A58 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDBC8A60;

  return v3;
}

- (NSString)groupName
{
  v2 = (self + OBJC_IVAR___AASessionGroup_groupName);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  v5 = sub_1B6AB92B0();

  return v5;
}

- (void)setGroupName:(id)name
{
  v4 = sub_1B6AB92E0();
  v6 = v5;
  v7 = (self + OBJC_IVAR___AASessionGroup_groupName);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (AASessionGroup)initWithGroupName:(id)name
{
  ObjectType = swift_getObjectType();
  v5 = sub_1B6AB92E0();
  v6 = (self + OBJC_IVAR___AASessionGroup_groupName);
  *v6 = v5;
  v6[1] = v7;
  v9.receiver = self;
  v9.super_class = ObjectType;
  return [(AASessionGroup *)&v9 init];
}

- (AASessionGroup)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end