@interface TVRUIDevicePickerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_setupDeviceTitleView;
- (void)_toggleState;
@end

@implementation TVRUIDevicePickerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TVRUIDevicePickerViewController" hasInstanceMethod:@"_setupDeviceTitleView" withFullSignature:{"v", 0}];
  [v3 validateClass:@"TVRUIDevicePickerViewController" hasInstanceMethod:@"isDevicePickerShowing" withFullSignature:{"B", 0}];
  [v3 validateClass:@"TVRUIDevicePickerViewController" hasInstanceMethod:@"titleButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TVRUIDevicePickerViewController" hasInstanceMethod:@"tableView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TVRUIDevicePickerViewController" hasInstanceMethod:@"_toggleState" withFullSignature:{"v", 0}];
  [v3 validateClass:@"TVRUIDeviceListCell" hasInstanceMethod:@"device" withFullSignature:{"@", 0}];
  [v3 validateProtocol:@"TVRUIDevice" hasRequiredInstanceMethod:@"model"];
  [v3 validateProtocol:@"TVRUIDevice" hasRequiredInstanceMethod:@"name"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v12.receiver = self;
  v12.super_class = TVRUIDevicePickerViewControllerAccessibility;
  [(TVRUIDevicePickerViewControllerAccessibility *)&v12 _accessibilityLoadAccessibilityInformation];
  v3 = [(TVRUIDevicePickerViewControllerAccessibility *)self safeValueForKey:@"titleButton"];
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __90__TVRUIDevicePickerViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v9[3] = &unk_29F308F40;
  objc_copyWeak(&v10, &location);
  [v3 _setAccessibilityValueBlock:v9];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __90__TVRUIDevicePickerViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v7[3] = &unk_29F308F40;
  objc_copyWeak(&v8, &location);
  [v3 _setAccessibilityHintBlock:v7];
  v4 = [(TVRUIDevicePickerViewControllerAccessibility *)self safeValueForKey:@"tableView"];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __90__TVRUIDevicePickerViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
  v5[3] = &unk_29F308F68;
  objc_copyWeak(&v6, &location);
  [v4 _setAccessibilityElementsHiddenBlock:v5];
  objc_destroyWeak(&v6);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

id __90__TVRUIDevicePickerViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained safeBoolForKey:@"isDevicePickerShowing"])
  {
    v2 = @"dropdown.expanded.value";
  }

  else
  {
    v2 = @"dropdown.collapsed.value";
  }

  v3 = accessibilityLocalizedString(v2);

  return v3;
}

id __90__TVRUIDevicePickerViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained safeBoolForKey:@"isDevicePickerShowing"])
  {
    v2 = @"dropdown.expanded.hint";
  }

  else
  {
    v2 = @"dropdown.collapsed.hint";
  }

  v3 = accessibilityLocalizedString(v2);

  return v3;
}

uint64_t __90__TVRUIDevicePickerViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeBoolForKey:@"isDevicePickerShowing"];

  return v2 ^ 1u;
}

- (void)_setupDeviceTitleView
{
  v3.receiver = self;
  v3.super_class = TVRUIDevicePickerViewControllerAccessibility;
  [(TVRUIDevicePickerViewControllerAccessibility *)&v3 _setupDeviceTitleView];
  [(TVRUIDevicePickerViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v14.receiver = self;
  v14.super_class = TVRUIDevicePickerViewControllerAccessibility;
  v4 = [(TVRUIDevicePickerViewControllerAccessibility *)&v14 tableView:a3 cellForRowAtIndexPath:a4];
  v5 = [v4 safeValueForKey:@"device"];
  v6 = [v4 accessibilityTraits];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F70] | v6];
  v7 = [v5 safeValueForKey:@"model"];
  v8 = [v7 containsString:@"AppleTV"];

  v9 = [v5 safeValueForKey:@"name"];
  if (v8)
  {
    v10 = @"apple.tv.device.label";
  }

  else
  {
    v10 = @"tv.device.label";
  }

  v11 = accessibilityLocalizedString(v10);
  v12 = __UIAXStringForVariables();
  [v4 setAccessibilityLabel:{v12, v11, @"__AXStringForVariablesSentinel"}];

  return v4;
}

- (void)_toggleState
{
  v2.receiver = self;
  v2.super_class = TVRUIDevicePickerViewControllerAccessibility;
  [(TVRUIDevicePickerViewControllerAccessibility *)&v2 _toggleState];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end