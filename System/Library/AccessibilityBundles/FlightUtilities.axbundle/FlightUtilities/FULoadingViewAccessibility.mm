@interface FULoadingViewAccessibility
- (BOOL)isAccessibilityElement;
@end

@implementation FULoadingViewAccessibility

- (BOOL)isAccessibilityElement
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  _accessibilityViewIsVisible = [v2 _accessibilityViewIsVisible];

  return _accessibilityViewIsVisible ^ 1;
}

@end