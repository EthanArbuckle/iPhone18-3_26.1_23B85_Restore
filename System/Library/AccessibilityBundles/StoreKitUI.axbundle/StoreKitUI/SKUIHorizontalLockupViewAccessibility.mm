@interface SKUIHorizontalLockupViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_playAction:(id)action;
- (BOOL)_styledImageButtonAction:(id)action;
- (BOOL)_toggleButtonAction:(id)action;
- (BOOL)isAccessibilityElement;
- (BOOL)isAdvertisementView:(id)view;
- (CGRect)accessibilityFrame;
- (id)_accessibilityFindPlayButton;
- (id)_accessibilityFindStyledImageButton;
- (id)_accessibilityFindToggleButton;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_accessibilitySupplementaryFooterViewsIncludePlayButton:(BOOL)button includeStyledImageButton:(BOOL)imageButton;
- (id)_accessibilitySupplementaryHeaderViews;
- (id)accessibilityCustomActions;
- (id)accessibilityElements;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_resolvePreviewStateAfterTransitionForFlipView:(id)view;
@end

@implementation SKUIHorizontalLockupViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKUIHorizontalLockupView" hasInstanceVariable:@"_layout" withType:"SKUIHorizontalLockupLayout"];
  [validationsCopy validateClass:@"SKUIHorizontalLockupView" hasInstanceVariable:@"_viewElementViews" withType:"NSMapTable"];
  [validationsCopy validateClass:@"SKUIHorizontalLockupView" hasInstanceVariable:@"_lockupElement" withType:"SKUILockupViewElement"];
  [validationsCopy validateClass:@"SKUIHorizontalLockupLayout" hasInstanceMethod:@"columns" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKUIHorizontalLockupColumn" hasInstanceMethod:@"childViewElements" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKUIImageView"];
  [validationsCopy validateClass:@"SKUISectionHeaderView"];
  [validationsCopy validateClass:@"SKUITextBoxView"];
  [validationsCopy validateClass:@"SKUIStyledImageButton"];
  [validationsCopy validateClass:@"SKUIToggleButton"];
  [validationsCopy validateClass:@"SKUIHorizontalLockupView" hasInstanceMethod:@"_previewMediaURL" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKUIHorizontalLockupView" hasInstanceMethod:@"_resolvePreviewStateAfterTransitionForFlipView:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SKUIHorizontalLockupView" hasInstanceVariable:@"_previewState" withType:"NSInteger"];
  [validationsCopy validateClass:@"SKUIHorizontalLockupView" hasInstanceVariable:@"_previewProgressIndicator" withType:"SKUIPreviewProgressIndicator"];
  [validationsCopy validateClass:@"SKUIHorizontalLockupView" hasInstanceMethod:@"_previewFrontView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKUILockupViewElement" hasInstanceMethod:@"isSelectable" withFullSignature:{"B", 0}];
}

- (BOOL)isAccessibilityElement
{
  accessibilityLabel = [(SKUIHorizontalLockupViewAccessibility *)self accessibilityLabel];
  v3 = [accessibilityLabel length] != 0;

  return v3;
}

- (BOOL)isAdvertisementView:(id)view
{
  viewCopy = view;
  NSClassFromString(&cfstr_Skuistyledimag_0.isa);
  v4 = (objc_opt_isKindOfClass() & 1) != 0 && ([viewCopy conformsToProtocol:&unk_2A23385F0] & 1) != 0;

  return v4;
}

- (id)accessibilityLabel
{
  v71 = *MEMORY[0x29EDCA608];
  v66 = 0;
  v2 = [(SKUIHorizontalLockupViewAccessibility *)self safeValueForKey:@"_layout"];
  v3 = __UIAccessibilitySafeClass();

  v4 = [v3 safeValueForKey:@"columns"];
  v5 = __UIAccessibilitySafeClass();

  if (HIBYTE(v66) == 1)
  {
LABEL_50:
    abort();
  }

  HIBYTE(v66) = 0;
  v6 = [(SKUIHorizontalLockupViewAccessibility *)self safeValueForKey:@"_viewElementViews"];
  v45 = __UIAccessibilitySafeClass();

  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v7 = v5;
  v42 = [v7 countByEnumeratingWithState:&v62 objects:v70 count:16];
  if (v42)
  {
    v8 = 0;
    v9 = 0;
    obj = v7;
    v41 = *v63;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v63 != v41)
        {
          v11 = v10;
          objc_enumerationMutation(obj);
          v10 = v11;
        }

        v43 = v10;
        v12 = *(*(&v62 + 1) + 8 * v10);
        v66 = 0;
        v13 = __UIAccessibilitySafeClass();
        if (v66 == 1)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = [v13 safeValueForKey:@"childViewElements"];
        v16 = __UIAccessibilitySafeClass();

        if (HIBYTE(v66) == 1)
        {
          goto LABEL_50;
        }

        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v44 = v16;
        v48 = [v44 countByEnumeratingWithState:&v58 objects:v69 count:16];
        if (!v48)
        {
          goto LABEL_41;
        }

        v47 = *v59;
        do
        {
          v17 = 0;
          do
          {
            if (*v59 != v47)
            {
              objc_enumerationMutation(v44);
            }

            v18 = [v45 objectForKey:*(*(&v58 + 1) + 8 * v17)];
            v49 = v18;
            v50 = v17;
            if (shouldIncludeElement(v18))
            {
              v68 = v18;
              v19 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v68 count:1];
LABEL_23:
              v21 = v19;
              goto LABEL_24;
            }

            NSClassFromString(&cfstr_Skuiadornedima.isa);
            if (objc_opt_isKindOfClass())
            {
              v20 = [v18 safeValueForKey:@"_reuseView"];
              v21 = [v20 _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_0];

              goto LABEL_24;
            }

            NSClassFromString(&cfstr_Skuisectionhea_0.isa);
            if (objc_opt_isKindOfClass())
            {
              v22 = v18;
              v23 = &__block_literal_global_413;
              goto LABEL_22;
            }

            NSClassFromString(&cfstr_Skuitextboxvie_0.isa);
            if (objc_opt_isKindOfClass())
            {
              array = [MEMORY[0x29EDB8DE8] array];
              v56[0] = MEMORY[0x29EDCA5F8];
              v56[1] = 3221225472;
              v56[2] = __59__SKUIHorizontalLockupViewAccessibility_accessibilityLabel__block_invoke_3;
              v56[3] = &unk_29F304200;
              v21 = array;
              v57 = v21;
              [v18 accessibilityEnumerateContainerElementsUsingBlock:v56];
            }

            else
            {
              NSClassFromString(&cfstr_Skuiattributed_2.isa);
              if (objc_opt_isKindOfClass())
              {
                v22 = v18;
                v23 = &__block_literal_global_420;
LABEL_22:
                v19 = [v22 _accessibilityFindSubviewDescendantsPassingTest:v23];
                goto LABEL_23;
              }

              NSClassFromString(&cfstr_Skuihorizontal_3.isa);
              if (objc_opt_isKindOfClass())
              {
                v22 = v18;
                v23 = &__block_literal_global_425;
                goto LABEL_22;
              }

              v21 = 0;
            }

LABEL_24:
            v51 = v8;
            v54 = 0u;
            v55 = 0u;
            v52 = 0u;
            v53 = 0u;
            v24 = v21;
            v25 = [v24 countByEnumeratingWithState:&v52 objects:v67 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v53;
              do
              {
                v28 = 0;
                v29 = v9;
                do
                {
                  if (*v53 != v27)
                  {
                    objc_enumerationMutation(v24);
                  }

                  accessibilityLabel = [*(*(&v52 + 1) + 8 * v28) accessibilityLabel];
                  v31 = [accessibilityLabel stringByReplacingOccurrencesOfString:@"•" withString:{@", "}];

                  v38 = v31;
                  v39 = @"__AXStringForVariablesSentinel";
                  v9 = __UIAXStringForVariables();

                  ++v28;
                  v29 = v9;
                }

                while (v26 != v28);
                v26 = [v24 countByEnumeratingWithState:&v52 objects:v67 count:{16, v31, @"__AXStringForVariablesSentinel"}];
              }

              while (v26);
            }

            v8 = [(SKUIHorizontalLockupViewAccessibility *)self isAdvertisementView:v49]| v51;
            v17 = v50 + 1;
          }

          while (v50 + 1 != v48);
          v33 = [v44 countByEnumeratingWithState:&v58 objects:v69 count:16];
          v48 = v33;
        }

        while (v33);
LABEL_41:

        v10 = v43 + 1;
      }

      while (v43 + 1 != v42);
      v42 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
      if (!v42)
      {
        v7 = obj;

        if (v8)
        {
          v34 = accessibilitySKUILocalizedString(@"Ad");
          v35 = __UIAXStringForVariables();

          v9 = v35;
          goto LABEL_46;
        }

        goto LABEL_47;
      }
    }
  }

  v9 = 0;
  v34 = v7;
LABEL_46:

LABEL_47:
  v36 = *MEMORY[0x29EDCA608];

  return v9;
}

void __59__SKUIHorizontalLockupViewAccessibility_accessibilityLabel__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (shouldIncludeElement(v3))
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v26 = *MEMORY[0x29EDCA608];
  eventCopy = event;
  _accessibilitySupplementaryHeaderViews = [(SKUIHorizontalLockupViewAccessibility *)self _accessibilitySupplementaryHeaderViews];
  _accessibilitySupplementaryFooterViews = [(SKUIHorizontalLockupViewAccessibility *)self _accessibilitySupplementaryFooterViews];
  if (_accessibilitySupplementaryHeaderViews)
  {
    v10 = [_accessibilitySupplementaryHeaderViews arrayByAddingObjectsFromArray:_accessibilitySupplementaryFooterViews];

    _accessibilitySupplementaryFooterViews = v10;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = _accessibilitySupplementaryFooterViews;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        [(SKUIHorizontalLockupViewAccessibility *)self convertPoint:v16 toView:x, y];
        v17 = [v16 _accessibilityHitTest:eventCopy withEvent:?];
        if ([v17 isAccessibilityElement])
        {

          goto LABEL_13;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v20.receiver = self;
  v20.super_class = SKUIHorizontalLockupViewAccessibility;
  v17 = [(SKUIHorizontalLockupViewAccessibility *)&v20 _accessibilityHitTest:eventCopy withEvent:x, y];
LABEL_13:

  v18 = *MEMORY[0x29EDCA608];

  return v17;
}

- (id)_accessibilitySupplementaryHeaderViews
{
  v51 = *MEMORY[0x29EDCA608];
  array = [MEMORY[0x29EDB8DE8] array];
  v48 = 0;
  v3 = [(SKUIHorizontalLockupViewAccessibility *)self safeValueForKey:@"_layout"];
  v4 = __UIAccessibilitySafeClass();

  v5 = [v4 safeValueForKey:@"columns"];
  v6 = __UIAccessibilitySafeClass();

  if (HIBYTE(v48) == 1)
  {
LABEL_26:
    abort();
  }

  HIBYTE(v48) = 0;
  v7 = [(SKUIHorizontalLockupViewAccessibility *)self safeValueForKey:@"_viewElementViews"];
  v8 = __UIAccessibilitySafeClass();

  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v6;
  v34 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v34)
  {
    v9 = @"_previewMediaURL";
    v33 = *v45;
    v10 = @"SKUIImageView";
    v36 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v45 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v44 + 1) + 8 * v11);
        v48 = 0;
        v13 = __UIAccessibilitySafeClass();
        if (v48 == 1)
        {
          goto LABEL_26;
        }

        v14 = v13;
        v15 = [v13 safeValueForKey:@"childViewElements"];
        v16 = __UIAccessibilitySafeClass();

        if (HIBYTE(v48) == 1)
        {
          goto LABEL_26;
        }

        v35 = v11;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v39 = v16;
        v17 = [v39 countByEnumeratingWithState:&v40 objects:v49 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v41;
          v38 = *v41;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v41 != v19)
              {
                objc_enumerationMutation(v39);
              }

              v21 = [v8 objectForKey:*(*(&v40 + 1) + 8 * i)];
              v22 = [(SKUIHorizontalLockupViewAccessibility *)self safeValueForKey:v9];
              NSClassFromString(&v10->isa);
              if ((objc_opt_isKindOfClass() & 1) != 0 && v22)
              {
                [array addObject:v21];
                [v21 setIsAccessibilityElement:1];
                v23 = v10;
                v24 = v9;
                v25 = MEMORY[0x29EDBA0F8];
                v26 = accessibilitySKUILocalizedString(@"preview.button");
                [(SKUIHorizontalLockupViewAccessibility *)self accessibilityLabel];
                v28 = v27 = self;
                v29 = [v25 stringWithFormat:v26, v28];
                [v21 setAccessibilityLabel:v29];

                v9 = v24;
                v10 = v23;

                self = v27;
                v8 = v36;
                v19 = v38;
              }
            }

            v18 = [v39 countByEnumeratingWithState:&v40 objects:v49 count:16];
          }

          while (v18);
        }

        v11 = v35 + 1;
      }

      while (v35 + 1 != v34);
      v34 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v34);
  }

  v30 = *MEMORY[0x29EDCA608];

  return array;
}

- (CGRect)accessibilityFrame
{
  v21 = *MEMORY[0x29EDCA608];
  [(SKUIHorizontalLockupViewAccessibility *)self bounds];
  v4 = v3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  _accessibilitySupplementaryFooterViews = [(SKUIHorizontalLockupViewAccessibility *)self _accessibilitySupplementaryFooterViews];
  v6 = [_accessibilitySupplementaryFooterViews countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(_accessibilitySupplementaryFooterViews);
        }

        [*(*(&v16 + 1) + 8 * v9) bounds];
        v4 = v4 - v10;
        ++v9;
      }

      while (v7 != v9);
      v7 = [_accessibilitySupplementaryFooterViews countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  UIAccessibilityFrameForBounds();
  v15 = *MEMORY[0x29EDCA608];
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (id)_accessibilitySupplementaryFooterViewsIncludePlayButton:(BOOL)button includeStyledImageButton:(BOOL)imageButton
{
  imageButtonCopy = imageButton;
  buttonCopy = button;
  v49 = *MEMORY[0x29EDCA608];
  array = [MEMORY[0x29EDB8DE8] array];
  v46 = 0;
  v7 = [(SKUIHorizontalLockupViewAccessibility *)self safeValueForKey:@"_layout"];
  v8 = __UIAccessibilitySafeClass();

  v9 = [v8 safeValueForKey:@"columns"];
  v10 = __UIAccessibilitySafeClass();

  HIBYTE(v46) = 0;
  v11 = [(SKUIHorizontalLockupViewAccessibility *)self safeValueForKey:@"_viewElementViews"];
  v12 = __UIAccessibilitySafeClass();

  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v10;
  v34 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v34)
  {
    v33 = *v43;
    do
    {
      v13 = 0;
      do
      {
        if (*v43 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v42 + 1) + 8 * v13);
        v46 = 0;
        v15 = __UIAccessibilitySafeClass();
        if (v46 == 1 || (v16 = v15, [v15 safeValueForKey:@"childViewElements"], v17 = objc_claimAutoreleasedReturnValue(), __UIAccessibilitySafeClass(), v18 = objc_claimAutoreleasedReturnValue(), v17, v16, HIBYTE(v46) == 1))
        {
          abort();
        }

        v35 = v13;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v37 = v18;
        v19 = [v37 countByEnumeratingWithState:&v38 objects:v47 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v39;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v39 != v21)
              {
                objc_enumerationMutation(v37);
              }

              v23 = [v12 objectForKey:*(*(&v38 + 1) + 8 * i)];
              if ([v23 isAccessibilityElement] && (NSClassFromString(&cfstr_Skuistyledimag_0.isa), (objc_opt_isKindOfClass() & 1) != 0))
              {
                if ([v23 _accessibilityViewIsVisible])
                {
                  if (![(SKUIHorizontalLockupViewAccessibility *)self isAdvertisementView:v23]|| (v24 = _AXSAutomationEnabled(), v25 = @"Ad", !v24))
                  {
                    v25 = @"StyledImageButton";
                  }

                  [v23 setAccessibilityIdentifier:v25];
                  if (imageButtonCopy)
                  {
LABEL_28:
                    [array axSafelyAddObject:v23];
                  }
                }
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass() & 1) != 0 && ([v23 isAccessibilityElement] & 1) != 0 || (NSClassFromString(&cfstr_Skuiofferview.isa), (objc_opt_isKindOfClass()))
                {
                  [array addObject:v23];
                }

                else
                {
                  NSClassFromString(&cfstr_Skuivideothumb_0.isa);
                  if ((objc_opt_isKindOfClass() & 1) != 0 && [v23 _accessibilityViewIsVisible])
                  {
                    goto LABEL_28;
                  }
                }
              }

              NSClassFromString(&cfstr_Skuitogglebutt_0.isa);
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v23 _accessibilityViewIsVisible])
              {
                [array axSafelyAddObject:v23];
              }

              if (buttonCopy)
              {
                NSClassFromString(&cfstr_Skuiplaybutton_0.isa);
                if (objc_opt_isKindOfClass())
                {
                  if ([v23 _accessibilityViewIsVisible])
                  {
                    [v23 setAccessibilityIdentifier:@"PlayButton"];
                    [array axSafelyAddObject:v23];
                  }
                }

                else
                {
                  NSClassFromString(&cfstr_Skuiadornedima.isa);
                  if (objc_opt_isKindOfClass())
                  {
                    selfCopy = self;
                    v27 = [v23 safeValueForKey:@"_reuseView"];
                    v28 = [v27 safeValueForKey:@"_playButton"];

                    if ([v28 _accessibilityViewIsVisible])
                    {
                      [v28 setAccessibilityIdentifier:@"PlayButtonImage"];
                      [array axSafelyAddObject:v28];
                    }

                    self = selfCopy;
                  }
                }
              }
            }

            v20 = [v37 countByEnumeratingWithState:&v38 objects:v47 count:16];
          }

          while (v20);
        }

        v13 = v35 + 1;
      }

      while (v35 + 1 != v34);
      v34 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v34);
  }

  if ([(SKUIHorizontalLockupViewAccessibility *)self safeIntegerForKey:@"_previewState"]== 2)
  {
    v29 = [(SKUIHorizontalLockupViewAccessibility *)self safeValueForKey:@"_previewProgressIndicator"];
    if (v29)
    {
      [array axSafelyAddObject:v29];
    }
  }

  v30 = *MEMORY[0x29EDCA608];

  return array;
}

- (id)accessibilityElements
{
  if ([(SKUIHorizontalLockupViewAccessibility *)self isAccessibilityElement])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(SKUIHorizontalLockupViewAccessibility *)self _accessibilitySupplementaryFooterViewsIncludePlayButton:0 includeStyledImageButton:1];
  }

  return v3;
}

- (id)_accessibilityFindPlayButton
{
  v19 = *MEMORY[0x29EDCA608];
  [(SKUIHorizontalLockupViewAccessibility *)self _accessibilitySupplementaryFooterViewsIncludePlayButton:1 includeStyledImageButton:1];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = v17 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        accessibilityIdentifier = [v7 accessibilityIdentifier];
        if ([accessibilityIdentifier isEqualToString:@"PlayButton"])
        {

LABEL_13:
          v11 = v7;
          goto LABEL_14;
        }

        accessibilityIdentifier2 = [v7 accessibilityIdentifier];
        v10 = [accessibilityIdentifier2 isEqualToString:@"PlayButtonImage"];

        if (v10)
        {
          goto LABEL_13;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v11 = 0;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_14:

  v12 = *MEMORY[0x29EDCA608];

  return v11;
}

- (id)_accessibilityFindStyledImageButton
{
  v18 = *MEMORY[0x29EDCA608];
  [(SKUIHorizontalLockupViewAccessibility *)self _accessibilitySupplementaryFooterViewsIncludePlayButton:0 includeStyledImageButton:1];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = v16 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        accessibilityIdentifier = [v7 accessibilityIdentifier];
        v9 = [accessibilityIdentifier isEqualToString:@"StyledImageButton"];

        if (v9)
        {
          v10 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x29EDCA608];

  return v10;
}

- (id)_accessibilityFindToggleButton
{
  v16 = *MEMORY[0x29EDCA608];
  [(SKUIHorizontalLockupViewAccessibility *)self _accessibilitySupplementaryFooterViewsIncludePlayButton:0 includeStyledImageButton:1];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        NSClassFromString(&cfstr_Skuitogglebutt_0.isa);
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  v9 = *MEMORY[0x29EDCA608];

  return v8;
}

- (BOOL)_toggleButtonAction:(id)action
{
  _accessibilityFindToggleButton = [(SKUIHorizontalLockupViewAccessibility *)self _accessibilityFindToggleButton];
  v4 = _accessibilityFindToggleButton;
  if (_accessibilityFindToggleButton)
  {
    accessibilityLabel = [_accessibilityFindToggleButton accessibilityLabel];
    v10 = MEMORY[0x29EDCA5F8];
    v11 = v4;
    AXPerformSafeBlock();
    v6 = MEMORY[0x29EDBA0F8];
    v7 = accessibilitySKUILocalizedString(@"activated.toggle");
    v8 = [v6 stringWithFormat:v7, accessibilityLabel, v10, 3221225472, __61__SKUIHorizontalLockupViewAccessibility__toggleButtonAction___block_invoke, &unk_29F304118];

    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v8);
  }

  return v4 != 0;
}

- (BOOL)_styledImageButtonAction:(id)action
{
  _accessibilityFindStyledImageButton = [(SKUIHorizontalLockupViewAccessibility *)self _accessibilityFindStyledImageButton];
  v4 = _accessibilityFindStyledImageButton;
  if (_accessibilityFindStyledImageButton)
  {
    accessibilityActivate = [_accessibilityFindStyledImageButton accessibilityActivate];
  }

  else
  {
    accessibilityActivate = 0;
  }

  return accessibilityActivate;
}

- (BOOL)_playAction:(id)action
{
  _accessibilityFindPlayButton = [(SKUIHorizontalLockupViewAccessibility *)self _accessibilityFindPlayButton];
  v4 = _accessibilityFindPlayButton;
  if (_accessibilityFindPlayButton)
  {
    accessibilityActivate = [_accessibilityFindPlayButton accessibilityActivate];
  }

  else
  {
    accessibilityActivate = 0;
  }

  return accessibilityActivate;
}

- (id)accessibilityCustomActions
{
  array = [MEMORY[0x29EDB8DE8] array];
  _accessibilityFindPlayButton = [(SKUIHorizontalLockupViewAccessibility *)self _accessibilityFindPlayButton];
  v5 = _accessibilityFindPlayButton;
  if (_accessibilityFindPlayButton)
  {
    accessibilityLabel = [_accessibilityFindPlayButton accessibilityLabel];
    if (!accessibilityLabel)
    {
      accessibilityLabel = accessibilitySKUILocalizedString(@"play.button");
    }

    v7 = [objc_alloc(MEMORY[0x29EDC78E0]) initWithName:accessibilityLabel target:self selector:sel__playAction_];
    [array axSafelyAddObject:v7];
  }

  _accessibilityFindStyledImageButton = [(SKUIHorizontalLockupViewAccessibility *)self _accessibilityFindStyledImageButton];
  v9 = _accessibilityFindStyledImageButton;
  if (_accessibilityFindStyledImageButton)
  {
    accessibilityLabel2 = [_accessibilityFindStyledImageButton accessibilityLabel];
    if (!accessibilityLabel2)
    {
      accessibilityLabel2 = accessibilitySKUILocalizedString(@"more.button");
    }

    if ([(SKUIHorizontalLockupViewAccessibility *)self isAdvertisementView:v9])
    {
      v11 = accessibilitySKUILocalizedString(@"about.Ad");

      accessibilityLabel2 = v11;
    }

    v12 = [objc_alloc(MEMORY[0x29EDC78E0]) initWithName:accessibilityLabel2 target:self selector:sel__styledImageButtonAction_];
    [array axSafelyAddObject:v12];
  }

  _accessibilityFindToggleButton = [(SKUIHorizontalLockupViewAccessibility *)self _accessibilityFindToggleButton];
  v14 = _accessibilityFindToggleButton;
  if (_accessibilityFindToggleButton)
  {
    accessibilityLabel3 = [_accessibilityFindToggleButton accessibilityLabel];
    v16 = [objc_alloc(MEMORY[0x29EDC78E0]) initWithName:accessibilityLabel3 target:self selector:sel__toggleButtonAction_];
    [array axSafelyAddObject:v16];
  }

  return array;
}

- (id)_accessibilitySupplementaryFooterViews
{
  if ([(SKUIHorizontalLockupViewAccessibility *)self isAccessibilityElement]&& ([(SKUIHorizontalLockupViewAccessibility *)self _accessibilityFindPlayButton], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    v4 = [(SKUIHorizontalLockupViewAccessibility *)self _accessibilitySupplementaryFooterViewsIncludePlayButton:0 includeStyledImageButton:_AXSAutomationEnabled() != 0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v10.receiver = self;
  v10.super_class = SKUIHorizontalLockupViewAccessibility;
  accessibilityTraits = [(SKUIHorizontalLockupViewAccessibility *)&v10 accessibilityTraits];
  v3 = [(SKUIHorizontalLockupViewAccessibility *)self safeValueForKey:@"_lockupElement"];
  v4 = [v3 safeBoolForKey:@"isSelectable"];

  if (v4)
  {
    _accessibilityFindStyledImageButton = [(SKUIHorizontalLockupViewAccessibility *)self _accessibilityFindStyledImageButton];

    if (!_accessibilityFindStyledImageButton)
    {
      v12[3] |= *MEMORY[0x29EDC7F70];
    }
  }

  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __60__SKUIHorizontalLockupViewAccessibility_accessibilityTraits__block_invoke;
  v9[3] = &unk_29F304228;
  v9[4] = &v11;
  v6 = [(SKUIHorizontalLockupViewAccessibility *)self _accessibilityFindSubviewDescendant:v9];
  v7 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v7;
}

uint64_t __60__SKUIHorizontalLockupViewAccessibility_accessibilityTraits__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  NSClassFromString(&cfstr_Skuiimageview.isa);
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 accessibilityIdentifier], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", @"UIPreferencesBlueCheck"), v4, v5))
  {
    *(*(*(a1 + 32) + 8) + 24) |= *MEMORY[0x29EDC7FC0];
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)accessibilityValue
{
  _accessibilityFindPlayButton = [(SKUIHorizontalLockupViewAccessibility *)self _accessibilityFindPlayButton];
  v3 = [_accessibilityFindPlayButton safeValueForKey:@"_indeterminate"];
  bOOLValue = [v3 BOOLValue];

  if (bOOLValue)
  {
    v5 = accessibilitySKUILocalizedString(@"indeterminate.playback");
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_resolvePreviewStateAfterTransitionForFlipView:(id)view
{
  v9.receiver = self;
  v9.super_class = SKUIHorizontalLockupViewAccessibility;
  [(SKUIHorizontalLockupViewAccessibility *)&v9 _resolvePreviewStateAfterTransitionForFlipView:view];
  v4 = [(SKUIHorizontalLockupViewAccessibility *)self safeIntegerForKey:@"_previewState"];
  if (v4)
  {
    if (v4 == 2)
    {
      v5 = [(SKUIHorizontalLockupViewAccessibility *)self safeValueForKey:@"_previewProgressIndicator"];
      v6 = currentProgressIndicator;
      currentProgressIndicator = v5;

      UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], currentProgressIndicator);
    }
  }

  else
  {
    if ([currentProgressIndicator accessibilityElementIsFocused])
    {
      v7 = [(SKUIHorizontalLockupViewAccessibility *)self safeValueForKey:@"_previewFrontView"];
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v7);
    }

    v8 = currentProgressIndicator;
    currentProgressIndicator = 0;
  }
}

@end