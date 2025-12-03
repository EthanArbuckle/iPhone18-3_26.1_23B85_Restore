@interface VTUIEnrollmentBaseViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_setupUI;
@end

@implementation VTUIEnrollmentBaseViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VTUIEnrollmentBaseView" hasInstanceMethod:@"_setupUI" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"VTUIEnrollmentBaseView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"VTUIEnrollmentBaseView" hasInstanceVariable:@"_iconImageView" withType:"UIImageView"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = VTUIEnrollmentBaseViewAccessibility;
  [(VTUIEnrollmentBaseViewAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = accessibilityLocalizedString(@"siri.icon");
  v4 = [(VTUIEnrollmentBaseViewAccessibility *)self safeValueForKey:@"_iconImageView"];
  [v4 setAccessibilityLabel:v3];

  v5 = *MEMORY[0x29EDC7F80];
  v6 = [(VTUIEnrollmentBaseViewAccessibility *)self safeUIViewForKey:@"_titleLabel"];
  [v6 setAccessibilityTraits:v5];
}

- (void)_setupUI
{
  v3.receiver = self;
  v3.super_class = VTUIEnrollmentBaseViewAccessibility;
  [(VTUIEnrollmentBaseViewAccessibility *)&v3 _setupUI];
  [(VTUIEnrollmentBaseViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end