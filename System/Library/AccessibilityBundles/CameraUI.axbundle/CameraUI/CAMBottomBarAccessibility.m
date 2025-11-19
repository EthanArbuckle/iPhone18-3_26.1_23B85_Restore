@interface CAMBottomBarAccessibility
- (BOOL)_accessibilityOnlyComparesByXAxis;
@end

@implementation CAMBottomBarAccessibility

- (BOOL)_accessibilityOnlyComparesByXAxis
{
  if (AXDeviceIsPad() & 1) != 0 || (AXDeviceIsTallPhoneIdiom())
  {
    return 0;
  }

  if (!AXDeviceIsPhone())
  {
    return 1;
  }

  v4 = [(CAMBottomBarAccessibility *)self _accessibilityWindow];
  v5 = [v4 window];
  v6 = [v5 windowScene];
  v7 = [v6 interfaceOrientation];

  return (v7 - 1) < 2;
}

@end