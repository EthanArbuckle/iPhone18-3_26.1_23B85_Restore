@interface CycleChartLeadingAxisHeaderFooterView
- (_TtC24MenstrualCyclesAppPlugin37CycleChartLeadingAxisHeaderFooterView)initWithCoder:(id)coder;
- (void)drawRect:(CGRect)rect;
@end

@implementation CycleChartLeadingAxisHeaderFooterView

- (_TtC24MenstrualCyclesAppPlugin37CycleChartLeadingAxisHeaderFooterView)initWithCoder:(id)coder
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

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  sub_29DEC8694(x, y, width, height);
}

@end