@interface AAUIActivityAwardsDateQuery
- (BOOL)activateAndReturnError:(id *)a3;
- (_TtC22ActivityAchievementsUI27AAUIActivityAwardsDateQuery)init;
- (_TtC22ActivityAchievementsUI27AAUIActivityAwardsDateQuery)initWithDateComponents:(id)a3 initialAwardsHandler:(id)a4 updateHandler:(id)a5;
- (void)deactivate;
@end

@implementation AAUIActivityAwardsDateQuery

- (_TtC22ActivityAchievementsUI27AAUIActivityAwardsDateQuery)initWithDateComponents:(id)a3 initialAwardsHandler:(id)a4 updateHandler:(id)a5
{
  v8 = sub_23E4DCB1C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = _Block_copy(a4);
  v16 = _Block_copy(a5);
  sub_23E4DCB0C();
  *(swift_allocObject() + 16) = v15;
  *(swift_allocObject() + 16) = v16;
  (*(v9 + 16))(v12, v14, v8);
  objc_allocWithZone(sub_23E4DCC9C());

  *(&self->super.isa + OBJC_IVAR____TtC22ActivityAchievementsUI27AAUIActivityAwardsDateQuery_query) = sub_23E4DCC7C();
  v17 = type metadata accessor for AAUIActivityAwardsDateQuery();
  v20.receiver = self;
  v20.super_class = v17;
  v18 = [(AAUIActivityAwardsDateQuery *)&v20 init];

  (*(v9 + 8))(v14, v8);
  return v18;
}

- (BOOL)activateAndReturnError:(id *)a3
{
  v3 = self;
  sub_23E4DCC8C();

  return 1;
}

- (void)deactivate
{
  v2 = self;
  sub_23E4DCC6C();
}

- (_TtC22ActivityAchievementsUI27AAUIActivityAwardsDateQuery)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end