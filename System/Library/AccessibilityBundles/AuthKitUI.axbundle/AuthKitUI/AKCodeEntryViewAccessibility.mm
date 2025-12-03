@interface AKCodeEntryViewAccessibility
- (id)accessibilityAttributedValue;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation AKCodeEntryViewAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = AKCodeEntryViewAccessibility;
  return *MEMORY[0x29EDC7598] | [(AKCodeEntryViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7528];
}

- (id)accessibilityLabel
{
  _axVerificationCodeString = [(AKCodeEntryViewAccessibility *)self _axVerificationCodeString];
  v3 = [_axVerificationCodeString length];

  v4 = accessibilityLocalizedString(@"verification.code");
  v5 = MEMORY[0x29EDBA0F8];
  v6 = accessibilityLocalizedString(@"verificarion.code.values.entered");
  v9 = [v5 localizedStringWithFormat:v6, v3, 6];
  v7 = __UIAXStringForVariables();

  return v7;
}

- (id)accessibilityAttributedValue
{
  _axVerificationCodeString = [(AKCodeEntryViewAccessibility *)self _axVerificationCodeString];
  if (_axVerificationCodeString)
  {
    v3 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:_axVerificationCodeString];
    [v3 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD9D0]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end