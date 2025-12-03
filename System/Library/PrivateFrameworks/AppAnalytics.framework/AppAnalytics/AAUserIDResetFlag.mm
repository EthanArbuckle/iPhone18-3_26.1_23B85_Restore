@interface AAUserIDResetFlag
- (AAUserIDResetFlag)init;
- (AAUserIDResetFlag)initWithSuiteName:(id)name;
- (AAUserIDResetFlag)initWithSuiteName:(id)name userDataIDsResetKey:(id)key;
- (NSString)suiteName;
- (NSString)userDataIDsResetKey;
@end

@implementation AAUserIDResetFlag

- (NSString)suiteName
{
  if (*&self->userIDResetFlag[OBJC_IVAR___AAUserIDResetFlag_userIDResetFlag])
  {
    v2 = *(&self->super.isa + OBJC_IVAR___AAUserIDResetFlag_userIDResetFlag);
    v3 = *&self->userIDResetFlag[OBJC_IVAR___AAUserIDResetFlag_userIDResetFlag];

    v4 = sub_1B6AB92B0();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)userDataIDsResetKey
{
  v2 = *&self->userIDResetFlag[OBJC_IVAR___AAUserIDResetFlag_userIDResetFlag + 8];
  v3 = *&self->userIDResetFlag[OBJC_IVAR___AAUserIDResetFlag_userIDResetFlag + 16];

  v4 = sub_1B6AB92B0();

  return v4;
}

- (AAUserIDResetFlag)initWithSuiteName:(id)name userDataIDsResetKey:(id)key
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    name = sub_1B6AB92E0();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_1B6AB92E0();
  v10 = (&self->super.isa + OBJC_IVAR___AAUserIDResetFlag_userIDResetFlag);
  *v10 = name;
  v10[1] = v8;
  v10[2] = v9;
  v10[3] = v11;
  v13.receiver = self;
  v13.super_class = ObjectType;
  return [(AAUserIDResetFlag *)&v13 init];
}

- (AAUserIDResetFlag)initWithSuiteName:(id)name
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    v6 = sub_1B6AB92E0();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = (self + OBJC_IVAR___AAUserIDResetFlag_userIDResetFlag);
  *v8 = v6;
  v8[1] = v7;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x80000001B6ACCC40;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(AAUserIDResetFlag *)&v10 init];
}

- (AAUserIDResetFlag)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end