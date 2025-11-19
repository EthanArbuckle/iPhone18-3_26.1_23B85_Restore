@interface ActivityMoveAndExerciseChartView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSArray)moveAndExerciseChartPoints;
- (double)moveAndExerciseChartMaxYValue;
- (void)layoutSubviews;
- (void)reloadDataWithShowFull:(BOOL)a3 animated:(BOOL)a4;
- (void)updateFonts;
@end

@implementation ActivityMoveAndExerciseChartView

- (CGSize)intrinsicContentSize
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 mainScreen];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v21.origin.x = v7;
  v21.origin.y = v9;
  v21.size.width = v11;
  v21.size.height = v13;
  [(ActivityMoveAndExerciseChartView *)v4 sizeThatFits:CGRectGetWidth(v21), 1.79769313e308];
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
  v2 = self;
  sub_10038537C();
}

- (void)reloadDataWithShowFull:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = self;
  sub_100385598(v5, v4);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100386288();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
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
  v2 = self;
  sub_1003868EC();

  type metadata accessor for CGPoint(0);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (double)moveAndExerciseChartMaxYValue
{
  v2 = self;
  sub_100384174(v4);

  sub_100386E54(v4);
  return v5;
}

@end