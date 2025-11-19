@interface ActivityStandChartView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSArray)standChartPoints;
- (void)layoutSubviews;
- (void)reloadDataWithAnimated:(BOOL)a3;
@end

@implementation ActivityStandChartView

- (void)reloadDataWithAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_100664E68(v3);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1006656F8();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC10FitnessApp22ActivityStandChartView_chartHeight);
  sub_100386F04();
  v6 = v4 + v5;
  v7 = width;
  result.height = v6;
  result.width = v7;
  return result;
}

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
  [(ActivityStandChartView *)v4 sizeThatFits:CGRectGetWidth(v21), 1.79769313e308];
  v15 = v14;
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (NSArray)standChartPoints
{
  v2 = self;
  sub_100665C28();

  type metadata accessor for CGPoint(0);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

@end