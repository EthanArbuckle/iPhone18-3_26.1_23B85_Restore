@interface UITabBarItem
- (NSString)largeContentTitle;
- (UIEdgeInsets)largeContentImageInsets;
- (UIImage)largeContentImage;
@end

@implementation UITabBarItem

- (NSString)largeContentTitle
{
  v2 = self;
  v3 = [(UITabBarItem *)v2 title];
  if (v3)
  {
    v4 = v3;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = String._bridgeToObjectiveC()();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (UIImage)largeContentImage
{
  v2 = [(UITabBarItem *)self image];

  return v2;
}

- (UIEdgeInsets)largeContentImageInsets
{
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end