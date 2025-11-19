@interface BannerContentSpacerView
- (BannerContentSpacerView)initWithFrame:(CGRect)a3;
- (id)accessibilityIdentifier;
@end

@implementation BannerContentSpacerView

- (id)accessibilityIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (BannerContentSpacerView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = BannerContentSpacerView;
  result = [(BannerContentSpacerView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_axis = -1;
  }

  return result;
}

@end