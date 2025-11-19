@interface CycleChartDayBackgroundView
- (NSString)description;
- (_TtC24MenstrualCyclesAppPlugin27CycleChartDayBackgroundView)initWithCoder:(id)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation CycleChartDayBackgroundView

- (NSString)description
{
  v2 = self;
  sub_29E28A908();

  v3 = sub_29E2C33A4();

  return v3;
}

- (_TtC24MenstrualCyclesAppPlugin27CycleChartDayBackgroundView)initWithCoder:(id)a3
{
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
  sub_29E28AC0C(x, y, width, height);
}

@end