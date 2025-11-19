@interface STUIStatusBarCellularItemAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (STUIStatusBarCellularItemAccessibility)init;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateDataNetworkViewWithEntry:(void *)a1;
@end

@implementation STUIStatusBarCellularItemAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"STUIStatusBarStringView" isKindOfClass:@"UILabel"];
  [v3 validateClass:@"STUIStatusBarCellularItem" hasClassMethod:@"typeDisplayIdentifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STUIStatusBarCellularItem" hasInstanceMethod:@"signalView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STUIStatusBarCellularItem" hasInstanceMethod:@"callForwardingView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STUIStatusBarCellularItem" hasInstanceMethod:@"networkTypeView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STUIStatusBarCellularItem" hasInstanceMethod:@"_updateSignalView:withUpdate:entry:forceShowingDisabledSignalBars:" withFullSignature:{"@", "@", "@", "B", 0}];
  [v3 validateClass:@"STUIStatusBarCellularItem" hasInstanceMethod:@"entryForDisplayItemWithIdentifier:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"STStatusBarDataCellularEntry" hasInstanceMethod:@"string" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STStatusBarDataCellularEntry" hasInstanceMethod:@"type" withFullSignature:{"q", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v16.receiver = self;
  v16.super_class = STUIStatusBarCellularItemAccessibility;
  [(STUIStatusBarCellularItemAccessibility *)&v16 _accessibilityLoadAccessibilityInformation];
  v3 = [(STUIStatusBarCellularItemAccessibility *)self safeUIViewForKey:@"signalView"];
  [v3 _accessibilitySetRetainedValue:@"status.signal.bars" forKey:@"AccessibilityStatusBarSignalViewLabelKey"];
  v4 = [(STUIStatusBarCellularItemAccessibility *)self safeValueForKey:@"callForwardingView"];
  [v4 setIsAccessibilityElement:1];
  v5 = accessibilityLocalizedString(@"status.call.forward.icon");
  [v4 setAccessibilityLabel:v5];

  v6 = [(STUIStatusBarCellularItemAccessibility *)self safeValueForKey:@"networkTypeView"];
  [v6 _accessibilitySetBoolValue:1 forKey:@"AccessibilityStatusBarStringIsDataNetwork"];
  v7 = [MEMORY[0x29ED3ADB0](@"STUIStatusBarCellularItem") safeValueForKey:@"typeDisplayIdentifier"];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v9 = v7;
  AXPerformSafeBlock();
  v8 = v11[5];

  _Block_object_dispose(&v10, 8);
  [(STUIStatusBarCellularItemAccessibility *)self _axAnnotateDataNetworkViewWithEntry:v8];
}

uint64_t __84__STUIStatusBarCellularItemAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) entryForDisplayItemWithIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (STUIStatusBarCellularItemAccessibility)init
{
  v5.receiver = self;
  v5.super_class = STUIStatusBarCellularItemAccessibility;
  v2 = [(STUIStatusBarCellularItemAccessibility *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(STUIStatusBarCellularItemAccessibility *)v2 _accessibilityLoadAccessibilityInformation];
  }

  return v3;
}

- (void)_axAnnotateDataNetworkViewWithEntry:(void *)a1
{
  if (a1)
  {
    v4 = AXAnnotateDataNetworkViewWithType([a2 safeIntegerForKey:@"type"]);
    v3 = [a1 safeValueForKey:@"networkTypeView"];
    [v3 setAccessibilityLabel:v4];
  }
}

@end