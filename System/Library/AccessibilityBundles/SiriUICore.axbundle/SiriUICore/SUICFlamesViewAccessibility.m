@interface SUICFlamesViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
@end

@implementation SUICFlamesViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SUICFlamesView" hasInstanceVariable:@"_flamesDelegate" withType:"<SUICFlamesViewDelegate>"];
  [v3 validateClass:@"SUICFlamesView" isKindOfClass:@"UIView"];
}

- (BOOL)isAccessibilityElement
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  if ([v2 _accessibilityViewIsVisible])
  {
    v3 = [v2 _accessibilityWindowVisible];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end