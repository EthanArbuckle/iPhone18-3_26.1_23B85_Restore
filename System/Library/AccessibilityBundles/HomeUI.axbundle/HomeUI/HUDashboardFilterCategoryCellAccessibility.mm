@interface HUDashboardFilterCategoryCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation HUDashboardFilterCategoryCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUDashboardFilterCategoryCell" isKindOfClass:@"UICollectionViewCell"];
  [validationsCopy validateClass:@"HomeUI.DashboardFilterCategoryCell[class].ContentView"];
  [validationsCopy validateClass:@"HomeUI.DashboardFilterCategoryCell[class].ContentView" hasSwiftField:@"config" withSwiftType:"ContentConfiguration"];
  [validationsCopy validateSwiftStruct:@"HomeUI.DashboardFilterCategoryCell[class].ContentConfiguration"];
  [validationsCopy validateSwiftStruct:@"HomeUI.DashboardFilterCategoryCell[class].ContentConfiguration" hasSwiftField:@"text" withSwiftType:"Optional<String>"];
  [validationsCopy validateSwiftStruct:@"HomeUI.DashboardFilterCategoryCell[class].ContentConfiguration" hasSwiftField:@"secondaryText" withSwiftType:"Optional<String>"];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  contentView = [v2 contentView];
  v4 = [contentView safeSwiftValueForKey:@"config"];
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