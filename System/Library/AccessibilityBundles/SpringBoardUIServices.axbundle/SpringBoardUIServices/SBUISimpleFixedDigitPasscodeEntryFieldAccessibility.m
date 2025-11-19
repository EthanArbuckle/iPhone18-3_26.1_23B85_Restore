@interface SBUISimpleFixedDigitPasscodeEntryFieldAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (id)_axBulletStringForEnteredDigits;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)_axNumberOfEnteredDigits;
- (unint64_t)accessibilityTraits;
- (void)_appendString:(id)a3;
- (void)_autofillForBiometricAuthenticationWithCompletion:(id)a3;
- (void)_deleteLastCharacter;
- (void)reset;
@end

@implementation SBUISimpleFixedDigitPasscodeEntryFieldAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBUIPasscodeLockViewBase"];
  [v3 validateClass:@"SBUIPasscodeEntryField" hasInstanceVariable:@"_textField" withType:"SBUIPasscodeTextField"];
  [v3 validateClass:@"SBUINumericPasscodeEntryFieldBase" hasInstanceMethod:@"maxNumbersAllowed" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"SBUISimpleFixedDigitPasscodeEntryField" hasInstanceMethod:@"_deleteLastCharacter" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SBUISimpleFixedDigitPasscodeEntryField" hasInstanceMethod:@"reset" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SBUISimpleFixedDigitPasscodeEntryField" hasInstanceMethod:@"_appendString:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SBUISimpleFixedDigitPasscodeEntryField" hasInstanceMethod:@"_resetForFailedPasscode:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"SBUISimpleFixedDigitPasscodeEntryField" hasInstanceMethod:@"_autofillForBiometricAuthenticationWithCompletion:" withFullSignature:{"v", "@?", 0}];
}

- (BOOL)isAccessibilityElement
{
  v3 = [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Sbuipasscodelo_5.isa)];
  v4 = [v3 _accessibilityViewIsVisible];

  if (!v4)
  {
    return 0;
  }

  return [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)self _accessibilityViewIsVisible];
}

- (id)accessibilityLabel
{
  v2 = [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)self safeValueForKey:@"_textField"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  v3 = [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)self safeValueForKey:@"maxNumbersAllowed"];
  v4 = [v3 unsignedIntegerValue];

  v5 = MEMORY[0x29EDBA0F8];
  v6 = accessibilitySBLocalizedString(@"passcode.values.entered");
  v7 = [v5 localizedStringWithFormat:v6, -[SBUISimpleFixedDigitPasscodeEntryFieldAccessibility _axNumberOfEnteredDigits](self, "_axNumberOfEnteredDigits"), v4];

  return v7;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)self safeValueForKey:@"_textField"];
  v3 = [v2 accessibilityTraits];

  return v3;
}

- (void)reset
{
  v4.receiver = self;
  v4.super_class = SBUISimpleFixedDigitPasscodeEntryFieldAccessibility;
  [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)&v4 reset];
  v3 = [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)self _axBulletStringForEnteredDigits];
  [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)self accessibilityFrame];
  [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)self _accessibilityPostHoverTypingOnlyValueChangedNotificationWithInsertedText:v3 inputFrame:1 isSecureText:?];
}

- (void)_appendString:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBUISimpleFixedDigitPasscodeEntryFieldAccessibility;
  [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)&v5 _appendString:a3];
  v4 = [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)self _axBulletStringForEnteredDigits];
  [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)self accessibilityFrame];
  [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)self _accessibilityPostHoverTypingOnlyValueChangedNotificationWithInsertedText:v4 inputFrame:1 isSecureText:?];
}

- (void)_deleteLastCharacter
{
  v6.receiver = self;
  v6.super_class = SBUISimpleFixedDigitPasscodeEntryFieldAccessibility;
  [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)&v6 _deleteLastCharacter];
  v3 = *MEMORY[0x29EDC7EA8];
  v4 = [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)self accessibilityValue];
  UIAccessibilityPostNotification(v3, v4);

  v5 = [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)self _axBulletStringForEnteredDigits];
  [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)self accessibilityFrame];
  [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)self _accessibilityPostHoverTypingOnlyValueChangedNotificationWithInsertedText:v5 inputFrame:1 isSecureText:?];
}

- (void)_autofillForBiometricAuthenticationWithCompletion:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBUISimpleFixedDigitPasscodeEntryFieldAccessibility;
  [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)&v5 _autofillForBiometricAuthenticationWithCompletion:a3];
  v4 = [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)self _axBulletStringForEnteredDigits];
  [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)self accessibilityFrame];
  [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)self _accessibilityPostHoverTypingOnlyValueChangedNotificationWithInsertedText:v4 inputFrame:1 isSecureText:?];
}

- (unint64_t)_axNumberOfEnteredDigits
{
  objc_opt_class();
  v3 = [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)self safeValueForKey:@"_textField"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 text];
  v6 = [v5 length];

  return v6;
}

- (id)_axBulletStringForEnteredDigits
{
  v2 = [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)self _axNumberOfEnteredDigits];
  if (v2)
  {
    v3 = v2;
    v4 = [MEMORY[0x29EDBA050] stringWithCapacity:v2];
    do
    {
      [v4 appendString:@"•"];
      --v3;
    }

    while (v3);
    v5 = [v4 copy];
  }

  else
  {
    v5 = &stru_2A2319650;
  }

  return v5;
}

@end