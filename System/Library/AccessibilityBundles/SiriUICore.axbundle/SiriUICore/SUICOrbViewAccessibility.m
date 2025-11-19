@interface SUICOrbViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (void)accessibilityElementDidLoseFocus;
@end

@implementation SUICOrbViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  if (AXProcessIsSpringBoard())
  {
    [v3 validateClass:@"AFUISiriCompactView"];
  }
}

- (BOOL)isAccessibilityElement
{
  v2 = [(SUICOrbViewAccessibility *)self accessibilityIdentification];
  v3 = [v2 isEqualToString:@"EnrollmentSetupIntroView"];

  return v3 ^ 1;
}

- (void)accessibilityElementDidLoseFocus
{
  v2 = [(SUICOrbViewAccessibility *)self _accessibilityViewAncestorIsKindOf:MEMORY[0x29ED36150](@"AFUISiriCompactView", a2)];
  [v2 accessibilityElementDidLoseFocus];
}

@end