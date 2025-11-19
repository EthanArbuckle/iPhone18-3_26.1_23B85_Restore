@interface CycleChartLeadingAxisHeaderFooterView
- (_TtC24MenstrualCyclesAppPlugin37CycleChartLeadingAxisHeaderFooterView)initWithCoder:(id)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation CycleChartLeadingAxisHeaderFooterView

- (_TtC24MenstrualCyclesAppPlugin37CycleChartLeadingAxisHeaderFooterView)initWithCoder:(id)a3
{
  v3 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleChartLeadingAxisHeaderFooterView_header;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[32] = 1;
  v4 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleChartLeadingAxisHeaderFooterView_footer;
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_29DEC8694(x, y, width, height);
}

@end