@interface CycleChartLeadingAxisView
- (_TtC24MenstrualCyclesAppPlugin25CycleChartLeadingAxisView)initWithCoder:(id)a3;
- (void)drawRect:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation CycleChartLeadingAxisView

- (_TtC24MenstrualCyclesAppPlugin25CycleChartLeadingAxisView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25CycleChartLeadingAxisView_role) = 0;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_29E239958();
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_29E239CA0(x, y, width, height);
}

@end