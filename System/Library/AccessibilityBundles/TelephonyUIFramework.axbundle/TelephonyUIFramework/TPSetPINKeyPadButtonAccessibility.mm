@interface TPSetPINKeyPadButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityIsBlankButton;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation TPSetPINKeyPadButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TPSetPINKeyPadButton" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"TPSetPINKeyPadButton" isKindOfClass:@"TPNumberPadButton"];
  [validationsCopy validateClass:@"TPNumberPadButton" hasInstanceMethod:@"character" withFullSignature:{"q", 0}];
}

- (BOOL)_accessibilityIsBlankButton
{
  v2 = [(TPSetPINKeyPadButtonAccessibility *)self safeValueForKey:@"character"];
  integerValue = [v2 integerValue];

  return integerValue == 13;
}

- (unint64_t)accessibilityTraits
{
  if ([(TPSetPINKeyPadButtonAccessibility *)self _accessibilityIsBlankButton])
  {
    return *MEMORY[0x29EDC7FA0];
  }

  else
  {
    return *MEMORY[0x29EDC7F90] | *MEMORY[0x29EDC7F70] | *MEMORY[0x29EDC7FB0];
  }
}

- (id)accessibilityLabel
{
  v2 = [(TPSetPINKeyPadButtonAccessibility *)self safeValueForKey:@"character"];
  integerValue = [v2 integerValue];

  v4 = 0;
  if (integerValue <= 4)
  {
    if (integerValue <= 1 && integerValue > 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (integerValue <= 8 || integerValue == 10)
  {
LABEL_10:
    v4 = AXFormatInteger();
    goto LABEL_11;
  }

  if (integerValue == 12)
  {
    v5 = @"number.pad.delete";
    v6 = accessibilityLocalizedString(@"number.pad.delete");
    goto LABEL_12;
  }

LABEL_11:
  v6 = v4;
  v5 = v6;
LABEL_12:
  v7 = v6;

  return v7;
}

@end