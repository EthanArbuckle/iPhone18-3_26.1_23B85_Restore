@interface APLazyRecordApplication
- (APLazyRecordApplication)init;
- (APLazyRecordApplication)initWithApplication:(id)application;
- (NSString)bundleIdentifier;
- (NSString)localizedName;
- (id)loadRecordWithError:(id *)error;
- (void)detach;
@end

@implementation APLazyRecordApplication

- (APLazyRecordApplication)initWithApplication:(id)application
{
  v5 = OBJC_IVAR___APLazyRecordApplication_lazyRecord;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCEF8, &qword_185B6C620);
  v6 = swift_allocObject();
  *(v6 + 28) = 0;
  *(v6 + 16) = 0;
  *(v6 + 24) = 2;
  *(&self->super.isa + v5) = v6;
  *(&self->super.isa + OBJC_IVAR___APLazyRecordApplication_application) = application;
  v9.receiver = self;
  v9.super_class = APLazyRecordApplication;
  applicationCopy = application;
  return [(APLazyRecordApplication *)&v9 init];
}

- (id)loadRecordWithError:(id *)error
{
  v3 = *(&self->super.isa + OBJC_IVAR___APLazyRecordApplication_lazyRecord);
  selfCopy = self;
  os_unfair_lock_lock(v3 + 7);
  sub_185AE8E78(&v3[4], &v7);
  os_unfair_lock_unlock(v3 + 7);
  v5 = v7;

  return v5;
}

- (NSString)localizedName
{
  selfCopy = self;
  sub_185AE8A84();

  v3 = sub_185B67E1C();

  return v3;
}

- (NSString)bundleIdentifier
{
  selfCopy = self;
  application = [(APLazyRecordApplication *)selfCopy application];
  bundleIdentifier = [(APApplication *)application bundleIdentifier];

  if (!bundleIdentifier)
  {
    sub_185B67E4C();
    bundleIdentifier = sub_185B67E1C();
  }

  return bundleIdentifier;
}

- (void)detach
{
  selfCopy = self;
  sub_185AE8C38();
}

- (APLazyRecordApplication)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end