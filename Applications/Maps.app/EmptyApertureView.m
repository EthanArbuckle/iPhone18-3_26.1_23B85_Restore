@interface EmptyApertureView
- (CGSize)intrinsicContentSize;
- (id)accessibilityIdentifier;
@end

@implementation EmptyApertureView

- (id)accessibilityIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (CGSize)intrinsicContentSize
{
  v2 = 1.0;
  v3 = 1.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end