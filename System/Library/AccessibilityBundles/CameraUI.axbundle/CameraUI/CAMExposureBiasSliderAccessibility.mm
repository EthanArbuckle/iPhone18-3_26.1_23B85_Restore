@interface CAMExposureBiasSliderAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
- (void)setExposureBiasValue:(float)value;
@end

@implementation CAMExposureBiasSliderAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CAMExposureBiasSlider" hasInstanceMethod:@"setExposureBiasValue:" withFullSignature:{"v", "f", 0}];
  [validationsCopy validateClass:@"CAMExposureBiasSlider" hasInstanceVariable:@"_exposureBiasValue" withType:"f"];
}

- (id)accessibilityValue
{
  [(CAMExposureBiasSliderAccessibility *)self safeFloatForKey:@"_exposureBiasValue"];
  v3 = v2;
  v4 = MEMORY[0x29EDBA0F8];
  v5 = accessibilityCameraUILocalizedString(@"exposure.unit");
  v6 = [v4 localizedStringWithFormat:v5, v3];

  return v6;
}

- (void)setExposureBiasValue:(float)value
{
  v6.receiver = self;
  v6.super_class = CAMExposureBiasSliderAccessibility;
  [(CAMExposureBiasSliderAccessibility *)&v6 setExposureBiasValue:?];
  if (CFAbsoluteTimeGetCurrent() - *&AXExposureAnnouncementTime > 1.0)
  {
    v4 = *MEMORY[0x29EDC7EA8];
    accessibilityValue = [(CAMExposureBiasSliderAccessibility *)self accessibilityValue];
    UIAccessibilityPostNotification(v4, accessibilityValue);

    AXExposureAnnouncementTime = CFAbsoluteTimeGetCurrent();
  }
}

@end