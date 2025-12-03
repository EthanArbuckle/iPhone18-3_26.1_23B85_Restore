@interface _UIScrollViewWolfScrollIndicatorAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityIdentifier;
@end

@implementation _UIScrollViewWolfScrollIndicatorAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
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