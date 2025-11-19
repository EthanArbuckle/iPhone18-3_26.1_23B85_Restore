@interface CAMExposureBiasStatusIndicatorAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation CAMExposureBiasStatusIndicatorAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CAMExposureBiasStatusIndicator" hasInstanceMethod:@"isExposureValueVisible" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CAMExposureBiasStatusIndicator" hasInstanceMethod:@"_exposureLabel" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CAMExposureBiasStatusIndicatorAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CAMExposureBiasStatusIndicatorAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityValue
{
  if (([(CAMExposureBiasStatusIndicatorAccessibility *)self safeBoolForKey:@"isExposureValueVisible"]& 1) != 0)
  {
    v3 = [(CAMExposureBiasStatusIndicatorAccessibility *)self safeValueForKey:@"_exposureLabel"];
    v4 = [v3 accessibilityLabel];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CAMExposureBiasStatusIndicatorAccessibility;
    v4 = [(CAMExposureBiasStatusIndicatorAccessibility *)&v6 accessibilityValue];
  }

  return v4;
}

@end