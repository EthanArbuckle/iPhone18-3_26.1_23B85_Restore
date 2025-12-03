@interface SUTermsAndConditionsViewAccessibility
- (id)_termsAndConditionsControl;
@end

@implementation SUTermsAndConditionsViewAccessibility

- (id)_termsAndConditionsControl
{
  v6.receiver = self;
  v6.super_class = SUTermsAndConditionsViewAccessibility;
  _termsAndConditionsControl = [(SUTermsAndConditionsViewAccessibility *)&v6 _termsAndConditionsControl];
  v3 = [_termsAndConditionsControl safeValueForKey:@"_label"];
  accessibilityTraits = [v3 accessibilityTraits];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F98] | accessibilityTraits];

  return _termsAndConditionsControl;
}

@end