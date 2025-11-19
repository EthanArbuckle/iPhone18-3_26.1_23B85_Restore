@interface RoutePickerItemCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation RoutePickerItemCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MediaControls.RoutePickerItemCell" hasSwiftField:@"itemView" withSwiftType:"RoutePickerItemView"];
  [v3 validateClass:@"MediaControls.RoutePickerItemView" hasSwiftField:@"state" withSwiftType:"State"];
  [v3 validateSwiftStruct:@"MediaControls.RoutePickerItemView[class].State" hasSwiftField:@"selection" withSwiftType:"Selection"];
  [v3 validateClass:@"MediaControls.RoutePickerItemView" isKindOfClass:@"UIView"];
  [v3 validateSwiftStruct:@"MediaControls.RoutePickerItemView[class].State"];
  [v3 validateClass:@"MediaControls.RoutePickerItemCell" hasSwiftField:@"viewModel" withSwiftType:"Optional<ViewModel>"];
  [v3 validateSwiftStruct:@"MediaControls.RoutePickerItemView[class].ViewModel" hasSwiftField:@"title" withSwiftType:"String"];
  [v3 validateSwiftStruct:@"MediaControls.RoutePickerItemView[class].ViewModel" hasSwiftField:@"symbolName" withSwiftType:"Optional<String>"];
  [v3 validateSwiftStruct:@"MediaControls.RoutePickerItemView[class].ViewModel"];
}

- (unint64_t)accessibilityTraits
{
  v10.receiver = self;
  v10.super_class = RoutePickerItemCellAccessibility;
  v3 = [(RoutePickerItemCellAccessibility *)&v10 accessibilityTraits];
  v4 = [(RoutePickerItemCellAccessibility *)self safeSwiftValueForKey:@"itemView"];
  v5 = [v4 safeSwiftValueForKey:@"state"];
  v6 = [v5 safeSwiftValueForKey:@"selection"];
  v7 = [v6 safeSwiftEnumCase];

  if (([v7 isEqualToString:@"selectedWithVolume"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"selected"))
  {
    v3 |= *MEMORY[0x29EDC7FC0];
  }

  v8 = *MEMORY[0x29EDC7F70];

  return v8 | v3;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = RoutePickerItemCellAccessibility;
  [(RoutePickerItemCellAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 3221225472;
  v3[2] = __78__RoutePickerItemCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v3[3] = &unk_29F2CF198;
  objc_copyWeak(&v4, &location);
  [(RoutePickerItemCellAccessibility *)self setAccessibilityLabelBlock:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

id __78__RoutePickerItemCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeSwiftValueForKey:@"viewModel"];

  v3 = [v2 safeSwiftStringForKey:@"title"];
  v4 = [v2 safeSwiftStringForKey:@"symbolName"];
  v7 = AXSSAccessibilityDescriptionForSymbolName();
  v5 = __UIAXStringForVariables();

  return v5;
}

@end