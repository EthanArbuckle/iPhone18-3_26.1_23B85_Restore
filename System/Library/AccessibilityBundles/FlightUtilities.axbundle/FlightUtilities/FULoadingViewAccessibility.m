@interface FULoadingViewAccessibility
- (BOOL)isAccessibilityElement;
@end

@implementation FULoadingViewAccessibility

- (BOOL)isAccessibilityElement
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 _accessibilityViewIsVisible];

  return v3 ^ 1;
}

@end