@interface FMBatteryView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation FMBatteryView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1000485DC();
}

- (CGSize)intrinsicContentSize
{
  [(FMBatteryView *)self bounds];
  v3 = v2;
  v4 = UIViewNoIntrinsicMetric;
  result.height = v3;
  result.width = v4;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(FMBatteryView *)self bounds:fits.width];
  v4 = v3;
  v6 = v5;
  result.height = v6;
  result.width = v4;
  return result;
}

@end