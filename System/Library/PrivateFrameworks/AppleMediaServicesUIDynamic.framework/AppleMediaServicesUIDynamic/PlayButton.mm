@interface PlayButton
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)didTap;
- (void)layoutSubviews;
@end

@implementation PlayButton

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = sub_1CA1736A4(a3.width, a3.height);
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1CA1736DC();
}

- (void)didTap
{
  v2 = self;
  sub_1CA173808();
}

@end