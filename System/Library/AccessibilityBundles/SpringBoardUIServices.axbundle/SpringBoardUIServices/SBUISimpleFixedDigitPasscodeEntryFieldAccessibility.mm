@interface SBUISimpleFixedDigitPasscodeEntryFieldAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (id)_axBulletStringForEnteredDigits;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)_axNumberOfEnteredDigits;
- (unint64_t)accessibilityTraits;
- (void)_appendString:(id)string;
- (void)_autofillForBiometricAuthenticationWithCompletion:(id)completion;
- (void)_deleteLastCharacter;
- (void)reset;
@end

@implementation SBUISimpleFixedDigitPasscodeEntryFieldAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBUIPasscodeLockViewBase"];
  [validationsCopy validateClass:@"SBUIPasscodeEntryField" hasInstanceVariable:@"_textField" withType:"SBUIPasscodeTextField"];
  [validationsCopy validateClass:@"SBUINumericPasscodeEntryFieldBase" hasInstanceMethod:@"maxNumbersAllowed" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"SBUISimpleFixedDigitPasscodeEntryField" hasInstanceMethod:@"_deleteLastCharacter" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SBUISimpleFixedDigitPasscodeEntryField" hasInstanceMethod:@"reset" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SBUISimpleFixedDigitPasscodeEntryField" hasInstanceMethod:@"_appendString:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SBUISimpleFixedDigitPasscodeEntryField" hasInstanceMethod:@"_resetForFailedPasscode:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"SBUISimpleFixedDigitPasscodeEntryField" hasInstanceMethod:@"_autofillForBiometricAuthenticationWithCompletion:" withFullSignature:{"v", "@?", 0}];
}

- (BOOL)isAccessibilityElement
{
  v3 = [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Sbuipasscodelo_5.isa)];
  _accessibilityViewIsVisible = [v3 _accessibilityViewIsVisible];

  if (!_accessibilityViewIsVisible)
  {
    return 0;
  }

  return [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)self _accessibilityViewIsVisible];
}

- (id)accessibilityLabel
{
  v2 = [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)self safeValueForKey:@"_textField"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  v3 = [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)self safeValueForKey:@"maxNumbersAllowed"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  v5 = MEMORY[0x29EDBA0F8];
  v6 = accessibilitySBLocalizedString(@"passcode.values.entered");
  v7 = [v5 localizedStringWithFormat:v6, -[SBUISimpleFixedDigitPasscodeEntryFieldAccessibility _axNumberOfEnteredDigits](self, "_axNumberOfEnteredDigits"), unsignedIntegerValue];

  return v7;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)self safeValueForKey:@"_textField"];
  accessibilityTraits = [v2 accessibilityTraits];

  return accessibilityTraits;
}

- (void)reset
{
  v4.receiver = self;
  v4.super_class = SBUISimpleFixedDigitPasscodeEntryFieldAccessibility;
  [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)&v4 reset];
  _axBulletStringForEnteredDigits = [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)self _axBulletStringForEnteredDigits];
  [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)self accessibilityFrame];
  [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)self _accessibilityPostHoverTypingOnlyValueChangedNotificationWithInsertedText:_axBulletStringForEnteredDigits inputFrame:1 isSecureText:?];
}

- (void)_appendString:(id)string
{
  v5.receiver = self;
  v5.super_class = SBUISimpleFixedDigitPasscodeEntryFieldAccessibility;
  [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)&v5 _appendString:string];
  _axBulletStringForEnteredDigits = [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)self _axBulletStringForEnteredDigits];
  [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)self accessibilityFrame];
  [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)self _accessibilityPostHoverTypingOnlyValueChangedNotificationWithInsertedText:_axBulletStringForEnteredDigits inputFrame:1 isSecureText:?];
}

- (void)_deleteLastCharacter
{
  v6.receiver = self;
  v6.super_class = SBUISimpleFixedDigitPasscodeEntryFieldAccessibility;
  [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)&v6 _deleteLastCharacter];
  v3 = *MEMORY[0x29EDC7EA8];
  accessibilityValue = [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)self accessibilityValue];
  UIAccessibilityPostNotification(v3, accessibilityValue);

  _axBulletStringForEnteredDigits = [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)self _axBulletStringForEnteredDigits];
  [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)self accessibilityFrame];
  [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)self _accessibilityPostHoverTypingOnlyValueChangedNotificationWithInsertedText:_axBulletStringForEnteredDigits inputFrame:1 isSecureText:?];
}

- (void)_autofillForBiometricAuthenticationWithCompletion:(id)completion
{
  v5.receiver = self;
  v5.super_class = SBUISimpleFixedDigitPasscodeEntryFieldAccessibility;
  [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)&v5 _autofillForBiometricAuthenticationWithCompletion:completion];
  _axBulletStringForEnteredDigits = [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)self _axBulletStringForEnteredDigits];
  [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)self accessibilityFrame];
  [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)self _accessibilityPostHoverTypingOnlyValueChangedNotificationWithInsertedText:_axBulletStringForEnteredDigits inputFrame:1 isSecureText:?];
}

- (unint64_t)_axNumberOfEnteredDigits
{
  objc_opt_class();
  v3 = [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)self safeValueForKey:@"_textField"];
  v4 = __UIAccessibilityCastAsClass();

  text = [v4 text];
  v6 = [text length];

  return v6;
}

- (id)_axBulletStringForEnteredDigits
{
  _axNumberOfEnteredDigits = [(SBUISimpleFixedDigitPasscodeEntryFieldAccessibility *)self _axNumberOfEnteredDigits];
  if (_axNumberOfEnteredDigits)
  {
    v3 = _axNumberOfEnteredDigits;
    v4 = [MEMORY[0x29EDBA050] stringWithCapacity:_axNumberOfEnteredDigits];
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