@interface SWTodayTableViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
@end

@implementation SWTodayTableViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SWTodayTableViewCell"];
  [validationsCopy validateClass:@"SWTodayTableViewController" hasInstanceMethod:@"tableView: cellForRowAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"Stock"];
  [validationsCopy validateClass:@"Stock" hasInstanceMethod:@"companyName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Stock" hasInstanceMethod:@"marketcap" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Stock" hasInstanceMethod:@"formattedPrice" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Stock" hasClassMethod:@"BlankValueString" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Stock" hasInstanceMethod:@"changeIsNegative" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"Stock" hasInstanceMethod:@"isIndex" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"Stock" hasInstanceMethod:@"changeIsZero" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"Stock" hasClassMethod:@"formattedStringForString: fractionDigits: percentStyle:" withFullSignature:{"@", "@", "I", "B", 0}];
  [validationsCopy validateClass:@"Stock" hasInstanceMethod:@"formattedChangePercent:" withFullSignature:{"@", "B", 0}];
  [validationsCopy validateClass:@"Stock" hasInstanceMethod:@"change" withFullSignature:{"@", 0}];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v45.receiver = self;
  v45.super_class = SWTodayTableViewControllerAccessibility;
  v8 = [(SWTodayTableViewControllerAccessibility *)&v45 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  MEMORY[0x29ED39940](@"SWTodayTableViewCell");
  if (objc_opt_isKindOfClass())
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = __Block_byref_object_copy_;
    v43 = __Block_byref_object_dispose_;
    v44 = 0;
    v38 = pathCopy;
    AXPerformSafeBlock();
    v9 = v40[5];

    _Block_object_dispose(&v39, 8);
    v36 = [v9 safeValueForKey:@"companyName"];
    if ([v9 safeBoolForKey:@"isIndex"])
    {
      v35 = [v9 safeValueForKey:@"formattedPrice"];
    }

    else
    {
      v10 = MEMORY[0x29EDBA0F8];
      v11 = accessibilityLocalizedString(@"stock.price");
      v12 = [v9 safeValueForKey:@"formattedPrice"];
      v35 = [v10 stringWithFormat:v11, v12];
    }

    v13 = [v9 safeValueForKey:@"marketcap"];
    v34 = [MEMORY[0x29ED39940](@"Stock") safeValueForKey:@"BlankValueString"];
    if ([v13 isEqualToString:?])
    {
      v33 = 0;
    }

    else
    {
      [v13 floatValue];
      v14 = AXFormatFloat();

      v15 = MEMORY[0x29EDBA078];
      v16 = [MEMORY[0x29EDBA070] numberWithInteger:{objc_msgSend(v14, "integerValue")}];
      v13 = [v15 localizedStringFromNumber:v16 numberStyle:5];

      v17 = MEMORY[0x29EDBA0F8];
      v18 = accessibilityLocalizedString(@"marketcap.value");
      v33 = [v17 stringWithFormat:v18, v13];
    }

    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = __Block_byref_object_copy_;
    v43 = __Block_byref_object_dispose_;
    v44 = 0;
    v37 = v9;
    AXPerformSafeBlock();
    v19 = v40[5];

    _Block_object_dispose(&v39, 8);
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = __Block_byref_object_copy_;
    v43 = __Block_byref_object_dispose_;
    v44 = 0;
    v20 = v37;
    AXPerformSafeBlock();
    v21 = v40[5];

    _Block_object_dispose(&v39, 8);
    if ([v20 safeBoolForKey:@"changeIsZero"])
    {
      v22 = accessibilityLocalizedString(@"no.change");
      v23 = accessibilityLocalizedString(@"no.change");
    }

    else
    {
      v24 = [v20 safeBoolForKey:@"changeIsNegative"];
      v25 = MEMORY[0x29EDBA0F8];
      if (v24)
      {
        v26 = accessibilityLocalizedString(@"negative.change");
        v22 = [v25 stringWithFormat:v26, v19];

        v27 = MEMORY[0x29EDBA0F8];
        v28 = @"down.value";
      }

      else
      {
        v29 = accessibilityLocalizedString(@"positive.change");
        v22 = [v25 stringWithFormat:v29, v19];

        v27 = MEMORY[0x29EDBA0F8];
        v28 = @"up.value";
      }

      v30 = accessibilityLocalizedString(v28);
      v23 = [v27 stringWithFormat:v30, v21];
    }

    v31 = __UIAXStringForVariables();
    [v8 setAccessibilityLabel:{v31, v35, v23, v22, v33, @"__AXStringForVariablesSentinel"}];
  }

  return v8;
}

uint64_t __75__SWTodayTableViewControllerAccessibility_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _stockAtIndexPath:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

uint64_t __75__SWTodayTableViewControllerAccessibility_tableView_cellForRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) formattedChangePercent:1];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

void __75__SWTodayTableViewControllerAccessibility_tableView_cellForRowAtIndexPath___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x29ED39940](@"Stock");
  v6 = [*(a1 + 32) safeValueForKey:@"change"];
  v3 = [v2 formattedStringForString:v6 fractionDigits:2 percentStyle:0];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

@end