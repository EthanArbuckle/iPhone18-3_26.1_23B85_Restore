@interface CycleChartLeadingAxisView
- (_TtC24MenstrualCyclesAppPlugin25CycleChartLeadingAxisView)initWithCoder:(id)coder;
- (void)drawRect:(CGRect)rect;
- (void)layoutSubviews;
@end

@implementation CycleChartLeadingAxisView

- (_TtC24MenstrualCyclesAppPlugin25CycleChartLeadingAxisView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25CycleChartLeadingAxisView_role) = 0;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_29E239958();
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  sub_29E239CA0(x, y, width, height);
}

@end