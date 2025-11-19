@interface SolariumOnBoardingManager
- (BOOL)shouldLaunchToOnBoardUserToSolarium;
- (_TtC5Setup25SolariumOnBoardingManager)init;
- (_TtC5Setup25SolariumOnBoardingManager)initWithChronicle:(id)a3 featureFlags:(id)a4;
- (void)recordUserWasOnBoardedToSolarium;
@end

@implementation SolariumOnBoardingManager

- (_TtC5Setup25SolariumOnBoardingManager)initWithChronicle:(id)a3 featureFlags:(id)a4
{
  *(&self->super.isa + OBJC_IVAR____TtC5Setup25SolariumOnBoardingManager_chronicle) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC5Setup25SolariumOnBoardingManager_featureFlags) = a4;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SolariumOnBoardingManager();
  v5 = a3;
  swift_unknownObjectRetain();
  return [(SolariumOnBoardingManager *)&v7 init];
}

- (BOOL)shouldLaunchToOnBoardUserToSolarium
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC5Setup25SolariumOnBoardingManager_featureFlags);
  v3 = self;
  if ([v2 isSolariumEnabled])
  {
    v4 = [*(&v3->super.isa + OBJC_IVAR____TtC5Setup25SolariumOnBoardingManager_chronicle) entryForFeature:6];

    v3 = v4;
    if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

- (void)recordUserWasOnBoardedToSolarium
{
  v2 = self;
  sub_100015C28();
}

- (_TtC5Setup25SolariumOnBoardingManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end