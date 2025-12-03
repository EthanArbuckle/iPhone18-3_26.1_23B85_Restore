@interface STHistoricalUsageViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
@end

@implementation STHistoricalUsageViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STHistoricalUsageViewController" hasInstanceMethod:@"titleView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STHistoricalUsageViewController" hasInstanceMethod:@"selectedWeekGraphViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STHistoricalUsageViewController" hasInstanceMethod:@"selectedDayGraphViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STHistoricalUsageViewController" hasInstanceMethod:@"currentViewMode" withFullSignature:{"q", 0}];
}

- (id)accessibilityElements
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(STHistoricalUsageViewControllerAccessibility *)self safeUIViewForKey:@"titleView"];
  [array axSafelyAddObject:v4];

  v5 = [(STHistoricalUsageViewControllerAccessibility *)self safeIntegerForKey:@"currentViewMode"];
  v6 = [(STHistoricalUsageViewControllerAccessibility *)self safeValueForKey:@"selectedWeekGraphViewController"];
  accessibilityElements = [v6 accessibilityElements];

  v8 = [accessibilityElements ax_filteredArrayUsingBlock:&__block_literal_global_2];
  firstObject = [v8 firstObject];

  [firstObject setMode:0];
  v10 = accessibilityLocalizedString(@"weekly.summary.chart");
  [firstObject setAccessibilityLabel:v10];

  [array axSafelyAddObjectsFromArray:accessibilityElements];
  if (v5 == 1)
  {
    v11 = [(STHistoricalUsageViewControllerAccessibility *)self safeValueForKey:@"selectedDayGraphViewController"];
    accessibilityElements2 = [v11 accessibilityElements];

    v13 = [accessibilityElements2 ax_filteredArrayUsingBlock:&__block_literal_global_307];
    firstObject2 = [v13 firstObject];

    [firstObject2 setMode:1];
    v15 = accessibilityLocalizedString(@"daily.summary.chart");
    [firstObject2 setAccessibilityLabel:v15];

    [array axSafelyAddObjectsFromArray:accessibilityElements2];
  }

  return array;
}

uint64_t __69__STHistoricalUsageViewControllerAccessibility_accessibilityElements__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __69__STHistoricalUsageViewControllerAccessibility_accessibilityElements__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end