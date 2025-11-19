@interface CAMProResStatusIndicatorAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation CAMProResStatusIndicatorAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CAMProResStatusIndicator" hasInstanceMethod:@"proResVideoMode" withFullSignature:{"q", 0}];
  [v3 validateClass:@"CAMProResStatusIndicator" hasInstanceMethod:@"colorSpace" withFullSignature:{"q", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(CAMProResStatusIndicatorAccessibility *)self safeIntegerForKey:@"colorSpace"];
  if (v3 < 2)
  {
    v4 = @"pro.res.button.sdr";
    goto LABEL_7;
  }

  if (v3 == 2)
  {
    v4 = @"pro.res.button.hdr";
    goto LABEL_7;
  }

  if (v3 == 3)
  {
    v4 = @"pro.res.button.log";
LABEL_7:
    v5 = accessibilityCameraUILocalizedString(v4);
    goto LABEL_8;
  }

  v7.receiver = self;
  v7.super_class = CAMProResStatusIndicatorAccessibility;
  v5 = [(CAMProResStatusIndicatorAccessibility *)&v7 accessibilityLabel];
LABEL_8:

  return v5;
}

- (id)accessibilityValue
{
  if ([(CAMProResStatusIndicatorAccessibility *)self safeIntegerForKey:@"proResVideoMode"])
  {
    v2 = @"on.state";
  }

  else
  {
    v2 = @"off.state";
  }

  v3 = accessibilityCameraUILocalizedString(v2);

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CAMProResStatusIndicatorAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CAMProResStatusIndicatorAccessibility *)&v3 accessibilityTraits];
}

@end