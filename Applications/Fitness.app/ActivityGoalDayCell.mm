@interface ActivityGoalDayCell
- (_TtC10FitnessApp19ActivityGoalDayCell)initWithCoder:(id)coder;
- (_TtC10FitnessApp19ActivityGoalDayCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setupGoalViewValueChanged:(id)changed value:(id)value;
@end

@implementation ActivityGoalDayCell

- (_TtC10FitnessApp19ActivityGoalDayCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1005A6C7C(style, identifier, v6);
}

- (_TtC10FitnessApp19ActivityGoalDayCell)initWithCoder:(id)coder
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

- (void)setupGoalViewValueChanged:(id)changed value:(id)value
{
  v6 = self + OBJC_IVAR____TtC10FitnessApp19ActivityGoalDayCell_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    swift_getObjectType();
    v8 = *(v7 + 8);
    valueCopy = value;
    selfCopy = self;
    v8();
    swift_unknownObjectRelease();
  }
}

@end