@interface SolariumOnBoardingManager
- (BOOL)shouldLaunchToOnBoardUserToSolarium;
- (_TtC13BuddyMigrator25SolariumOnBoardingManager)init;
- (_TtC13BuddyMigrator25SolariumOnBoardingManager)initWithChronicle:(id)chronicle featureFlags:(id)flags;
- (void)recordUserWasOnBoardedToSolarium;
@end

@implementation SolariumOnBoardingManager

- (_TtC13BuddyMigrator25SolariumOnBoardingManager)initWithChronicle:(id)chronicle featureFlags:(id)flags
{
  *(&self->super.isa + OBJC_IVAR____TtC13BuddyMigrator25SolariumOnBoardingManager_chronicle) = chronicle;
  *(&self->super.isa + OBJC_IVAR____TtC13BuddyMigrator25SolariumOnBoardingManager_featureFlags) = flags;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SolariumOnBoardingManager();
  chronicleCopy = chronicle;
  swift_unknownObjectRetain();
  return [(SolariumOnBoardingManager *)&v7 init];
}

- (BOOL)shouldLaunchToOnBoardUserToSolarium
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC13BuddyMigrator25SolariumOnBoardingManager_featureFlags);
  selfCopy = self;
  if ([v2 isSolariumEnabled])
  {
    v4 = [*(&selfCopy->super.isa + OBJC_IVAR____TtC13BuddyMigrator25SolariumOnBoardingManager_chronicle) entryForFeature:6];

    selfCopy = v4;
    if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

- (void)recordUserWasOnBoardedToSolarium
{
  selfCopy = self;
  sub_188BC();
}

- (_TtC13BuddyMigrator25SolariumOnBoardingManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end