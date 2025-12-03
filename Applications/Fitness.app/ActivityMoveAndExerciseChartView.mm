@interface ActivityMoveAndExerciseChartView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSArray)moveAndExerciseChartPoints;
- (double)moveAndExerciseChartMaxYValue;
- (void)layoutSubviews;
- (void)reloadDataWithShowFull:(BOOL)full animated:(BOOL)animated;
- (void)updateFonts;
@end

@implementation ActivityMoveAndExerciseChartView

- (CGSize)intrinsicContentSize
{
  v3 = objc_opt_self();
  selfCopy = self;
  mainScreen = [v3 mainScreen];
  [mainScreen bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v21.origin.x = v7;
  v21.origin.y = v9;
  v21.size.width = v11;
  v21.size.height = v13;
  [(ActivityMoveAndExerciseChartView *)selfCopy sizeThatFits:CGRectGetWidth(v21), 1.79769313e308];
  v15 = v14;
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)updateFonts
{
  selfCopy = self;
  sub_10038537C();
}

- (void)reloadDataWithShowFull:(BOOL)full animated:(BOOL)animated
{
  animatedCopy = animated;
  fullCopy = full;
  selfCopy = self;
  sub_100385598(fullCopy, animatedCopy);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100386288();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC10FitnessApp32ActivityMoveAndExerciseChartView_chartHeight);
  sub_100386F04();
  v6 = v4 + v5;
  v7 = width;
  result.height = v6;
  result.width = v7;
  return result;
}

- (NSArray)moveAndExerciseChartPoints
{
  selfCopy = self;
  sub_1003868EC();

  type metadata accessor for CGPoint(0);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (double)moveAndExerciseChartMaxYValue
{
  selfCopy = self;
  sub_100384174(v4);

  sub_100386E54(v4);
  return v5;
}

@end