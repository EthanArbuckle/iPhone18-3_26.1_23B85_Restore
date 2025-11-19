@interface EKEventDateEditItemAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilitySetupDateCellForKey:(id)a3;
- (void)_axUpdateEndDateCellLabel;
- (void)_datePickerChanged:(id)a3;
- (void)editor:(id)a3 didSelectSubitem:(unint64_t)a4;
@end

@implementation EKEventDateEditItemAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"EKEventDateEditItem" hasInstanceMethod:@"_modernEndDateCell" withFullSignature:{"@", 0}];
  [v3 validateClass:@"EKEventDateEditItem" hasInstanceMethod:@"_endDateIsBeforeStartDate" withFullSignature:{"B", 0}];
  [v3 validateClass:@"EKEventDateEditItem" hasInstanceMethod:@"_datePickerChanged:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"EKEventDateEditItem" isKindOfClass:@"EKEventEditItem"];
  [v3 validateClass:@"EKEventDateEditItem" hasInstanceMethod:@"_rowForSubitem:" withFullSignature:{"q", "q", 0}];
  [v3 validateClass:@"EKCalendarItemEditor" hasInstanceMethod:@"tableSectionForEditItem:" withFullSignature:{"Q", "@", 0}];
  [v3 validateClass:@"EKEventDateEditItem" hasInstanceVariable:@"_startDatePickerCell" withType:"UITableViewCell"];
  [v3 validateClass:@"EKEventDateEditItem" hasInstanceVariable:@"_endDatePickerCell" withType:"UITableViewCell"];
  [v3 validateClass:@"EKEventDateEditItem" hasInstanceVariable:@"_startDatePicker" withType:"UIDatePicker"];
  [v3 validateClass:@"EKEventDateEditItem" hasInstanceVariable:@"_endDatePicker" withType:"UIDatePicker"];
  [v3 validateClass:@"EKEventDateEditItem" hasInstanceMethod:@"_showInlineControls:forSubitem:includingInlineDatePicker:" withFullSignature:{"v", "q", "q", "B", 0}];
  [v3 validateClass:@"EKEventDateEditItem" hasInstanceVariable:@"_selectedSubitem" withType:"q"];
  [v3 validateClass:@"EKEventDateEditItem" hasInstanceVariable:@"_currentPickerMode" withType:"q"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = EKEventDateEditItemAccessibility;
  [(EKEventDateEditItemAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  [(EKEventDateEditItemAccessibility *)self _axUpdateEndDateCellLabel];
  v3 = [(EKEventDateEditItemAccessibility *)self safeValueForKey:@"_modernEndDateCell"];
  [v3 _accessibilitySetAssignedValue:self forKey:@"AXEKEventDateEditItem"];

  [(EKEventDateEditItemAccessibility *)self _accessibilitySetupDateCellForKey:@"_start"];
  [(EKEventDateEditItemAccessibility *)self _accessibilitySetupDateCellForKey:@"_end"];
}

- (void)editor:(id)a3 didSelectSubitem:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = EKEventDateEditItemAccessibility;
  [(EKEventDateEditItemAccessibility *)&v7 editor:a3 didSelectSubitem:?];
  v6 = MEMORY[0x29EDCA5F8];
  AXPerformBlockAsynchronouslyOnMainThread();
  [(EKEventDateEditItemAccessibility *)self _accessibilitySetupDateCellForKey:@"_start", v6, 3221225472, __60__EKEventDateEditItemAccessibility_editor_didSelectSubitem___block_invoke, &unk_29F2BCB10, self, a4];
  [(EKEventDateEditItemAccessibility *)self _accessibilitySetupDateCellForKey:@"_end"];
}

void __60__EKEventDateEditItemAccessibility_editor_didSelectSubitem___block_invoke(uint64_t a1)
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v17 = MEMORY[0x29EDCA5F8];
  v18 = 3221225472;
  v19 = __60__EKEventDateEditItemAccessibility_editor_didSelectSubitem___block_invoke_2;
  v20 = &unk_29F2BCAC0;
  v2 = *(a1 + 40);
  v21 = *(a1 + 32);
  v22 = &v24;
  v23 = v2;
  AXPerformSafeBlock();
  LOBYTE(v13) = 0;
  v3 = [*(a1 + 32) safeValueForKey:@"delegate"];
  v4 = __UIAccessibilitySafeClass();

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v10 = MEMORY[0x29EDCA5F8];
  v11 = v4;
  v12 = *(a1 + 32);
  AXPerformSafeBlock();
  v5 = v14[3];

  _Block_object_dispose(&v13, 8);
  v6 = [MEMORY[0x29EDB9FE0] indexPathForRow:v25[3] inSection:{v5, v10, 3221225472, __60__EKEventDateEditItemAccessibility_editor_didSelectSubitem___block_invoke_3, &unk_29F2BCAE8}];
  objc_opt_class();
  v7 = [v11 safeValueForKey:@"tableView"];
  v8 = __UIAccessibilityCastAsClass();

  v9 = [v8 cellForRowAtIndexPath:v6];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v9);

  _Block_object_dispose(&v24, 8);
}

uint64_t __60__EKEventDateEditItemAccessibility_editor_didSelectSubitem___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) _rowForSubitem:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __60__EKEventDateEditItemAccessibility_editor_didSelectSubitem___block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) tableSectionForEditItem:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)_datePickerChanged:(id)a3
{
  v4.receiver = self;
  v4.super_class = EKEventDateEditItemAccessibility;
  [(EKEventDateEditItemAccessibility *)&v4 _datePickerChanged:a3];
  [(EKEventDateEditItemAccessibility *)self _axUpdateEndDateCellLabel];
}

- (void)_axUpdateEndDateCellLabel
{
  v4 = [(EKEventDateEditItemAccessibility *)self safeValueForKey:@"_modernEndDateCell"];
  if ([(EKEventDateEditItemAccessibility *)self safeBoolForKey:@"_endDateIsBeforeStartDate"])
  {
    v3 = accessibilityLocalizedString(@"invalid.end.date");
  }

  else
  {
    v3 = &stru_2A2195B98;
  }

  [v4 _accessibilitySetAssignedValue:v3 forKey:@"AXAddendumString"];
}

- (void)_accessibilitySetupDateCellForKey:(id)a3
{
  v4 = a3;
  v5 = [v4 stringByAppendingString:@"DatePickerCell"];
  v9 = [(EKEventDateEditItemAccessibility *)self safeValueForKey:v5];

  v6 = objc_opt_new();
  v7 = [v4 stringByAppendingString:@"DatePicker"];

  v8 = [(EKEventDateEditItemAccessibility *)self safeValueForKey:v7];
  [v6 axSafelyAddObject:v8];

  [v9 setAccessibilityElements:v6];
}

@end