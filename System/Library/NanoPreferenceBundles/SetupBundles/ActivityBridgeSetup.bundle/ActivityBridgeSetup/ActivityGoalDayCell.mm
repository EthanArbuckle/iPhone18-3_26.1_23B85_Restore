@interface ActivityGoalDayCell
- (_TtC19ActivityBridgeSetup19ActivityGoalDayCell)initWithCoder:(id)coder;
- (_TtC19ActivityBridgeSetup19ActivityGoalDayCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setupGoalViewValueChanged:(id)changed value:(id)value;
@end

@implementation ActivityGoalDayCell

- (_TtC19ActivityBridgeSetup19ActivityGoalDayCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = sub_22050();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_15020(style, identifier, v6);
}

- (_TtC19ActivityBridgeSetup19ActivityGoalDayCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC19ActivityBridgeSetup19ActivityGoalDayCell_dayLabel;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC19ActivityBridgeSetup19ActivityGoalDayCell_goalView) = 0;
  *&self->dayLabel[OBJC_IVAR____TtC19ActivityBridgeSetup19ActivityGoalDayCell_delegate] = 0;
  swift_unknownObjectWeakInit();
  result = sub_22130();
  __break(1u);
  return result;
}

- (void)setupGoalViewValueChanged:(id)changed value:(id)value
{
  v6 = self + OBJC_IVAR____TtC19ActivityBridgeSetup19ActivityGoalDayCell_delegate;
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