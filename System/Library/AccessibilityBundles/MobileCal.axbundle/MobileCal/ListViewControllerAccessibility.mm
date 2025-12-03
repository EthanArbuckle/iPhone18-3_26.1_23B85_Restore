@interface ListViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityIsDateInCurrentYear:(id)year;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation ListViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CUIKCalendarModel" hasInstanceMethod:@"dateForCachedOccurrencesInSection: usingFilter:" withFullSignature:{"@", "q", "B", 0}];
  [validationsCopy validateClass:@"ListViewController" hasInstanceMethod:@"showFilteredData" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"ListViewController" hasInstanceMethod:@"tableView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ListViewController" isKindOfClass:@"MainViewController"];
  [validationsCopy validateClass:@"MainViewController" hasInstanceVariable:@"_model" withType:"CUIKCalendarModel"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = ListViewControllerAccessibility;
  [(ListViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(ListViewControllerAccessibility *)self safeValueForKey:@"tableView"];
  v4 = [v3 safeValueForKey:@"reloadData"];
}

- (BOOL)_accessibilityIsDateInCurrentYear:(id)year
{
  yearCopy = year;
  objc_opt_class();
  v5 = [(ListViewControllerAccessibility *)self safeValueForKey:@"_model"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = MEMORY[0x29EDC0AC0];
  date = [MEMORY[0x29EDB8DB0] date];
  eventStore = [v6 eventStore];
  timeZone = [eventStore timeZone];
  v11 = [v7 calendarDateWithDate:date timeZone:timeZone];

  calendarDateForYear = [v11 calendarDateForYear];
  calendarDateForEndOfYear = [calendarDateForYear calendarDateForEndOfYear];
  date2 = [calendarDateForYear date];
  if ([yearCopy compare:date2] == -1)
  {
    v16 = 0;
  }

  else
  {
    date3 = [calendarDateForEndOfYear date];
    v16 = [yearCopy compare:date3] != 1;
  }

  return v16;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v11.receiver = self;
  v11.super_class = ListViewControllerAccessibility;
  v5 = [(ListViewControllerAccessibility *)&v11 tableView:view viewForHeaderInSection:?];
  _axCalendarModel = [(ListViewControllerAccessibility *)self _axCalendarModel];
  v10 = v5;
  v7 = _axCalendarModel;
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