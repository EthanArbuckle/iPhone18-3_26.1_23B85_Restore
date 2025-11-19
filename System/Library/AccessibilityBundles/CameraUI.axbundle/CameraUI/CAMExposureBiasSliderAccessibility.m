@interface CAMExposureBiasSliderAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
- (void)setExposureBiasValue:(float)a3;
@end

@implementation CAMExposureBiasSliderAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CAMExposureBiasSlider" hasInstanceMethod:@"setExposureBiasValue:" withFullSignature:{"v", "f", 0}];
  [v3 validateClass:@"CAMExposureBiasSlider" hasInstanceVariable:@"_exposureBiasValue" withType:"f"];
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

- (void)setExposureBiasValue:(float)a3
{
  v6.receiver = self;
  v6.super_class = CAMExposureBiasSliderAccessibility;
  [(CAMExposureBiasSliderAccessibility *)&v6 setExposureBiasValue:?];
  if (CFAbsoluteTimeGetCurrent() - *&AXExposureAnnouncementTime > 1.0)
  {
    v4 = *MEMORY[0x29EDC7EA8];
    v5 = [(CAMExposureBiasSliderAccessibility *)self accessibilityValue];
    UIAccessibilityPostNotification(v4, v5);

    AXExposureAnnouncementTime = CFAbsoluteTimeGetCurrent();
  }
}

@end