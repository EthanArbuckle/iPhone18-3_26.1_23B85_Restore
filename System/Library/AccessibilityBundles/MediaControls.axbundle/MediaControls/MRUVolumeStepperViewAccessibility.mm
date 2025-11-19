@interface MRUVolumeStepperViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (MRUVolumeStepperViewAccessibility)initWithFrame:(CGRect)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation MRUVolumeStepperViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MRUVolumeStepperView" hasInstanceMethod:@"decreaseButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MRUVolumeStepperView" hasInstanceMethod:@"increaseButton" withFullSignature:{"@", 0}];
}

- (MRUVolumeStepperViewAccessibility)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = MRUVolumeStepperViewAccessibility;
  v3 = [(MRUVolumeStepperViewAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(MRUVolumeStepperViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = MRUVolumeStepperViewAccessibility;
  [(MRUVolumeStepperViewAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = accessibilityLocalizedString(@"decrease.volume.stepper.label");
  v4 = [(MRUVolumeStepperViewAccessibility *)self safeUIViewForKey:@"decreaseButton"];
  [v4 setAccessibilityLabel:v3];

  v5 = accessibilityLocalizedString(@"increase.volume.stepper.label");
  v6 = [(MRUVolumeStepperViewAccessibility *)self safeUIViewForKey:@"increaseButton"];
  [v6 setAccessibilityLabel:v5];
}

@end