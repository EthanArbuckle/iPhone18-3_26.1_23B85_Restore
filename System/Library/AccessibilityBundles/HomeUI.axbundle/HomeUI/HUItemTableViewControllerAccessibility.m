@interface HUItemTableViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
@end

@implementation HUItemTableViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUItemTableViewController" hasInstanceMethod:@"tableView:cellForRowAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [v3 validateClass:@"HUItemTableViewController" hasInstanceVariable:@"_itemManager" withType:"HFItemManager"];
  [v3 validateClass:@"HUStatusAndNotificationsItemManager" isKindOfClass:@"HFItemManager"];
  [v3 validateClass:@"HUStatusAndNotificationsItemManager" hasInstanceMethod:@"conditionModule" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUStatusAndNotificationsItemManager" hasInstanceVariable:@"_conditionModule" withType:"HUTriggerConditionEditorItemModule"];
  [v3 validateClass:@"HUTriggerConditionEditorItemModule" hasInstanceMethod:@"isShowConditionOptionsItem:" withFullSignature:{"B", "@", 0}];
  [v3 validateClass:@"HUEditableTextCell"];
  [v3 validateClass:@"HUTitleValueCell" isKindOfClass:@"HUIconCell"];
  [v3 validateClass:@"HUIconCell" hasInstanceMethod:@"isDisabled" withFullSignature:{"B", 0}];
  [v3 validateClass:@"HUTitleValueCell" hasInstanceMethod:@"titleText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUTitleValueCell" hasInstanceMethod:@"valueText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUEditableTextCell" hasInstanceVariable:@"_textField" withType:"UITextField"];
  [v3 validateClass:@"HUDynamicAlignmentTitleValueCell"];
  [v3 validateClass:@"HUServiceDetailsRoomItem"];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v27.receiver = self;
  v27.super_class = HUItemTableViewControllerAccessibility;
  v8 = [(HUItemTableViewControllerAccessibility *)&v27 tableView:v6 cellForRowAtIndexPath:v7];
  MEMORY[0x29C2DA460](@"HUEditableTextCell");
  if (objc_opt_isKindOfClass())
  {
    [v8 setIsAccessibilityElement:0];
    objc_initWeak(&location, v8);
    v25[0] = MEMORY[0x29EDCA5F8];
    v25[1] = 3221225472;
    v25[2] = __74__HUItemTableViewControllerAccessibility_tableView_cellForRowAtIndexPath___block_invoke;
    v25[3] = &unk_29F2C6E10;
    objc_copyWeak(&v26, &location);
    [v8 _setAccessibilityElementsBlock:v25];
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
    goto LABEL_12;
  }

  LOBYTE(location) = 0;
  objc_opt_class();
  v9 = [(HUItemTableViewControllerAccessibility *)self safeValueForKey:@"itemManager"];
  v10 = __UIAccessibilityCastAsClass();

  v11 = [v10 displayedItemAtIndexPath:v7];
  if (objc_opt_respondsToSelector())
  {
    location = 0;
    p_location = &location;
    v23 = 0x2020000000;
    v24 = 0;
    v17[1] = MEMORY[0x29EDCA5F8];
    v17[2] = 3221225472;
    v17[3] = __74__HUItemTableViewControllerAccessibility_tableView_cellForRowAtIndexPath___block_invoke_3;
    v17[4] = &unk_29F2C6B90;
    v20 = &location;
    v18 = v10;
    v19 = v11;
    AXPerformSafeBlock();
    v12 = *(p_location + 24);

    _Block_object_dispose(&location, 8);
    if ((v12 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    MEMORY[0x29C2DA460](@"HUDynamicAlignmentTitleValueCell");
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MEMORY[0x29C2DA460](@"HUServiceDetailsRoomItem");
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        MEMORY[0x29C2DA460](@"HUTitleValueCell");
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_11;
        }

        v13 = [v8 safeValueForKey:@"valueText"];

        if (!v13)
        {
          goto LABEL_11;
        }
      }
    }
  }

  v14 = [v8 accessibilityTraits];
  [v8 setAccessibilityTraits:*MEMORY[0x29EDC7F70] | v14];
  objc_initWeak(&location, v8);
  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 3221225472;
  v16[2] = __74__HUItemTableViewControllerAccessibility_tableView_cellForRowAtIndexPath___block_invoke_4;
  v16[3] = &unk_29F2C6B48;
  objc_copyWeak(v17, &location);
  [v8 _setAccessibilityHintBlock:v16];
  objc_destroyWeak(v17);
  objc_destroyWeak(&location);
LABEL_11:

LABEL_12:

  return v8;
}

id __74__HUItemTableViewControllerAccessibility_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1)
{
  LOBYTE(location) = 0;
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeValueForKey:@"_textField"];
  v4 = __UIAccessibilityCastAsClass();

  objc_initWeak(&location, v4);
  v7 = MEMORY[0x29EDCA5F8];
  v8 = 3221225472;
  v9 = __74__HUItemTableViewControllerAccessibility_tableView_cellForRowAtIndexPath___block_invoke_2;
  v10 = &unk_29F2C6DE8;
  objc_copyWeak(&v11, &location);
  objc_copyWeak(&v12, (a1 + 32));
  [v4 _setAccessibilityLabelBlock:&v7];
  v5 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, v4, v7, v8, v9, v10}];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v5;
}

id __74__HUItemTableViewControllerAccessibility_tableView_cellForRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained isEditing];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    v4 = [v5 safeValueForKey:@"titleText"];
  }

  return v4;
}

void __74__HUItemTableViewControllerAccessibility_tableView_cellForRowAtIndexPath___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"conditionModule"];
  *(*(*(a1 + 48) + 8) + 24) = [v2 isShowConditionOptionsItem:*(a1 + 40)];
}

id __74__HUItemTableViewControllerAccessibility_tableView_cellForRowAtIndexPath___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained safeBoolForKey:@"isDisabled"])
  {
    v2 = 0;
  }

  else
  {
    v2 = accessibilityHomeUILocalizedString(@"options.cell.toggle");
  }

  return v2;
}

@end