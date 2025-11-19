@interface WelcomeViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation WelcomeViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  objc_opt_class();
  v3 = [(WelcomeViewAccessibility *)self safeSwiftValueForKey:@"stackView"];
  v4 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v5 = [v4 arrangedSubviews];
  v6 = [v5 objectAtIndex:0];
  v7 = __UIAccessibilityCastAsClass();

  if (v7)
  {
    v8 = [v7 _accessibilityFindDescendant:&__block_literal_global_0];
    v9 = [v8 accessibilityTraits];
    [v8 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | v9];
  }

  v10.receiver = self;
  v10.super_class = WelcomeViewAccessibility;
  [(WelcomeViewAccessibility *)&v10 _accessibilityLoadAccessibilityInformation];
}

uint64_t __70__WelcomeViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end