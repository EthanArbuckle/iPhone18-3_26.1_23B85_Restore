@interface JSUserDefaults
- (_TtC11AppStoreKit14JSUserDefaults)init;
- (id)double:(id)double;
- (id)integer:(id)integer;
- (id)string:(id)string;
- (void)setDouble:(id)double :(id)a4;
- (void)setInteger:(id)integer :(id)a4;
- (void)setString:(id)string :(id)a4;
@end

@implementation JSUserDefaults

- (id)string:(id)string
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC11AppStoreKit14JSUserDefaults_userDefaults);
  selfCopy = self;
  stringForKey_ = [v4 stringForKey_];
  if (stringForKey_)
  {
    v7 = stringForKey_;
    sub_1E1AF5DFC();

    v8 = sub_1E1AF5DBC();
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

- (id)integer:(id)integer
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC11AppStoreKit14JSUserDefaults_userDefaults);
  selfCopy = self;
  integerForKey_ = [v4 integerForKey_];
  initWithInteger_ = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];

  return initWithInteger_;
}

- (id)double:(id)double
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC11AppStoreKit14JSUserDefaults_userDefaults);
  selfCopy = self;
  [v4 doubleForKey_];
  initWithDouble_ = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];

  return initWithDouble_;
}

- (void)setString:(id)string :(id)a4
{
  if (string)
  {
    sub_1E1AF5DFC();
    v6 = *(&self->super.isa + OBJC_IVAR____TtC11AppStoreKit14JSUserDefaults_userDefaults);
    v7 = a4;
    selfCopy = self;
    v9 = sub_1E1AF5DBC();
  }

  else
  {
    v6 = *(&self->super.isa + OBJC_IVAR____TtC11AppStoreKit14JSUserDefaults_userDefaults);
    v10 = a4;
    selfCopy2 = self;
    v9 = 0;
  }

  [v6 setObject:v9 forKey:a4];

  swift_unknownObjectRelease();
}

- (void)setInteger:(id)integer :(id)a4
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtC11AppStoreKit14JSUserDefaults_userDefaults);
  integerCopy = integer;
  v7 = a4;
  selfCopy = self;
  [v6 setInteger:objc_msgSend(integerCopy forKey:{sel_integerValue), v7}];
}

- (void)setDouble:(id)double :(id)a4
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtC11AppStoreKit14JSUserDefaults_userDefaults);
  doubleCopy = double;
  v7 = a4;
  selfCopy = self;
  [doubleCopy doubleValue];
  [v6 setDouble:v7 forKey:?];
}

- (_TtC11AppStoreKit14JSUserDefaults)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end