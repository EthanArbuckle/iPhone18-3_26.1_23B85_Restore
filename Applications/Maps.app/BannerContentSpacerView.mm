@interface BannerContentSpacerView
- (BannerContentSpacerView)initWithFrame:(CGRect)frame;
- (id)accessibilityIdentifier;
@end

@implementation BannerContentSpacerView

- (id)accessibilityIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (BannerContentSpacerView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = BannerContentSpacerView;
  result = [(BannerContentSpacerView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_axis = -1;
  }

  return result;
}

@end