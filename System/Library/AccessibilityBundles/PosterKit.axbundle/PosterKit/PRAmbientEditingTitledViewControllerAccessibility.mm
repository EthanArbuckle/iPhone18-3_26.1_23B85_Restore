@interface PRAmbientEditingTitledViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)loadView;
@end

@implementation PRAmbientEditingTitledViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PRAmbientEditingTitledViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"PRAmbientEditingTitledViewController" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = PRAmbientEditingTitledViewControllerAccessibility;
  [(PRAmbientEditingTitledViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  accessibilityTitleLabel = [(PRAmbientEditingTitledViewControllerAccessibility *)self accessibilityTitleLabel];
  [accessibilityTitleLabel setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = PRAmbientEditingTitledViewControllerAccessibility;
  [(PRAmbientEditingTitledViewControllerAccessibility *)&v3 loadView];
  [(PRAmbientEditingTitledViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end