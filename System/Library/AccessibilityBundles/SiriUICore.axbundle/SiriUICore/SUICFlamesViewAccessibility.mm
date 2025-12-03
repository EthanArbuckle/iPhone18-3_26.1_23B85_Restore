@interface SUICFlamesViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
@end

@implementation SUICFlamesViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SUICFlamesView" hasInstanceVariable:@"_flamesDelegate" withType:"<SUICFlamesViewDelegate>"];
  [validationsCopy validateClass:@"SUICFlamesView" isKindOfClass:@"UIView"];
}

- (BOOL)isAccessibilityElement
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  if ([v2 _accessibilityViewIsVisible])
  {
    _accessibilityWindowVisible = [v2 _accessibilityWindowVisible];
  }

  else
  {
    _accessibilityWindowVisible = 0;
  }

  return _accessibilityWindowVisible;
}

@end