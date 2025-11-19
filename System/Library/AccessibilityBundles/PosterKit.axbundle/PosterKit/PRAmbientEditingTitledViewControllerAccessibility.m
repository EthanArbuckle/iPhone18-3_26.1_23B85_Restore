@interface PRAmbientEditingTitledViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)loadView;
@end

@implementation PRAmbientEditingTitledViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PRAmbientEditingTitledViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"PRAmbientEditingTitledViewController" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = PRAmbientEditingTitledViewControllerAccessibility;
  [(PRAmbientEditingTitledViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(PRAmbientEditingTitledViewControllerAccessibility *)self accessibilityTitleLabel];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = PRAmbientEditingTitledViewControllerAccessibility;
  [(PRAmbientEditingTitledViewControllerAccessibility *)&v3 loadView];
  [(PRAmbientEditingTitledViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end