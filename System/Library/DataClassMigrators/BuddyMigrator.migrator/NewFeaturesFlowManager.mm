@interface NewFeaturesFlowManager
- (BOOL)needsToRun;
- (_TtC13BuddyMigrator22NewFeaturesFlowManager)init;
- (_TtC13BuddyMigrator22NewFeaturesFlowManager)initWithChronicle:(id)chronicle featureFlags:(id)flags;
- (void)updatePresentedKey:(BOOL)key;
@end

@implementation NewFeaturesFlowManager

- (_TtC13BuddyMigrator22NewFeaturesFlowManager)initWithChronicle:(id)chronicle featureFlags:(id)flags
{
  chronicleCopy = chronicle;
  swift_unknownObjectRetain();
  v6 = sub_15C50(chronicleCopy, flags);

  return v6;
}

- (BOOL)needsToRun
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC13BuddyMigrator22NewFeaturesFlowManager_featureFlags);
  selfCopy = self;
  if ([v2 isSolariumEnabled])
  {
    v4 = [*(&selfCopy->super.isa + OBJC_IVAR____TtC13BuddyMigrator22NewFeaturesFlowManager_chronicle) entryForFeature:7];

    selfCopy = v4;
    if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

- (void)updatePresentedKey:(BOOL)key
{
  selfCopy = self;
  sub_15A34(key);
}

- (_TtC13BuddyMigrator22NewFeaturesFlowManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end