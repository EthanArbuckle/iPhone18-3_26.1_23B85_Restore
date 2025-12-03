@interface DeviceInformationViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)subviewsForStackViewElement;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axLoadLabelAccessibility;
- (void)infoLabelTapped;
@end

@implementation DeviceInformationViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"Diagnostics.DeviceInformationView" hasInstanceVariable:@"deviceIdentifierLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"Diagnostics.DeviceInformationView" hasInstanceMethod:@"marketingNameLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Diagnostics.DeviceInformationView" hasInstanceMethod:@"descriptionLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Diagnostics.DeviceInformationView" hasInstanceMethod:@"addButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Diagnostics.DeviceInformationView" hasInstanceMethod:@"ellipsisButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Diagnostics.DeviceInformationView" hasInstanceMethod:@"activityIndicator" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Diagnostics.DeviceInformationView" hasInstanceVariable:@"infoLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"Diagnostics.DeviceInformationView" hasInstanceMethod:@"infoLabelType" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"Diagnostics.DeviceInformationView" hasInstanceMethod:@"infoLabelTapped" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = DeviceInformationViewAccessibility;
  [(DeviceInformationViewAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  v3 = [(DeviceInformationViewAccessibility *)self safeValueForKey:@"addButton"];
  v4 = accessibilityLocalizedString(@"add");
  [v3 setAccessibilityLabel:v4];

  v5 = [(DeviceInformationViewAccessibility *)self safeValueForKey:@"ellipsisButton"];
  v6 = accessibilityLocalizedString(@"more");
  [v5 setAccessibilityLabel:v6];

  v7 = [(DeviceInformationViewAccessibility *)self safeValueForKey:@"activityIndicator"];
  v8 = accessibilityLocalizedString(@"loading");
  [v7 setAccessibilityLabel:v8];

  AXPerformBlockAsynchronouslyOnMainThread();
}

void __80__DeviceInformationViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) safeValueForKey:@"deviceIdentifierLabel"];
  v3 = __UIAccessibilityCastAsClass();

  v4 = accessibilityLocalizedString(@"device_identifier");
  v5 = [v3 text];
  v6 = __UIAXStringForVariables();
  [v3 setAccessibilityLabel:{v6, v5, @"__AXStringForVariablesSentinel"}];

  [*(a1 + 32) _axLoadLabelAccessibility];
}

- (id)subviewsForStackViewElement
{
  v3 = MEMORY[0x29EDB8D80];
  v4 = [(DeviceInformationViewAccessibility *)self safeValueForKey:@"deviceIdentifierLabel"];
  v5 = [(DeviceInformationViewAccessibility *)self safeValueForKey:@"marketingNameLabel"];
  v6 = [(DeviceInformationViewAccessibility *)self safeValueForKey:@"descriptionLabel"];
  v7 = [(DeviceInformationViewAccessibility *)self safeValueForKey:@"infoLabel"];
  v8 = [(DeviceInformationViewAccessibility *)self safeValueForKey:@"addButton"];
  v9 = [(DeviceInformationViewAccessibility *)self safeValueForKey:@"ellipsisButton"];
  v10 = [v3 axArrayByIgnoringNilElementsWithCount:{6, v4, v5, v6, v7, v8, v9}];

  return v10;
}

- (void)_axLoadLabelAccessibility
{
  objc_opt_class();
  v3 = [(DeviceInformationViewAccessibility *)self safeValueForKey:@"infoLabel"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [(DeviceInformationViewAccessibility *)self safeIntegerForKey:@"infoLabelType"];
  if (!v5)
  {
    v6 = @"show_imei";
    v7 = @"serial_number";
    goto LABEL_5;
  }

  if (v5 == 1)
  {
    v6 = @"show_serial_number";
    v7 = @"imei";
LABEL_5:
    v8 = accessibilityLocalizedString(v7);
    text = [v4 text];
    v10 = __UIAXStringForVariables();
    [v4 setAccessibilityLabel:{v10, text, @"__AXStringForVariablesSentinel"}];

    v11 = accessibilityLocalizedString(v6);
    [v4 setAccessibilityHint:v11];
  }
}

- (void)infoLabelTapped
{
  v3.receiver = self;
  v3.super_class = DeviceInformationViewAccessibility;
  [(DeviceInformationViewAccessibility *)&v3 infoLabelTapped];
  [(DeviceInformationViewAccessibility *)self _axLoadLabelAccessibility];
}

@end