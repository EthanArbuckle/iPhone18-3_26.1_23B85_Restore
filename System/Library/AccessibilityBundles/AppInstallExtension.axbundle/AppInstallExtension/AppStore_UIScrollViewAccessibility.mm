@interface AppStore_UIScrollViewAccessibility
- (BOOL)_accessibilityOnlyComparesByXAxis;
@end

@implementation AppStore_UIScrollViewAccessibility

- (BOOL)_accessibilityOnlyComparesByXAxis
{
  v3 = [(AppStore_UIScrollViewAccessibility *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"AXHorizontalShelfView"];

  if (v4)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = AppStore_UIScrollViewAccessibility;
  return [(AppStore_UIScrollViewAccessibility *)&v6 _accessibilityOnlyComparesByXAxis];
}

@end