@interface APApplication
+ (APApplication)applicationWithBundleIdentifier:(id)identifier;
+ (id)bundleIdentifiersWithContentHiddenFromSearch;
- (BOOL)isEffectivelyLocked;
- (BOOL)isHidden;
- (BOOL)isLocked;
- (NSString)description;
- (id)effectiveBundleIdentifier;
- (id)initFileprivWithBundleID:(id)d arena:(id)arena;
- (void)dealloc;
@end

@implementation APApplication

+ (APApplication)applicationWithBundleIdentifier:(id)identifier
{
  sub_185B67E4C();
  if (qword_1ED6F4CA8 != -1)
  {
    swift_once();
  }

  sub_185ADF8F0(&qword_1ED6F5148, v11);
  v3 = __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v4 = *v3;
  v10[3] = &type metadata for ServerBackedClientArena;
  v10[4] = &off_1EF46CD08;
  v10[0] = swift_allocObject();
  v5 = sub_185AC36A8(v3, v10[0] + 16);
  MEMORY[0x1EEE9AC00](v5, v6);
  os_unfair_lock_lock((v4 + 24));
  sub_185AC3704((v4 + 16), &v9);
  os_unfair_lock_unlock((v4 + 24));
  v7 = v9;
  __swift_destroy_boxed_opaque_existential_0Tm(v10);

  __swift_destroy_boxed_opaque_existential_0Tm(v11);

  return v7;
}

- (BOOL)isHidden
{
  selfCopy = self;
  v3 = APApplication.isHidden.getter();

  return v3 & 1;
}

- (NSString)description
{
  selfCopy = self;
  sub_185B6836C();

  MEMORY[0x1865FCF60](*(&selfCopy->super.super.isa + OBJC_IVAR___APApplication__bundleIdentifier), *&selfCopy->super.clientArenaStorage[OBJC_IVAR___APApplication__bundleIdentifier]);
  MEMORY[0x1865FCF60](62, 0xE100000000000000);

  v3 = sub_185B67E1C();

  return v3;
}

- (BOOL)isLocked
{
  selfCopy = self;
  v3 = APApplication.isLocked.getter();

  return v3 & 1;
}

- (BOOL)isEffectivelyLocked
{
  selfCopy = self;
  v3 = APApplication.isEffectivelyLocked.getter();

  return v3 & 1;
}

- (id)initFileprivWithBundleID:(id)d arena:(id)arena
{
  v6 = sub_185B67E4C();
  v7 = (self + OBJC_IVAR___APApplication__bundleIdentifier);
  *v7 = v6;
  v7[1] = v8;
  v10.receiver = self;
  v10.super_class = APApplication;
  return [(APSubject *)&v10 initWithArena:arena];
}

- (void)dealloc
{
  sub_185ADF8F0(self + OBJC_IVAR___APSubject_clientArenaStorage, v5);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  selfCopy = self;
  sub_185AC7818(selfCopy);
  __swift_destroy_boxed_opaque_existential_0Tm(v5);

  v4.receiver = selfCopy;
  v4.super_class = APApplication;
  [(APApplication *)&v4 dealloc];
}

+ (id)bundleIdentifiersWithContentHiddenFromSearch
{
  lockedAppBundleIdentifiers = [self lockedAppBundleIdentifiers];
  sub_185B67FDC();

  v3 = sub_185B67FCC();

  return v3;
}

- (id)effectiveBundleIdentifier
{
  selfCopy = self;
  bundleIdentifier = [(APApplication *)selfCopy bundleIdentifier];
  if (!bundleIdentifier)
  {
    sub_185B67E4C();
    bundleIdentifier = sub_185B67E1C();
  }

  return bundleIdentifier;
}

@end