@interface GoalDaysModel
- (NSArray)goalDays;
- (_TtC10FitnessApp13GoalDaysModel)init;
- (_TtC10FitnessApp13GoalDaysModel)initWithGoalSchedule:(id)a3;
- (void)setGoalDays:(id)a3;
@end

@implementation GoalDaysModel

- (NSArray)goalDays
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  static Published.subscript.getter();

  type metadata accessor for GoalDay();
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (void)setGoalDays:(id)a3
{
  type metadata accessor for GoalDay();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = self;
  static Published.subscript.setter();
}

- (_TtC10FitnessApp13GoalDaysModel)initWithGoalSchedule:(id)a3
{
  v4 = a3;
  v5 = sub_1004F980C();
  swift_beginAccess();
  v10 = v5;
  sub_100140278(&qword_1008E26D8);
  Published.init(initialValue:)();
  swift_endAccess();
  v6 = [v4 goalType];
  *(&self->super.isa + OBJC_IVAR____TtC10FitnessApp13GoalDaysModel_goalType) = v6;
  v9.receiver = self;
  v9.super_class = type metadata accessor for GoalDaysModel();
  v7 = [(GoalDaysModel *)&v9 init];

  return v7;
}

- (_TtC10FitnessApp13GoalDaysModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end