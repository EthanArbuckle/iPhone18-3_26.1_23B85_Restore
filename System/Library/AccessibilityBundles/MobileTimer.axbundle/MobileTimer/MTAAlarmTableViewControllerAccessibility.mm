@interface MTAAlarmTableViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axSetDetailLabelsForVisibleCells;
- (void)_axSetHeaderLabelForSleepSection:(id)section;
- (void)viewDidLoad;
@end

@implementation MTAAlarmTableViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MTAAlarmTableViewController" isKindOfClass:@"UITableViewController"];
  [validationsCopy validateClass:@"MTAAlarmTableViewController" hasInstanceMethod:@"dataSource" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTAAlarmTableViewController" hasInstanceMethod:@"_isAlarmsSection:" withFullSignature:{"B", "q", 0}];
  [validationsCopy validateClass:@"MTAAlarmTableViewController" hasInstanceMethod:@"_isWakeAlarmSection:" withFullSignature:{"B", "q", 0}];
  [validationsCopy validateClass:@"MTAAlarmTableViewController" hasInstanceMethod:@"tableView:viewForHeaderInSection:" withFullSignature:{"@", "@", "q", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = MTAAlarmTableViewControllerAccessibility;
  [(MTAAlarmTableViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(MTAAlarmTableViewControllerAccessibility *)self _axSetDetailLabelsForVisibleCells];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = MTAAlarmTableViewControllerAccessibility;
  [(MTAAlarmTableViewControllerAccessibility *)&v3 viewDidLoad];
  [(MTAAlarmTableViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_axSetDetailLabelsForVisibleCells
{
  v40 = *MEMORY[0x29EDCA608];
  LOBYTE(v22) = 0;
  objc_opt_class();
  v21 = __UIAccessibilityCastAsClass();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  tableView = [v21 tableView];
  obj = [tableView indexPathsForVisibleRows];

  v4 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v4)
  {
    v20 = *v36;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v36 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v35 + 1) + 8 * i);
        v22 = 0;
        v23 = &v22;
        v24 = 0x2020000000;
        LOBYTE(v25) = 0;
        v28 = MEMORY[0x29EDCA5F8];
        v29 = 3221225472;
        v30 = __77__MTAAlarmTableViewControllerAccessibility__axSetDetailLabelsForVisibleCells__block_invoke;
        v31 = &unk_29F2DAB50;
        v33 = v6;
        v34 = &v22;
        selfCopy = self;
        AXPerformSafeBlock();
        v7 = *(v23 + 24);
        _Block_object_dispose(&v22, 8);
        if (v7 == 1)
        {
          v8 = [(MTAAlarmTableViewControllerAccessibility *)self safeValueForKey:@"dataSource"];
          v22 = 0;
          v23 = &v22;
          v24 = 0x3032000000;
          v25 = __Block_byref_object_copy_;
          v26 = __Block_byref_object_dispose_;
          v27 = 0;
          v9 = v8;
          AXPerformSafeBlock();
          v10 = v23[5];

          _Block_object_dispose(&v22, 8);
          tableView2 = [v21 tableView];
          v12 = [tableView2 cellForRowAtIndexPath:v6];

          LOBYTE(v22) = 0;
          objc_opt_class();
          v13 = __UIAccessibilityCastAsSafeCategory();
          if (v22 == 1)
          {
            abort();
          }

          v14 = v13;
          [v13 _axSetDetailLabelForAlarm:v10];
        }

        v22 = 0;
        v23 = &v22;
        v24 = 0x2020000000;
        LOBYTE(v25) = 0;
        AXPerformSafeBlock();
        v15 = *(v23 + 24);
        _Block_object_dispose(&v22, 8);
        if (v15 == 1)
        {
          tableView3 = [v21 tableView];
          v17 = [tableView3 headerViewForSection:{objc_msgSend(v6, "section")}];

          [(MTAAlarmTableViewControllerAccessibility *)self _axSetHeaderLabelForSleepSection:v17];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v4);
  }

  v18 = *MEMORY[0x29EDCA608];
}

uint64_t __77__MTAAlarmTableViewControllerAccessibility__axSetDetailLabelsForVisibleCells__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isAlarmsSection:{objc_msgSend(*(a1 + 40), "section")}];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t __77__MTAAlarmTableViewControllerAccessibility__axSetDetailLabelsForVisibleCells__block_invoke_309(uint64_t a1)
{
  v2 = [*(a1 + 32) alarmAtRow:{objc_msgSend(*(a1 + 40), "row")}];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

uint64_t __77__MTAAlarmTableViewControllerAccessibility__axSetDetailLabelsForVisibleCells__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) _isWakeAlarmSection:{objc_msgSend(*(a1 + 40), "section")}];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)_axSetHeaderLabelForSleepSection:(id)section
{
  sectionCopy = section;
  v4 = [sectionCopy _accessibilityDescendantOfType:objc_opt_class()];
  objc_opt_class();
  contentConfiguration = [sectionCopy contentConfiguration];
  v6 = __UIAccessibilityCastAsClass();

  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
  attributedText = [v6 attributedText];
  string = [attributedText string];
  [v4 setAccessibilityLabel:string];
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v15.receiver = self;
  v15.super_class = MTAAlarmTableViewControllerAccessibility;
  v7 = [(MTAAlarmTableViewControllerAccessibility *)&v15 tableView:viewCopy viewForHeaderInSection:section];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  AXPerformSafeBlock();
  LODWORD(section) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  if (section == 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      LOBYTE(v11) = 0;
      objc_opt_class();
      v8 = __UIAccessibilityCastAsClass();
      if (v11 == 1)
      {
        abort();
      }

      v9 = v8;
      [(MTAAlarmTableViewControllerAccessibility *)self _axSetHeaderLabelForSleepSection:v8];
    }
  }

  return v7;
}

uint64_t __77__MTAAlarmTableViewControllerAccessibility_tableView_viewForHeaderInSection___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isWakeAlarmSection:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

@end