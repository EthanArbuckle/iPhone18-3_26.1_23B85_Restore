@interface OnboardingWelcomeViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation OnboardingWelcomeViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = OnboardingWelcomeViewControllerAccessibility;
  [(OnboardingWelcomeViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(OnboardingWelcomeViewControllerAccessibility *)self safeValueForKey:@"view"];
  v4 = [v3 _accessibilityFindDescendant:&__block_literal_global_0];

  [v4 _setAccessibilityTraitsBlock:&__block_literal_global_301];
}

uint64_t __90__OnboardingWelcomeViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 font];
  v5 = [v4 fontDescriptor];

  v6 = [v5 objectForKey:@"NSCTFontUIUsageAttribute"];
  v7 = [MEMORY[0x29EDC76B8] preferredFontDescriptorWithTextStyle:*MEMORY[0x29EDC8108]];
  v8 = [v7 objectForKey:@"NSCTFontUIUsageAttribute"];
  v9 = [v6 isEqualToString:v8];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
LABEL_4:
    v10 = 0;
  }

  return v10;
}

@end