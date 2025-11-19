@interface CAMFlashStatusIndicatorAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation CAMFlashStatusIndicatorAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CAMFlashStatusIndicator" hasInstanceMethod:@"flashMode" withFullSignature:{"q", 0}];
  [v3 validateClass:@"CAMFlashStatusIndicator" hasInstanceMethod:@"isFlashUnavailable" withFullSignature:{"B", 0}];
}

- (id)accessibilityValue
{
  if (([(CAMFlashStatusIndicatorAccessibility *)self safeBoolForKey:@"isFlashUnavailable"]& 1) != 0)
  {
    v3 = @"FLASH_MODE_BUTTON_UNAVAILABLE";
  }

  else
  {
    v4 = [(CAMFlashStatusIndicatorAccessibility *)self safeValueForKey:@"flashMode"];
    v5 = [v4 integerValue];

    v6 = @"FLASH_MODE_BUTTON_VALUE_AUTO";
    if (v5 == 1)
    {
      v6 = @"FLASH_MODE_BUTTON_VALUE_ON";
    }

    if (v5)
    {
      v3 = v6;
    }

    else
    {
      v3 = @"FLASH_MODE_BUTTON_VALUE_OFF";
    }
  }

  v7 = accessibilityCameraKitLocalizedString(v3);

  return v7;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CAMFlashStatusIndicatorAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CAMFlashStatusIndicatorAccessibility *)&v3 accessibilityTraits];
}

@end