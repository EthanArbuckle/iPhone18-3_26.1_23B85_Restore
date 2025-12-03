@interface _UIStatusBarWifiItemAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (_UIStatusBarWifiItemAccessibility)init;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation _UIStatusBarWifiItemAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v6 = location;
  v5 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v4 = "@";
  v3 = @"_UIStatusBarWifiItem";
  [location[0] validateClass:"@" hasInstanceMethod:"@" withFullSignature:0];
  [location[0] validateClass:v3 hasInstanceMethod:@"signalView" withFullSignature:{v4, 0}];
  [location[0] validateClass:v3 hasInstanceMethod:@"networkIconView" withFullSignature:{v4, 0}];
  [location[0] validateClass:@"_UIStatusBarItemUpdate" hasInstanceMethod:@"data" withFullSignature:{v4, 0}];
  [location[0] validateClass:@"_UIStatusBarData" hasInstanceMethod:@"wifiEntry" withFullSignature:{v4, 0}];
  [location[0] validateClass:@"_UIStatusBarDataWifiEntry" hasInstanceMethod:@"type" withFullSignature:{"q", 0}];
  objc_storeStrong(v6, v5);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  selfCopy = self;
  v14 = a2;
  v13.receiver = self;
  v13.super_class = _UIStatusBarWifiItemAccessibility;
  [(_UIStatusBarWifiItemAccessibility *)&v13 _accessibilityLoadAccessibilityInformation];
  v12 = [(_UIStatusBarWifiItemAccessibility *)selfCopy _accessibilityValueForKey:@"AccessibilityStatusBarUpdateData"];
  v8 = [v12 safeValueForKeyPath:@"data.wifiEntry"];
  v9 = [v8 safeIntegerForKey:@"type"];
  *&v2 = MEMORY[0x29EDC9740](v8).n128_u64[0];
  v11[1] = v9;
  if (v9 == 1)
  {
    v11[0] = [(_UIStatusBarWifiItemAccessibility *)selfCopy safeValueForKey:@"networkIconView", v2];
    [v11[0] setIsAccessibilityElement:1];
    v6 = v11[0];
    v7 = accessibilityLocalizedString(@"status.hotspot.active");
    [v6 setAccessibilityValue:?];
    *&v3 = MEMORY[0x29EDC9740](v7).n128_u64[0];
    [v11[0] setAccessibilityTraits:{*MEMORY[0x29EDC7580], v3}];
    objc_storeStrong(v11, 0);
  }

  else
  {
    v10 = [(_UIStatusBarWifiItemAccessibility *)selfCopy safeUIViewForKey:@"signalView", v2];
    if (MGGetBoolAnswer())
    {
      v4 = @"status.network.wlan.signal.bars";
    }

    else
    {
      v4 = @"status.network.wifi.signal.bars";
    }

    [v10 _accessibilitySetRetainedValue:v4 forKey:{@"AccessibilityStatusBarSignalViewLabelKey", &v10}];
    objc_storeStrong(v5, 0);
  }

  objc_storeStrong(&v12, 0);
}

- (_UIStatusBarWifiItemAccessibility)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = _UIStatusBarWifiItemAccessibility;
  v6 = [(_UIStatusBarWifiItemAccessibility *)&v4 init];
  objc_storeStrong(&v6, v6);
  if (v6)
  {
    [(_UIStatusBarWifiItemAccessibility *)v6 _accessibilityLoadAccessibilityInformation];
  }

  v3 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  v9 = 0;
  objc_storeStrong(&v9, item);
  v7.receiver = selfCopy;
  v7.super_class = _UIStatusBarWifiItemAccessibility;
  v8 = [(_UIStatusBarWifiItemAccessibility *)&v7 applyUpdate:location[0] toDisplayItem:v9];
  [(_UIStatusBarWifiItemAccessibility *)selfCopy _accessibilitySetRetainedValue:location[0] forKey:@"AccessibilityStatusBarUpdateData"];
  [(_UIStatusBarWifiItemAccessibility *)selfCopy _accessibilityLoadAccessibilityInformation];
  v6 = MEMORY[0x29EDC9748](v8);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v6;
}

@end