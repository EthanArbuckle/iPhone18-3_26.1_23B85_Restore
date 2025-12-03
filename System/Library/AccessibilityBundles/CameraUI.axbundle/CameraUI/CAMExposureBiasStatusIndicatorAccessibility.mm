@interface CAMExposureBiasStatusIndicatorAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation CAMExposureBiasStatusIndicatorAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CAMExposureBiasStatusIndicator" hasInstanceMethod:@"isExposureValueVisible" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CAMExposureBiasStatusIndicator" hasInstanceMethod:@"_exposureLabel" withFullSignature:{"@", 0}];
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
    accessibilityLabel = [v3 accessibilityLabel];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CAMExposureBiasStatusIndicatorAccessibility;
    accessibilityLabel = [(CAMExposureBiasStatusIndicatorAccessibility *)&v6 accessibilityValue];
  }

  return accessibilityLabel;
}

@end