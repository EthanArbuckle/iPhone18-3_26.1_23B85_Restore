@interface _UIScrollViewWolfScrollIndicatorAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityIdentifier;
@end

@implementation _UIScrollViewWolfScrollIndicatorAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UIScrollViewWolfScrollIndicator" hasInstanceMethod:@"type" withFullSignature:{"Q", 0}];
  objc_storeStrong(v4, obj);
}

- (id)accessibilityIdentifier
{
  if ([(_UIScrollViewWolfScrollIndicatorAccessibility *)self safeUnsignedIntegerForKey:@"type", a2, self]== 1)
  {
    v2 = @"WolfScrollIndicatorVertical";
  }

  else
  {
    v2 = @"WolfScrollIndicatorHorizontal";
  }

  return v2;
}

@end