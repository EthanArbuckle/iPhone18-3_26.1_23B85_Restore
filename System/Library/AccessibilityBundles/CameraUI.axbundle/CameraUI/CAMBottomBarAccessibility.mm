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

  _accessibilityWindow = [(CAMBottomBarAccessibility *)self _accessibilityWindow];
  window = [_accessibilityWindow window];
  windowScene = [window windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];

  return (interfaceOrientation - 1) < 2;
}

@end