@interface PKPinCodeFieldAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (_NSRange)_accessibilitySelectedTextRange;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation PKPinCodeFieldAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKPinCodeField" hasInstanceVariable:@"_pinCode" withType:"NSMutableString"];
  [validationsCopy validateClass:@"PKPinCodeField" hasInstanceVariable:@"_pinCodeLength" withType:"Q"];
}

- (_NSRange)_accessibilitySelectedTextRange
{
  v3 = [(PKPinCodeFieldAccessibility *)self safeStringForKey:@"_pinCode"];
  v4 = [v3 length];
  v5 = [(PKPinCodeFieldAccessibility *)self safeUnsignedIntegerForKey:@"_pinCodeLength"];

  v6 = v4;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (id)accessibilityLabel
{
  v3 = accessibilityLocalizedString(@"pin.code.label");
  v4 = MEMORY[0x29EDBA0F8];
  v5 = accessibilityLocalizedString(@"pin.code.values");
  v6 = [(PKPinCodeFieldAccessibility *)self safeStringForKey:@"_pinCode"];
  v9 = [v4 localizedStringWithFormat:v5, objc_msgSend(v6, "length"), -[PKPinCodeFieldAccessibility safeUnsignedIntegerForKey:](self, "safeUnsignedIntegerForKey:", @"_pinCodeLength"];
  v7 = __UIAXStringForVariables();

  return v7;
}

- (id)accessibilityValue
{
  v2 = MEMORY[0x29EDBD7E8];
  v3 = [(PKPinCodeFieldAccessibility *)self safeStringForKey:@"_pinCode"];
  v4 = [v2 axAttributedStringWithString:v3];

  [v4 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDC7F40]];

  return v4;
}

@end