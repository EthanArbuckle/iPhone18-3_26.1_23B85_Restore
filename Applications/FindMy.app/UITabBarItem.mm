@interface UITabBarItem
- (NSString)largeContentTitle;
- (UIEdgeInsets)largeContentImageInsets;
- (UIImage)largeContentImage;
@end

@implementation UITabBarItem

- (NSString)largeContentTitle
{
  selfCopy = self;
  title = [(UITabBarItem *)selfCopy title];
  if (title)
  {
    v4 = title;
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
  image = [(UITabBarItem *)self image];

  return image;
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