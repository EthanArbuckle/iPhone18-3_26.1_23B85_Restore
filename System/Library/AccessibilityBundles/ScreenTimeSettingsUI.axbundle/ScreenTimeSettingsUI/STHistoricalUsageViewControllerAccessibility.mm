@interface STHistoricalUsageViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
@end

@implementation STHistoricalUsageViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"STHistoricalUsageViewController" hasInstanceMethod:@"titleView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STHistoricalUsageViewController" hasInstanceMethod:@"selectedWeekGraphViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STHistoricalUsageViewController" hasInstanceMethod:@"selectedDayGraphViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STHistoricalUsageViewController" hasInstanceMethod:@"currentViewMode" withFullSignature:{"q", 0}];
}

- (id)accessibilityElements
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(STHistoricalUsageViewControllerAccessibility *)self safeUIViewForKey:@"titleView"];
  [v3 axSafelyAddObject:v4];

  v5 = [(STHistoricalUsageViewControllerAccessibility *)self safeIntegerForKey:@"currentViewMode"];
  v6 = [(STHistoricalUsageViewControllerAccessibility *)self safeValueForKey:@"selectedWeekGraphViewController"];
  v7 = [v6 accessibilityElements];

  v8 = [v7 ax_filteredArrayUsingBlock:&__block_literal_global_2];
  v9 = [v8 firstObject];

  [v9 setMode:0];
  v10 = accessibilityLocalizedString(@"weekly.summary.chart");
  [v9 setAccessibilityLabel:v10];

  [v3 axSafelyAddObjectsFromArray:v7];
  if (v5 == 1)
  {
    v11 = [(STHistoricalUsageViewControllerAccessibility *)self safeValueForKey:@"selectedDayGraphViewController"];
    v12 = [v11 accessibilityElements];

    v13 = [v12 ax_filteredArrayUsingBlock:&__block_literal_global_307];
    v14 = [v13 firstObject];

    [v14 setMode:1];
    v15 = accessibilityLocalizedString(@"daily.summary.chart");
    [v14 setAccessibilityLabel:v15];

    [v3 axSafelyAddObjectsFromArray:v12];
  }

  return v3;
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