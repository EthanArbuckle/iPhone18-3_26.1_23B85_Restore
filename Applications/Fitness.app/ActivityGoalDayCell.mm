@interface ActivityGoalDayCell
- (_TtC10FitnessApp19ActivityGoalDayCell)initWithCoder:(id)a3;
- (_TtC10FitnessApp19ActivityGoalDayCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)setupGoalViewValueChanged:(id)a3 value:(id)a4;
@end

@implementation ActivityGoalDayCell

- (_TtC10FitnessApp19ActivityGoalDayCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1005A6C7C(a3, a4, v6);
}

- (_TtC10FitnessApp19ActivityGoalDayCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC10FitnessApp19ActivityGoalDayCell_dayLabel;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp19ActivityGoalDayCell_goalView) = 0;
  *&self->dayLabel[OBJC_IVAR____TtC10FitnessApp19ActivityGoalDayCell_delegate] = 0;
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)setupGoalViewValueChanged:(id)a3 value:(id)a4
{
  v6 = self + OBJC_IVAR____TtC10FitnessApp19ActivityGoalDayCell_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    swift_getObjectType();
    v8 = *(v7 + 8);
    v9 = a4;
    v10 = self;
    v8();
    swift_unknownObjectRelease();
  }
}

@end