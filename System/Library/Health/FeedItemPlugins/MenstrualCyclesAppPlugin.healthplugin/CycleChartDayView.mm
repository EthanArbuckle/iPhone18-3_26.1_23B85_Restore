@interface CycleChartDayView
- (NSString)description;
- (_TtC24MenstrualCyclesAppPlugin17CycleChartDayView)initWithCoder:(id)coder;
- (void)drawRect:(CGRect)rect;
@end

@implementation CycleChartDayView

- (NSString)description
{
  selfCopy = self;
  sub_29E2B6C68();

  v3 = sub_29E2C33A4();

  return v3;
}

- (_TtC24MenstrualCyclesAppPlugin17CycleChartDayView)initWithCoder:(id)coder
{
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
  sub_29E2B6D74(x, y, width, height);
}

@end