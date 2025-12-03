@interface MRUVolumeStepperViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (MRUVolumeStepperViewAccessibility)initWithFrame:(CGRect)frame;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation MRUVolumeStepperViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MRUVolumeStepperView" hasInstanceMethod:@"decreaseButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MRUVolumeStepperView" hasInstanceMethod:@"increaseButton" withFullSignature:{"@", 0}];
}

- (MRUVolumeStepperViewAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = MRUVolumeStepperViewAccessibility;
  v3 = [(MRUVolumeStepperViewAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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