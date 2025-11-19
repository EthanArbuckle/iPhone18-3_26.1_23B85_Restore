@interface SKUIIndexBarControlAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityMoveToIndexPath:(id)a3;
- (CGPoint)accessibilityActivationPoint;
- (CGRect)accessibilityFrame;
- (int64_t)_accessibilityTableIndexAdjustment;
- (void)_accessibilityBumpValue:(BOOL)a3;
- (void)_sendSelectionForTouch:(id)a3 withEvent:(id)a4;
@end

@implementation SKUIIndexBarControlAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SKUIIndexBarControl" hasInstanceMethod:@"_visibleBounds" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v3 validateClass:@"SKUIIndexBarControl" hasInstanceVariable:@"_totalEntryCount" withType:"NSInteger"];
  [v3 validateClass:@"SKUIAttributedStringIndexBarEntry" hasInstanceVariable:@"_synthesizedAttributedString" withType:"NSAttributedString"];
  [v3 validateClass:@"SKUIIndexBarControl" hasInstanceVariable:@"_lastSelectedIndexPath" withType:"NSIndexPath"];
  [v3 validateClass:@"SKUIIndexBarControl" hasInstanceVariable:@"_delegate" withType:"<SKUIIndexBarControlDelegate>"];
  [v3 validateClass:@"SKUIIndexBarControl" hasInstanceMethod:@"_entryAtIndexPath:" withFullSignature:{"@", 0}];
  [v3 validateProtocol:@"SKUIIndexBarControlDelegate" hasOptionalInstanceMethod:@"indexBarControl:didSelectEntryAtIndexPath:"];
}

- (int64_t)_accessibilityTableIndexAdjustment
{
  v2 = [(SKUIIndexBarControlAccessibility *)self _accessibilityViewAncestorIsKindOf:objc_opt_class()];
  v3 = [v2 delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [v2 safeValueForKey:@"delegate"];
    v6 = [v5 safeValueForKey:@"_accessibilityTableViewIndexAdjustment"];
    v7 = [v6 integerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_accessibilityBumpValue:(BOOL)a3
{
  v3 = a3;
  objc_opt_class();
  v5 = [(SKUIIndexBarControlAccessibility *)self safeValueForKey:@"_lastSelectedIndexPath"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [v6 row];
  if (v3)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = v7 - 1;
  }

  v9 = [MEMORY[0x29EDB9FE0] indexPathForRow:v8 inSection:0];
  v10 = [(SKUIIndexBarControlAccessibility *)self _accessibilityMoveToIndexPath:v9];

  if (!v10)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7478], 0);
  }
}

- (BOOL)_accessibilityMoveToIndexPath:(id)a3
{
  v5 = a3;
  v6 = [(SKUIIndexBarControlAccessibility *)self safeValueForKey:@"_totalEntryCount"];
  v7 = [v6 integerValue];

  if ([v5 row] < 0 || objc_msgSend(v5, "row") > v7)
  {
    v8 = 0;
    goto LABEL_20;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__0;
  v27 = __Block_byref_object_dispose__0;
  v28 = 0;
  v9 = v5;
  AXPerformSafeBlock();
  v10 = v24[5];

  _Block_object_dispose(&v23, 8);
  v11 = [MEMORY[0x29EDBA0F8] string];
  NSClassFromString(&cfstr_Skuiattributed_3.isa);
  if (objc_opt_isKindOfClass())
  {
    LOBYTE(v23) = 0;
    objc_opt_class();
    v12 = [v10 safeValueForKey:@"_synthesizedAttributedString"];
    v13 = __UIAccessibilityCastAsClass();

    if (v23 == 1)
    {
      abort();
    }

    v14 = [v13 string];
    v15 = [v14 lowercaseString];

    v11 = v13;
    goto LABEL_14;
  }

  NSClassFromString(&cfstr_Skuiimageindex.isa);
  if (objc_opt_isKindOfClass())
  {
    v16 = @"recently.added";
LABEL_13:
    v15 = accessibilitySKUILocalizedString(v16);
LABEL_14:

    v11 = v15;
    goto LABEL_15;
  }

  NSClassFromString(&cfstr_Skuiplaceholde.isa);
  if (objc_opt_isKindOfClass())
  {
    v16 = @"placeholder";
    goto LABEL_13;
  }

  NSClassFromString(&cfstr_Skuisystemcomb.isa);
  if (objc_opt_isKindOfClass())
  {
    v16 = @"combined";
    goto LABEL_13;
  }

LABEL_15:
  v17 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v11];

  v18 = [(SKUIIndexBarControlAccessibility *)self safeIvarForKey:@"_lastSelectedIndexPath"];
  if (v18)
  {
    objc_storeStrong(v18, a3);
  }

  v19 = [(SKUIIndexBarControlAccessibility *)self safeValueForKey:@"_delegate"];
  v20 = objc_opt_respondsToSelector();

  if (v20)
  {
    v21 = [(SKUIIndexBarControlAccessibility *)self safeValueForKey:@"_delegate"];
    [v21 indexBarControl:self didSelectEntryAtIndexPath:v9];
  }

  [v17 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD848]];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7478], v17);

  v8 = 1;
LABEL_20:

  return v8;
}

uint64_t __66__SKUIIndexBarControlAccessibility__accessibilityMoveToIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _entryAtIndexPath:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (void)_sendSelectionForTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v39.receiver = self;
  v39.super_class = SKUIIndexBarControlAccessibility;
  [(SKUIIndexBarControlAccessibility *)&v39 _sendSelectionForTouch:v6 withEvent:v7];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v8 = [(SKUIIndexBarControlAccessibility *)self _accessibilityValueForKey:@"AXLastIndexPath"];
    [v6 locationInView:self];
    v10 = v9;
    v11 = [(SKUIIndexBarControlAccessibility *)self safeValueForKey:@"_visibleBounds"];
    [v11 rectValue];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v20 = [(SKUIIndexBarControlAccessibility *)self safeValueForKey:@"_totalEntryCount"];
    v21 = [v20 integerValue];

    v40.origin.x = v13;
    v40.origin.y = v15;
    v40.size.width = v17;
    v40.size.height = v19;
    if (v10 < CGRectGetMinY(v40))
    {
      goto LABEL_11;
    }

    v41.origin.x = v13;
    v41.origin.y = v15;
    v41.size.width = v17;
    v41.size.height = v19;
    if (v10 > CGRectGetMaxY(v41))
    {
      goto LABEL_11;
    }

    v42.origin.x = v13;
    v42.origin.y = v15;
    v42.size.width = v17;
    v42.size.height = v19;
    v22 = v10 - CGRectGetMinY(v42);
    v43.origin.x = v13;
    v43.origin.y = v15;
    v43.size.width = v17;
    v43.size.height = v19;
    Height = CGRectGetHeight(v43);
    v24 = v21 - 1;
    v25 = llround(v22 / Height * (v21 - 1));
    if (v21 - 1 >= v25)
    {
      v24 = v25;
    }

    v26 = v24 & ~(v24 >> 63);
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__0;
    v37 = __Block_byref_object_dispose__0;
    v38 = 0;
    if (v26 >= v21)
    {
      goto LABEL_9;
    }

    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x2020000000;
    v32[3] = 0;
    v31[0] = MEMORY[0x29EDCA5F8];
    v31[1] = 3221225472;
    v31[2] = __69__SKUIIndexBarControlAccessibility__sendSelectionForTouch_withEvent___block_invoke;
    v31[3] = &unk_29F3042A0;
    v31[5] = &v33;
    v31[6] = v26;
    v31[4] = v32;
    [(SKUIIndexBarControlAccessibility *)self _enumerateEntryIndexPathsUsingBlock:v31];
    _Block_object_dispose(v32, 8);
    v27 = v34[5];
    if (v27)
    {
      v28 = v27;
      v29 = 0;
    }

    else
    {
LABEL_9:
      v28 = 0;
      v29 = 1;
    }

    _Block_object_dispose(&v33, 8);

    if (v29)
    {
LABEL_11:
      v28 = 0;
    }

    else if (([v28 isEqual:v8] & 1) == 0)
    {
      [(SKUIIndexBarControlAccessibility *)self _accessibilityMoveToIndexPath:v28];
    }

    v30 = [(SKUIIndexBarControlAccessibility *)self safeValueForKey:@"_lastSelectedIndexPath"];
    [(SKUIIndexBarControlAccessibility *)self _accessibilitySetRetainedValue:v30 forKey:@"AXLastIndexPath"];
  }
}

void __69__SKUIIndexBarControlAccessibility__sendSelectionForTouch_withEvent___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v7 = *(a1[4] + 8);
  v8 = *(v7 + 24);
  if (v8 == a1[6])
  {
    v9 = v6;
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    v6 = v9;
    *a3 = 1;
    v7 = *(a1[4] + 8);
    v8 = *(v7 + 24);
  }

  *(v7 + 24) = v8 + 1;
}

- (CGRect)accessibilityFrame
{
  v18.receiver = self;
  v18.super_class = SKUIIndexBarControlAccessibility;
  [(SKUIIndexBarControlAccessibility *)&v18 accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v7 = [(SKUIIndexBarControlAccessibility *)self safeValueForKey:@"_visibleBounds"];
  [v7 rectValue];
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v6 + v9;
  v15 = v4;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v14;
  result.origin.x = v15;
  return result;
}

- (CGPoint)accessibilityActivationPoint
{
  [(SKUIIndexBarControlAccessibility *)self accessibilityFrame];

  UIAccessibilityPointForPoint();
  result.y = v3;
  result.x = v2;
  return result;
}

@end