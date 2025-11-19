@interface AAUIAwardsQuery
- (BOOL)activateAndReturnError:(id *)a3;
- (_TtC22ActivityAchievementsUI15AAUIAwardsQuery)init;
- (_TtC22ActivityAchievementsUI15AAUIAwardsQuery)initWithInitialAwardsHandler:(id)a3 addedAwardsHandler:(id)a4 removedAwardsHandler:(id)a5 updatedAwardsHandler:(id)a6;
- (void)deactivate;
@end

@implementation AAUIAwardsQuery

- (_TtC22ActivityAchievementsUI15AAUIAwardsQuery)initWithInitialAwardsHandler:(id)a3 addedAwardsHandler:(id)a4 removedAwardsHandler:(id)a5 updatedAwardsHandler:(id)a6
{
  v10 = _Block_copy(a3);
  v11 = _Block_copy(a4);
  v12 = _Block_copy(a5);
  v13 = _Block_copy(a6);
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

- (BOOL)activateAndReturnError:(id *)a3
{
  v3 = self;
  sub_23E4DCC4C();

  return 1;
}

- (void)deactivate
{
  v2 = self;
  sub_23E4DCC3C();
}

- (_TtC22ActivityAchievementsUI15AAUIAwardsQuery)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end