@interface PlayButton
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)didTap;
- (void)layoutSubviews;
@end

@implementation PlayButton

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = sub_1CA1736A4(fits.width, fits.height);
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1CA1736DC();
}

- (void)didTap
{
  selfCopy = self;
  sub_1CA173808();
}

@end