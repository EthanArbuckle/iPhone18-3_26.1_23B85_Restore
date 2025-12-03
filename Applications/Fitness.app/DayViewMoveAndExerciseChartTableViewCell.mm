@interface DayViewMoveAndExerciseChartTableViewCell
- (_TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
@end

@implementation DayViewMoveAndExerciseChartTableViewCell

- (_TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  sub_10037EE3C(style, identifier, v6);
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for DayViewMoveAndExerciseChartTableViewCell();
  v2 = v5.receiver;
  [(DayViewMoveAndExerciseChartTableViewCell *)&v5 layoutSubviews];
  v3 = OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_editGoalButton;
  layer = [*&v2[OBJC_IVAR____TtC10FitnessApp40DayViewMoveAndExerciseChartTableViewCell_editGoalButton] layer];
  [*&v2[v3] frame];
  [layer setCornerRadius:CGRectGetHeight(v6) * 0.5];

  [*&v2[v3] setNeedsLayout];
}

@end