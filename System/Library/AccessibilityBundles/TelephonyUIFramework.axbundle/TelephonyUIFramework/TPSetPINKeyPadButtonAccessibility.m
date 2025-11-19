@interface TPSetPINKeyPadButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityIsBlankButton;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation TPSetPINKeyPadButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TPSetPINKeyPadButton" isKindOfClass:@"UIView"];
  [v3 validateClass:@"TPSetPINKeyPadButton" isKindOfClass:@"TPNumberPadButton"];
  [v3 validateClass:@"TPNumberPadButton" hasInstanceMethod:@"character" withFullSignature:{"q", 0}];
}

- (BOOL)_accessibilityIsBlankButton
{
  v2 = [(TPSetPINKeyPadButtonAccessibility *)self safeValueForKey:@"character"];
  v3 = [v2 integerValue];

  return v3 == 13;
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
  v3 = [v2 integerValue];

  v4 = 0;
  if (v3 <= 4)
  {
    if (v3 <= 1 && v3 > 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v3 <= 8 || v3 == 10)
  {
LABEL_10:
    v4 = AXFormatInteger();
    goto LABEL_11;
  }

  if (v3 == 12)
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