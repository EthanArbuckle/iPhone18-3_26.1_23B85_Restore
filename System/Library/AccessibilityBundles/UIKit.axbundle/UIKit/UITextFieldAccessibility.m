@interface UITextFieldAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityHandwritingAttributeAcceptsContractedBraille;
- (BOOL)_accessibilityOverridesPotentiallyAttributedAPISelector:(SEL)a3;
- (BOOL)fieldEditor:(id)a3 shouldInsertText:(id)a4 replacingRanges:(id)a5;
- (BOOL)isAccessibilityElement;
- (BOOL)keyboardInput:(id)a3 shouldInsertText:(id)a4 isMarkedText:(BOOL)a5;
- (CGPoint)accessibilityActivationPoint;
- (_NSRange)_accessibilitySelectedTextRange;
- (id)_accessibilityGetValue;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)_accessibilityLeftButtons;
- (id)_accessibilityNativeFocusPreferredElement;
- (id)_accessibilityPlaceholderValue:(void *)a1;
- (id)_accessibilityRightButtons;
- (id)_accessibilityTextFieldText;
- (id)_accessibilityTextSelectionRectWithLargestVisualRangeFromCandidates:(void *)a1;
- (id)accessibilityAttributedValue;
- (id)accessibilityCustomRotors;
- (id)accessibilityDragSourceDescriptors;
- (id)accessibilityDropPointDescriptors;
- (id)accessibilityLabel;
- (uint64_t)_axShowsLeadingView;
- (uint64_t)_axShowsTrailingView;
- (unint64_t)_accessibilityAutomationType;
- (unint64_t)accessibilityTraits;
- (void)_accessibilitySetSelectedTextRange:(_NSRange)a3;
- (void)_accessibilitySetValue:(id)a3;
- (void)_clearButtonClicked:(id)a3;
@end

@implementation UITextFieldAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v10 = location;
  v9 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = "@";
  v8 = @"UITextField";
  v4 = "B";
  [location[0] validateClass:"@" hasInstanceMethod:"@" withFullSignature:{"@", 0}];
  [location[0] validateClass:v8 hasInstanceMethod:@"keyboardInput:shouldInsertText:isMarkedText:" withFullSignature:{v7, v7, v4, 0}];
  v5 = "v";
  [location[0] validateClass:v8 hasInstanceMethod:@"keyboardInputChangedSelection:" withFullSignature:{v7, 0}];
  v3 = "{_NSRange=QQ}";
  [location[0] validateClass:v8 hasInstanceMethod:@"selectionRange" withFullSignature:0];
  [location[0] validateClass:v8 hasInstanceMethod:@"setSelectionRange:" withFullSignature:{v5, v3, 0}];
  [location[0] validateClass:v8 hasInstanceMethod:@"textInputTraits" withFullSignature:{v7, 0}];
  [location[0] validateClass:v8 hasInstanceMethod:@"_showsLeftView" withFullSignature:{v4, 0}];
  [location[0] validateClass:v8 hasInstanceMethod:@"_showsRightView" withFullSignature:{v4, 0}];
  [location[0] validateClass:v8 hasInstanceMethod:@"_text" withFullSignature:{v7, 0}];
  [location[0] validateClass:v8 hasInstanceMethod:@"_updateButtons" withFullSignature:{v5, 0}];
  [location[0] validateClass:v8 hasInstanceMethod:@"_placeholderView" withFullSignature:{v7, 0}];
  [location[0] validateClass:v8 hasInstanceMethod:@"_clearButtonClicked:" withFullSignature:{v5, v7, 0}];
  [location[0] validateClass:v8 hasInstanceMethod:@"interactionAssistant" withFullSignature:{v7, 0}];
  v6 = @"UITextInteractionAssistant";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v6 hasInstanceMethod:@"view" withFullSignature:{v7, 0}];
  [location[0] validateClass:v8 isKindOfClass:@"UIView"];
  [location[0] validateProtocol:@"UITextInputAdditions" hasRequiredInstanceMethod:@"textInputView"];
  objc_storeStrong(v10, v9);
}

- (unint64_t)_accessibilityAutomationType
{
  v2 = [(UITextFieldAccessibility *)self accessibilityTraits];
  if ((v2 & *MEMORY[0x29EDC7568]) != 0)
  {
    return 50;
  }

  else
  {
    return 49;
  }
}

- (id)_accessibilityTextSelectionRectWithLargestVisualRangeFromCandidates:(void *)a1
{
  v44 = *MEMORY[0x29EDCA608];
  v41 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v41)
  {
    v37 = 0;
    objc_opt_class();
    v36 = __UIAccessibilityCastAsClass();
    v35 = MEMORY[0x29EDC9748](v36);
    objc_storeStrong(&v36, 0);
    v38 = v35;
    v34 = 0;
    v33 = 0.0;
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](location);
    v24 = [obj countByEnumeratingWithState:__b objects:v43 count:16];
    if (v24)
    {
      v20 = *__b[2];
      v21 = 0;
      v22 = v24;
      while (1)
      {
        v19 = v21;
        if (*__b[2] != v20)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(__b[1] + 8 * v21);
        v17 = v38;
        [v32 rect];
        v26 = v2;
        v27 = v3;
        v28 = v4;
        v29 = v5;
        v18 = [v38 superview];
        [v17 convertRect:v26 toView:{v27, v28, v29}];
        r1.origin.x = v6;
        r1.origin.y = v7;
        r1.size.width = v8;
        r1.size.height = v9;
        MEMORY[0x29EDC9740](v18);
        [v41 frame];
        r2.origin.x = v10;
        r2.origin.y = v11;
        r2.size.width = v12;
        r2.size.height = v13;
        v46 = CGRectIntersection(r1, r2);
        v14 = v46.size.width * v46.size.height;
        if (v46.size.width * v46.size.height > v33)
        {
          v33 = v46.size.width * v46.size.height;
          objc_storeStrong(&v34, v32);
        }

        ++v21;
        if (v19 + 1 >= v22)
        {
          v21 = 0;
          v22 = [obj countByEnumeratingWithState:__b objects:v43 count:{16, v14}];
          if (!v22)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x29EDC9740](obj);
    v42 = MEMORY[0x29EDC9748](v34);
    v39 = 1;
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v38, 0);
  }

  else
  {
    v42 = 0;
    v39 = 1;
  }

  objc_storeStrong(&location, 0);
  v15 = v42;

  return v15;
}

- (id)accessibilityDragSourceDescriptors
{
  v20[1] = *MEMORY[0x29EDCA608];
  v18 = self;
  v17[1] = a2;
  v17[0] = [(UITextFieldAccessibility *)self accessibilityUserDefinedDragSourceDescriptors];
  if (v17[0])
  {
    v19 = MEMORY[0x29EDC9748](v17[0]);
    v16 = 1;
  }

  else
  {
    v14 = 0;
    objc_opt_class();
    v13 = __UIAccessibilityCastAsClass();
    v12 = MEMORY[0x29EDC9748](v13);
    objc_storeStrong(&v13, 0);
    v15 = v12;
    v11 = [v12 selectedTextRange];
    if (v11 && ([v11 isEmpty] & 1) == 0)
    {
      v10 = [v15 selectionRectsForRange:v11];
      v9 = [(UITextFieldAccessibility *)v18 _accessibilityTextSelectionRectWithLargestVisualRangeFromCandidates:v10];
      if (v9)
      {
        v6 = objc_alloc(MEMORY[0x29EDC7900]);
        v8 = accessibilityLocalizedString(@"drag.selection");
        [v9 rect];
        UIRectGetCenter();
        v7 = [v6 initWithName:v8 point:v15 inView:{v2, v3}];
        v20[0] = v7;
        v19 = [MEMORY[0x29EDB8D80] arrayWithObjects:v20 count:1];
        MEMORY[0x29EDC9740](v7);
        MEMORY[0x29EDC9740](v8);
      }

      else
      {
        v19 = MEMORY[0x29EDC9748](MEMORY[0x29EDB8E90]);
      }

      v16 = 1;
      objc_storeStrong(&v9, 0);
      objc_storeStrong(&v10, 0);
    }

    else
    {
      v19 = MEMORY[0x29EDC9748](MEMORY[0x29EDB8E90]);
      v16 = 1;
    }

    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v15, 0);
  }

  objc_storeStrong(v17, 0);
  v4 = v19;

  return v4;
}

- (id)accessibilityDropPointDescriptors
{
  v52[1] = *MEMORY[0x29EDCA608];
  v48 = self;
  v47[1] = a2;
  v47[0] = [(UITextFieldAccessibility *)self accessibilityUserDefinedDropPointDescriptors];
  if (v47[0])
  {
    v49 = MEMORY[0x29EDC9748](v47[0]);
    v46 = 1;
    goto LABEL_15;
  }

  v44 = 0;
  objc_opt_class();
  v43 = __UIAccessibilityCastAsClass();
  v42 = MEMORY[0x29EDC9748](v43);
  objc_storeStrong(&v43, 0);
  v45 = v42;
  if ([v42 isEnabled])
  {
    v41 = [v45 selectedTextRange];
    if (v41)
    {
      if ([v41 isEmpty])
      {
        v24 = v45;
        v25 = [v41 start];
        [v24 caretRectForPosition:?];
        v37 = v2;
        v38 = v3;
        v39 = v4;
        v40 = v5;
        MEMORY[0x29EDC9740](v25);
        UIRectGetCenter();
        v35 = v6;
        v36 = v7;
        v26 = objc_alloc(MEMORY[0x29EDC7900]);
        v28 = accessibilityLocalizedString(@"drop.at.point");
        v27 = [v26 initWithName:v35 point:v36 inView:?];
        v52[0] = v27;
        v49 = [MEMORY[0x29EDB8D80] arrayWithObjects:v52 count:1];
        MEMORY[0x29EDC9740](v27);
        MEMORY[0x29EDC9740](v28);
        v46 = 1;
LABEL_13:
        objc_storeStrong(&v41, 0);
        goto LABEL_14;
      }

      v34 = [v45 selectionRectsForRange:v41];
      v33 = [(UITextFieldAccessibility *)v48 _accessibilityTextSelectionRectWithLargestVisualRangeFromCandidates:v34];
      if (v33)
      {
        v21 = objc_alloc(MEMORY[0x29EDC7900]);
        v23 = accessibilityLocalizedString(@"drop.on.selection");
        [v33 rect];
        UIRectGetCenter();
        v22 = [v21 initWithName:v23 point:v45 inView:{v8, v9}];
        v51 = v22;
        v49 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v51 count:1];
        MEMORY[0x29EDC9740](v22);
        MEMORY[0x29EDC9740](v23);
        v46 = 1;
      }

      else
      {
        v46 = 0;
      }

      objc_storeStrong(&v33, 0);
      objc_storeStrong(&v34, 0);
      if (v46)
      {
        goto LABEL_13;
      }
    }

    [v45 frame];
    UIRectGetCenter();
    v31 = v10;
    v32 = v11;
    v16 = v45;
    v17 = [v45 superview];
    [v16 convertPoint:v31 fromView:v32];
    v29 = v12;
    v30 = v13;
    MEMORY[0x29EDC9740](v17);
    v18 = objc_alloc(MEMORY[0x29EDC7900]);
    v20 = accessibilityLocalizedString(@"drop.into.text");
    v19 = [v18 initWithName:v29 point:v30 inView:?];
    v50 = v19;
    v49 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v50 count:1];
    MEMORY[0x29EDC9740](v19);
    MEMORY[0x29EDC9740](v20);
    v46 = 1;
    goto LABEL_13;
  }

  v49 = MEMORY[0x29EDC9748](MEMORY[0x29EDB8E90]);
  v46 = 1;
LABEL_14:
  objc_storeStrong(&v45, 0);
LABEL_15:
  objc_storeStrong(v47, 0);
  v14 = v49;

  return v14;
}

- (CGPoint)accessibilityActivationPoint
{
  v37 = self;
  v36[1] = a2;
  v24 = [(UITextFieldAccessibility *)self safeValueForKey:@"isEditing"];
  v25 = [v24 BOOLValue];
  *&v2 = MEMORY[0x29EDC9740](v24).n128_u64[0];
  if (v25)
  {
    v36[0] = [(UITextFieldAccessibility *)v37 safeValueForKey:@"interactionAssistant", v2];
    v35 = [v36[0] safeUIViewForKey:@"_selectionView"];
    v21 = [v36[0] safeValueForKey:@"view"];
    v34 = [v21 safeUIViewForKey:@"textInputView"];
    MEMORY[0x29EDC9740](v21);
    v23 = [v35 safeValueForKey:@"selection"];
    v22 = [v23 safeValueForKey:@"caretRect"];
    [v22 rectValue];
    *&v32 = v3;
    *(&v32 + 1) = v4;
    *&v33 = v5;
    *(&v33 + 1) = v6;
    MEMORY[0x29EDC9740](v22);
    MEMORY[0x29EDC9740](v23);
    [v35 convertRect:v34 fromView:{v32, v33}];
    v28 = v7;
    v29 = v8;
    v30 = v9;
    v31 = v10;
    UIAccessibilityFrameForBounds();
    v27.origin.x = v11;
    v27.origin.y = v12;
    v27.size.width = v13;
    v27.size.height = v14;
    CGRectGetMidX(v27);
    CGRectGetMidY(v27);
    CGPointMake_10();
    v38 = v15;
    v39 = v16;
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v35, 0);
    objc_storeStrong(v36, 0);
  }

  else
  {
    v26.receiver = v37;
    v26.super_class = UITextFieldAccessibility;
    [(UITextFieldAccessibility *)&v26 accessibilityActivationPoint];
    v38 = v17;
    v39 = v18;
  }

  v19 = v38;
  v20 = v39;
  result.y = v20;
  result.x = v19;
  return result;
}

- (uint64_t)_axShowsLeadingView
{
  if (a1)
  {
    if ([a1 _shouldReverseLayoutDirection])
    {
      v2 = [a1 safeBoolForKey:@"_showsRightView"];
    }

    else
    {
      v2 = [a1 safeBoolForKey:@"_showsLeftView"];
    }

    v4 = v2 & 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (uint64_t)_axShowsTrailingView
{
  if (a1)
  {
    if ([a1 _shouldReverseLayoutDirection])
    {
      v2 = [a1 safeBoolForKey:@"_showsLeftView"];
    }

    else
    {
      v2 = [a1 safeBoolForKey:@"_showsRightView"];
    }

    v4 = v2 & 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (id)_accessibilityLeftButtons
{
  v14 = a1;
  if (a1)
  {
    v13 = [MEMORY[0x29EDB8DE8] array];
    if (([(UITextFieldAccessibility *)v14 _axShowsLeadingView]& 1) != 0)
    {
      v12 = [v14 leftView];
      if ([v12 isAccessibilityElement])
      {
        [v13 addObject:v12];
      }

      else if (([v12 accessibilityElementsHidden] & 1) == 0)
      {
        v3 = [MEMORY[0x29EDC7328] options];
        v11 = [v12 _accessibilityLeafDescendantsWithOptions:?];
        MEMORY[0x29EDC9740](v3);
        v4 = v11;
        v5 = MEMORY[0x29EDCA5F8];
        v6 = -1073741824;
        v7 = 0;
        v8 = __53__UITextFieldAccessibility__accessibilityLeftButtons__block_invoke;
        v9 = &unk_29F30D218;
        v10 = MEMORY[0x29EDC9748](v14);
        [v4 enumerateObjectsUsingBlock:&v5];
        [v13 axSafelyAddObjectsFromArray:v11];
        objc_storeStrong(&v10, 0);
        objc_storeStrong(&v11, 0);
      }

      objc_storeStrong(&v12, 0);
    }

    v15 = MEMORY[0x29EDC9748](v13);
    objc_storeStrong(&v13, 0);
  }

  else
  {
    v15 = 0;
  }

  v1 = v15;

  return v1;
}

void __53__UITextFieldAccessibility__accessibilityLeftButtons__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [location[0] setAccessibilityContainer:a1[4]];
  objc_storeStrong(location, 0);
}

- (id)_accessibilityRightButtons
{
  v22 = self;
  v21[1] = a2;
  v21[0] = [MEMORY[0x29EDB8DE8] array];
  v20 = [(UITextFieldAccessibility *)v22 safeValueForKey:@"_clearButton"];
  v18 = 0;
  v7 = 0;
  if (v20)
  {
    v19 = [v20 superview];
    v18 = 1;
    v7 = v19 != 0;
  }

  if (v18)
  {
    MEMORY[0x29EDC9740](v19);
  }

  if (v7)
  {
    [v20 accessibilitySetIdentification:@"UIClearButton"];
    [v21[0] addObject:v20];
  }

  v15 = 0;
  if (([(UITextFieldAccessibility *)v22 _axShowsTrailingView]& 1) != 0)
  {
    v16 = [(UITextFieldAccessibility *)v22 rightView];
    v15 = 1;
    v2 = MEMORY[0x29EDC9748](v16);
  }

  else
  {
    v2 = MEMORY[0x29EDC9748](0);
  }

  v17 = v2;
  if (v15)
  {
    MEMORY[0x29EDC9740](v16);
  }

  if (v20 != v17)
  {
    if ([v17 isAccessibilityElement])
    {
      [v21[0] addObject:v17];
    }

    else if (([v17 accessibilityElementsHidden] & 1) == 0)
    {
      v5 = [MEMORY[0x29EDC7328] options];
      v14 = [v17 _accessibilityLeafDescendantsWithOptions:?];
      MEMORY[0x29EDC9740](v5);
      v6 = v14;
      v8 = MEMORY[0x29EDCA5F8];
      v9 = -1073741824;
      v10 = 0;
      v11 = __54__UITextFieldAccessibility__accessibilityRightButtons__block_invoke;
      v12 = &unk_29F30D218;
      v13 = MEMORY[0x29EDC9748](v22);
      [v6 enumerateObjectsUsingBlock:&v8];
      [v21[0] axSafelyAddObjectsFromArray:v14];
      objc_storeStrong(&v13, 0);
      objc_storeStrong(&v14, 0);
    }
  }

  v4 = MEMORY[0x29EDC9748](v21[0]);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(v21, 0);

  return v4;
}

void __54__UITextFieldAccessibility__accessibilityRightButtons__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [location[0] setAccessibilityContainer:a1[4]];
  objc_storeStrong(location, 0);
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  v21 = a3;
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  v18 = [(UITextFieldAccessibility *)v20 _accessibilityBoolValueForKey:@"AXInHitTestOverride"];
  v10 = 0;
  v6 = 0;
  if ((v18 & 1) == 0)
  {
    v12 = MEMORY[0x29EDCA5F8];
    v13 = -1073741824;
    v14 = 0;
    v15 = __60__UITextFieldAccessibility__accessibilityHitTest_withEvent___block_invoke;
    v16 = &unk_29F30CEB0;
    v17 = MEMORY[0x29EDC9748](v20);
    v11 = &v17;
    v10 = 1;
    v6 = (__60__UITextFieldAccessibility__accessibilityHitTest_withEvent___block_invoke)();
  }

  if (v6)
  {
    [(UITextFieldAccessibility *)v20 _accessibilitySetBoolValue:1 forKey:?];
    v9 = [(UITextFieldAccessibility *)v20 accessibilityHitTest:location[0] withEvent:v21.x, v21.y];
    [(UITextFieldAccessibility *)v20 _accessibilitySetBoolValue:0 forKey:@"AXInHitTestOverride"];
    v22 = MEMORY[0x29EDC9748](v9);
    v8 = 1;
    objc_storeStrong(&v9, 0);
  }

  else
  {
    v8 = 0;
  }

  if (v10)
  {
    objc_storeStrong(v11, 0);
  }

  if (!v8)
  {
    if ([(UITextFieldAccessibility *)v20 _axTextFieldIsHidden])
    {
      v22 = 0;
    }

    else
    {
      v7.receiver = v20;
      v7.super_class = UITextFieldAccessibility;
      v22 = [(UITextFieldAccessibility *)&v7 _accessibilityHitTest:location[0] withEvent:v21.x, v21.y];
    }

    v8 = 1;
  }

  objc_storeStrong(location, 0);
  v4 = v22;

  return v4;
}

BOOL __60__UITextFieldAccessibility__accessibilityHitTest_withEvent___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v16 = a1;
  v15 = a1;
  v18 = &UIKBEmojiZeroWidthJoiner_block_invoke_onceToken_3;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_47);
  if (*v18 != -1)
  {
    dispatch_once(v18, location);
  }

  objc_storeStrong(&location, 0);
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel_accessibilityHitTest_withEvent_);
  Implementation = 0;
  if (InstanceMethod)
  {
    Implementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v12 = AXLogCommon();
    v11 = 17;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      log = v12;
      type = v11;
      v8 = NSStringFromSelector(sel_accessibilityHitTest_withEvent_);
      v4 = MEMORY[0x29EDC9748](v8);
      v10 = v4;
      v2 = objc_opt_class();
      v7 = NSStringFromClass(v2);
      v9 = MEMORY[0x29EDC9748](v7);
      __os_log_helper_16_2_2_8_64_8_64(v19, v4, v9);
      _os_log_fault_impl(&dword_29C4D6000, log, type, "Attempted to check for nonexistent method: %@ on class: %@", v19, 0x16u);
      MEMORY[0x29EDC9740](v7);
      MEMORY[0x29EDC9740](v8);
      objc_storeStrong(&v9, 0);
      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&v12, 0);
  }

  return Implementation != UIKBEmojiZeroWidthJoiner_block_invoke_BaseImplementation_3;
}

void __60__UITextFieldAccessibility__accessibilityHitTest_withEvent___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = a1;
  v13 = a1;
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel_accessibilityHitTest_withEvent_);
  if (InstanceMethod)
  {
    UIKBEmojiZeroWidthJoiner_block_invoke_BaseImplementation_3 = method_getImplementation(InstanceMethod);
  }

  else
  {
    v11 = AXLogCommon();
    v10 = 17;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      log = v11;
      type = v10;
      v7 = NSStringFromSelector(sel_accessibilityHitTest_withEvent_);
      v3 = MEMORY[0x29EDC9748](v7);
      v9 = v3;
      v2 = objc_opt_class();
      v6 = NSStringFromClass(v2);
      v8 = MEMORY[0x29EDC9748](v6);
      __os_log_helper_16_2_2_8_64_8_64(v15, v3, v8);
      _os_log_fault_impl(&dword_29C4D6000, log, type, "Attempted to check for nonexistent method: %@ on class: %@", v15, 0x16u);
      MEMORY[0x29EDC9740](v6);
      MEMORY[0x29EDC9740](v7);
      objc_storeStrong(&v8, 0);
      objc_storeStrong(&v9, 0);
    }

    objc_storeStrong(&v11, 0);
  }
}

- (void)_accessibilitySetValue:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = MEMORY[0x29EDCA5F8];
  v4 = -1073741824;
  v5 = 0;
  v6 = __51__UITextFieldAccessibility__accessibilitySetValue___block_invoke;
  v7 = &unk_29F30C888;
  v8 = MEMORY[0x29EDC9748](v11);
  v9 = MEMORY[0x29EDC9748](location[0]);
  AXPerformSafeBlock();
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

uint64_t __51__UITextFieldAccessibility__accessibilitySetValue___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) window];
  v5 = v1 != 0;
  *&v2 = MEMORY[0x29EDC9740](v1).n128_u64[0];
  if (v5)
  {
    [*(a1 + 32) becomeFirstResponder];
  }

  result = [*(a1 + 32) setText:{*(a1 + 40), v2}];
  if (v5)
  {
    return [*(a1 + 32) fieldEditorDidChange:0];
  }

  return result;
}

- (void)_clearButtonClicked:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = UITextFieldAccessibility;
  [(UITextFieldAccessibility *)&v3 _clearButtonClicked:location[0]];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  [(UITextFieldAccessibility *)v5 _accessibilityPostValueChangedNotificationWithChangeType:*MEMORY[0x29EDBDCC8]];
  objc_storeStrong(location, 0);
}

- (BOOL)isAccessibilityElement
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(UITextFieldAccessibility *)self isAccessibilityUserDefinedElement];
  if (location[0])
  {
    v4 = [location[0] BOOLValue] & 1;
  }

  else
  {
    v4 = 1;
  }

  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (id)_accessibilityPlaceholderValue:(void *)a1
{
  v23 = a1;
  v22 = a2;
  if (a1)
  {
    v21 = 0;
    v19 = 0;
    objc_opt_class();
    v15 = [v23 safeValueForKey:@"_placeholderView"];
    v18 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v15);
    v17 = MEMORY[0x29EDC9748](v18);
    objc_storeStrong(&v18, 0);
    v20 = v17;
    v14 = [v17 superview];
    if (!v14 || ([v20 isHidden] & 1) != 0 || (objc_msgSend(v20, "alpha"), v13 = 1, v2 <= 0.01))
    {
      v13 = v22;
    }

    MEMORY[0x29EDC9740](v14);
    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [v20 attributedText];
        if ([v16 length])
        {
          v3 = UIAccessibilityConvertAttachmentsInAttributedStringToAX();
          v4 = v21;
          v21 = v3;
          MEMORY[0x29EDC9740](v4);
        }

        objc_storeStrong(&v16, 0);
      }

      if (![v21 length])
      {
        v5 = [v20 accessibilityLabel];
        v6 = v21;
        v21 = v5;
        MEMORY[0x29EDC9740](v6);
      }

      v7 = objc_alloc(MEMORY[0x29EDBD7E8]);
      v8 = [v7 initWithStringOrAttributedString:v21];
      v9 = v21;
      v21 = v8;
      *&v10 = MEMORY[0x29EDC9740](v9).n128_u64[0];
      [v21 setAttribute:*MEMORY[0x29EDB8F00] forKey:{*MEMORY[0x29EDBD970], v10}];
    }

    v24 = MEMORY[0x29EDC9748](v21);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v21, 0);
  }

  else
  {
    v24 = 0;
  }

  v11 = v24;

  return v11;
}

- (id)_accessibilityTextFieldText
{
  v25 = self;
  v24[1] = a2;
  v24[0] = [(UITextFieldAccessibility *)self safeValueForKey:@"_attributedText"];
  if (v24[0])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [objc_alloc(MEMORY[0x29EDBD7E8]) initWithCFAttributedString:v24[0]];
      v4 = v24[0];
      v24[0] = v3;
      v2 = MEMORY[0x29EDC9740](v4).n128_u64[0];
    }
  }

  else
  {
    v24[0] = [(UITextFieldAccessibility *)v25 safeValueForKey:@"_text"];
    v2 = MEMORY[0x29EDC9740](0).n128_u64[0];
  }

  v5 = [(UITextFieldAccessibility *)v25 accessibilityTraits];
  if ((v5 & *MEMORY[0x29EDC7568]) == *MEMORY[0x29EDC7568])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v24[0] string];
      v8 = v24[0];
      v24[0] = v7;
      MEMORY[0x29EDC9740](v8);
    }

    v23 = 0;
    objc_opt_class();
    v22 = __UIAccessibilityCastAsClass();
    v21 = MEMORY[0x29EDC9748](v22);
    objc_storeStrong(&v22, 0);
    v9 = [(UIView *)v21 _accessibilitySecureTextForString:?];
    v10 = v24[0];
    v24[0] = v9;
    MEMORY[0x29EDC9740](v10);
    *&v6 = MEMORY[0x29EDC9740](v21).n128_u64[0];
  }

  v20 = [MEMORY[0x29EDC7B08] activeInstance];
  v18 = [v20 textInputTraits];
  v19 = [v18 keyboardType];
  MEMORY[0x29EDC9740](v18);
  if (v19 == 5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v24[0] string];
      v12 = v24[0];
      v24[0] = v11;
      MEMORY[0x29EDC9740](v12);
    }

    v13 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v24[0]];
    v14 = v24[0];
    v24[0] = v13;
    *&v15 = MEMORY[0x29EDC9740](v14).n128_u64[0];
    [v24[0] setAttribute:*MEMORY[0x29EDB8F00] forKey:{*MEMORY[0x29EDBD960], v15}];
  }

  v17 = MEMORY[0x29EDC9748](v24[0]);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(v24, 0);

  return v17;
}

- (BOOL)_accessibilityOverridesPotentiallyAttributedAPISelector:(SEL)a3
{
  v9 = self;
  v8 = a2;
  name = a3;
  v12 = &_accessibilityOverridesPotentiallyAttributedAPISelector__onceToken_0;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_442);
  if (*v12 != -1)
  {
    dispatch_once(v12, location);
  }

  objc_storeStrong(&location, 0);
  v3 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v3, name);
  if (name == sel_accessibilityValue)
  {
    return InstanceMethod != _accessibilityOverridesPotentiallyAttributedAPISelector__accessibilityValueBaseMethod;
  }

  if (name == sel_accessibilityAttributedValue)
  {
    return InstanceMethod != _accessibilityOverridesPotentiallyAttributedAPISelector__accessibilityAttributedValueBaseMethod;
  }

  v5.receiver = v9;
  v5.super_class = UITextFieldAccessibility;
  return [(UITextFieldAccessibility *)&v5 _accessibilityOverridesPotentiallyAttributedAPISelector:name];
}

Method __84__UITextFieldAccessibility__accessibilityOverridesPotentiallyAttributedAPISelector___block_invoke()
{
  v0 = objc_opt_class();
  _accessibilityOverridesPotentiallyAttributedAPISelector__accessibilityValueBaseMethod = class_getInstanceMethod(v0, sel_accessibilityValue);
  v1 = objc_opt_class();
  result = class_getInstanceMethod(v1, sel_accessibilityAttributedValue);
  _accessibilityOverridesPotentiallyAttributedAPISelector__accessibilityAttributedValueBaseMethod = result;
  return result;
}

- (id)_accessibilityGetValue
{
  v7 = self;
  location[1] = a2;
  location[0] = [(UITextFieldAccessibility *)self accessibilityUserDefinedValue];
  if (!location[0])
  {
    location[0] = [(UITextFieldAccessibility *)v7 _accessibilityTextFieldText];
    MEMORY[0x29EDC9740](0);
  }

  if (![location[0] length])
  {
    v5 = [(UITextFieldAccessibility *)v7 _accessibilityPlaceholderValue:?];
    if (v5)
    {
      objc_storeStrong(location, v5);
    }

    objc_storeStrong(&v5, 0);
  }

  if (([(UITextFieldAccessibility *)v7 _accessibilityBoolValueForKey:*MEMORY[0x29EDBD8F8]]& 1) != 0)
  {
    if ([location[0] isAXAttributedString])
    {
      [location[0] setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD8F8]];
    }

    else
    {
      obj = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:location[0]];
      [obj setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD8F8]];
      objc_storeStrong(location, obj);
      objc_storeStrong(&obj, 0);
    }
  }

  v3 = MEMORY[0x29EDC9748](location[0]);
  objc_storeStrong(location, 0);

  return v3;
}

- (id)accessibilityAttributedValue
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(UITextFieldAccessibility *)self _accessibilityGetValue];
  if ([location[0] isAXAttributedString])
  {
    v5 = [location[0] cfAttributedString];
  }

  else if (location[0])
  {
    v5 = [objc_alloc(MEMORY[0x29EDB9F30]) initWithString:location[0]];
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

- (id)accessibilityLabel
{
  v8 = self;
  v7[1] = a2;
  v7[0] = [(UITextFieldAccessibility *)self accessibilityUserDefinedLabel];
  if (v7[0])
  {
    v9 = MEMORY[0x29EDC9748](v7[0]);
    v6 = 1;
  }

  else
  {
    v4 = [(UITextFieldAccessibility *)v8 safeValueForKey:@"textLabel"];
    v5 = [v4 accessibilityLabel];
    MEMORY[0x29EDC9740](v4);
    v9 = MEMORY[0x29EDC9748](v5);
    v6 = 1;
    objc_storeStrong(&v5, 0);
  }

  objc_storeStrong(v7, 0);
  v2 = v9;

  return v2;
}

- (unint64_t)accessibilityTraits
{
  v16 = self;
  v15 = a2;
  v14 = *MEMORY[0x29EDC7598];
  v6 = [(UITextFieldAccessibility *)self safeValueForKey:@"isEditing"];
  v12 = 0;
  v7 = 1;
  if (([v6 BOOLValue] & 1) == 0)
  {
    v13 = [(UITextFieldAccessibility *)v16 safeValueForKey:@"isFirstResponder"];
    v12 = 1;
    v7 = [v13 BOOLValue];
  }

  if (v12)
  {
    MEMORY[0x29EDC9740](v13);
  }

  *&v2 = MEMORY[0x29EDC9740](v6).n128_u64[0];
  if (v7 & 1) != 0 && (AXDoesRequestingClientDeserveAutomation() || _AXSMossdeepEnabled() || ([*MEMORY[0x29EDC8008] _accessibilityHardwareKeyboardActive] & 1) != 0 || (objc_msgSend(*MEMORY[0x29EDC8008], "_accessibilitySoftwareKeyboardActive")))
  {
    v14 |= *MEMORY[0x29EDC7528];
  }

  v11 = [(UITextFieldAccessibility *)v16 accessibilityUserDefinedTraits];
  if (v11)
  {
    v14 |= [v11 unsignedLongLongValue];
  }

  v10 = 0;
  objc_opt_class();
  v9 = __UIAccessibilityCastAsClass();
  v8 = MEMORY[0x29EDC9748](v9);
  objc_storeStrong(&v9, 0);
  v3 = [(UIView *)v8 _accessibilityTextAreaTraits];
  v14 |= v3;
  MEMORY[0x29EDC9740](v8);
  v5 = v14;
  objc_storeStrong(&v11, 0);
  return v5;
}

- (_NSRange)_accessibilitySelectedTextRange
{
  v2 = [(UITextFieldAccessibility *)self selectionRange:a2];
  result.length = v3;
  result.location = v2;
  return result;
}

- (id)accessibilityCustomRotors
{
  v14 = self;
  v13[1] = a2;
  v13[0] = [MEMORY[0x29EDB8DE8] array];
  v8 = v13[0];
  v12.receiver = v14;
  v12.super_class = UITextFieldAccessibility;
  v9 = [(UITextFieldAccessibility *)&v12 accessibilityCustomRotors];
  [v8 axSafelyAddObjectsFromArray:?];
  *&v2 = MEMORY[0x29EDC9740](v9).n128_u64[0];
  v10 = v13[0];
  v11 = [(UITextFieldAccessibility *)v14 _accessibilityInternalTextLinkCustomRotors];
  [v10 axSafelyAddObjectsFromArray:?];
  *&v3 = MEMORY[0x29EDC9740](v11).n128_u64[0];
  if (([(UITextFieldAccessibility *)v14 isEditing]& 1) != 0 && AXUIKeyboardTypeSupportsMisspelledRotor([(UITextFieldAccessibility *)v14 keyboardType]))
  {
    v6 = v13[0];
    v7 = [(UITextFieldAccessibility *)v14 _accessibilityMisspelledRotor];
    [v6 axSafelyAddObject:?];
    MEMORY[0x29EDC9740](v7);
  }

  v5 = MEMORY[0x29EDC9748](v13[0]);
  objc_storeStrong(v13, 0);

  return v5;
}

- (void)_accessibilitySetSelectedTextRange:(_NSRange)a3
{
  v7 = a3;
  v6 = self;
  location[1] = a2;
  location[0] = [(UITextFieldAccessibility *)self safeValueForKey:@"text"];
  v4 = [location[0] length];
  v3 = 0;
  if (AXIsDictationListening())
  {
    AXHandleUserInteractionForDictation(1);
    v3 = 1;
  }

  v10 = v7;
  if (v7.location + v7.length > v4 && !v7.length)
  {
    v7.location = v4;
  }

  if (v7.length || (v8 = v7.location, v9 = 0, v7.location > v4))
  {
    if (v7.length)
    {
      [v6 _accessibilitySetTextSelection:v7.length];
    }
  }

  else
  {
    [(UITextFieldAccessibility *)v6 setSelectionRange:v7.location, v7.length];
  }

  if (v3)
  {
    AXHandleUserInteractionForDictation(0);
  }

  objc_storeStrong(location, 0);
}

- (BOOL)_accessibilityHandwritingAttributeAcceptsContractedBraille
{
  v10[2] = self;
  v10[1] = a2;
  v9 = 0;
  objc_opt_class();
  v8 = __UIAccessibilityCastAsClass();
  v7 = MEMORY[0x29EDC9748](v8);
  objc_storeStrong(&v8, 0);
  v10[0] = v7;
  [v7 keyboardType];
  IsNumberPad = UIKeyboardTypeIsNumberPad();
  v5 = [v10[0] textInputTraits];
  v4 = [v5 textContentType];
  v3 = 1;
  if ((IsNumberPad & 1) == 0)
  {
    v3 = 1;
    if (v4 != *MEMORY[0x29EDC8248])
    {
      v3 = v4 == *MEMORY[0x29EDC8240];
    }
  }

  objc_storeStrong(&v4, 0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(v10, 0);
  return !v3;
}

- (BOOL)keyboardInput:(id)a3 shouldInsertText:(id)a4 isMarkedText:(BOOL)a5
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = a5;
  v13 = [(UITextFieldAccessibility *)v17 safeValueForKey:?];
  v11.receiver = v17;
  v11.super_class = UITextFieldAccessibility;
  v12 = [(UITextFieldAccessibility *)&v11 keyboardInput:location[0] shouldInsertText:v15 isMarkedText:a5];
  argument = [(UITextFieldAccessibility *)v17 safeValueForKey:@"text"];
  if (([(UITextFieldAccessibility *)v17 accessibilityElementsHidden]& 1) != 0)
  {
    v18 = v12 & 1;
  }

  else
  {
    if ((v12 & 1) == 0 && ([(UITextFieldAccessibility *)v17 safeBoolForKey:@"isEditing"]& 1) != 0)
    {
      if ([v13 isEqualToString:argument])
      {
        if (([v15 isEqualToString:@"\n"] & 1) == 0)
        {
          UIAccessibilityPostNotification(*MEMORY[0x29EDC7458], 0);
        }
      }

      else
      {
        v5 = [(UITextFieldAccessibility *)v17 accessibilityTraits];
        if ((v5 & *MEMORY[0x29EDC7568]) == 0)
        {
          v9 = 0;
          if (([(UITextFieldAccessibility *)v17 accessibilityValueChangesAreReplacements]& 1) != 0)
          {
            v9 = *MEMORY[0x29EDBDCE0];
          }

          [(UITextFieldAccessibility *)v17 _accessibilityPostValueChangedNotificationWithChangeType:v9];
          UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], argument);
        }
      }
    }

    v18 = v12 & 1;
  }

  objc_storeStrong(&argument, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  return v18 & 1;
}

- (BOOL)fieldEditor:(id)a3 shouldInsertText:(id)a4 replacingRanges:(id)a5
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = 0;
  objc_storeStrong(&v11, a5);
  v9.receiver = v14;
  v9.super_class = UITextFieldAccessibility;
  v10 = [(UITextFieldAccessibility *)&v9 fieldEditor:location[0] shouldInsertText:v12 replacingRanges:v11];
  if ((v10 & 1) == 0)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7458], 0);
  }

  v6 = v10;
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  return v6 & 1;
}

- (id)_accessibilityNativeFocusPreferredElement
{
  v7[2] = self;
  v7[1] = a2;
  v5 = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
  v7[0] = [(UITextFieldAccessibility *)self _accessibilityLeafDescendantsWithOptions:?];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  v6 = [v7[0] firstObject];
  objc_storeStrong(v7, 0);

  return v6;
}

@end