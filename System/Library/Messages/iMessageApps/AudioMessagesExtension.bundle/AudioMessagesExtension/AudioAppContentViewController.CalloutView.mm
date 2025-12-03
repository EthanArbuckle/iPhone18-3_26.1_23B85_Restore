@interface AudioAppContentViewController.CalloutView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation AudioAppContentViewController.CalloutView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_32F58();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  sub_39EFC();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end