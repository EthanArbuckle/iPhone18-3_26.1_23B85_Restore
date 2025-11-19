@interface JSUserDefaults
- (_TtC11AppStoreKit14JSUserDefaults)init;
- (id)double:(id)a3;
- (id)integer:(id)a3;
- (id)string:(id)a3;
- (void)setDouble:(id)a3 :(id)a4;
- (void)setInteger:(id)a3 :(id)a4;
- (void)setString:(id)a3 :(id)a4;
@end

@implementation JSUserDefaults

- (id)string:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC11AppStoreKit14JSUserDefaults_userDefaults);
  v5 = self;
  v6 = [v4 stringForKey_];
  if (v6)
  {
    v7 = v6;
    sub_1E1AF5DFC();

    v8 = sub_1E1AF5DBC();
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

- (id)integer:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC11AppStoreKit14JSUserDefaults_userDefaults);
  v5 = self;
  v6 = [v4 integerForKey_];
  v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];

  return v7;
}

- (id)double:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC11AppStoreKit14JSUserDefaults_userDefaults);
  v5 = self;
  [v4 doubleForKey_];
  v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];

  return v7;
}

- (void)setString:(id)a3 :(id)a4
{
  if (a3)
  {
    sub_1E1AF5DFC();
    v6 = *(&self->super.isa + OBJC_IVAR____TtC11AppStoreKit14JSUserDefaults_userDefaults);
    v7 = a4;
    v8 = self;
    v9 = sub_1E1AF5DBC();
  }

  else
  {
    v6 = *(&self->super.isa + OBJC_IVAR____TtC11AppStoreKit14JSUserDefaults_userDefaults);
    v10 = a4;
    v11 = self;
    v9 = 0;
  }

  [v6 setObject:v9 forKey:a4];

  swift_unknownObjectRelease();
}

- (void)setInteger:(id)a3 :(id)a4
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtC11AppStoreKit14JSUserDefaults_userDefaults);
  v9 = a3;
  v7 = a4;
  v8 = self;
  [v6 setInteger:objc_msgSend(v9 forKey:{sel_integerValue), v7}];
}

- (void)setDouble:(id)a3 :(id)a4
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtC11AppStoreKit14JSUserDefaults_userDefaults);
  v9 = a3;
  v7 = a4;
  v8 = self;
  [v9 doubleValue];
  [v6 setDouble:v7 forKey:?];
}

- (_TtC11AppStoreKit14JSUserDefaults)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end