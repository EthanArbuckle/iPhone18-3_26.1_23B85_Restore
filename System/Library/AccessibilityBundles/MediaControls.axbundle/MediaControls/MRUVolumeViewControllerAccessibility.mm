@interface MRUVolumeViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation MRUVolumeViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MRUVolumeView"];
  [v3 validateClass:@"MRUVolumeViewController" hasInstanceMethod:@"updatePrimarySliderVolumeValueAnimated:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"MRUVolumeViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"MRUVolumeView" hasInstanceMethod:@"primarySlider" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MRUContinuousSliderView" isKindOfClass:@"CCUIContinuousSliderView"];
  [v3 validateClass:@"CCUIContinuousSliderView" isKindOfClass:@"CCUIBaseSliderView"];
  [v3 validateClass:@"CCUIBaseSliderView" hasInstanceMethod:@"value" withFullSignature:{"f", 0}];
  [v3 validateClass:@"MRUVolumeView" hasInstanceMethod:@"environmentSlider" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MRUVolumeViewController" hasInstanceMethod:@"updateEnvironmentSliderValueAnimated:" withFullSignature:{"v", "B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = MRUVolumeViewControllerAccessibility;
  [(MRUVolumeViewControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(MRUVolumeViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  v4 = [v3 safeUIViewForKey:@"environmentSlider"];

  v5 = accessibilityYodelLocalizedString(@"amplification.ax.label");
  [v4 setAccessibilityLabel:v5];
}

@end