@interface VTUIEnrollmentSetupIntroViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (VTUIEnrollmentSetupIntroViewAccessibility)initWithFrame:(CGRect)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation VTUIEnrollmentSetupIntroViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VTUIEnrollmentSetupIntroView" isKindOfClass:@"VTUIEnrollmentBaseView"];
  [v3 validateClass:@"VTUIEnrollmentSetupIntroView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v3 validateClass:@"VTUIEnrollmentSetupIntroView" hasInstanceMethod:@"continueButton" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = VTUIEnrollmentSetupIntroViewAccessibility;
  [(VTUIEnrollmentSetupIntroViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(VTUIEnrollmentSetupIntroViewAccessibility *)self safeValueForKey:@"continueButton"];
  v4 = [v3 accessibilityTraits];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7FC8] | v4];
}

- (VTUIEnrollmentSetupIntroViewAccessibility)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = VTUIEnrollmentSetupIntroViewAccessibility;
  v3 = [(VTUIEnrollmentSetupIntroViewAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(VTUIEnrollmentSetupIntroViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];
  return v3;
}

@end