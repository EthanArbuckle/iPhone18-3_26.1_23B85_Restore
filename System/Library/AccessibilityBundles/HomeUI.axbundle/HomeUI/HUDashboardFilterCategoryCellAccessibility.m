@interface HUDashboardFilterCategoryCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation HUDashboardFilterCategoryCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUDashboardFilterCategoryCell" isKindOfClass:@"UICollectionViewCell"];
  [v3 validateClass:@"HomeUI.DashboardFilterCategoryCell[class].ContentView"];
  [v3 validateClass:@"HomeUI.DashboardFilterCategoryCell[class].ContentView" hasSwiftField:@"config" withSwiftType:"ContentConfiguration"];
  [v3 validateSwiftStruct:@"HomeUI.DashboardFilterCategoryCell[class].ContentConfiguration"];
  [v3 validateSwiftStruct:@"HomeUI.DashboardFilterCategoryCell[class].ContentConfiguration" hasSwiftField:@"text" withSwiftType:"Optional<String>"];
  [v3 validateSwiftStruct:@"HomeUI.DashboardFilterCategoryCell[class].ContentConfiguration" hasSwiftField:@"secondaryText" withSwiftType:"Optional<String>"];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 contentView];
  v4 = [v3 safeSwiftValueForKey:@"config"];
  v5 = __UIAccessibilityCastAsSwiftStruct();

  v6 = [v5 safeSwiftStringForKey:@"text"];
  if ([v6 length])
  {
    v7 = MEMORY[0x29EDBA0F8];
    v8 = accessibilityHomeUILocalizedString(@"filter.cell.show.prefix");
    v9 = [v7 localizedStringWithFormat:v8, v6];

    v6 = v9;
  }

  v12 = [v5 safeSwiftStringForKey:@"secondaryText"];
  v10 = __UIAXStringForVariables();

  return v10;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = HUDashboardFilterCategoryCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(HUDashboardFilterCategoryCellAccessibility *)&v3 accessibilityTraits];
}

@end