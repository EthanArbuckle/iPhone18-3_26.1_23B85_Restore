@interface PRQuickActionEditingViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityHasLeadingAction;
- (BOOL)_accessibilityHasTrailingAction;
- (id)_accessibilityProminentButtonsView;
- (id)_axRemoveWidgetLabel:(BOOL)label;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityMarkupButtons;
- (void)_updateButtonsVisibility;
@end

@implementation PRQuickActionEditingViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PRQuickActionEditingViewController" hasInstanceMethod:@"prominentButtonsView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PRQuickActionEditingViewController" hasInstanceMethod:@"leadingControl" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PRQuickActionEditingViewController" hasInstanceMethod:@"trailingControl" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PRQuickActionEditingViewController" hasInstanceMethod:@"_updateButtonsVisibility" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PRQuickActionEditingViewController" hasInstanceMethod:@"_leadingActionDidFire" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PRQuickActionEditingViewController" hasInstanceMethod:@"_trailingActionDidFire" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PRQuickActionEditingViewController" hasInstanceMethod:@"_presentWidgetIntentConfigurationForControlWithPosition:" withFullSignature:{"v", "q", 0}];
  [validationsCopy validateClass:@"PRQuickActionEditingViewController" hasInstanceMethod:@"_handleRemoveButtonActionForQuickActionPosition:" withFullSignature:{"v", "q", 0}];
  [validationsCopy validateClass:@"PRQuickActionsEditingReticleView" hasInstanceVariable:@"_reticleView" withType:"PREditingReticleView"];
  [validationsCopy validateClass:@"PRQuickActionControlView" hasInstanceVariable:@"_controlInstance" withType:"CHUISControlInstance"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = PRQuickActionEditingViewControllerAccessibility;
  [(PRQuickActionEditingViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(PRQuickActionEditingViewControllerAccessibility *)self _accessibilityMarkupButtons];
}

- (void)_updateButtonsVisibility
{
  v3.receiver = self;
  v3.super_class = PRQuickActionEditingViewControllerAccessibility;
  [(PRQuickActionEditingViewControllerAccessibility *)&v3 _updateButtonsVisibility];
  [(PRQuickActionEditingViewControllerAccessibility *)self _accessibilityMarkupButtons];
}

- (void)_accessibilityMarkupButtons
{
  _accessibilityProminentButtonsView = [(PRQuickActionEditingViewControllerAccessibility *)self _accessibilityProminentButtonsView];
  leadingRemoveButton = [_accessibilityProminentButtonsView leadingRemoveButton];
  trailingRemoveButton = [_accessibilityProminentButtonsView trailingRemoveButton];
  leadingButton = [_accessibilityProminentButtonsView leadingButton];
  [leadingButton setAccessibilityElementsHidden:1];
  trailingButton = [_accessibilityProminentButtonsView trailingButton];
  [trailingButton setAccessibilityElementsHidden:1];
  objc_initWeak(location, self);
  v30[0] = MEMORY[0x29EDCA5F8];
  v30[1] = 3221225472;
  v30[2] = __78__PRQuickActionEditingViewControllerAccessibility__accessibilityMarkupButtons__block_invoke;
  v30[3] = &unk_29F2EBD40;
  objc_copyWeak(&v31, location);
  [leadingRemoveButton setAccessibilityLabelBlock:v30];
  leadingReticle = [_accessibilityProminentButtonsView leadingReticle];
  [leadingReticle setIsAccessibilityElement:1];
  v9 = *MEMORY[0x29EDC7F70];
  [leadingReticle setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  v28[0] = MEMORY[0x29EDCA5F8];
  v28[1] = 3221225472;
  v28[2] = __78__PRQuickActionEditingViewControllerAccessibility__accessibilityMarkupButtons__block_invoke_2;
  v28[3] = &unk_29F2EBD40;
  objc_copyWeak(&v29, location);
  [leadingReticle setAccessibilityHintBlock:v28];
  v26[0] = MEMORY[0x29EDCA5F8];
  v26[1] = 3221225472;
  v26[2] = __78__PRQuickActionEditingViewControllerAccessibility__accessibilityMarkupButtons__block_invoke_3;
  v26[3] = &unk_29F2EBD40;
  objc_copyWeak(&v27, location);
  [leadingReticle setAccessibilityLabelBlock:v26];
  v24[0] = MEMORY[0x29EDCA5F8];
  v24[1] = 3221225472;
  v24[2] = __78__PRQuickActionEditingViewControllerAccessibility__accessibilityMarkupButtons__block_invoke_4;
  v24[3] = &unk_29F2EBD90;
  objc_copyWeak(&v25, location);
  [leadingReticle setAccessibilityActivateBlock:v24];
  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 3221225472;
  v22[2] = __78__PRQuickActionEditingViewControllerAccessibility__accessibilityMarkupButtons__block_invoke_6;
  v22[3] = &unk_29F2EBDE0;
  objc_copyWeak(&v23, location);
  [leadingReticle setAccessibilityCustomActionsBlock:v22];
  v20[0] = MEMORY[0x29EDCA5F8];
  v20[1] = 3221225472;
  v20[2] = __78__PRQuickActionEditingViewControllerAccessibility__accessibilityMarkupButtons__block_invoke_9;
  v20[3] = &unk_29F2EBD40;
  objc_copyWeak(&v21, location);
  [trailingRemoveButton setAccessibilityLabelBlock:v20];
  v11 = trailingRemoveButton;
  trailingReticle = [_accessibilityProminentButtonsView trailingReticle];
  [trailingReticle setIsAccessibilityElement:1];
  [trailingReticle setAccessibilityTraits:v9];
  v18[0] = MEMORY[0x29EDCA5F8];
  v18[1] = 3221225472;
  v18[2] = __78__PRQuickActionEditingViewControllerAccessibility__accessibilityMarkupButtons__block_invoke_10;
  v18[3] = &unk_29F2EBD40;
  objc_copyWeak(&v19, location);
  [trailingReticle setAccessibilityHintBlock:v18];
  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 3221225472;
  v16[2] = __78__PRQuickActionEditingViewControllerAccessibility__accessibilityMarkupButtons__block_invoke_11;
  v16[3] = &unk_29F2EBD40;
  objc_copyWeak(&v17, location);
  [trailingReticle setAccessibilityLabelBlock:v16];
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v14[2] = __78__PRQuickActionEditingViewControllerAccessibility__accessibilityMarkupButtons__block_invoke_12;
  v14[3] = &unk_29F2EBD90;
  objc_copyWeak(&v15, location);
  [trailingReticle setAccessibilityActivateBlock:v14];
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __78__PRQuickActionEditingViewControllerAccessibility__accessibilityMarkupButtons__block_invoke_14;
  v12[3] = &unk_29F2EBDE0;
  objc_copyWeak(&v13, location);
  [trailingReticle setAccessibilityCustomActionsBlock:v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&v29);

  objc_destroyWeak(&v31);
  objc_destroyWeak(location);
}

id __78__PRQuickActionEditingViewControllerAccessibility__accessibilityMarkupButtons__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _axRemoveWidgetLabel:1];

  return v2;
}

id __78__PRQuickActionEditingViewControllerAccessibility__accessibilityMarkupButtons__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _accessibilityProminentButtonsView];
  v3 = [v2 leadingReticle];
  v4 = [v3 safeValueForKey:@"_reticleView"];
  v5 = [v4 accessibilityHint];

  return v5;
}

id __78__PRQuickActionEditingViewControllerAccessibility__accessibilityMarkupButtons__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _accessibilityHasLeadingAction];

  if (v3)
  {
    objc_opt_class();
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 _accessibilityProminentButtonsView];
    v6 = [v5 leadingButton];
    v7 = [v6 glyphView];
    v8 = [v7 safeValueForKey:@"_controlInstance"];
    v9 = __UIAccessibilityCastAsClass();

    v10 = [v9 descriptor];
    v11 = [v10 displayName];
  }

  else
  {
    v11 = accessibilityLocalizedString(@"quick.action.add");
  }

  return v11;
}

uint64_t __78__PRQuickActionEditingViewControllerAccessibility__accessibilityMarkupButtons__block_invoke_4(uint64_t a1)
{
  objc_copyWeak(&v2, (a1 + 32));
  AXPerformSafeBlock();
  objc_destroyWeak(&v2);
  return 1;
}

void __78__PRQuickActionEditingViewControllerAccessibility__accessibilityMarkupButtons__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _accessibilityHasLeadingAction];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = v4;
  if (v3)
  {
    [v4 _presentWidgetIntentConfigurationForControlWithPosition:1];
  }

  else
  {
    [v4 _leadingActionDidFire];
  }
}

id __78__PRQuickActionEditingViewControllerAccessibility__accessibilityMarkupButtons__block_invoke_6(uint64_t a1)
{
  v11[1] = *MEMORY[0x29EDCA608];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _accessibilityHasLeadingAction];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x29EDC78E0]);
    v5 = accessibilityLocalizedString(@"quick.action.remove");
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 3221225472;
    v9[2] = __78__PRQuickActionEditingViewControllerAccessibility__accessibilityMarkupButtons__block_invoke_7;
    v9[3] = &unk_29F2EBDB8;
    objc_copyWeak(&v10, (a1 + 32));
    v6 = [v4 initWithName:v5 actionHandler:v9];

    v11[0] = v6;
    v7 = [MEMORY[0x29EDB8D80] arrayWithObjects:v11 count:1];

    objc_destroyWeak(&v10);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __78__PRQuickActionEditingViewControllerAccessibility__accessibilityMarkupButtons__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  AXPerformSafeBlock();
  objc_destroyWeak(&v5);

  return 1;
}

void __78__PRQuickActionEditingViewControllerAccessibility__accessibilityMarkupButtons__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleRemoveButtonActionForQuickActionPosition:1];
}

id __78__PRQuickActionEditingViewControllerAccessibility__accessibilityMarkupButtons__block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _axRemoveWidgetLabel:0];

  return v2;
}

id __78__PRQuickActionEditingViewControllerAccessibility__accessibilityMarkupButtons__block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _accessibilityProminentButtonsView];
  v3 = [v2 trailingReticle];
  v4 = [v3 safeValueForKey:@"_reticleView"];
  v5 = [v4 accessibilityHint];

  return v5;
}

id __78__PRQuickActionEditingViewControllerAccessibility__accessibilityMarkupButtons__block_invoke_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _accessibilityHasTrailingAction];

  if (v3)
  {
    objc_opt_class();
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 _accessibilityProminentButtonsView];
    v6 = [v5 trailingButton];
    v7 = [v6 glyphView];
    v8 = [v7 safeValueForKey:@"_controlInstance"];
    v9 = __UIAccessibilityCastAsClass();

    v10 = [v9 descriptor];
    v11 = [v10 displayName];
  }

  else
  {
    v11 = accessibilityLocalizedString(@"quick.action.add");
  }

  return v11;
}

uint64_t __78__PRQuickActionEditingViewControllerAccessibility__accessibilityMarkupButtons__block_invoke_12(uint64_t a1)
{
  objc_copyWeak(&v2, (a1 + 32));
  AXPerformSafeBlock();
  objc_destroyWeak(&v2);
  return 1;
}

void __78__PRQuickActionEditingViewControllerAccessibility__accessibilityMarkupButtons__block_invoke_13(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _accessibilityHasTrailingAction];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = v4;
  if (v3)
  {
    [v4 _presentWidgetIntentConfigurationForControlWithPosition:2];
  }

  else
  {
    [v4 _trailingActionDidFire];
  }
}

id __78__PRQuickActionEditingViewControllerAccessibility__accessibilityMarkupButtons__block_invoke_14(uint64_t a1)
{
  v11[1] = *MEMORY[0x29EDCA608];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _accessibilityHasTrailingAction];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x29EDC78E0]);
    v5 = accessibilityLocalizedString(@"quick.action.remove");
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 3221225472;
    v9[2] = __78__PRQuickActionEditingViewControllerAccessibility__accessibilityMarkupButtons__block_invoke_15;
    v9[3] = &unk_29F2EBDB8;
    objc_copyWeak(&v10, (a1 + 32));
    v6 = [v4 initWithName:v5 actionHandler:v9];

    v11[0] = v6;
    v7 = [MEMORY[0x29EDB8D80] arrayWithObjects:v11 count:1];

    objc_destroyWeak(&v10);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __78__PRQuickActionEditingViewControllerAccessibility__accessibilityMarkupButtons__block_invoke_15(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  AXPerformSafeBlock();
  objc_destroyWeak(&v5);

  return 1;
}

void __78__PRQuickActionEditingViewControllerAccessibility__accessibilityMarkupButtons__block_invoke_16(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleRemoveButtonActionForQuickActionPosition:2];
}

- (id)_accessibilityProminentButtonsView
{
  objc_opt_class();
  v3 = [(PRQuickActionEditingViewControllerAccessibility *)self safeValueForKey:@"prominentButtonsView"];
  v4 = __UIAccessibilityCastAsClass();

  return v4;
}

- (BOOL)_accessibilityHasLeadingAction
{
  v2 = [(PRQuickActionEditingViewControllerAccessibility *)self safeValueForKey:@"leadingControl"];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)_accessibilityHasTrailingAction
{
  v2 = [(PRQuickActionEditingViewControllerAccessibility *)self safeValueForKey:@"trailingControl"];
  v3 = v2 != 0;

  return v3;
}

- (id)_axRemoveWidgetLabel:(BOOL)label
{
  if (!label)
  {
    if ([(PRQuickActionEditingViewControllerAccessibility *)self _accessibilityHasTrailingAction])
    {
      objc_opt_class();
      _accessibilityProminentButtonsView = [(PRQuickActionEditingViewControllerAccessibility *)self _accessibilityProminentButtonsView];
      trailingButton = [_accessibilityProminentButtonsView trailingButton];
      glyphView = [trailingButton glyphView];
      v12 = [glyphView safeValueForKey:@"_controlInstance"];
      v8 = __UIAccessibilityCastAsClass();

      goto LABEL_6;
    }

LABEL_7:
    displayName = 0;
    goto LABEL_8;
  }

  if (![(PRQuickActionEditingViewControllerAccessibility *)self _accessibilityHasLeadingAction])
  {
    goto LABEL_7;
  }

  objc_opt_class();
  _accessibilityProminentButtonsView2 = [(PRQuickActionEditingViewControllerAccessibility *)self _accessibilityProminentButtonsView];
  leadingButton = [_accessibilityProminentButtonsView2 leadingButton];
  glyphView2 = [leadingButton glyphView];
  v7 = [glyphView2 safeValueForKey:@"_controlInstance"];
  v8 = __UIAccessibilityCastAsClass();

LABEL_6:
  descriptor = [v8 descriptor];
  displayName = [descriptor displayName];

LABEL_8:
  if (![displayName length] || (accessibilityLocalizedString(@"editing.minus.close.box.button.label"), v15 = objc_claimAutoreleasedReturnValue(), AXCFormattedString(), v16 = objc_claimAutoreleasedReturnValue(), v15, !v16))
  {
    v16 = accessibilityLocalizedString(@"quick.action.remove");
  }

  return v16;
}

@end