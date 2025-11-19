@interface ATXAppEntity
- (ATXAppEntity)init;
- (BOOL)isEqual:(id)a3;
- (NSString)debugDescription;
- (NSString)description;
- (int64_t)hash;
@end

@implementation ATXAppEntity

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_226836878();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_2267BCCF8(v8);

  sub_2267A1DC0(v8, &qword_27D7A1AA0, &qword_2268732C0);
  return v6 & 1;
}

- (int64_t)hash
{
  sub_226836C58();
  v3 = *(&self->super.isa + OBJC_IVAR___ATXAppEntity_identifier);
  v4 = *&self->bundleID[OBJC_IVAR___ATXAppEntity_identifier];
  v5 = self;
  sub_226836498();
  v6 = *(&v5->super.isa + OBJC_IVAR___ATXAppEntity_bundleID);
  v7 = *&v5->bundleID[OBJC_IVAR___ATXAppEntity_bundleID];
  sub_226836498();
  v8 = *(&v5->super.isa + OBJC_IVAR___ATXAppEntity_type);
  v9 = *&v5->bundleID[OBJC_IVAR___ATXAppEntity_type];
  sub_226836498();
  v10 = sub_226836C38();

  return v10;
}

- (NSString)debugDescription
{
  v2 = [(ATXAppEntity *)self description];

  return v2;
}

- (NSString)description
{
  v2 = self;
  sub_2267BD088();

  v3 = sub_2268363F8();

  return v3;
}

- (ATXAppEntity)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end