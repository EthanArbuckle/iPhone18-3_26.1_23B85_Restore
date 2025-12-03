@interface DayViewRingsConfigurationCell
- (_TtC10FitnessApp29DayViewRingsConfigurationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)onLeftButtonPressed:(id)pressed;
- (void)onRightButtonPressed:(id)pressed;
@end

@implementation DayViewRingsConfigurationCell

- (_TtC10FitnessApp29DayViewRingsConfigurationCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  sub_100434B28(style, identifier, v6);
  return result;
}

- (void)onLeftButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  selfCopy = self;
  sub_100435D64(&OBJC_IVAR____TtC10FitnessApp29DayViewRingsConfigurationCell_onUnpauseRings, &OBJC_IVAR____TtC10FitnessApp29DayViewRingsConfigurationCell_onChangeGoals);
}

- (void)onRightButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  selfCopy = self;
  sub_100435D64(&OBJC_IVAR____TtC10FitnessApp29DayViewRingsConfigurationCell_onEditPauseRings, &OBJC_IVAR____TtC10FitnessApp29DayViewRingsConfigurationCell_onPauseRings);
}

@end