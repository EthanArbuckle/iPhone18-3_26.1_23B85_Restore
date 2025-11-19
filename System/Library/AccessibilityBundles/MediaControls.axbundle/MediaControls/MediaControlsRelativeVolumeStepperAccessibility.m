@interface MediaControlsRelativeVolumeStepperAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation MediaControlsRelativeVolumeStepperAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MediaControlsRelativeVolumeStepper" hasInstanceMethod:@"increaseButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MediaControlsRelativeVolumeStepper" hasInstanceMethod:@"decreaseButton" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = MediaControlsRelativeVolumeStepperAccessibility;
  [(MediaControlsRelativeVolumeStepperAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(MediaControlsRelativeVolumeStepperAccessibility *)self safeValueForKey:@"increaseButton"];
  v4 = accessibilityLocalizedString(@"increase.volume.stepper.label");
  [v3 setAccessibilityLabel:v4];

  v5 = [(MediaControlsRelativeVolumeStepperAccessibility *)self safeValueForKey:@"decreaseButton"];
  v6 = accessibilityLocalizedString(@"decrease.volume.stepper.label");
  [v5 setAccessibilityLabel:v6];
}

@end