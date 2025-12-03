@interface UIStepperAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (double)_accessibilityFrameForDecrement;
- (double)_accessibilityFrameForIncrement;
- (id)_accessibilityKeyCommands;
- (id)_accessibilityMinusButton;
- (id)_accessibilityPlusButton;
- (id)_axMockDecrementElement;
- (id)_axMockIncrementElement;
- (uint64_t)_accessibilityNeedsMockStepper;
- (uint64_t)_axIsAccessibilityNumericalPicker;
- (void)_accessibilityKeyCommandActionMinus;
- (void)_accessibilityKeyCommandActionPlus;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateButtons;
- (void)_axSetMockDecrementElement:(uint64_t)element;
- (void)_axSetMockIncrementElement:(uint64_t)element;
- (void)_commonStepperInit;
- (void)_refreshVisualElement;
- (void)_updateCount:(id)count;
@end

@implementation UIStepperAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v9 = location;
  v8 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v6 = @"UIStepper";
  v3 = "v";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  v7 = "@";
  [location[0] validateClass:v6 hasInstanceMethod:@"visualElement" withFullSignature:0];
  [location[0] validateClass:v6 hasInstanceMethod:@"_refreshVisualElement" withFullSignature:{v3, 0}];
  v4 = @"UIStepperHorizontalVisualElement";
  v5 = "UIButton";
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  [location[0] validateClass:v4 hasInstanceVariable:@"_plusButton" withType:v5];
  [location[0] validateClass:@"UIStepperDesignLibraryVisualElement"];
  [location[0] validateClass:v6 hasInstanceVariable:@"_value" withType:"d"];
  [location[0] validateClass:@"UITableViewCell" hasInstanceMethod:@"contentView" withFullSignature:{v7, 0}];
  objc_storeStrong(v9, v8);
}

- (id)_axMockDecrementElement
{
  if (self)
  {
    v2 = objc_getAssociatedObject(self, &__UIStepperAccessibility___axMockDecrementElement);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_axSetMockDecrementElement:(uint64_t)element
{
  elementCopy = element;
  location = 0;
  objc_storeStrong(&location, a2);
  if (elementCopy)
  {
    __UIAccessibilitySetAssociatedObject();
  }

  objc_storeStrong(&location, 0);
}

- (id)_axMockIncrementElement
{
  if (self)
  {
    v2 = objc_getAssociatedObject(self, &__UIStepperAccessibility___axMockIncrementElement);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_axSetMockIncrementElement:(uint64_t)element
{
  elementCopy = element;
  location = 0;
  objc_storeStrong(&location, a2);
  if (elementCopy)
  {
    __UIAccessibilitySetAssociatedObject();
  }

  objc_storeStrong(&location, 0);
}

- (void)_axAnnotateButtons
{
  v103[2] = *MEMORY[0x29EDCA608];
  selfCopy = self;
  if (self)
  {
    objc_initWeak(&location, selfCopy);
    v94 = MEMORY[0x29EDCA5F8];
    v95 = -1073741824;
    v96 = 0;
    v97 = __44__UIStepperAccessibility__axAnnotateButtons__block_invoke;
    v98 = &unk_29F30C9E8;
    objc_copyWeak(&v99, &location);
    v100 = MEMORY[0x29ED3E4C0](&v94);
    v87 = MEMORY[0x29EDCA5F8];
    v88 = -1073741824;
    v89 = 0;
    v90 = __44__UIStepperAccessibility__axAnnotateButtons__block_invoke_2;
    v91 = &unk_29F30C9E8;
    objc_copyWeak(&v92, &location);
    v93 = MEMORY[0x29ED3E4C0](&v87);
    if (([(UIStepperAccessibility *)selfCopy _accessibilityNeedsMockStepper]& 1) != 0)
    {
      _axMockIncrementElement = [(UIStepperAccessibility *)selfCopy _axMockIncrementElement];
      _axMockDecrementElement = [(UIStepperAccessibility *)selfCopy _axMockDecrementElement];
      if (!_axMockIncrementElement || !_axMockDecrementElement)
      {
        v22 = objc_alloc(MEMORY[0x29EDC78F8]);
        v21 = [v22 initWithAccessibilityContainer:selfCopy];
        v1 = _axMockIncrementElement;
        _axMockIncrementElement = v21;
        MEMORY[0x29EDC9740](v1);
        v20 = objc_alloc(MEMORY[0x29EDC78F8]);
        v19 = [v20 initWithAccessibilityContainer:selfCopy];
        v2 = _axMockDecrementElement;
        _axMockDecrementElement = v19;
        MEMORY[0x29EDC9740](v2);
        [(UIStepperAccessibility *)selfCopy _axSetMockIncrementElement:v21];
        [(UIStepperAccessibility *)selfCopy _axSetMockDecrementElement:v19];
        [v21 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
        [v19 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
        v18 = selfCopy;
        v103[0] = v19;
        v103[1] = v21;
        v17 = [MEMORY[0x29EDB8D80] arrayWithObjects:v103 count:2];
        [v18 setAccessibilityElements:?];
        MEMORY[0x29EDC9740](v17);
      }

      [_axMockIncrementElement _setAccessibilityLabelBlock:v93];
      [_axMockDecrementElement _setAccessibilityLabelBlock:v100];
      v16 = _axMockIncrementElement;
      v79 = MEMORY[0x29EDCA5F8];
      v80 = -1073741824;
      v81 = 0;
      v82 = __44__UIStepperAccessibility__axAnnotateButtons__block_invoke_3;
      v83 = &unk_29F30C9E8;
      objc_copyWeak(&v84, &location);
      [v16 _setAccessibilityValueBlock:&v79];
      v15 = _axMockDecrementElement;
      v73 = MEMORY[0x29EDCA5F8];
      v74 = -1073741824;
      v75 = 0;
      v76 = __44__UIStepperAccessibility__axAnnotateButtons__block_invoke_4;
      v77 = &unk_29F30C9E8;
      objc_copyWeak(&v78, &location);
      [v15 _setAccessibilityValueBlock:&v73];
      v14 = _axMockIncrementElement;
      v67 = MEMORY[0x29EDCA5F8];
      v68 = -1073741824;
      v69 = 0;
      v70 = __44__UIStepperAccessibility__axAnnotateButtons__block_invoke_5;
      v71 = &unk_29F30CAE8;
      objc_copyWeak(&v72, &location);
      [v14 _setAccessibilityFrameBlock:&v67];
      v13 = _axMockDecrementElement;
      v61 = MEMORY[0x29EDCA5F8];
      v62 = -1073741824;
      v63 = 0;
      v64 = __44__UIStepperAccessibility__axAnnotateButtons__block_invoke_6;
      v65 = &unk_29F30CAE8;
      objc_copyWeak(&v66, &location);
      [v13 _setAccessibilityFrameBlock:&v61];
      v12 = _axMockIncrementElement;
      v55 = MEMORY[0x29EDCA5F8];
      v56 = -1073741824;
      v57 = 0;
      v58 = __44__UIStepperAccessibility__axAnnotateButtons__block_invoke_7;
      v59 = &unk_29F30C9E8;
      objc_copyWeak(&v60, &location);
      [v12 _setAccessibilityIdentifierBlock:&v55];
      v11 = _axMockDecrementElement;
      v49 = MEMORY[0x29EDCA5F8];
      v50 = -1073741824;
      v51 = 0;
      v52 = __44__UIStepperAccessibility__axAnnotateButtons__block_invoke_8;
      v53 = &unk_29F30C9E8;
      objc_copyWeak(&v54, &location);
      [v11 _setAccessibilityIdentifierBlock:&v49];
      [_axMockIncrementElement _accessibilitySetScannerActivateBehavior:1];
      [_axMockDecrementElement _accessibilitySetScannerActivateBehavior:1];
      if (([(UIStepperAccessibility *)selfCopy _axIsAccessibilityNumericalPicker]& 1) != 0)
      {
        [_axMockIncrementElement _setAccessibilityAdditionalTraitsBlock:&__block_literal_global_35];
        [_axMockDecrementElement _setAccessibilityAdditionalTraitsBlock:&__block_literal_global_372];
      }

      objc_destroyWeak(&v54);
      objc_destroyWeak(&v60);
      objc_destroyWeak(&v66);
      objc_destroyWeak(&v72);
      objc_destroyWeak(&v78);
      objc_destroyWeak(&v84);
      objc_storeStrong(&_axMockDecrementElement, 0);
      objc_storeStrong(&_axMockIncrementElement, 0);
    }

    else
    {
      v10 = [selfCopy safeValueForKey:@"visualElement"];
      v48 = [v10 safeUIViewForKey:@"_plusButton"];
      *&v3 = MEMORY[0x29EDC9740](v10).n128_u64[0];
      v9 = [selfCopy safeValueForKey:{@"visualElement", v3}];
      v47 = [v9 safeUIViewForKey:@"_minusButton"];
      *&v4 = MEMORY[0x29EDC9740](v9).n128_u64[0];
      [v48 _setAccessibilityLabelBlock:{v93, v4}];
      [v47 _setAccessibilityLabelBlock:v100];
      v8 = v48;
      v41 = MEMORY[0x29EDCA5F8];
      v42 = -1073741824;
      v43 = 0;
      v44 = __44__UIStepperAccessibility__axAnnotateButtons__block_invoke_11;
      v45 = &unk_29F30C9E8;
      objc_copyWeak(&v46, &location);
      [v8 _setAccessibilityIdentifierBlock:&v41];
      v7 = v47;
      v35 = MEMORY[0x29EDCA5F8];
      v36 = -1073741824;
      v37 = 0;
      v38 = __44__UIStepperAccessibility__axAnnotateButtons__block_invoke_12;
      v39 = &unk_29F30C9E8;
      objc_copyWeak(&v40, &location);
      [v7 _setAccessibilityIdentifierBlock:&v35];
      v6 = v48;
      v29 = MEMORY[0x29EDCA5F8];
      v30 = -1073741824;
      v31 = 0;
      v32 = __44__UIStepperAccessibility__axAnnotateButtons__block_invoke_13;
      v33 = &unk_29F30C9E8;
      objc_copyWeak(&v34, &location);
      [v6 _setAccessibilityValueBlock:&v29];
      v5 = v47;
      v23 = MEMORY[0x29EDCA5F8];
      v24 = -1073741824;
      v25 = 0;
      v26 = __44__UIStepperAccessibility__axAnnotateButtons__block_invoke_14;
      v27 = &unk_29F30C9E8;
      objc_copyWeak(&v28, &location);
      [v5 _setAccessibilityValueBlock:&v23];
      [v48 _accessibilitySetScannerActivateBehavior:1];
      [v47 _accessibilitySetScannerActivateBehavior:1];
      if (([(UIStepperAccessibility *)selfCopy _axIsAccessibilityNumericalPicker]& 1) != 0)
      {
        [v48 _setAccessibilityAdditionalTraitsBlock:&__block_literal_global_374];
        [v47 _setAccessibilityAdditionalTraitsBlock:&__block_literal_global_376];
      }

      objc_destroyWeak(&v28);
      objc_destroyWeak(&v34);
      objc_destroyWeak(&v40);
      objc_destroyWeak(&v46);
      objc_storeStrong(&v47, 0);
      objc_storeStrong(&v48, 0);
    }

    objc_storeStrong(&v93, 0);
    objc_destroyWeak(&v92);
    objc_storeStrong(&v100, 0);
    objc_destroyWeak(&v99);
    objc_destroyWeak(&location);
  }
}

id __44__UIStepperAccessibility__axAnnotateButtons__block_invoke(id *a1)
{
  v6[2] = a1;
  v6[1] = a1;
  v6[0] = objc_loadWeakRetained(a1 + 4);
  v3 = [v6[0] accessibilityLabel];
  v2 = accessibilityLocalizedString(@"ui.stepper.decrement");
  v5 = __UIAXStringForVariables();
  MEMORY[0x29EDC9740](v2);
  MEMORY[0x29EDC9740](v3);
  v4 = MEMORY[0x29EDC9748](v5);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(v6, 0);

  return v4;
}

id __44__UIStepperAccessibility__axAnnotateButtons__block_invoke_2(id *a1)
{
  v6[2] = a1;
  v6[1] = a1;
  v6[0] = objc_loadWeakRetained(a1 + 4);
  v3 = [v6[0] accessibilityLabel];
  v2 = accessibilityLocalizedString(@"ui.stepper.increment");
  v5 = __UIAXStringForVariables();
  MEMORY[0x29EDC9740](v2);
  MEMORY[0x29EDC9740](v3);
  v4 = MEMORY[0x29EDC9748](v5);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(v6, 0);

  return v4;
}

- (uint64_t)_accessibilityNeedsMockStepper
{
  if (self)
  {
    v3 = 0;
    isKindOfClass = 1;
    if (([self _accessibilityViewIsMacIdiom] & 1) == 0)
    {
      v4 = [self safeValueForKey:@"visualElement"];
      v3 = 1;
      NSClassFromString(&cfstr_Uistepperdesig.isa);
      isKindOfClass = objc_opt_isKindOfClass();
    }

    v6 = isKindOfClass & 1;
    if (v3)
    {
      MEMORY[0x29EDC9740](v4);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

id __44__UIStepperAccessibility__axAnnotateButtons__block_invoke_3(id *a1)
{
  v3[2] = a1;
  v3[1] = a1;
  v3[0] = objc_loadWeakRetained(a1 + 4);
  v2 = [v3[0] accessibilityValue];
  objc_storeStrong(v3, 0);

  return v2;
}

id __44__UIStepperAccessibility__axAnnotateButtons__block_invoke_4(id *a1)
{
  v3[2] = a1;
  v3[1] = a1;
  v3[0] = objc_loadWeakRetained(a1 + 4);
  v2 = [v3[0] accessibilityValue];
  objc_storeStrong(v3, 0);

  return v2;
}

double __44__UIStepperAccessibility__axAnnotateButtons__block_invoke_5(id *a1)
{
  v5[2] = a1;
  v5[1] = a1;
  v5[0] = objc_loadWeakRetained(a1 + 4);
  v6 = [(UIStepperAccessibility *)v5[0] _accessibilityFrameForIncrement];
  v7 = v1;
  v8 = v2;
  v9 = v3;
  objc_storeStrong(v5, 0);
  return v6;
}

- (double)_accessibilityFrameForIncrement
{
  if (!self)
  {
    return 0.0;
  }

  if ([self _accessibilityViewIsMacIdiom])
  {
    [self accessibilityFrame];
    v9 = v12;
    CGRectGetMinX(v12);
    CGRectGetMinY(v9);
    CGRectGetWidth(v9);
    CGRectGetHeight(v9);
    CGRectMake_3();
    return v1;
  }

  else
  {
    [self bounds];
    UIAccessibilityFrameForBounds();
    v8.origin.x = v2;
    v8.origin.y = v3;
    v8.size.width = v4;
    v8.size.height = v5;
    if ([self _accessibilityIsRTL])
    {
      CGRectGetMinX(v8);
    }

    else
    {
      CGRectGetMinX(v8);
      CGRectGetWidth(v8);
    }

    CGRectGetMinY(v8);
    CGRectGetWidth(v8);
    CGRectGetHeight(v8);
    CGRectMake_3();
    return v6;
  }
}

double __44__UIStepperAccessibility__axAnnotateButtons__block_invoke_6(id *a1)
{
  v5[2] = a1;
  v5[1] = a1;
  v5[0] = objc_loadWeakRetained(a1 + 4);
  v6 = [(UIStepperAccessibility *)v5[0] _accessibilityFrameForDecrement];
  v7 = v1;
  v8 = v2;
  v9 = v3;
  objc_storeStrong(v5, 0);
  return v6;
}

- (double)_accessibilityFrameForDecrement
{
  if (!self)
  {
    return 0.0;
  }

  if ([self _accessibilityViewIsMacIdiom])
  {
    [self accessibilityFrame];
    v9 = v12;
    CGRectGetMinX(v12);
    CGRectGetMinY(v9);
    CGRectGetHeight(v9);
    CGRectGetWidth(v9);
    CGRectGetHeight(v9);
    CGRectMake_3();
    return v1;
  }

  else
  {
    [self bounds];
    UIAccessibilityFrameForBounds();
    v8.origin.x = v2;
    v8.origin.y = v3;
    v8.size.width = v4;
    v8.size.height = v5;
    if ([self _accessibilityIsRTL])
    {
      CGRectGetMinX(v8);
      CGRectGetWidth(v8);
    }

    else
    {
      CGRectGetMinX(v8);
    }

    CGRectGetMinY(v8);
    CGRectGetWidth(v8);
    CGRectGetHeight(v8);
    CGRectMake_3();
    return v6;
  }
}

id __44__UIStepperAccessibility__axAnnotateButtons__block_invoke_7(id *a1)
{
  v4[2] = a1;
  v4[1] = a1;
  v4[0] = objc_loadWeakRetained(a1 + 4);
  location = [v4[0] accessibilityIdentifier];
  if ([location length])
  {
    v5 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@-Increment", location];
  }

  else
  {
    v5 = MEMORY[0x29EDC9748](@"Increment");
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v4, 0);
  v1 = v5;

  return v1;
}

id __44__UIStepperAccessibility__axAnnotateButtons__block_invoke_8(id *a1)
{
  v4[2] = a1;
  v4[1] = a1;
  v4[0] = objc_loadWeakRetained(a1 + 4);
  location = [v4[0] accessibilityIdentifier];
  if ([location length])
  {
    v5 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@-Decrement", location];
  }

  else
  {
    v5 = MEMORY[0x29EDC9748](@"Decrement");
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v4, 0);
  v1 = v5;

  return v1;
}

- (uint64_t)_axIsAccessibilityNumericalPicker
{
  if (self)
  {
    accessibilityIdentification = [self accessibilityIdentification];
    v3 = [accessibilityIdentification isEqualToString:@"AXStepper"] & 1;
    MEMORY[0x29EDC9740](accessibilityIdentification);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

id __44__UIStepperAccessibility__axAnnotateButtons__block_invoke_11(id *a1)
{
  v4[2] = a1;
  v4[1] = a1;
  v4[0] = objc_loadWeakRetained(a1 + 4);
  location = [v4[0] accessibilityIdentifier];
  if ([location length])
  {
    v5 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@-Increment", location];
  }

  else
  {
    v5 = MEMORY[0x29EDC9748](@"Increment");
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v4, 0);
  v1 = v5;

  return v1;
}

id __44__UIStepperAccessibility__axAnnotateButtons__block_invoke_12(id *a1)
{
  v4[2] = a1;
  v4[1] = a1;
  v4[0] = objc_loadWeakRetained(a1 + 4);
  location = [v4[0] accessibilityIdentifier];
  if ([location length])
  {
    v5 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@-Decrement", location];
  }

  else
  {
    v5 = MEMORY[0x29EDC9748](@"Decrement");
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v4, 0);
  v1 = v5;

  return v1;
}

id __44__UIStepperAccessibility__axAnnotateButtons__block_invoke_13(id *a1)
{
  v3[2] = a1;
  v3[1] = a1;
  v3[0] = objc_loadWeakRetained(a1 + 4);
  v2 = [v3[0] accessibilityValue];
  objc_storeStrong(v3, 0);

  return v2;
}

id __44__UIStepperAccessibility__axAnnotateButtons__block_invoke_14(id *a1)
{
  v3[2] = a1;
  v3[1] = a1;
  v3[0] = objc_loadWeakRetained(a1 + 4);
  v2 = [v3[0] accessibilityValue];
  objc_storeStrong(v3, 0);

  return v2;
}

- (void)_commonStepperInit
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UIStepperAccessibility;
  [(UIStepperAccessibility *)&v2 _commonStepperInit];
  [(UIStepperAccessibility *)selfCopy _axAnnotateButtons];
}

- (void)_refreshVisualElement
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UIStepperAccessibility;
  [(UIStepperAccessibility *)&v2 _refreshVisualElement];
  [(UIStepperAccessibility *)selfCopy _axAnnotateButtons];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UIStepperAccessibility;
  [(UIStepperAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
  [(UIStepperAccessibility *)selfCopy _axAnnotateButtons];
}

- (void)_updateCount:(id)count
{
  v28 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, count);
  v24.receiver = selfCopy;
  v24.super_class = UIStepperAccessibility;
  [(UIStepperAccessibility *)&v24 _updateCount:location[0]];
  [(UIStepperAccessibility *)selfCopy safeDoubleForKey:@"_value"];
  v23[1] = v3;
  v23[0] = 0;
  if (([(UIStepperAccessibility *)selfCopy _axIsAccessibilityNumericalPicker]& 1) != 0)
  {
    v22 = [(UIStepperAccessibility *)selfCopy _accessibilityFindAncestor:&__block_literal_global_389 startWithSelf:1];
    v21 = [v22 safeValueForKey:@"contentView"];
    subviews = [v21 subviews];
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](subviews);
    v14 = [obj countByEnumeratingWithState:__b objects:v27 count:16];
    if (v14)
    {
      v10 = *__b[2];
      v11 = 0;
      v12 = v14;
      while (1)
      {
        v9 = v11;
        if (*__b[2] != v10)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(__b[1] + 8 * v11);
        NSClassFromString(&cfstr_Uilabel.isa);
        if (objc_opt_isKindOfClass())
        {
          text = [v19 text];
          v5 = v23[0];
          v23[0] = text;
          MEMORY[0x29EDC9740](v5);
        }

        ++v11;
        if (v9 + 1 >= v12)
        {
          v11 = 0;
          v12 = [obj countByEnumeratingWithState:__b objects:v27 count:16];
          if (!v12)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x29EDC9740](obj);
    v8 = AXFormatFloat();
    v7 = v23[0];
    v17 = __UIAXStringForVariables();
    *&v6 = MEMORY[0x29EDC9740](v8).n128_u64[0];
    v16 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:{v17, v6, v7, @"__AXStringForVariablesSentinel"}];
    [v16 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD978]];
    v15 = MEMORY[0x29EDC9748](v16);
    AXPerformBlockOnMainThreadAfterDelay();
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&subviews, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v22, 0);
  }

  objc_storeStrong(v23, 0);
  objc_storeStrong(location, 0);
}

uint64_t __39__UIStepperAccessibility__updateCount___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  NSClassFromString(&cfstr_Axuisettingsed.isa);
  isKindOfClass = objc_opt_isKindOfClass();
  objc_storeStrong(location, 0);
  return isKindOfClass & 1;
}

- (id)_accessibilityKeyCommands
{
  v13[2] = *MEMORY[0x29EDCA608];
  _accessibilityViewIsMacIdiom = [(UIStepperAccessibility *)self _accessibilityViewIsMacIdiom];
  _accessibilityIsRTL = [(UIStepperAccessibility *)self _accessibilityIsRTL];
  if (_accessibilityViewIsMacIdiom)
  {
    v9 = *MEMORY[0x29EDC8178];
  }

  else
  {
    if (_accessibilityIsRTL)
    {
      v8 = *MEMORY[0x29EDC8168];
    }

    else
    {
      v8 = *MEMORY[0x29EDC8170];
    }

    v9 = v8;
  }

  v7 = [MEMORY[0x29EDC7AF0] keyCommandWithInput:v9 modifierFlags:0 action:sel__accessibilityKeyCommandActionPlus];
  v13[0] = v7;
  if (_accessibilityViewIsMacIdiom)
  {
    v6 = *MEMORY[0x29EDC8160];
  }

  else
  {
    if (_accessibilityIsRTL)
    {
      v5 = *MEMORY[0x29EDC8170];
    }

    else
    {
      v5 = *MEMORY[0x29EDC8168];
    }

    v6 = v5;
  }

  v3 = [MEMORY[0x29EDC7AF0] keyCommandWithInput:v6 modifierFlags:0 action:sel__accessibilityKeyCommandActionMinus];
  v13[1] = v3;
  v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v13 count:2];
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](v7);

  return v4;
}

- (id)_accessibilityPlusButton
{
  if (self)
  {
    v7 = 0;
    v5 = 0;
    v3 = 0;
    if (([(UIStepperAccessibility *)self _accessibilityNeedsMockStepper]& 1) != 0)
    {
      _axMockIncrementElement = [(UIStepperAccessibility *)self _axMockIncrementElement];
      v7 = 1;
      v1 = MEMORY[0x29EDC9748](_axMockIncrementElement);
    }

    else
    {
      v6 = [self safeValueForKey:@"visualElement"];
      v5 = 1;
      v4 = [v6 safeUIViewForKey:@"_plusButton"];
      v3 = 1;
      v1 = MEMORY[0x29EDC9748](v4);
    }

    v10 = v1;
    if (v3)
    {
      MEMORY[0x29EDC9740](v4);
    }

    if (v5)
    {
      MEMORY[0x29EDC9740](v6);
    }

    if (v7)
    {
      MEMORY[0x29EDC9740](_axMockIncrementElement);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_accessibilityMinusButton
{
  if (self)
  {
    v7 = 0;
    v5 = 0;
    v3 = 0;
    if (([(UIStepperAccessibility *)self _accessibilityNeedsMockStepper]& 1) != 0)
    {
      _axMockDecrementElement = [(UIStepperAccessibility *)self _axMockDecrementElement];
      v7 = 1;
      v1 = MEMORY[0x29EDC9748](_axMockDecrementElement);
    }

    else
    {
      v6 = [self safeValueForKey:@"visualElement"];
      v5 = 1;
      v4 = [v6 safeUIViewForKey:@"_minusButton"];
      v3 = 1;
      v1 = MEMORY[0x29EDC9748](v4);
    }

    v10 = v1;
    if (v3)
    {
      MEMORY[0x29EDC9740](v4);
    }

    if (v5)
    {
      MEMORY[0x29EDC9740](v6);
    }

    if (v7)
    {
      MEMORY[0x29EDC9740](_axMockDecrementElement);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_accessibilityKeyCommandActionPlus
{
  v7[2] = self;
  v7[1] = a2;
  v2 = MEMORY[0x29EDCA5F8];
  v3 = -1073741824;
  v4 = 0;
  v5 = __60__UIStepperAccessibility__accessibilityKeyCommandActionPlus__block_invoke;
  v6 = &unk_29F30C7C8;
  v7[0] = MEMORY[0x29EDC9748](self);
  AXPerformSafeBlock();
  objc_storeStrong(v7, 0);
}

double __60__UIStepperAccessibility__accessibilityKeyCommandActionPlus__block_invoke(uint64_t a1)
{
  v2 = [(UIStepperAccessibility *)*(a1 + 32) _accessibilityPlusButton];
  [v2 _keyboardActivate];
  *&result = MEMORY[0x29EDC9740](v2).n128_u64[0];
  return result;
}

- (void)_accessibilityKeyCommandActionMinus
{
  v7[2] = self;
  v7[1] = a2;
  v2 = MEMORY[0x29EDCA5F8];
  v3 = -1073741824;
  v4 = 0;
  v5 = __61__UIStepperAccessibility__accessibilityKeyCommandActionMinus__block_invoke;
  v6 = &unk_29F30C7C8;
  v7[0] = MEMORY[0x29EDC9748](self);
  AXPerformSafeBlock();
  objc_storeStrong(v7, 0);
}

double __61__UIStepperAccessibility__accessibilityKeyCommandActionMinus__block_invoke(uint64_t a1)
{
  v2 = [(UIStepperAccessibility *)*(a1 + 32) _accessibilityMinusButton];
  [v2 _keyboardActivate];
  *&result = MEMORY[0x29EDC9740](v2).n128_u64[0];
  return result;
}

@end