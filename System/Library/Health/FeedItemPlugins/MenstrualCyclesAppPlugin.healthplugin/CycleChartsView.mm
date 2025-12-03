@interface CycleChartsView
- (_TtC24MenstrualCyclesAppPlugin15CycleChartsView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
- (void)layoutSubviews;
- (void)scrollViewDidScroll:(id)scroll;
@end

@implementation CycleChartsView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_29E2B8D98();
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  sub_29E2B8F18(x, y, width, height);
}

- (_TtC24MenstrualCyclesAppPlugin15CycleChartsView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_29E2B9658();
}

@end