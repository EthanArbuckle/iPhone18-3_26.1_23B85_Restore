@interface AAUIAwardsQuery
- (BOOL)activateAndReturnError:(id *)error;
- (_TtC22ActivityAchievementsUI15AAUIAwardsQuery)init;
- (_TtC22ActivityAchievementsUI15AAUIAwardsQuery)initWithInitialAwardsHandler:(id)handler addedAwardsHandler:(id)awardsHandler removedAwardsHandler:(id)removedAwardsHandler updatedAwardsHandler:(id)updatedAwardsHandler;
- (void)deactivate;
@end

@implementation AAUIAwardsQuery

- (_TtC22ActivityAchievementsUI15AAUIAwardsQuery)initWithInitialAwardsHandler:(id)handler addedAwardsHandler:(id)awardsHandler removedAwardsHandler:(id)removedAwardsHandler updatedAwardsHandler:(id)updatedAwardsHandler
{
  v10 = _Block_copy(handler);
  v11 = _Block_copy(awardsHandler);
  v12 = _Block_copy(removedAwardsHandler);
  v13 = _Block_copy(updatedAwardsHandler);
  *(swift_allocObject() + 16) = v10;
  *(swift_allocObject() + 16) = v11;
  *(swift_allocObject() + 16) = v12;
  *(swift_allocObject() + 16) = v13;
  v14 = objc_allocWithZone(sub_23E4DCC5C());

  *(&self->super.isa + OBJC_IVAR____TtC22ActivityAchievementsUI15AAUIAwardsQuery_query) = sub_23E4DCC2C();
  v17.receiver = self;
  v17.super_class = type metadata accessor for AAUIAwardsQuery();
  v15 = [(AAUIAwardsQuery *)&v17 init];

  return v15;
}

- (BOOL)activateAndReturnError:(id *)error
{
  selfCopy = self;
  sub_23E4DCC4C();

  return 1;
}

- (void)deactivate
{
  selfCopy = self;
  sub_23E4DCC3C();
}

- (_TtC22ActivityAchievementsUI15AAUIAwardsQuery)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end