@interface DayViewStandChartTableViewCell
- (_TtC10FitnessApp30DayViewStandChartTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)updateFonts;
@end

@implementation DayViewStandChartTableViewCell

- (_TtC10FitnessApp30DayViewStandChartTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  sub_1001EE628(style, identifier, v6);
  return result;
}

- (void)updateFonts
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_idleHoursLabel);
  v4 = objc_opt_self();
  selfCopy = self;
  v5 = [v4 preferredFontForTextStyle:UIFontTextStyleCaption1];
  [v3 setFont:v5];

  [(DayViewStandChartTableViewCell *)selfCopy setNeedsLayout];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for DayViewStandChartTableViewCell();
  v2 = v5.receiver;
  [(DayViewStandChartTableViewCell *)&v5 layoutSubviews];
  v3 = OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_editGoalButton;
  layer = [*&v2[OBJC_IVAR____TtC10FitnessApp30DayViewStandChartTableViewCell_editGoalButton] layer];
  [*&v2[v3] frame];
  [layer setCornerRadius:CGRectGetHeight(v6) * 0.5];
}

@end