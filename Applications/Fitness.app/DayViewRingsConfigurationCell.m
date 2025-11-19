@interface DayViewRingsConfigurationCell
- (_TtC10FitnessApp29DayViewRingsConfigurationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)onLeftButtonPressed:(id)a3;
- (void)onRightButtonPressed:(id)a3;
@end

@implementation DayViewRingsConfigurationCell

- (_TtC10FitnessApp29DayViewRingsConfigurationCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  sub_100434B28(a3, a4, v6);
  return result;
}

- (void)onLeftButtonPressed:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100435D64(&OBJC_IVAR____TtC10FitnessApp29DayViewRingsConfigurationCell_onUnpauseRings, &OBJC_IVAR____TtC10FitnessApp29DayViewRingsConfigurationCell_onChangeGoals);
}

- (void)onRightButtonPressed:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100435D64(&OBJC_IVAR____TtC10FitnessApp29DayViewRingsConfigurationCell_onEditPauseRings, &OBJC_IVAR____TtC10FitnessApp29DayViewRingsConfigurationCell_onPauseRings);
}

@end