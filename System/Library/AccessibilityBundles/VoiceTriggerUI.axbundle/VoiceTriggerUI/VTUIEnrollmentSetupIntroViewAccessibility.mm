@interface VTUIEnrollmentSetupIntroViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (VTUIEnrollmentSetupIntroViewAccessibility)initWithFrame:(CGRect)frame;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation VTUIEnrollmentSetupIntroViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VTUIEnrollmentSetupIntroView" isKindOfClass:@"VTUIEnrollmentBaseView"];
  [validationsCopy validateClass:@"VTUIEnrollmentSetupIntroView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"VTUIEnrollmentSetupIntroView" hasInstanceMethod:@"continueButton" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = VTUIEnrollmentSetupIntroViewAccessibility;
  [(VTUIEnrollmentSetupIntroViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(VTUIEnrollmentSetupIntroViewAccessibility *)self safeValueForKey:@"continueButton"];
  accessibilityTraits = [v3 accessibilityTraits];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7FC8] | accessibilityTraits];
}

- (VTUIEnrollmentSetupIntroViewAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = VTUIEnrollmentSetupIntroViewAccessibility;
  v3 = [(VTUIEnrollmentSetupIntroViewAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(VTUIEnrollmentSetupIntroViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];
  return v3;
}

@end