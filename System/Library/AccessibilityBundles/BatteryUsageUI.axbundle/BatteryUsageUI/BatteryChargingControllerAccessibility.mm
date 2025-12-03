@interface BatteryChargingControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation BatteryChargingControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BatteryChargingController" hasInstanceMethod:@"getSegmentedControlValue" withFullSignature:{"f", 0}];
  [validationsCopy validateClass:@"BatteryChargingController" hasInstanceMethod:@"setSegmentedControlValue:" withFullSignature:{"v", "f", 0}];
  [validationsCopy validateClass:@"PLSegmentedLabelSliderCell" hasInstanceMethod:@"setCurrentValue: animated:" withFullSignature:{"v", "f", "B", 0}];
  [validationsCopy validateClass:@"BatteryChargingController" isKindOfClass:@"PSListItemsController"];
  [validationsCopy validateClass:@"PSListItemsController" isKindOfClass:@"PSListController"];
  [validationsCopy validateClass:@"PSListController" conformsToProtocol:@"UITableViewDelegate"];
  [validationsCopy validateClass:@"PSListController" hasInstanceMethod:@"specifierAtIndex:" withFullSignature:{"@", "q", 0}];
  [validationsCopy validateClass:@"PSListController" hasInstanceMethod:@"indexForIndexPath:" withFullSignature:{"q", "@", 0}];
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  objc_opt_class();
  location = 0;
  p_location = &location;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  from[1] = MEMORY[0x29EDCA5F8];
  from[2] = 3221225472;
  from[3] = __86__BatteryChargingControllerAccessibility_tableView_willDisplayCell_forRowAtIndexPath___block_invoke;
  from[4] = &unk_29F2A7BA8;
  from[7] = &location;
  from[5] = self;
  v11 = pathCopy;
  from[6] = v11;
  AXPerformSafeBlock();
  v12 = p_location[5];

  _Block_object_dispose(&location, 8);
  v13 = __UIAccessibilityCastAsClass();

  identifier = [v13 identifier];
  v15 = [identifier isEqualToString:@"CHARGING_LIMIT_SLIDER_IDENTIFIER"];

  if (v15)
  {
    [cellCopy setAccessibilityTraits:*MEMORY[0x29EDC7F60]];
    objc_initWeak(&location, self);
    objc_initWeak(from, cellCopy);
    [cellCopy setAccessibilityLabelBlock:&__block_literal_global_0];
    v22[0] = MEMORY[0x29EDCA5F8];
    v22[1] = 3221225472;
    v22[2] = __86__BatteryChargingControllerAccessibility_tableView_willDisplayCell_forRowAtIndexPath___block_invoke_3;
    v22[3] = &unk_29F2A7C18;
    objc_copyWeak(&v23, &location);
    [cellCopy setAccessibilityValueBlock:v22];
    v19[0] = MEMORY[0x29EDCA5F8];
    v19[1] = 3221225472;
    v19[2] = __86__BatteryChargingControllerAccessibility_tableView_willDisplayCell_forRowAtIndexPath___block_invoke_5;
    v19[3] = &unk_29F2A7C68;
    objc_copyWeak(&v20, &location);
    objc_copyWeak(&v21, from);
    [cellCopy setAccessibilityDecrementBlock:v19];
    v16[0] = MEMORY[0x29EDCA5F8];
    v16[1] = 3221225472;
    v16[2] = __86__BatteryChargingControllerAccessibility_tableView_willDisplayCell_forRowAtIndexPath___block_invoke_8;
    v16[3] = &unk_29F2A7C68;
    objc_copyWeak(&v17, &location);
    objc_copyWeak(&v18, from);
    [cellCopy setAccessibilityIncrementBlock:v16];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&v23);
    objc_destroyWeak(from);
    objc_destroyWeak(&location);
  }
}

uint64_t __86__BatteryChargingControllerAccessibility_tableView_willDisplayCell_forRowAtIndexPath___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) specifierAtIndex:{objc_msgSend(*(a1 + 32), "indexForIndexPath:", *(a1 + 40))}];

  return MEMORY[0x2A1C71028]();
}

id __86__BatteryChargingControllerAccessibility_tableView_willDisplayCell_forRowAtIndexPath___block_invoke_3(uint64_t a1)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  objc_copyWeak(&v9, (a1 + 32));
  AXPerformSafeBlock();
  v1 = v11[6];
  objc_destroyWeak(&v9);
  _Block_object_dispose(&v10, 8);
  v2 = MEMORY[0x29EDBA0F8];
  v3 = MEMORY[0x29EDBA078];
  *&v4 = v1 / 100.0;
  v5 = [MEMORY[0x29EDBA070] numberWithFloat:v4];
  v6 = [v3 localizedStringFromNumber:v5 numberStyle:3];
  v7 = [v2 stringWithFormat:@"%@", v6];

  return v7;
}

void __86__BatteryChargingControllerAccessibility_tableView_willDisplayCell_forRowAtIndexPath___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained getSegmentedControlValue];
  *(*(*(a1 + 32) + 8) + 24) = v2;
}

void __86__BatteryChargingControllerAccessibility_tableView_willDisplayCell_forRowAtIndexPath___block_invoke_5(uint64_t a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = MEMORY[0x29EDCA5F8];
  v8 = 3221225472;
  v9 = __86__BatteryChargingControllerAccessibility_tableView_willDisplayCell_forRowAtIndexPath___block_invoke_6;
  v10 = &unk_29F2A7BF0;
  v11 = &v13;
  objc_copyWeak(&v12, (a1 + 32));
  AXPerformSafeBlock();
  v2 = v14[6];
  objc_destroyWeak(&v12);
  _Block_object_dispose(&v13, 8);
  v3 = fmax((v2 + -5.0), 80.0);
  objc_copyWeak(&v4, (a1 + 32));
  v6 = v3;
  objc_copyWeak(&v5, (a1 + 40));
  AXPerformSafeBlock();
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v4);
}

void __86__BatteryChargingControllerAccessibility_tableView_willDisplayCell_forRowAtIndexPath___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained getSegmentedControlValue];
  *(*(*(a1 + 32) + 8) + 24) = v2;
}

void __86__BatteryChargingControllerAccessibility_tableView_willDisplayCell_forRowAtIndexPath___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  LODWORD(v3) = *(a1 + 48);
  [WeakRetained setSegmentedControlValue:v3];

  v5 = objc_loadWeakRetained((a1 + 40));
  LODWORD(v4) = *(a1 + 48);
  [v5 setCurrentValue:1 animated:v4];
}

void __86__BatteryChargingControllerAccessibility_tableView_willDisplayCell_forRowAtIndexPath___block_invoke_8(uint64_t a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = MEMORY[0x29EDCA5F8];
  v8 = 3221225472;
  v9 = __86__BatteryChargingControllerAccessibility_tableView_willDisplayCell_forRowAtIndexPath___block_invoke_9;
  v10 = &unk_29F2A7BF0;
  v11 = &v13;
  objc_copyWeak(&v12, (a1 + 32));
  AXPerformSafeBlock();
  v2 = v14[6];
  objc_destroyWeak(&v12);
  _Block_object_dispose(&v13, 8);
  v3 = fmin((v2 + 5.0), 100.0);
  objc_copyWeak(&v4, (a1 + 32));
  v6 = v3;
  objc_copyWeak(&v5, (a1 + 40));
  AXPerformSafeBlock();
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v4);
}

void __86__BatteryChargingControllerAccessibility_tableView_willDisplayCell_forRowAtIndexPath___block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained getSegmentedControlValue];
  *(*(*(a1 + 32) + 8) + 24) = v2;
}

void __86__BatteryChargingControllerAccessibility_tableView_willDisplayCell_forRowAtIndexPath___block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  LODWORD(v3) = *(a1 + 48);
  [WeakRetained setSegmentedControlValue:v3];

  v5 = objc_loadWeakRetained((a1 + 40));
  LODWORD(v4) = *(a1 + 48);
  [v5 setCurrentValue:1 animated:v4];
}

@end