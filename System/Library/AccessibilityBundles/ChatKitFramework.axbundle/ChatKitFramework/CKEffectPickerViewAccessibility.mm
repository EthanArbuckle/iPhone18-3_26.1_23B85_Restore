@interface CKEffectPickerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (CKEffectPickerViewAccessibility)initWithFrame:(CGRect)frame sendButtonFrame:(CGRect)buttonFrame balloonViewOrigin:(CGPoint)origin composition:(id)composition color:(char)color gradientReferenceView:(id)view;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axUpdateCloseButton;
- (void)_axUpdateScrollView;
- (void)_touchUpInsideDotButton:(id)button;
- (void)addEffect:(id)effect withDescriptiveText:(id)text withIdentifier:(id)identifier;
- (void)cancelImpactSelection;
- (void)effectTypeDidChange:(id)change;
@end

@implementation CKEffectPickerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKEffectPickerView" hasInstanceMethod:@"mainLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKEffectPickerView" hasInstanceMethod:@"typeSegmentedControl" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKEffectPickerView" hasInstanceMethod:@"sendMomentButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKEffectPickerView" hasInstanceMethod:@"momentTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKEffectPickerView" hasInstanceMethod:@"pageControl" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKEffectPickerView" hasInstanceMethod:@"momentsCollectionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKEffectPickerView" hasInstanceMethod:@"momentIdentifiers" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKEffectPickerView" hasInstanceMethod:@"initWithFrame:sendButtonFrame:balloonViewOrigin:composition:color:gradientReferenceView:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", "{CGRect={CGPoint=dd}{CGSize=dd}}", "{CGPoint=dd}", "@", "c", "@", 0}];
  [validationsCopy validateClass:@"CKEffectPickerView" hasInstanceMethod:@"closeButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKEffectPickerView" hasInstanceMethod:@"balloonView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKEffectPickerView" hasInstanceMethod:@"_touchUpInsideDotButton:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CKEffectPickerView" hasInstanceMethod:@"cancelImpactSelection" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CKEffectPickerView" hasInstanceMethod:@"selectedIndex" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"CKEffectPickerView" hasInstanceMethod:@"selectedMomentIndex" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"CKEffectPickerView" hasInstanceMethod:@"effectTypeDidChange:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CKEffectPickerView" hasInstanceMethod:@"scrollViewDidScroll:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CKEffectPickerView" hasInstanceMethod:@"scrollViewDidEndDecelerating:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CKEffectPickerView" hasInstanceMethod:@"effectLabels" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKEffectPickerView" hasInstanceMethod:@"effectDescriptiveLabels" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKEffectPickerView" hasInstanceMethod:@"effectDotButtons" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKEffectPickerView" hasInstanceMethod:@"effectSendButtons" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKEffectPickerView" hasInstanceMethod:@"effectIdentifiers" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v24 = *MEMORY[0x29EDCA608];
  v22.receiver = self;
  v22.super_class = CKEffectPickerViewAccessibility;
  [(CKEffectPickerViewAccessibility *)&v22 _accessibilityLoadAccessibilityInformation];
  [(CKEffectPickerViewAccessibility *)self _axUpdateCloseButton];
  v3 = [(CKEffectPickerViewAccessibility *)self safeValueForKey:@"balloonView"];
  [v3 setIsAccessibilityElement:0];

  v4 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v21 = 0;
  objc_opt_class();
  v5 = [(CKEffectPickerViewAccessibility *)self safeValueForKey:@"momentIdentifiers"];
  v6 = __UIAccessibilityCastAsClass();

  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = _AXCKFullScreenEffectString(*(*(&v17 + 1) + 8 * i), 0);
        if (v12)
        {
          [v4 addObject:{v12, v17}];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v9);
  }

  v21 = 0;
  objc_opt_class();
  v13 = [(CKEffectPickerViewAccessibility *)self safeValueForKey:@"pageControl"];
  v14 = __UIAccessibilityCastAsClass();

  if (v21 == 1 || ([v14 accessibilitySetIdentification:@"AXImpactEffectPageControl"], objc_msgSend(v14, "_accessibilitySetRetainedValue:forKey:", v4, @"AXImpactEffectPageControlValues"), v21 = 0, objc_opt_class(), -[CKEffectPickerViewAccessibility safeValueForKey:](self, "safeValueForKey:", @"momentsCollectionView"), v15 = objc_claimAutoreleasedReturnValue(), __UIAccessibilityCastAsClass(), v16 = objc_claimAutoreleasedReturnValue(), v15, v21 == 1))
  {
    abort();
  }

  [v16 accessibilitySetIdentification:@"AXImpactEffectCollectionView"];
}

- (id)accessibilityElements
{
  v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v4 = [(CKEffectPickerViewAccessibility *)self safeValueForKey:@"mainLabel"];
  [v3 addObject:v4];
  LOBYTE(location) = 0;
  objc_opt_class();
  v5 = [(CKEffectPickerViewAccessibility *)self safeValueForKey:@"typeSegmentedControl"];
  v6 = __UIAccessibilityCastAsClass();

  [v3 addObject:v6];
  v7 = [(CKEffectPickerViewAccessibility *)self safeValueForKey:@"closeButton"];
  if ([v6 selectedSegmentIndex])
  {
    if (UIAccessibilityIsVoiceOverRunning())
    {
      _axFullScreenEffectElement = [(CKEffectPickerViewAccessibility *)self _axFullScreenEffectElement];
      if (!_axFullScreenEffectElement)
      {
        objc_initWeak(&location, self);
        _axFullScreenEffectElement = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
        v33[0] = MEMORY[0x29EDCA5F8];
        v33[1] = 3221225472;
        v33[2] = __56__CKEffectPickerViewAccessibility_accessibilityElements__block_invoke;
        v33[3] = &unk_29F2B0890;
        objc_copyWeak(&v34, &location);
        [_axFullScreenEffectElement _setAccessibilityFrameBlock:v33];
        [(CKEffectPickerViewAccessibility *)self _setAXFullScreenEffectElement:_axFullScreenEffectElement];
        objc_destroyWeak(&v34);
        objc_destroyWeak(&location);
      }

      v9 = [(CKEffectPickerViewAccessibility *)self safeIntegerForKey:@"selectedMomentIndex"];
      LOBYTE(location) = 0;
      objc_opt_class();
      v10 = [(CKEffectPickerViewAccessibility *)self safeValueForKey:@"momentIdentifiers"];
      v11 = __UIAccessibilityCastAsClass();

      if (location == 1)
      {
        goto LABEL_26;
      }

      if (v9 < [v11 count])
      {
        v12 = [v11 objectAtIndex:v9];
        if ([v12 length])
        {
          v32 = _AXCKFullScreenEffectString(v12, 0);
          v13 = _AXCKFullScreenEffectString(v12, 1);
          v14 = __UIAXStringForVariables();
          [_axFullScreenEffectElement setAccessibilityLabel:{v14, v13, @"__AXStringForVariablesSentinel"}];

          [v3 addObject:_axFullScreenEffectElement];
        }
      }
    }

    v15 = [(CKEffectPickerViewAccessibility *)self safeValueForKey:@"sendMomentButton"];
    LOBYTE(location) = 0;
    objc_opt_class();
    v16 = [(CKEffectPickerViewAccessibility *)self safeValueForKey:@"momentTitleLabel"];
    v17 = __UIAccessibilityCastAsClass();

    if (location != 1)
    {
      text = [v17 text];
      [v15 setAccessibilityLabel:text];

      [v3 addObject:v15];
      [v3 addObject:v7];
      v19 = [(CKEffectPickerViewAccessibility *)self safeValueForKey:@"pageControl"];
      [v3 addObject:v19];

      goto LABEL_23;
    }

LABEL_26:
    abort();
  }

  LOBYTE(location) = 0;
  objc_opt_class();
  v20 = [(CKEffectPickerViewAccessibility *)self safeValueForKey:@"effectDotButtons"];
  v15 = __UIAccessibilityCastAsClass();

  LOBYTE(location) = 0;
  objc_opt_class();
  v21 = [(CKEffectPickerViewAccessibility *)self safeValueForKey:@"effectSendButtons"];
  v17 = __UIAccessibilityCastAsClass();

  v22 = [v15 count];
  v23 = [(CKEffectPickerViewAccessibility *)self safeUnsignedIntegerForKey:@"selectedIndex"];
  v24 = v22 < 1;
  v25 = v22 - 1;
  if (!v24)
  {
    v26 = v23;
    do
    {
      if (v26 == v25)
      {
        v27 = v17;
        v28 = v26;
      }

      else
      {
        v27 = v15;
        v28 = v25;
      }

      v29 = [v27 objectAtIndex:v28];
      [v3 addObject:v29];

      v30 = v25-- + 1;
    }

    while (v30 > 1);
  }

  [v3 addObject:v7];
LABEL_23:

  return v3;
}

double __56__CKEffectPickerViewAccessibility_accessibilityElements__block_invoke(uint64_t a1)
{
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeValueForKey:@"momentsCollectionView"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 accessibilityFrame];
  v6 = v5;

  return v6;
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  v13.receiver = self;
  v13.super_class = CKEffectPickerViewAccessibility;
  v5 = [(CKEffectPickerViewAccessibility *)&v13 accessibilityScroll:?];
  objc_opt_class();
  v6 = [(CKEffectPickerViewAccessibility *)self safeValueForKey:@"momentsCollectionView"];
  v7 = __UIAccessibilityCastAsClass();

  v8 = [(CKEffectPickerViewAccessibility *)self safeIntegerForKey:@"selectedMomentIndex"];
  if ([v7 _accessibilityViewIsVisible])
  {
    if (scroll == 2)
    {
      objc_opt_class();
      v9 = [(CKEffectPickerViewAccessibility *)self safeValueForKey:@"pageControl"];
      v10 = __UIAccessibilityCastAsClass();

      if (v8 < [v10 numberOfPages] - 1)
      {
        v11 = [MEMORY[0x29EDB9FE0] indexPathForRow:v8 + 1 inSection:0];
        [v7 scrollToItemAtIndexPath:v11 atScrollPosition:16 animated:1];

LABEL_8:
LABEL_10:
        [(CKEffectPickerViewAccessibility *)self performSelector:sel__axUpdateScrollView withObject:0 afterDelay:0.3];
        v5 = 1;
        goto LABEL_13;
      }

      if (v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (scroll == 1 && v8 >= 1)
      {
        v10 = [MEMORY[0x29EDB9FE0] indexPathForRow:v8 - 1 inSection:0];
        [v7 scrollToItemAtIndexPath:v10 atScrollPosition:16 animated:1];
        goto LABEL_8;
      }

      if (v5)
      {
        goto LABEL_10;
      }
    }

    v5 = 0;
  }

LABEL_13:

  return v5;
}

- (void)_axUpdateScrollView
{
  objc_opt_class();
  v3 = [(CKEffectPickerViewAccessibility *)self safeValueForKey:@"momentsCollectionView"];
  v4 = __UIAccessibilityCastAsClass();

  [(CKEffectPickerViewAccessibility *)self scrollViewDidScroll:v4];
  [(CKEffectPickerViewAccessibility *)self scrollViewDidEndDecelerating:v4];
  objc_opt_class();
  v5 = [(CKEffectPickerViewAccessibility *)self safeValueForKey:@"pageControl"];
  v6 = __UIAccessibilityCastAsClass();

  accessibilityValue = [v6 accessibilityValue];
  UIAccessibilitySpeak();
}

- (CKEffectPickerViewAccessibility)initWithFrame:(CGRect)frame sendButtonFrame:(CGRect)buttonFrame balloonViewOrigin:(CGPoint)origin composition:(id)composition color:(char)color gradientReferenceView:(id)view
{
  v11.receiver = self;
  v11.super_class = CKEffectPickerViewAccessibility;
  v8 = [(CKEffectPickerViewAccessibility *)&v11 initWithFrame:*&origin.x sendButtonFrame:*&origin.y balloonViewOrigin:composition composition:color color:view gradientReferenceView:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height, buttonFrame.origin.x, buttonFrame.origin.y, buttonFrame.size.width, buttonFrame.size.height, v12, v13];
  v9 = v8;
  if (v8)
  {
    [(CKEffectPickerViewAccessibility *)v8 _accessibilityLoadAccessibilityInformation];
  }

  return v9;
}

- (void)addEffect:(id)effect withDescriptiveText:(id)text withIdentifier:(id)identifier
{
  v23.receiver = self;
  v23.super_class = CKEffectPickerViewAccessibility;
  effectCopy = effect;
  [(CKEffectPickerViewAccessibility *)&v23 addEffect:effectCopy withDescriptiveText:text withIdentifier:identifier];
  v9 = [(CKEffectPickerViewAccessibility *)self safeValueForKey:@"effectLabels"];
  v10 = [v9 safeValueForKey:@"@lastObject"];
  [v10 setIsAccessibilityElement:0];

  v11 = [(CKEffectPickerViewAccessibility *)self safeValueForKey:@"effectDescriptiveLabels"];
  v12 = [v11 safeValueForKey:@"@lastObject"];
  [v12 setIsAccessibilityElement:0];

  v13 = [(CKEffectPickerViewAccessibility *)self safeValueForKey:@"effectDotButtons"];
  v14 = [v13 safeValueForKey:@"@lastObject"];

  [v14 setAccessibilityLabel:effectCopy];
  v15 = [(CKEffectPickerViewAccessibility *)self safeValueForKey:@"effectSendButtons"];
  v16 = [v15 safeValueForKey:@"@lastObject"];

  v17 = MEMORY[0x29EDBA0F8];
  v18 = accessibilityLocalizedString(@"impact.effect.send");
  effectCopy = [v17 stringWithFormat:v18, effectCopy];
  [v16 setAccessibilityLabel:effectCopy];

  v20 = MEMORY[0x29EDBA0F8];
  v21 = accessibilityLocalizedString(@"impact.effect.send.hint.format");
  effectCopy2 = [v20 stringWithFormat:v21, effectCopy];

  [v16 setAccessibilityHint:effectCopy2];
}

- (void)_touchUpInsideDotButton:(id)button
{
  buttonCopy = button;
  v16.receiver = self;
  v16.super_class = CKEffectPickerViewAccessibility;
  [(CKEffectPickerViewAccessibility *)&v16 _touchUpInsideDotButton:buttonCopy];
  objc_opt_class();
  v5 = [(CKEffectPickerViewAccessibility *)self safeValueForKey:@"effectDotButtons"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [v6 indexOfObject:buttonCopy];
  v15 = 0;
  objc_opt_class();
  v8 = [(CKEffectPickerViewAccessibility *)self safeValueForKey:@"effectSendButtons"];
  v9 = __UIAccessibilityCastAsClass();

  v10 = [v9 objectAtIndex:v7];

  [(CKEffectPickerViewAccessibility *)self _axUpdateCloseButton];
  v11 = dispatch_time(0, 160000000);
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3221225472;
  v13[2] = __59__CKEffectPickerViewAccessibility__touchUpInsideDotButton___block_invoke;
  v13[3] = &unk_29F2B0720;
  v14 = v10;
  v12 = v10;
  dispatch_after(v11, MEMORY[0x29EDCA578], v13);
}

- (void)cancelImpactSelection
{
  v5.receiver = self;
  v5.super_class = CKEffectPickerViewAccessibility;
  [(CKEffectPickerViewAccessibility *)&v5 cancelImpactSelection];
  [(CKEffectPickerViewAccessibility *)self _axUpdateCloseButton];
  v3 = *MEMORY[0x29EDC7ED8];
  v4 = [(CKEffectPickerViewAccessibility *)self safeValueForKey:@"closeButton"];
  UIAccessibilityPostNotification(v3, v4);
}

- (void)effectTypeDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = CKEffectPickerViewAccessibility;
  [(CKEffectPickerViewAccessibility *)&v4 effectTypeDidChange:change];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], self);
}

- (void)_axUpdateCloseButton
{
  if ([(CKEffectPickerViewAccessibility *)self safeUnsignedIntegerForKey:@"selectedIndex"]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = @"impact.effect.close";
  }

  else
  {
    v3 = @"impact.effect.cancel";
  }

  v5 = accessibilityLocalizedString(v3);
  v4 = [(CKEffectPickerViewAccessibility *)self safeValueForKey:@"closeButton"];
  [v4 setAccessibilityLabel:v5];
}

@end