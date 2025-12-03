@interface APLockedAppsMetaSubject
- (BOOL)isLocked;
- (NSString)description;
- (_TtC13AppProtection23APLockedAppsMetaSubject)init;
- (_TtC13AppProtection23APLockedAppsMetaSubject)initWithArena:(id)arena;
- (id)effectiveBundleIdentifier;
@end

@implementation APLockedAppsMetaSubject

- (_TtC13AppProtection23APLockedAppsMetaSubject)init
{
  result = sub_185B6842C();
  __break(1u);
  return result;
}

- (BOOL)isLocked
{
  selfCopy = self;
  v3 = sub_185B5DB4C();

  return v3;
}

- (NSString)description
{
  v2 = sub_185B67E1C();

  return v2;
}

- (id)effectiveBundleIdentifier
{
  v2 = sub_185B67E1C();

  return v2;
}

- (_TtC13AppProtection23APLockedAppsMetaSubject)initWithArena:(id)arena
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end