@interface FCCCModuleViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation FCCCModuleViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"FCCCModuleViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"FCUIActivityPickerViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"FCCCModuleViewController" hasInstanceVariable:@"_templateView" withType:"CCUIControlTemplateView"];
  [v3 validateClass:@"FCCCModuleViewController" hasInstanceMethod:@"_roundButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"FCCCModuleViewController" hasInstanceVariable:@"_activeActivity" withType:"<FCActivityDescribing>"];
  [v3 validateProtocol:@"FCActivityDescribing" hasRequiredInstanceMethod:@"activityDisplayName"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v15.receiver = self;
  v15.super_class = FCCCModuleViewControllerAccessibility;
  [(FCCCModuleViewControllerAccessibility *)&v15 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, self);
  v3 = [(FCCCModuleViewControllerAccessibility *)self _accessibilityButtonView];
  [v3 setIsAccessibilityElement:0];

  v4 = [(FCCCModuleViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  [v4 setIsAccessibilityElement:1];
  v5 = accessibilityLocalizedString(@"focus.module.label");
  [v4 setAccessibilityLabel:v5];

  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __83__FCCCModuleViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v12[3] = &unk_29F2BFA78;
  objc_copyWeak(&v13, &location);
  [v4 _setAccessibilityValueBlock:v12];
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __83__FCCCModuleViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v10[3] = &unk_29F2BFAA0;
  objc_copyWeak(&v11, &location);
  [v4 _setAccessibilityTraitsBlock:v10];
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __83__FCCCModuleViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
  v8[3] = &unk_29F2BFB08;
  objc_copyWeak(&v9, &location);
  [v4 _setAccessibilityCustomActionsBlock:v8];
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __83__FCCCModuleViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4;
  v6[3] = &unk_29F2BFB30;
  objc_copyWeak(&v7, &location);
  [v4 _setAccessibilityActivationPointBlock:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);

  objc_destroyWeak(&location);
}

id __83__FCCCModuleViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  v2 = accessibilityLocalizedString(@"focus.module.label");
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained safeValueForKey:@"_templateView"];
  v5 = [v4 accessibilityLabel];

  if ([v5 localizedCaseInsensitiveCompare:v2])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __83__FCCCModuleViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  v1 = *MEMORY[0x29EDC7F70];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeValueForKey:@"_activeActivity"];

  v4 = *MEMORY[0x29EDC7FC0];
  if (!v3)
  {
    v4 = 0;
  }

  return v4 | v1;
}

id __83__FCCCModuleViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _accessibilityButtonView];
  v3 = [v2 accessibilityCustomActions];

  return v3;
}

double __83__FCCCModuleViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _accessibilityButtonView];
  [v2 accessibilityActivationPoint];
  v4 = v3;

  return v4;
}

@end