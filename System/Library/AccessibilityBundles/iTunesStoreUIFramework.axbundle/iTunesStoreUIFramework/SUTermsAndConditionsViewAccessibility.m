@interface SUTermsAndConditionsViewAccessibility
- (id)_termsAndConditionsControl;
@end

@implementation SUTermsAndConditionsViewAccessibility

- (id)_termsAndConditionsControl
{
  v6.receiver = self;
  v6.super_class = SUTermsAndConditionsViewAccessibility;
  v2 = [(SUTermsAndConditionsViewAccessibility *)&v6 _termsAndConditionsControl];
  v3 = [v2 safeValueForKey:@"_label"];
  v4 = [v3 accessibilityTraits];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F98] | v4];

  return v2;
}

@end