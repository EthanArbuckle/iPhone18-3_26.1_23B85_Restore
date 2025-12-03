@interface GoalDaysModel
- (NSArray)goalDays;
- (_TtC19ActivityBridgeSetup13GoalDaysModel)init;
- (_TtC19ActivityBridgeSetup13GoalDaysModel)initWithGoalSchedule:(id)schedule;
- (void)setGoalDays:(id)days;
@end

@implementation GoalDaysModel

- (NSArray)goalDays
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_21A90();

  type metadata accessor for GoalDay();
  v4.super.isa = sub_22070().super.isa;

  return v4.super.isa;
}

- (void)setGoalDays:(id)days
{
  type metadata accessor for GoalDay();
  sub_22080();
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_21AA0();
}

- (_TtC19ActivityBridgeSetup13GoalDaysModel)initWithGoalSchedule:(id)schedule
{
  scheduleCopy = schedule;
  v5 = sub_15CB0();
  swift_beginAccess();
  v10 = v5;
  sub_140C4(&qword_3CA20, &qword_27318);
  sub_21A70();
  swift_endAccess();
  goalType = [scheduleCopy goalType];
  *(&self->super.isa + OBJC_IVAR____TtC19ActivityBridgeSetup13GoalDaysModel_goalType) = goalType;
  v9.receiver = self;
  v9.super_class = type metadata accessor for GoalDaysModel();
  v7 = [(GoalDaysModel *)&v9 init];

  return v7;
}

- (_TtC19ActivityBridgeSetup13GoalDaysModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end