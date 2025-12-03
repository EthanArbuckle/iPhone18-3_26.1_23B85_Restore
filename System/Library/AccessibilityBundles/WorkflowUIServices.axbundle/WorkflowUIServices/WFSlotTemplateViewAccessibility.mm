@interface WFSlotTemplateViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityLocalizedPlaceholderNameForSlot:(id)slot;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (void)_accessibilityEnumerateContentsWithBlock:(id)block;
- (void)_accessibilityShowMenuForSlot:(id)slot;
@end

@implementation WFSlotTemplateViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"WFSlotTemplateView" hasInstanceMethod:@"textStorage" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WFSlotTemplateTextStorage" hasInstanceMethod:@"contents" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WFSlotTemplateView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WFSlotTemplateView" hasInstanceMethod:@"_selectSlot:notifyDelegate:" withFullSignature:{"v", "@", "B", 0}];
  [validationsCopy validateClass:@"WFSlotTemplateSlot"];
  [validationsCopy validateClass:@"WFSlotTemplateSlot" hasInstanceMethod:@"isPopulated" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"WFSlotTemplateSlot" hasInstanceMethod:@"contentAttributedString" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WFSlotTemplateSlot" hasInstanceMethod:@"localizedName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WFSlotTemplateSlot" hasInstanceMethod:@"localizedPlaceholder" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WFSlotTemplateSlot" hasInstanceMethod:@"identifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WFSlotTemplateView" hasInstanceMethod:@"showsDisclosureArrow" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"WFSlotTemplateView" hasInstanceMethod:@"disclosureArrowIsOpen" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"WFSlotTemplateView" hasInstanceMethod:@"didTapDisclosureArrow" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"WFSlotTextAttachment"];
  [validationsCopy validateClass:@"WFSlotTextAttachment" hasInstanceMethod:@"token" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WFSlotTemplateView" hasInstanceMethod:@"sourceRectForSlot:" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", "@", 0}];
  if (NSClassFromString(&cfstr_Wfvariable.isa))
  {
    [validationsCopy validateClass:@"WFVariable" hasInstanceMethod:@"nameIncludingPropertyName" withFullSignature:{"@", 0}];
  }
}

- (void)_accessibilityEnumerateContentsWithBlock:(id)block
{
  v19 = *MEMORY[0x29EDCA608];
  blockCopy = block;
  v17 = 0;
  objc_opt_class();
  v5 = [(WFSlotTemplateViewAccessibility *)self safeValueForKeyPath:@"textStorage.contents"];
  v6 = __UIAccessibilityCastAsClass();

  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        blockCopy[2](blockCopy, *(*(&v13 + 1) + 8 * i));
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x29EDCA608];
}

- (id)_accessibilityLocalizedPlaceholderNameForSlot:(id)slot
{
  slotCopy = slot;
  v4 = [slotCopy safeStringForKey:@"localizedName"];
  if (![v4 length])
  {
    v5 = [slotCopy safeStringForKey:@"localizedPlaceholder"];

    v4 = v5;
  }

  return v4;
}

- (void)_accessibilityShowMenuForSlot:(id)slot
{
  [(WFSlotTemplateViewAccessibility *)self sourceRectForSlot:slot];
  AX_CGRectGetCenter();
  v5 = v4;
  v7 = v6;
  v8 = [(WFSlotTemplateViewAccessibility *)self configureMenuAtLocation:1 wasTriggeredByTap:?];
  if (v8)
  {
    v13 = v8;
    [(WFSlotTemplateViewAccessibility *)self accessibilityFrame];
    v10 = v5 + v9;
    [(WFSlotTemplateViewAccessibility *)self accessibilityFrame];
    v12 = [MEMORY[0x29EDBA168] valueWithCGPoint:{v10, v7 + v11}];
    [(WFSlotTemplateViewAccessibility *)self _accessibilityShowContextMenuWithTargetPointValue:v12];

    v8 = v13;
  }
}

- (id)accessibilityLabel
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3032000000;
  v5[3] = __Block_byref_object_copy_;
  v5[4] = __Block_byref_object_dispose_;
  v6 = 0;
  v4 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  AXPerformSafeBlock();
  v2 = MEMORY[0x29ED431D0](v4);

  _Block_object_dispose(v5, 8);

  return v2;
}

void __53__WFSlotTemplateViewAccessibility_accessibilityLabel__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __53__WFSlotTemplateViewAccessibility_accessibilityLabel__block_invoke_2;
  v4[3] = &unk_29F323698;
  v4[4] = v1;
  v3 = *(a1 + 40);
  v2 = v3;
  v5 = v3;
  [v1 _accessibilityEnumerateContentsWithBlock:v4];
}

void __53__WFSlotTemplateViewAccessibility_accessibilityLabel__block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  NSClassFromString(&cfstr_Wfslottemplate_2.isa);
  if (objc_opt_isKindOfClass())
  {
    if ([v4 safeBoolForKey:@"isPopulated"])
    {
      v24 = 0;
      objc_opt_class();
      v5 = [v4 safeValueForKey:@"contentAttributedString"];
      v6 = __UIAccessibilityCastAsClass();

      v7 = [v6 attributesAtIndex:0 effectiveRange:0];
      v8 = [v7 count];

      if (v8)
      {
        v9 = *MEMORY[0x29EDC7628];
        v10 = [v6 length];
        v23[0] = MEMORY[0x29EDCA5F8];
        v23[1] = 3221225472;
        v23[2] = __53__WFSlotTemplateViewAccessibility_accessibilityLabel__block_invoke_3;
        v23[3] = &unk_29F323670;
        v23[4] = *(a1 + 48);
        [v6 enumerateAttribute:v9 inRange:0 options:v10 usingBlock:{0, v23}];
      }

      else
      {
        v11 = [v6 string];
        v12 = *(*(a1 + 48) + 8);
        v13 = *(v12 + 40);
        *(v12 + 40) = v11;
      }
    }

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v14 = [*(a1 + 32) _accessibilityLocalizedPlaceholderNameForSlot:v4];
      v15 = *(*(a1 + 48) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;
    }
  }

  v17 = *(*(a1 + 48) + 8);
  v19 = *(v17 + 40);
  v18 = (v17 + 40);
  if (!v19)
  {
    objc_storeStrong(v18, a2);
    v20 = *(*(*(a1 + 48) + 8) + 40);
  }

  [*(a1 + 40) axSafelyAddObject:?];
  v21 = *(*(a1 + 48) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = 0;
}

void __53__WFSlotTemplateViewAccessibility_accessibilityLabel__block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  NSClassFromString(&cfstr_Wfslottextatta.isa);
  if (objc_opt_isKindOfClass())
  {
    v3 = [v6 safeValueForKeyPath:@"token.nameIncludingPropertyName"];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

- (id)accessibilityCustomActions
{
  array = [MEMORY[0x29EDB8DE8] array];
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy_;
  v15[4] = __Block_byref_object_dispose_;
  v16 = 0;
  v12[5] = MEMORY[0x29EDCA5F8];
  v12[6] = 3221225472;
  v12[7] = __61__WFSlotTemplateViewAccessibility_accessibilityCustomActions__block_invoke;
  v12[8] = &unk_29F3236C0;
  v12[9] = self;
  v14 = v15;
  v4 = array;
  v13 = v4;
  AXPerformSafeBlock();
  if ([(WFSlotTemplateViewAccessibility *)self safeBoolForKey:@"showsDisclosureArrow"])
  {
    if ([(WFSlotTemplateViewAccessibility *)self safeBoolForKey:@"disclosureArrowIsOpen"])
    {
      v5 = @"shortcut.show.less";
    }

    else
    {
      v5 = @"shortcut.show.more";
    }

    v6 = accessibilityLocalizedString(v5);
    v7 = objc_alloc(MEMORY[0x29EDC78E0]);
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = __61__WFSlotTemplateViewAccessibility_accessibilityCustomActions__block_invoke_10;
    v12[3] = &unk_29F3237D8;
    v12[4] = self;
    v8 = [v7 initWithName:v6 actionHandler:v12];
    [v4 axSafelyAddObject:v8];
  }

  v9 = v13;
  v10 = v4;

  _Block_object_dispose(v15, 8);

  return v10;
}

void __61__WFSlotTemplateViewAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __61__WFSlotTemplateViewAccessibility_accessibilityCustomActions__block_invoke_2;
  v4[3] = &unk_29F3237B0;
  v4[4] = v1;
  v3 = *(a1 + 40);
  v2 = v3;
  v5 = v3;
  [v1 _accessibilityEnumerateContentsWithBlock:v4];
}

void __61__WFSlotTemplateViewAccessibility_accessibilityCustomActions__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  NSClassFromString(&cfstr_Wfslottemplate_2.isa);
  if (objc_opt_isKindOfClass())
  {
    v4 = [*(a1 + 32) _accessibilityLocalizedPlaceholderNameForSlot:v3];
    v5 = accessibilityLocalizedString(@"edit.shortcut.action");
    v6 = __AXStringForVariables();

    if ([v3 safeBoolForKey:{@"isPopulated", v4, @"__AXStringForVariablesSentinel"}])
    {
      v37 = 0;
      objc_opt_class();
      v7 = [v3 safeValueForKey:@"contentAttributedString"];
      v8 = __UIAccessibilityCastAsClass();

      v9 = [v8 attributesAtIndex:0 effectiveRange:0];
      v10 = [v9 count];

      if (v10)
      {
        v11 = *MEMORY[0x29EDC7628];
        v12 = [v8 length];
        v31[0] = MEMORY[0x29EDCA5F8];
        v31[1] = 3221225472;
        v31[2] = __61__WFSlotTemplateViewAccessibility_accessibilityCustomActions__block_invoke_3;
        v31[3] = &unk_29F323738;
        v13 = v6;
        v36 = *(a1 + 48);
        v14 = *(a1 + 32);
        v32 = v13;
        v33 = v14;
        v34 = v3;
        v35 = *(a1 + 40);
        [v8 enumerateAttribute:v11 inRange:0 options:v12 usingBlock:{0, v31}];
      }

      if (!*(*(*(a1 + 48) + 8) + 40))
      {
        v26 = [v8 string];
        v15 = __AXStringForVariables();

        v16 = objc_alloc(MEMORY[0x29EDC78E0]);
        v29[0] = MEMORY[0x29EDCA5F8];
        v29[1] = 3221225472;
        v29[2] = __61__WFSlotTemplateViewAccessibility_accessibilityCustomActions__block_invoke_6;
        v29[3] = &unk_29F323788;
        v29[4] = *(a1 + 32);
        v30 = v3;
        v17 = [v16 initWithName:v15 actionHandler:{v29, v26, @"__AXStringForVariablesSentinel"}];
        v18 = *(*(a1 + 48) + 8);
        v19 = *(v18 + 40);
        *(v18 + 40) = v17;

        [*(a1 + 40) axSafelyAddObject:*(*(*(a1 + 48) + 8) + 40)];
      }
    }

    else
    {
      v20 = objc_alloc(MEMORY[0x29EDC78E0]);
      v27[0] = MEMORY[0x29EDCA5F8];
      v27[1] = 3221225472;
      v27[2] = __61__WFSlotTemplateViewAccessibility_accessibilityCustomActions__block_invoke_8;
      v27[3] = &unk_29F323788;
      v27[4] = *(a1 + 32);
      v28 = v3;
      v21 = [v20 initWithName:v6 actionHandler:v27];
      v22 = *(*(a1 + 48) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;

      [*(a1 + 40) axSafelyAddObject:*(*(*(a1 + 48) + 8) + 40)];
    }
  }

  v24 = *(*(a1 + 48) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = 0;
}

void __61__WFSlotTemplateViewAccessibility_accessibilityCustomActions__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  NSClassFromString(&cfstr_Wfslottextatta.isa);
  if (objc_opt_isKindOfClass())
  {
    v15 = 0;
    objc_opt_class();
    v4 = [v3 safeValueForKeyPath:@"token.nameIncludingPropertyName"];
    v5 = __UIAccessibilityCastAsClass();

    v6 = *(a1 + 32);
    v7 = __AXStringForVariables();
    v8 = objc_alloc(MEMORY[0x29EDC78E0]);
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = __61__WFSlotTemplateViewAccessibility_accessibilityCustomActions__block_invoke_4;
    v12[3] = &unk_29F323710;
    v12[4] = *(a1 + 40);
    v13 = v3;
    v14 = *(a1 + 48);
    v9 = [v8 initWithName:v7 actionHandler:{v12, v5, @"__AXStringForVariablesSentinel"}];
    v10 = *(*(a1 + 64) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    [*(a1 + 56) axSafelyAddObject:*(*(*(a1 + 64) + 8) + 40)];
  }
}

uint64_t __61__WFSlotTemplateViewAccessibility_accessibilityCustomActions__block_invoke_4(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  AXPerformSafeBlock();

  return 1;
}

void __61__WFSlotTemplateViewAccessibility_accessibilityCustomActions__block_invoke_5(uint64_t a1)
{
  v5 = [*(a1 + 32) safeValueForKey:@"delegate"];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) safeValueForKey:@"identifier"];
  [v5 slotTemplateView:v2 didTapTextAttachment:v3 inSlotWithIdentifier:v4];
}

uint64_t __61__WFSlotTemplateViewAccessibility_accessibilityCustomActions__block_invoke_6(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  AXPerformSafeBlock();

  return 1;
}

uint64_t __61__WFSlotTemplateViewAccessibility_accessibilityCustomActions__block_invoke_8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  AXPerformSafeBlock();

  return 1;
}

uint64_t __61__WFSlotTemplateViewAccessibility_accessibilityCustomActions__block_invoke_10(uint64_t a1)
{
  v2 = *(a1 + 32);
  AXPerformSafeBlock();
  return 1;
}

@end