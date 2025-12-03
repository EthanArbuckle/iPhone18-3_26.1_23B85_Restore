@interface _UIStatusBarCellularItemAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_updateSignalView:(id)view withUpdate:(id)update entry:(id)entry forceShowingDisabledSignalBars:(BOOL)bars;
- (_UIStatusBarCellularItemAccessibility)init;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateDataNetworkViewWithEntry:(void *)entry;
@end

@implementation _UIStatusBarCellularItemAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v6 = location;
  v5 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"_UIStatusBarStringView" isKindOfClass:@"UILabel"];
  v3 = @"_UIStatusBarCellularItem";
  v4 = "@";
  [location[0] validateClass:0 hasClassMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"signalView" withFullSignature:{v4, 0}];
  [location[0] validateClass:v3 hasInstanceMethod:@"callForwardingView" withFullSignature:{v4, 0}];
  [location[0] validateClass:v3 hasInstanceMethod:@"networkTypeView" withFullSignature:{v4, 0}];
  [location[0] validateClass:v3 hasInstanceMethod:@"_updateSignalView:withUpdate:entry:forceShowingDisabledSignalBars:" withFullSignature:{v4, v4, v4, "B", 0}];
  [location[0] validateClass:v3 hasInstanceMethod:@"entryForDisplayItemWithIdentifier:" withFullSignature:{v4, 0}];
  objc_storeStrong(v6, v5);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  selfCopy = self;
  v20 = a2;
  v19.receiver = self;
  v19.super_class = _UIStatusBarCellularItemAccessibility;
  [(_UIStatusBarCellularItemAccessibility *)&v19 _accessibilityLoadAccessibilityInformation];
  v18 = [(_UIStatusBarCellularItemAccessibility *)selfCopy safeUIViewForKey:@"signalView"];
  [v18 _accessibilitySetRetainedValue:@"status.signal.bars" forKey:@"AccessibilityStatusBarSignalViewLabelKey"];
  v17 = [(_UIStatusBarCellularItemAccessibility *)selfCopy safeValueForKey:@"callForwardingView"];
  [v17 setIsAccessibilityElement:1];
  v3 = accessibilityLocalizedString(@"status.call.forward.icon");
  [v17 setAccessibilityLabel:?];
  *&v2 = MEMORY[0x29EDC9740](v3).n128_u64[0];
  v16 = [(_UIStatusBarCellularItemAccessibility *)selfCopy safeValueForKey:@"networkTypeView", v2];
  [v16 _accessibilitySetBoolValue:1 forKey:@"AccessibilityStatusBarStringIsDataNetwork"];
  v15 = [NSClassFromString(&cfstr_Uistatusbarcel_6.isa) safeValueForKey:@"typeDisplayIdentifier"];
  v7 = 0;
  v8 = &v7;
  v9 = 838860800;
  v10 = 48;
  v11 = __Block_byref_object_copy__32;
  v12 = __Block_byref_object_dispose__32;
  v13 = 0;
  v6[1] = &v7;
  v5 = MEMORY[0x29EDC9748](selfCopy);
  v6[0] = MEMORY[0x29EDC9748](v15);
  AXPerformSafeBlock();
  v4 = MEMORY[0x29EDC9748](v8[5]);
  objc_storeStrong(v6, 0);
  objc_storeStrong(&v5, 0);
  _Block_object_dispose(&v7, 8);
  objc_storeStrong(&v13, 0);
  v14 = v4;
  [(_UIStatusBarCellularItemAccessibility *)selfCopy _axAnnotateDataNetworkViewWithEntry:v4];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
}

- (void)_axAnnotateDataNetworkViewWithEntry:(void *)entry
{
  entryCopy = entry;
  location = 0;
  objc_storeStrong(&location, a2);
  if (entryCopy)
  {
    v3 = axAnnotateDataNetworkViewWithType([location type]);
    v2 = [entryCopy safeValueForKey:@"networkTypeView"];
    [v2 setAccessibilityLabel:v3];
    MEMORY[0x29EDC9740](v2);
    objc_storeStrong(&v3, 0);
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  objc_storeStrong(&location, 0);
}

- (BOOL)_updateSignalView:(id)view withUpdate:(id)update entry:(id)entry forceShowingDisabledSignalBars:(BOOL)bars
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v22 = 0;
  objc_storeStrong(&v22, update);
  v21 = 0;
  objc_storeStrong(&v21, entry);
  barsCopy = bars;
  v18.receiver = selfCopy;
  v18.super_class = _UIStatusBarCellularItemAccessibility;
  v19 = [(_UIStatusBarCellularItemAccessibility *)&v18 _updateSignalView:location[0] withUpdate:v22 entry:v21 forceShowingDisabledSignalBars:bars];
  v16 = 0;
  objc_opt_class();
  v15 = __UIAccessibilityCastAsClass();
  v14 = MEMORY[0x29EDC9748](v15);
  objc_storeStrong(&v15, 0);
  v17 = v14;
  v8 = location[0];
  string = [v14 string];
  [v8 _accessibilitySetRetainedValue:? forKey:?];
  *&v6 = MEMORY[0x29EDC9740](string).n128_u64[0];
  [location[0] _accessibilitySetRetainedValue:@"status.signal.bars" forKey:{@"AccessibilityStatusBarSignalViewLabelKey", v6}];
  [(_UIStatusBarCellularItemAccessibility *)selfCopy _axAnnotateDataNetworkViewWithEntry:v17];
  v10 = v19;
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  return v10 & 1;
}

- (_UIStatusBarCellularItemAccessibility)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = _UIStatusBarCellularItemAccessibility;
  v6 = [(_UIStatusBarCellularItemAccessibility *)&v4 init];
  objc_storeStrong(&v6, v6);
  if (v6)
  {
    [(_UIStatusBarCellularItemAccessibility *)v6 _accessibilityLoadAccessibilityInformation];
  }

  v3 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

@end