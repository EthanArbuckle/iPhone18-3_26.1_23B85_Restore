@interface AAUIActivityAwardsDateQuery
- (BOOL)activateAndReturnError:(id *)error;
- (_TtC22ActivityAchievementsUI27AAUIActivityAwardsDateQuery)init;
- (_TtC22ActivityAchievementsUI27AAUIActivityAwardsDateQuery)initWithDateComponents:(id)components initialAwardsHandler:(id)handler updateHandler:(id)updateHandler;
- (void)deactivate;
@end

@implementation AAUIActivityAwardsDateQuery

- (_TtC22ActivityAchievementsUI27AAUIActivityAwardsDateQuery)initWithDateComponents:(id)components initialAwardsHandler:(id)handler updateHandler:(id)updateHandler
{
  v8 = sub_23E4DCB1C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = _Block_copy(handler);
  v16 = _Block_copy(updateHandler);
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

- (BOOL)activateAndReturnError:(id *)error
{
  selfCopy = self;
  sub_23E4DCC8C();

  return 1;
}

- (void)deactivate
{
  selfCopy = self;
  sub_23E4DCC6C();
}

- (_TtC22ActivityAchievementsUI27AAUIActivityAwardsDateQuery)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end