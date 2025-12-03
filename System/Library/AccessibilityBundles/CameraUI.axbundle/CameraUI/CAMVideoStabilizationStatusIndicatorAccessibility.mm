@interface CAMVideoStabilizationStatusIndicatorAccessibility
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation CAMVideoStabilizationStatusIndicatorAccessibility

- (id)accessibilityValue
{
  v2 = [(CAMVideoStabilizationStatusIndicatorAccessibility *)self safeValueForKey:@"videoStabilizationMode"];
  integerValue = [v2 integerValue];

  if (!integerValue)
  {
    v4 = @"Action_Mode_Off";
    goto LABEL_5;
  }

  if (integerValue == 1)
  {
    v4 = @"Action_Mode_On";
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
  v3.super_class = CAMVideoStabilizationStatusIndicatorAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CAMVideoStabilizationStatusIndicatorAccessibility *)&v3 accessibilityTraits];
}

@end