@interface HOTitleDescriptionAlertActionViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (HOTitleDescriptionAlertActionViewControllerAccessibility)initWithTitle:(id)a3 titleColor:(id)a4 description:(id)a5 descriptionColor:(id)a6;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation HOTitleDescriptionAlertActionViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HOTitleDescriptionAlertActionViewController" hasInstanceVariable:@"_titleDescriptionView" withType:"HOTitleDescriptionView"];
  [v3 validateClass:@"HOTitleDescriptionView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HOTitleDescriptionView" hasInstanceMethod:@"descriptionLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HOTitleDescriptionAlertActionViewController" hasInstanceMethod:@"initWithTitle:titleColor:description:descriptionColor:" withFullSignature:{"@", "@", "@", "@", "@", 0}];
}

- (HOTitleDescriptionAlertActionViewControllerAccessibility)initWithTitle:(id)a3 titleColor:(id)a4 description:(id)a5 descriptionColor:(id)a6
{
  v9.receiver = self;
  v9.super_class = HOTitleDescriptionAlertActionViewControllerAccessibility;
  v6 = [(HOTitleDescriptionAlertActionViewControllerAccessibility *)&v9 initWithTitle:a3 titleColor:a4 description:a5 descriptionColor:a6];
  v7 = v6;
  if (v6)
  {
    [(HOTitleDescriptionAlertActionViewControllerAccessibility *)v6 _accessibilityLoadAccessibilityInformation];
  }

  return v7;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = HOTitleDescriptionAlertActionViewControllerAccessibility;
  [(HOTitleDescriptionAlertActionViewControllerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(HOTitleDescriptionAlertActionViewControllerAccessibility *)self safeValueForKey:@"_titleDescriptionView"];
  [v3 setIsAccessibilityElement:1];
  v4 = [v3 safeValueForKey:@"titleLabel"];
  v5 = [v3 safeValueForKey:@"descriptionLabel"];
  v6 = __AXStringForVariables();
  [v3 setAccessibilityLabel:{v6, v5, @"__AXStringForVariablesSentinel"}];

  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
}

@end