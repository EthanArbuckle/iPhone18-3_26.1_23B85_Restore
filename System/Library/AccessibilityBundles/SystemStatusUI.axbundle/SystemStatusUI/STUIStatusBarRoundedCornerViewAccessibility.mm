@interface STUIStatusBarRoundedCornerViewAccessibility
- (BOOL)_accessibilityViewIsVisible;
@end

@implementation STUIStatusBarRoundedCornerViewAccessibility

- (BOOL)_accessibilityViewIsVisible
{
  MEMORY[0x29ED3ADB0](@"STUIStatusBarPillView", a2);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = STUIStatusBarRoundedCornerViewAccessibility;
  return [(STUIStatusBarRoundedCornerViewAccessibility *)&v4 _accessibilityViewIsVisible];
}

@end