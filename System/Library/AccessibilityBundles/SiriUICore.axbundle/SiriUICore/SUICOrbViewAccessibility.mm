@interface SUICOrbViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (void)accessibilityElementDidLoseFocus;
@end

@implementation SUICOrbViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  if (AXProcessIsSpringBoard())
  {
    [validationsCopy validateClass:@"AFUISiriCompactView"];
  }
}

- (BOOL)isAccessibilityElement
{
  accessibilityIdentification = [(SUICOrbViewAccessibility *)self accessibilityIdentification];
  v3 = [accessibilityIdentification isEqualToString:@"EnrollmentSetupIntroView"];

  return v3 ^ 1;
}

- (void)accessibilityElementDidLoseFocus
{
  v2 = [(SUICOrbViewAccessibility *)self _accessibilityViewAncestorIsKindOf:MEMORY[0x29ED36150](@"AFUISiriCompactView", a2)];
  [v2 accessibilityElementDidLoseFocus];
}

@end