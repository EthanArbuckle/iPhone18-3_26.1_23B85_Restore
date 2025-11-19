@interface STUIStatusBarWifiItemAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (STUIStatusBarWifiItemAccessibility)init;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation STUIStatusBarWifiItemAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"STUIStatusBarWifiItem" hasInstanceMethod:@"applyUpdate:toDisplayItem:" withFullSignature:{"@", "@", "@", 0}];
  [v3 validateClass:@"STUIStatusBarWifiItem" hasInstanceMethod:@"signalView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STUIStatusBarWifiItem" hasInstanceMethod:@"networkIconView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STUIStatusBarItemUpdate" hasInstanceMethod:@"data" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STStatusBarData" hasInstanceMethod:@"wifiEntry" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STStatusBarDataWifiEntry" hasInstanceMethod:@"type" withFullSignature:{"q", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = STUIStatusBarWifiItemAccessibility;
  [(STUIStatusBarWifiItemAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  v3 = [(STUIStatusBarWifiItemAccessibility *)self _accessibilityValueForKey:@"AccessibilityStatusBarUpdateData"];
  v4 = [v3 safeValueForKeyPath:@"data.wifiEntry"];
  v5 = [v4 safeIntegerForKey:@"type"];

  if (v5 == 1)
  {
    v6 = [(STUIStatusBarWifiItemAccessibility *)self safeValueForKey:@"networkIconView"];
    [v6 setIsAccessibilityElement:1];
    v7 = accessibilityLocalizedString(@"status.hotspot.active");
    [v6 setAccessibilityValue:v7];

    [v6 setAccessibilityTraits:*MEMORY[0x29EDC7580]];
  }

  else
  {
    v6 = [(STUIStatusBarWifiItemAccessibility *)self safeUIViewForKey:@"signalView"];
    if (MGGetBoolAnswer())
    {
      v8 = @"status.network.wlan.signal.bars";
    }

    else
    {
      v8 = @"status.network.wifi.signal.bars";
    }

    [v6 _accessibilitySetRetainedValue:v8 forKey:@"AccessibilityStatusBarSignalViewLabelKey"];
  }
}

- (STUIStatusBarWifiItemAccessibility)init
{
  v5.receiver = self;
  v5.super_class = STUIStatusBarWifiItemAccessibility;
  v2 = [(STUIStatusBarWifiItemAccessibility *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(STUIStatusBarWifiItemAccessibility *)v2 _accessibilityLoadAccessibilityInformation];
  }

  return v3;
}

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v9.receiver = self;
  v9.super_class = STUIStatusBarWifiItemAccessibility;
  v6 = a3;
  v7 = [(STUIStatusBarWifiItemAccessibility *)&v9 applyUpdate:v6 toDisplayItem:a4];
  [(STUIStatusBarWifiItemAccessibility *)self _accessibilitySetRetainedValue:v6 forKey:@"AccessibilityStatusBarUpdateData", v9.receiver, v9.super_class];

  [(STUIStatusBarWifiItemAccessibility *)self _accessibilityLoadAccessibilityInformation];

  return v7;
}

@end