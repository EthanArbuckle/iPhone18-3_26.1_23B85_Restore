@interface CycleChartsView
- (_TtC24MenstrualCyclesAppPlugin15CycleChartsView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
- (void)layoutSubviews;
- (void)scrollViewDidScroll:(id)a3;
@end

@implementation CycleChartsView

- (void)layoutSubviews
{
  v2 = self;
  sub_29E2B8D98();
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_29E2B8F18(x, y, width, height);
}

- (_TtC24MenstrualCyclesAppPlugin15CycleChartsView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_29E2B9658();
}

@end