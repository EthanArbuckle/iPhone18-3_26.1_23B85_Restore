@interface CAMRAWStatusIndicatorAccessibility
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation CAMRAWStatusIndicatorAccessibility

- (id)accessibilityValue
{
  v2 = [(CAMRAWStatusIndicatorAccessibility *)self safeValueForKey:@"rawMode"];
  v3 = [v2 integerValue];

  if (!v3)
  {
    v4 = @"RAW_MODE_BUTTON_VALUE_OFF";
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = @"RAW_MODE_BUTTON_VALUE_ON";
LABEL_5:
    v5 = accessibilityCameraUILocalizedString(v4);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CAMRAWStatusIndicatorAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CAMRAWStatusIndicatorAccessibility *)&v3 accessibilityTraits];
}

@end