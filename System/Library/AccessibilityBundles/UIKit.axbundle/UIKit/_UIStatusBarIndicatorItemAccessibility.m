@interface _UIStatusBarIndicatorItemAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (_UIStatusBarIndicatorItemAccessibility)init;
- (id)_axLabelKeyForClassNameDict;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation _UIStatusBarIndicatorItemAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UIStatusBarIndicatorQuietModeItem"];
  [location[0] validateClass:@"_UIStatusBarIndicatorStudentItem"];
  [location[0] validateClass:@"_UIStatusBarIndicatorRotationLockItem"];
  [location[0] validateClass:@"_UIStatusBarIndicatorAirplaneModeItem"];
  [location[0] validateClass:@"_UIStatusBarIndicatorTTYItem"];
  [location[0] validateClass:@"_UIStatusBarIndicatorAssistantItem"];
  [location[0] validateClass:@"_UIStatusBarIndicatorVPNItem"];
  [location[0] validateClass:@"_UIStatusBarIndicatorLiquidDetectionItem"];
  [location[0] validateClass:@"_UIStatusBarIndicatorAirPlayItem"];
  [location[0] validateClass:@"_UIStatusBarIndicatorCarPlayItem"];
  [location[0] validateClass:@"_UIStatusBarIndicatorAlarmItem"];
  [location[0] validateClass:@"_UIStatusBarIndicatorLocationItem"];
  [location[0] validateClass:@"_UIStatusBarIndicatorSatelliteItem"];
  v3 = @"_UIStatusBarItem";
  [location[0] validateClass:@"_UIStatusBarIndicatorItem" isKindOfClass:?];
  v4 = "@";
  [location[0] validateClass:@"_UIStatusBarItem" hasInstanceMethod:@"displayItems" withFullSignature:0];
  [location[0] validateClass:@"_UIStatusBarDisplayItem" hasInstanceMethod:@"view" withFullSignature:{v4, 0}];
  objc_storeStrong(v6, obj);
}

- (id)_axLabelKeyForClassNameDict
{
  if (a1)
  {
    v2 = MEMORY[0x29EDC9748](&unk_2A238EA60);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v28 = *MEMORY[0x29EDCA608];
  v26 = self;
  v25 = a2;
  v24.receiver = self;
  v24.super_class = _UIStatusBarIndicatorItemAccessibility;
  [(_UIStatusBarIndicatorItemAccessibility *)&v24 _accessibilityLoadAccessibilityInformation];
  v22 = 0;
  objc_opt_class();
  v9 = [(_UIStatusBarIndicatorItemAccessibility *)v26 safeValueForKey:@"displayItems"];
  v21 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v9);
  v20 = MEMORY[0x29EDC9748](v21);
  objc_storeStrong(&v21, 0);
  v23 = v20;
  memset(__b, 0, sizeof(__b));
  obj = [v20 allValues];
  v8 = [obj countByEnumeratingWithState:__b objects:v27 count:16];
  if (v8)
  {
    v4 = *__b[2];
    v5 = 0;
    v6 = v8;
    while (1)
    {
      v3 = v5;
      if (*__b[2] != v4)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(__b[1] + 8 * v5);
      v17 = [v19 safeValueForKey:@"view"];
      [v17 setIsAccessibilityElement:1];
      objc_initWeak(&from, v26);
      v2 = v17;
      v10 = MEMORY[0x29EDCA5F8];
      v11 = -1073741824;
      v12 = 0;
      v13 = __84___UIStatusBarIndicatorItemAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
      v14 = &unk_29F30C9E8;
      objc_copyWeak(&v15, &from);
      [v2 _setAccessibilityLabelBlock:&v10];
      objc_destroyWeak(&v15);
      objc_destroyWeak(&from);
      objc_storeStrong(&v17, 0);
      ++v5;
      if (v3 + 1 >= v6)
      {
        v5 = 0;
        v6 = [obj countByEnumeratingWithState:__b objects:v27 count:16];
        if (!v6)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obj);
  objc_storeStrong(&v23, 0);
}

- (_UIStatusBarIndicatorItemAccessibility)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = _UIStatusBarIndicatorItemAccessibility;
  v6 = [(_UIStatusBarIndicatorItemAccessibility *)&v4 init];
  objc_storeStrong(&v6, v6);
  if (v6)
  {
    [(_UIStatusBarIndicatorItemAccessibility *)v6 _accessibilityLoadAccessibilityInformation];
  }

  v3 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

@end