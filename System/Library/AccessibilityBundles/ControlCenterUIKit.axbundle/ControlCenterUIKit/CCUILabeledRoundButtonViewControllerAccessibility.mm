@interface CCUILabeledRoundButtonViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGRect)_accessibilityControlCenterButtonFrame;
- (id)_accessibilityControlCenterButtonLabel;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CCUILabeledRoundButtonViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CCUILabeledRoundButtonViewController" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CCUILabeledRoundButtonViewController" hasInstanceMethod:@"buttonContainer" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CCUILabeledRoundButton" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CCUILabeledRoundButtonViewController" hasInstanceVariable:@"_labelsVisible" withType:"B"];
  [validationsCopy validateClass:@"CCUILabeledRoundButtonViewController" hasInstanceMethod:@"button" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CCUIRoundButtonAccessibility" hasInstanceMethod:@"_accesibilityRawTraits" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"CCUILabeledRoundButtonViewController" isKindOfClass:@"UIViewController"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  if (([(CCUILabeledRoundButtonViewControllerAccessibility *)self _accessibilityBoolValueForKey:@"IsInAXLoadAX"]& 1) == 0)
  {
    [(CCUILabeledRoundButtonViewControllerAccessibility *)self _accessibilitySetBoolValue:1 forKey:@"IsInAXLoadAX"];
    v27.receiver = self;
    v27.super_class = CCUILabeledRoundButtonViewControllerAccessibility;
    [(CCUILabeledRoundButtonViewControllerAccessibility *)&v27 _accessibilityLoadAccessibilityInformation];
    objc_initWeak(&location, self);
    LOBYTE(from) = 0;
    objc_opt_class();
    v3 = [(CCUILabeledRoundButtonViewControllerAccessibility *)self safeValueForKey:@"button"];
    v4 = __UIAccessibilityCastAsClass();

    objc_initWeak(&from, v4);
    v23[0] = MEMORY[0x29EDCA5F8];
    v23[1] = 3221225472;
    v23[2] = __95__CCUILabeledRoundButtonViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
    v23[3] = &unk_29F2B7298;
    objc_copyWeak(&v24, &location);
    [v4 _setAccessibilityLabelBlock:v23];
    v20[0] = MEMORY[0x29EDCA5F8];
    v20[1] = 3221225472;
    v20[2] = __95__CCUILabeledRoundButtonViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
    v20[3] = &unk_29F2B72C0;
    objc_copyWeak(&v21, &location);
    objc_copyWeak(&v22, &from);
    [v4 _setAccessibilityHintBlock:v20];
    v17[0] = MEMORY[0x29EDCA5F8];
    v17[1] = 3221225472;
    v17[2] = __95__CCUILabeledRoundButtonViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
    v17[3] = &unk_29F2B72C0;
    objc_copyWeak(&v18, &location);
    objc_copyWeak(&v19, &from);
    [v4 _setAccessibilityValueBlock:v17];
    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 3221225472;
    v14[2] = __95__CCUILabeledRoundButtonViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4;
    v14[3] = &unk_29F2B72E8;
    objc_copyWeak(&v15, &from);
    objc_copyWeak(&v16, &location);
    [v4 _setAccessibilityTraitsBlock:v14];
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = __95__CCUILabeledRoundButtonViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_5;
    v12[3] = &unk_29F2B7298;
    objc_copyWeak(&v13, &location);
    [v4 _setAccessibilityIdentifierBlock:v12];
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 3221225472;
    v10[2] = __95__CCUILabeledRoundButtonViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_6;
    v10[3] = &unk_29F2B7310;
    objc_copyWeak(&v11, &location);
    [v4 _setAccessibilityFrameBlock:v10];
    v5 = MEMORY[0x29EDCA5F8];
    v6 = 3221225472;
    v7 = __95__CCUILabeledRoundButtonViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_7;
    v8 = &unk_29F2B7338;
    objc_copyWeak(&v9, &location);
    [v4 _setAccessibilityPathBlock:&v5];
    [(CCUILabeledRoundButtonViewControllerAccessibility *)self _accessibilitySetBoolValue:0 forKey:@"IsInAXLoadAX", v5, v6, v7, v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&from);

    objc_destroyWeak(&location);
  }
}

id __95__CCUILabeledRoundButtonViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _accessibilityControlCenterButtonIsToggle];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = v4;
  if (v3)
  {
    v6 = [v4 _accessibilityControlCenterButtonLabel];
  }

  else
  {
    v7 = [v4 safeValueForKey:@"buttonContainer"];
    v6 = [v7 safeStringForKey:@"title"];
  }

  return v6;
}

id __95__CCUILabeledRoundButtonViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _accessibilityControlCenterButtonHint];

  v4 = objc_loadWeakRetained((a1 + 32));
  if ([v4 _accessibilityControlCenterButtonWillExpand])
  {
  }

  else
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    ShouldIncludeOpenModuleAction = UIAccessibilityControlCenterElementShouldIncludeOpenModuleAction();

    if (!ShouldIncludeOpenModuleAction)
    {
      goto LABEL_5;
    }
  }

  v9 = UIAccessibilityControlCenterModuleExpandPlatterHint();
  v7 = __UIAXStringForVariables();

  v3 = v7;
LABEL_5:

  return v3;
}

__CFString *__95__CCUILabeledRoundButtonViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _accessibilityControlCenterButtonIsToggle];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    v5 = [v4 isSelected];
    v6 = @"0";
    if (v5)
    {
      v6 = @"1";
    }

    v7 = v6;
    goto LABEL_7;
  }

  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 safeBoolForKey:@"_labelsVisible"];

  if (v9)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v7 = [v4 safeStringForKey:@"subtitle"];
LABEL_7:
    v10 = v7;

    goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

uint64_t __95__CCUILabeledRoundButtonViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained storedAccessibilityTraits];

  if (v3)
  {
    v4 = [v3 unsignedLongLongValue];
  }

  else
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    v6 = [v5 safeValueForKey:@"_accesibilityRawTraits"];
    v4 = [v6 longLongValue];

    v7 = objc_loadWeakRetained((a1 + 40));
    LODWORD(v6) = [v7 _accessibilityControlCenterButtonIsToggle];

    if (v6)
    {
      v4 = v4 & ~*MEMORY[0x29EDC7FC0] | *MEMORY[0x29EDC7FE8];
    }

    else
    {
      v8 = objc_loadWeakRetained((a1 + 40));
      v9 = [v8 safeBoolForKey:@"_labelsVisible"];

      if (v9)
      {
        v4 &= ~*MEMORY[0x29EDC7FC0];
      }
    }
  }

  return v4;
}

id __95__CCUILabeledRoundButtonViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _accessibilityControlCenterButtonIdentifier];

  return v2;
}

double __95__CCUILabeledRoundButtonViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accessibilityControlCenterButtonFrame];
  v3 = v2;

  return v3;
}

id __95__CCUILabeledRoundButtonViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _accessibilityControlCenterButtonPath];

  return v2;
}

- (CGRect)_accessibilityControlCenterButtonFrame
{
  objc_opt_class();
  v3 = [(CCUILabeledRoundButtonViewControllerAccessibility *)self safeValueForKey:@"button"];
  v4 = __UIAccessibilityCastAsClass();

  [(UIView *)v4 bounds];
  v14 = UIAccessibilityConvertFrameToScreenCoordinates(v13, v4);
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;

  v9 = x;
  v10 = y;
  v11 = width;
  v12 = height;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (id)_accessibilityControlCenterButtonLabel
{
  if (objc_opt_respondsToSelector())
  {
    accessibilityLabel = [(CCUILabeledRoundButtonViewControllerAccessibility *)self _accessibilityStringForLabelKeyValues:@"title, subtitle"];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CCUILabeledRoundButtonViewControllerAccessibility;
    accessibilityLabel = [(CCUILabeledRoundButtonViewControllerAccessibility *)&v5 accessibilityLabel];
  }

  return accessibilityLabel;
}

@end