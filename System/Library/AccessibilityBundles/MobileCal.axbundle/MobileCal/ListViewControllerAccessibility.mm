@interface ListViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityIsDateInCurrentYear:(id)a3;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation ListViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CUIKCalendarModel" hasInstanceMethod:@"dateForCachedOccurrencesInSection: usingFilter:" withFullSignature:{"@", "q", "B", 0}];
  [v3 validateClass:@"ListViewController" hasInstanceMethod:@"showFilteredData" withFullSignature:{"B", 0}];
  [v3 validateClass:@"ListViewController" hasInstanceMethod:@"tableView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ListViewController" isKindOfClass:@"MainViewController"];
  [v3 validateClass:@"MainViewController" hasInstanceVariable:@"_model" withType:"CUIKCalendarModel"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = ListViewControllerAccessibility;
  [(ListViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(ListViewControllerAccessibility *)self safeValueForKey:@"tableView"];
  v4 = [v3 safeValueForKey:@"reloadData"];
}

- (BOOL)_accessibilityIsDateInCurrentYear:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(ListViewControllerAccessibility *)self safeValueForKey:@"_model"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = MEMORY[0x29EDC0AC0];
  v8 = [MEMORY[0x29EDB8DB0] date];
  v9 = [v6 eventStore];
  v10 = [v9 timeZone];
  v11 = [v7 calendarDateWithDate:v8 timeZone:v10];

  v12 = [v11 calendarDateForYear];
  v13 = [v12 calendarDateForEndOfYear];
  v14 = [v12 date];
  if ([v4 compare:v14] == -1)
  {
    v16 = 0;
  }

  else
  {
    v15 = [v13 date];
    v16 = [v4 compare:v15] != 1;
  }

  return v16;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v11.receiver = self;
  v11.super_class = ListViewControllerAccessibility;
  v5 = [(ListViewControllerAccessibility *)&v11 tableView:a3 viewForHeaderInSection:?];
  v6 = [(ListViewControllerAccessibility *)self _axCalendarModel];
  v10 = v5;
  v7 = v6;
  AXPerformSafeBlock();
  v8 = v10;

  return v10;
}

void __68__ListViewControllerAccessibility_tableView_viewForHeaderInSection___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) dateForCachedOccurrencesInSection:*(a1 + 56) usingFilter:{objc_msgSend(*(a1 + 40), "safeBoolForKey:", @"showFilteredData"}];
  if ([*(a1 + 40) _accessibilityIsDateInCurrentYear:?])
  {
    _AXGetYearlessStringForDay();
  }

  else
  {
    _AXGetStringForDay();
  }
  v2 = ;
  [*(a1 + 48) setAccessibilityLabel:v2];
  [*(a1 + 48) setIsAccessibilityElement:1];
}

@end