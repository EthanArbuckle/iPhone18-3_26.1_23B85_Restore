@interface WDUnitPreferenceViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
@end

@implementation WDUnitPreferenceViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"WDUnitPreferenceViewController" hasInstanceVariable:@"_rows" withType:"NSArray"];
  [v3 validateClass:@"WDUnitPreferenceViewController" hasInstanceVariable:@"_unitController" withType:"HKUnitPreferenceController"];
  [v3 validateClass:@"_WDUnitPreferenceViewControllerRow" hasInstanceMethod:@"unit" withFullSignature:{"@", 0}];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v30.receiver = self;
  v30.super_class = WDUnitPreferenceViewControllerAccessibility;
  v8 = [(WDUnitPreferenceViewControllerAccessibility *)&v30 tableView:v6 cellForRowAtIndexPath:v7];
  LOBYTE(v23) = 0;
  v9 = [(WDUnitPreferenceViewControllerAccessibility *)self safeValueForKey:@"_rows"];
  v10 = __UIAccessibilitySafeClass();

  v11 = [v7 row];
  if (v11 < [v10 count])
  {
    LOBYTE(v23) = 0;
    v12 = [v10 objectAtIndex:{objc_msgSend(v7, "row")}];
    v13 = __UIAccessibilitySafeClass();

    LOBYTE(v23) = 0;
    v14 = [v13 safeValueForKey:@"unit"];
    v15 = __UIAccessibilitySafeClass();

    v16 = [(WDUnitPreferenceViewControllerAccessibility *)self safeValueForKey:@"_unitController"];
    v29 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy_;
    v27 = __Block_byref_object_dispose_;
    v28 = 0;
    v22 = MEMORY[0x29EDCA5F8];
    v17 = v16;
    v18 = v15;
    AXPerformSafeBlock();
    v19 = v24[5];

    _Block_object_dispose(&v23, 8);
    v20 = __UIAccessibilitySafeClass();

    if (v29 == 1)
    {
      abort();
    }

    [v8 setAccessibilityLabel:{v20, v22, 3221225472, __79__WDUnitPreferenceViewControllerAccessibility_tableView_cellForRowAtIndexPath___block_invoke, &unk_29F2C3F70}];
  }

  return v8;
}

uint64_t __79__WDUnitPreferenceViewControllerAccessibility_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accessibilityNameForUnit:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

@end