@interface FCCCControlCenterModuleAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityIsOnboardingControlVisible;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation FCCCControlCenterModuleAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"FCCCControlCenterModule" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"FCUIActivityPickerViewController"];
  [v3 validateClass:@"FCUIActivityPickerViewController" hasClassMethod:@"isOnboardingEncountered" withFullSignature:{"B", 0}];
  [v3 validateClass:@"FCCCControlCenterModule" hasInstanceVariable:@"_moduleViewController" withType:"FCCCModuleViewController"];
  [v3 validateClass:@"FCCCModuleViewController" hasInstanceVariable:@"_activeActivity" withType:"<FCActivityDescribing>"];
  [v3 validateClass:@"FCCCModuleViewController" hasInstanceVariable:@"_suggestedActivity" withType:"<FCActivityDescribing>"];
  [v3 validateClass:@"FCCCModuleViewController" hasInstanceVariable:@"_templateView" withType:"CCUIControlTemplateView"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v13.receiver = self;
  v13.super_class = FCCCControlCenterModuleAccessibility;
  [(FCCCControlCenterModuleAccessibility *)&v13 _accessibilityLoadAccessibilityInformation];
  v3 = [(FCCCControlCenterModuleAccessibility *)self safeValueForKey:@"view"];
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __82__FCCCControlCenterModuleAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v10[3] = &unk_29F2BFA50;
  objc_copyWeak(&v11, &location);
  [v3 _setIsAccessibilityElementBlock:v10];
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __82__FCCCControlCenterModuleAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v8[3] = &unk_29F2BFA78;
  objc_copyWeak(&v9, &location);
  [v3 _setAccessibilityLabelBlock:v8];
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __82__FCCCControlCenterModuleAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
  v6[3] = &unk_29F2BFAA0;
  objc_copyWeak(&v7, &location);
  [v3 _setAccessibilityTraitsBlock:v6];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __82__FCCCControlCenterModuleAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4;
  v4[3] = &unk_29F2BFA78;
  objc_copyWeak(&v5, &location);
  [v3 _setAccessibilityHintBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

uint64_t __82__FCCCControlCenterModuleAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _accessibilityIsOnboardingControlVisible];

  return v2;
}

id __82__FCCCControlCenterModuleAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _accessibilityIsOnboardingControlVisible];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 _accessibilityModuleViewController];
    v6 = [v5 safeValueForKey:@"_templateView"];
    v7 = [v6 accessibilityLabel];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __82__FCCCControlCenterModuleAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _accessibilityIsOnboardingControlVisible];

  v3 = MEMORY[0x29EDC7F70];
  if (!v2)
  {
    v3 = MEMORY[0x29EDC7FA0];
  }

  return *v3;
}

id __82__FCCCControlCenterModuleAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _accessibilityIsOnboardingControlVisible];

  if (v2)
  {
    v3 = accessibilityLocalizedString(@"double.tap.to.explore.controls");
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_accessibilityIsOnboardingControlVisible
{
  v3 = [MEMORY[0x29C2D66A0](@"FCUIActivityPickerViewController" a2)];
  v4 = [(FCCCControlCenterModuleAccessibility *)self _accessibilityModuleViewController];
  v5 = [v4 safeValueForKey:@"_activeActivity"];

  v6 = [(FCCCControlCenterModuleAccessibility *)self _accessibilityModuleViewController];
  v7 = [v6 safeValueForKey:@"_suggestedActivity"];

  return (v5 | v7) == 0 || (v3 & 1) == 0;
}

@end