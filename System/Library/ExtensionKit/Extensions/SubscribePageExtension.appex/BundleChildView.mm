@interface BundleChildView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation BundleChildView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1006D0C04();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  v4 = sub_1006D15D0();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end