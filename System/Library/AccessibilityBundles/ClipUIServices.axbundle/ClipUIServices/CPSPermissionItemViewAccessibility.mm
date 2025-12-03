@interface CPSPermissionItemViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axLabeledSwitchStack;
- (id)_axSwitchLabel;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CPSPermissionItemViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CPSPermissionItemView" hasInstanceMethod:@"setOn:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"CPSPermissionItemView" hasInstanceVariable:@"_permissionSwitch" withType:"UISwitch"];
  [validationsCopy validateClass:@"CPSPermissionItemView" hasInstanceVariable:@"_switchWithLabelVisualEffectView" withType:"UIVisualEffectView"];
  [validationsCopy validateClass:@"UIVisualEffectView" hasInstanceMethod:@"contentView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CPSVibrantLabel"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v17.receiver = self;
  v17.super_class = CPSPermissionItemViewAccessibility;
  [(CPSPermissionItemViewAccessibility *)&v17 _accessibilityLoadAccessibilityInformation];
  LOBYTE(location) = 0;
  objc_opt_class();
  _axLabeledSwitchStack = [(CPSPermissionItemViewAccessibility *)self _axLabeledSwitchStack];
  v4 = __UIAccessibilityCastAsClass();

  _axPermissionSwitch = [(CPSPermissionItemViewAccessibility *)self _axPermissionSwitch];
  [v4 setIsAccessibilityElement:1];
  _axSwitchLabel = [(CPSPermissionItemViewAccessibility *)self _axSwitchLabel];
  accessibilityLabel = [_axSwitchLabel accessibilityLabel];
  [v4 setAccessibilityLabel:accessibilityLabel];

  [v4 setAccessibilityTraits:{objc_msgSend(_axPermissionSwitch, "accessibilityTraits")}];
  objc_initWeak(&location, self);
  accessibilityValue = [_axPermissionSwitch accessibilityValue];
  [v4 setAccessibilityValue:accessibilityValue];

  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v14[2] = __80__CPSPermissionItemViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v14[3] = &unk_29F2B3B08;
  v9 = _axPermissionSwitch;
  v15 = v9;
  [v4 _setAccessibilityValueBlock:v14];
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __80__CPSPermissionItemViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v11[3] = &unk_29F2B3B58;
  objc_copyWeak(&v13, &location);
  v10 = v9;
  v12 = v10;
  [v4 _setAccessibilityActivateBlock:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

uint64_t __80__CPSPermissionItemViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = *(a1 + 32);
  AXPerformSafeBlock();

  return 1;
}

void __80__CPSPermissionItemViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) accessibilityValue];
  [v1 setOn:{objc_msgSend(v2, "BOOLValue") ^ 1}];
}

- (id)_axLabeledSwitchStack
{
  v2 = [(CPSPermissionItemViewAccessibility *)self safeValueForKey:@"_switchWithLabelVisualEffectView"];
  v3 = [v2 safeUIViewForKey:@"contentView"];

  v4 = [v3 _accessibilityFindSubviewDescendant:&__block_literal_global_2];

  return v4;
}

uint64_t __59__CPSPermissionItemViewAccessibility__axLabeledSwitchStack__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_axSwitchLabel
{
  _axLabeledSwitchStack = [(CPSPermissionItemViewAccessibility *)self _axLabeledSwitchStack];
  v3 = [_axLabeledSwitchStack _accessibilityFindSubviewDescendant:&__block_literal_global_317];

  return v3;
}

uint64_t __52__CPSPermissionItemViewAccessibility__axSwitchLabel__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2D0B70](@"CPSVibrantLabel");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end