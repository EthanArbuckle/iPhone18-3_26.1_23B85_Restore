@interface WFApertureStatusViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation WFApertureStatusViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"WFApertureStatusViewController" hasInstanceMethod:@"leadingView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WFApertureStatusViewController" hasInstanceMethod:@"minimalView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WFApertureStatusViewController" hasInstanceMethod:@"attribution" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WFApertureStatusViewController" hasInstanceMethod:@"progressView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WFProgressAccessoryView" hasInstanceMethod:@"cancelButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WFDialogAttribution" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v14.receiver = self;
  v14.super_class = WFApertureStatusViewControllerAccessibility;
  [(WFApertureStatusViewControllerAccessibility *)&v14 _accessibilityLoadAccessibilityInformation];
  v3 = [(WFApertureStatusViewControllerAccessibility *)self safeValueForKey:@"attribution"];
  v4 = [v3 safeStringForKey:@"title"];
  v5 = [(WFApertureStatusViewControllerAccessibility *)self safeValueForKey:@"leadingView"];
  v6 = accessibilityLocalizedString(@"running.shortcut");
  v7 = __UIAXStringForVariables();
  [v5 setAccessibilityLabel:{v7, v4, @"__AXStringForVariablesSentinel"}];

  v8 = [(WFApertureStatusViewControllerAccessibility *)self safeValueForKey:@"minimalView"];
  v9 = accessibilityLocalizedString(@"running.shortcut");
  v10 = __UIAXStringForVariables();
  [v8 setAccessibilityLabel:{v10, v4, @"__AXStringForVariablesSentinel"}];

  v11 = [(WFApertureStatusViewControllerAccessibility *)self safeValueForKey:@"progressView"];
  v12 = [v11 safeValueForKey:@"cancelButton"];
  v13 = accessibilityLocalizedString(@"cancel.shortcut");
  [v12 setAccessibilityLabel:v13];
}

@end