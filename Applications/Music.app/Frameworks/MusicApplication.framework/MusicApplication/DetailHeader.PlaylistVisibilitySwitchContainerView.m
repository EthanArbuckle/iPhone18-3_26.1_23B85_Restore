@interface DetailHeader.PlaylistVisibilitySwitchContainerView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)result;
- (void)layoutSubviews;
@end

@implementation DetailHeader.PlaylistVisibilitySwitchContainerView

- (void)layoutSubviews
{
  v2 = self;
  sub_2A8150();
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = 56.0;
  result.height = v3;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = UIViewNoIntrinsicMetric;
  v3 = 56.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end