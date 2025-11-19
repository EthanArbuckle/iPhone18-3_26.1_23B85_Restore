@interface _UIDatePickerContainerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityPerformEscape;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)_axDatePicker:(id)a3;
- (id)accessibilityElements;
- (void)_setAccessibilityDismissElement:(id)a3;
@end

@implementation _UIDatePickerContainerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UIDatePickerContainerView" hasInstanceMethod:@"presentation" withFullSignature:{"@", 0}];
  [location[0] validateClass:@"_UIDatePickerOverlayPresentation" hasInstanceMethod:@"dismissPresentationAnimated:" withFullSignature:{"v", "B", 0}];
  objc_storeStrong(v4, obj);
}

- (BOOL)accessibilityPerformEscape
{
  v9[2] = self;
  v9[1] = a2;
  v9[0] = [(_UIDatePickerContainerViewAccessibility *)self safeValueForKey:@"presentation"];
  v3 = MEMORY[0x29EDCA5F8];
  v4 = -1073741824;
  v5 = 0;
  v6 = __69___UIDatePickerContainerViewAccessibility_accessibilityPerformEscape__block_invoke;
  v7 = &unk_29F30C7C8;
  v8 = MEMORY[0x29EDC9748](v9[0]);
  AXPerformSafeBlock();
  objc_storeStrong(&v8, 0);
  objc_storeStrong(v9, 0);
  return 1;
}

- (void)_setAccessibilityDismissElement:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  __UIAccessibilitySetAssociatedObject();
  objc_storeStrong(location, 0);
}

- (id)accessibilityElements
{
  v45 = self;
  v44[1] = a2;
  v43 = 0;
  objc_opt_class();
  v42 = __UIAccessibilityCastAsClass();
  v41 = MEMORY[0x29EDC9748](v42);
  objc_storeStrong(&v42, 0);
  v13 = [v41 subviews];
  v14 = [v13 mutableCopy];
  v39 = 0;
  if (v14)
  {
    v2 = MEMORY[0x29EDC9748](v14);
  }

  else
  {
    v40 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v39 = 1;
    v2 = MEMORY[0x29EDC9748](v40);
  }

  v44[0] = v2;
  if (v39)
  {
    MEMORY[0x29EDC9740](v40);
  }

  MEMORY[0x29EDC9740](v14);
  MEMORY[0x29EDC9740](v13);
  *&v3 = MEMORY[0x29EDC9740](v41).n128_u64[0];
  v38 = [(_UIDatePickerContainerViewAccessibility *)v45 _accessibilityDismissElement];
  if (v38)
  {
    v46 = [v44[0] arrayByAddingObject:v38];
    v37 = 1;
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x29EDC78F8]);
    v36 = [v4 initWithAccessibilityContainer:v45];
    objc_initWeak(&v35, v45);
    v12 = v36;
    v29 = MEMORY[0x29EDCA5F8];
    v30 = -1073741824;
    v31 = 0;
    v32 = __64___UIDatePickerContainerViewAccessibility_accessibilityElements__block_invoke;
    v33 = &unk_29F30CAE8;
    objc_copyWeak(&v34, &v35);
    [v12 _setAccessibilityFrameBlock:&v29];
    if ([v44[0] count])
    {
      v28 = [(_UIDatePickerContainerViewAccessibility *)v45 _axDatePicker:v44[0]];
      if (v28)
      {
        v11 = v36;
        v21 = MEMORY[0x29EDCA5F8];
        v22 = -1073741824;
        v23 = 0;
        v24 = __64___UIDatePickerContainerViewAccessibility_accessibilityElements__block_invoke_2;
        v25 = &unk_29F30CB10;
        v26 = MEMORY[0x29EDC9748](v28);
        objc_copyWeak(&v27, &v35);
        [v11 _setAccessibilityActivationPointBlock:&v21];
        objc_destroyWeak(&v27);
        objc_storeStrong(&v26, 0);
      }

      objc_storeStrong(&v28, 0);
    }

    [v36 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
    v10 = UIKitAccessibilityLocalizedString();
    [v36 setAccessibilityLabel:?];
    MEMORY[0x29EDC9740](v10);
    v9 = UIKitAccessibilityLocalizedString();
    [v36 setAccessibilityHint:?];
    *&v5 = MEMORY[0x29EDC9740](v9).n128_u64[0];
    [v36 setAccessibilityIdentifier:{@"PopoverDismissRegion", v5}];
    [v36 _accessibilitySetAdditionalElementOrderedLast:1];
    v8 = v36;
    v15 = MEMORY[0x29EDCA5F8];
    v16 = -1073741824;
    v17 = 0;
    v18 = __64___UIDatePickerContainerViewAccessibility_accessibilityElements__block_invoke_3;
    v19 = &unk_29F30C7F0;
    objc_copyWeak(&v20, &v35);
    [v8 _setAccessibilityActivateBlock:&v15];
    [(_UIDatePickerContainerViewAccessibility *)v45 _setAccessibilityDismissElement:v36];
    v46 = [v44[0] arrayByAddingObject:v36];
    v37 = 1;
    objc_destroyWeak(&v20);
    objc_destroyWeak(&v34);
    objc_destroyWeak(&v35);
    objc_storeStrong(&v36, 0);
  }

  objc_storeStrong(&v38, 0);
  objc_storeStrong(v44, 0);
  v6 = v46;

  return v6;
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  v15 = a3;
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  v12 = [(_UIDatePickerContainerViewAccessibility *)v14 accessibilityElements];
  if (![v12 count] || ((v11 = -[_UIDatePickerContainerViewAccessibility _axDatePicker:](v14, "_axDatePicker:", v12), v10 = -[_UIDatePickerContainerViewAccessibility _accessibilityDismissElement](v14, "_accessibilityDismissElement"), !v11) || (-[_UIDatePickerContainerViewAccessibility accessibilityFrame](v14, "accessibilityFrame"), rect = v18, !CGRectContainsPoint(v18, v15)) || (objc_msgSend(v11, "accessibilityFrame"), v8 = v19, CGRectContainsPoint(v19, v15)) ? (v7 = 0) : (v16 = MEMORY[0x29EDC9748](v10), v7 = 1), objc_storeStrong(&v10, 0), objc_storeStrong(&v11, 0), !v7))
  {
    v6.receiver = v14;
    v6.super_class = _UIDatePickerContainerViewAccessibility;
    v16 = [(_UIDatePickerContainerViewAccessibility *)&v6 _accessibilityHitTest:location[0] withEvent:v15.x, v15.y];
    v7 = 1;
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  v4 = v16;

  return v4;
}

- (id)_axDatePicker:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [location[0] firstObject];
  v5 = [v7 automationElements];
  v6 = [v5 firstObject];
  MEMORY[0x29EDC9740](v5);
  NSClassFromString(&cfstr_Uidatepickerov_0.isa);
  if (objc_opt_isKindOfClass())
  {
    v9 = MEMORY[0x29EDC9748](v6);
  }

  else
  {
    v9 = 0;
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  v3 = v9;

  return v3;
}

@end