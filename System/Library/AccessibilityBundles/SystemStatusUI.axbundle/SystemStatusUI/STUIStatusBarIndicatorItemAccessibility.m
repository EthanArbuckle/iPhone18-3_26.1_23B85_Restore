@interface STUIStatusBarIndicatorItemAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (STUIStatusBarIndicatorItemAccessibility)init;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation STUIStatusBarIndicatorItemAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"STUIStatusBarIndicatorQuietModeItem"];
  [v3 validateClass:@"STUIStatusBarIndicatorStudentItem"];
  [v3 validateClass:@"STUIStatusBarIndicatorRotationLockItem"];
  [v3 validateClass:@"STUIStatusBarIndicatorAirplaneModeItem"];
  [v3 validateClass:@"STUIStatusBarIndicatorTTYItem"];
  [v3 validateClass:@"STUIStatusBarIndicatorAssistantItem"];
  [v3 validateClass:@"STUIStatusBarVPNItem"];
  [v3 validateClass:@"STUIStatusBarIndicatorLiquidDetectionItem"];
  [v3 validateClass:@"STUIStatusBarIndicatorAirPlayItem"];
  [v3 validateClass:@"STUIStatusBarIndicatorCarPlayItem"];
  [v3 validateClass:@"STUIStatusBarIndicatorAlarmItem"];
  [v3 validateClass:@"STUIStatusBarIndicatorLocationItem"];
  [v3 validateClass:@"STUIStatusBarIndicatorSatelliteItem"];
  [v3 validateClass:@"STUIStatusBarIndicatorItem" isKindOfClass:@"STUIStatusBarItem"];
  [v3 validateClass:@"STUIStatusBarItem" hasInstanceMethod:@"displayItems" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STUIStatusBarDisplayItem" hasInstanceMethod:@"view" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STUIStatusBarIndicatorQuietModeItem" hasInstanceMethod:@"focusName" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v21 = *MEMORY[0x29EDCA608];
  v19.receiver = self;
  v19.super_class = STUIStatusBarIndicatorItemAccessibility;
  [(STUIStatusBarIndicatorItemAccessibility *)&v19 _accessibilityLoadAccessibilityInformation];
  LOBYTE(location) = 0;
  objc_opt_class();
  v3 = [(STUIStatusBarIndicatorItemAccessibility *)self safeValueForKey:@"displayItems"];
  v10 = __UIAccessibilityCastAsClass();

  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [v10 allValues];
  v4 = [obj countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v4)
  {
    v5 = *v16;
    v6 = MEMORY[0x29EDCA5F8];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [*(*(&v15 + 1) + 8 * i) safeValueForKey:{@"view", v10}];
        [v8 setIsAccessibilityElement:1];
        objc_initWeak(&location, self);
        v12[0] = v6;
        v12[1] = 3221225472;
        v12[2] = __85__STUIStatusBarIndicatorItemAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
        v12[3] = &unk_29F306E80;
        objc_copyWeak(&v13, &location);
        [v8 _setAccessibilityLabelBlock:v12];
        objc_destroyWeak(&v13);
        objc_destroyWeak(&location);
      }

      v4 = [obj countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x29EDCA608];
}

id __85__STUIStatusBarIndicatorItemAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  MEMORY[0x29ED3ADB0](@"STUIStatusBarIndicatorQuietModeItem");
  isKindOfClass = objc_opt_isKindOfClass();

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = v4;
  if (isKindOfClass)
  {
    v6 = [v4 safeStringForKey:@"focusName"];
    v7 = v5;
  }

  else
  {
    v8 = &unk_2A2337758;
    if (!v4)
    {
      v8 = 0;
    }

    v9 = v8;
    v10 = objc_loadWeakRetained((a1 + 32));
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v7 = [v9 objectForKey:v12];

    v13 = objc_loadWeakRetained((a1 + 32));
    v14 = [v13 accessibilityLabel];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = accessibilityLocalizedString(v7);
    }

    v6 = v16;
  }

  return v6;
}

- (STUIStatusBarIndicatorItemAccessibility)init
{
  v5.receiver = self;
  v5.super_class = STUIStatusBarIndicatorItemAccessibility;
  v2 = [(STUIStatusBarIndicatorItemAccessibility *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(STUIStatusBarIndicatorItemAccessibility *)v2 _accessibilityLoadAccessibilityInformation];
  }

  return v3;
}

@end