@interface CCUIButtonModuleViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGRect)_accessibilityControlCenterButtonFrame;
- (id)_accessibilityControlCenterButtonLabel;
- (id)_accessibilityControlCenterRoundButtonIdentifier;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation CCUIButtonModuleViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CCUIButtonModuleViewController" hasInstanceVariable:@"_buttonModuleView" withType:"CCUIControlTemplateView"];
  [v3 validateClass:@"CCUIButtonModuleViewController" hasInstanceMethod:@"isExpanded" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CCUIButtonModuleViewAccessibility" hasInstanceMethod:@"_accesibilityRawTraits" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"CCUIButtonModuleViewController" hasInstanceMethod:@"buttonView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CCUIButtonModuleViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"CCUIButtonModuleViewController" hasInstanceMethod:@"appearsSelected" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CCUIButtonModuleViewController" hasInstanceMethod:@"selectedValueText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CCUIMenuModuleViewController" isKindOfClass:@"CCUIButtonModuleViewController"];
  if (AXProcessIsSpringBoard())
  {
    [v3 validateProtocol:@"CCUIConnectivityModuleViewProviding" hasRequiredInstanceMethod:@"templateViewForExpandedConnectivityModule"];
  }

  [v3 validateClass:@"CCUIControlTemplateView" hasInstanceMethod:@"customGlyphView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v38.receiver = self;
  v38.super_class = CCUIButtonModuleViewControllerAccessibility;
  [(CCUIButtonModuleViewControllerAccessibility *)&v38 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, self);
  LOBYTE(from) = 0;
  objc_opt_class();
  v3 = [(CCUIButtonModuleViewControllerAccessibility *)self safeValueForKey:@"_buttonModuleView"];
  v4 = __UIAccessibilityCastAsClass();

  objc_initWeak(&from, v4);
  v5 = [v4 accessibilityLabel];
  if (!v5 || ([(CCUIButtonModuleViewControllerAccessibility *)self _accessibilityControlCenterButtonLabel], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v34[0] = MEMORY[0x29EDCA5F8];
    v34[1] = 3221225472;
    v34[2] = __89__CCUIButtonModuleViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
    v34[3] = &unk_29F2B7298;
    objc_copyWeak(&v35, &location);
    [v4 _setAccessibilityLabelBlock:v34];
    objc_destroyWeak(&v35);
  }

  v31[0] = MEMORY[0x29EDCA5F8];
  v31[1] = 3221225472;
  v31[2] = __89__CCUIButtonModuleViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v31[3] = &unk_29F2B72C0;
  objc_copyWeak(&v32, &location);
  objc_copyWeak(&v33, &from);
  [v4 _setAccessibilityHintBlock:v31];
  v28[0] = MEMORY[0x29EDCA5F8];
  v28[1] = 3221225472;
  v28[2] = __89__CCUIButtonModuleViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
  v28[3] = &unk_29F2B72C0;
  objc_copyWeak(&v29, &location);
  objc_copyWeak(&v30, &from);
  [v4 _setAccessibilityValueBlock:v28];
  v25[0] = MEMORY[0x29EDCA5F8];
  v25[1] = 3221225472;
  v25[2] = __89__CCUIButtonModuleViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4;
  v25[3] = &unk_29F2B72E8;
  objc_copyWeak(&v26, &location);
  objc_copyWeak(&v27, &from);
  [v4 _setAccessibilityTraitsBlock:v25];
  v7 = [v4 accessibilityIdentifier];
  if (!v7 || ([(CCUIButtonModuleViewControllerAccessibility *)self _accessibilityControlCenterButtonIdentifier], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    v23[0] = MEMORY[0x29EDCA5F8];
    v23[1] = 3221225472;
    v23[2] = __89__CCUIButtonModuleViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_5;
    v23[3] = &unk_29F2B7298;
    objc_copyWeak(&v24, &location);
    [v4 _setAccessibilityIdentifierBlock:v23];
    objc_destroyWeak(&v24);
  }

  v21[0] = MEMORY[0x29EDCA5F8];
  v21[1] = 3221225472;
  v21[2] = __89__CCUIButtonModuleViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_6;
  v21[3] = &unk_29F2B7310;
  objc_copyWeak(&v22, &location);
  [v4 _setAccessibilityFrameBlock:v21];
  v19[0] = MEMORY[0x29EDCA5F8];
  v19[1] = 3221225472;
  v19[2] = __89__CCUIButtonModuleViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_7;
  v19[3] = &unk_29F2B7338;
  objc_copyWeak(&v20, &location);
  [v4 _setAccessibilityPathBlock:v19];
  if (objc_opt_respondsToSelector())
  {
    v9 = [(CCUIButtonModuleViewControllerAccessibility *)self safeValueForKey:@"templateViewForExpandedConnectivityModule"];
    v10 = [v9 safeValueForKey:@"customGlyphView"];
    v17[0] = MEMORY[0x29EDCA5F8];
    v17[1] = 3221225472;
    v17[2] = __89__CCUIButtonModuleViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_8;
    v17[3] = &unk_29F2B7298;
    objc_copyWeak(&v18, &location);
    [v10 setAccessibilityIdentifierBlock:v17];
    objc_destroyWeak(&v18);
  }

  if (objc_opt_respondsToSelector())
  {
    v11 = [(CCUIButtonModuleViewControllerAccessibility *)self safeValueForKey:@"buttonViewForCollapsedConnectivityModule"];
    [v11 setAccessibilityTraitsBlock:&__block_literal_global_1];
    objc_initWeak(&v16, self);
    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 3221225472;
    v14[2] = __89__CCUIButtonModuleViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_10;
    v14[3] = &unk_29F2B7298;
    objc_copyWeak(&v15, &v16);
    [v11 setAccessibilityLabelBlock:v14];
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = __89__CCUIButtonModuleViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_11;
    v12[3] = &unk_29F2B7298;
    objc_copyWeak(&v13, &v16);
    [v11 setAccessibilityValueBlock:v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v16);
  }

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&v33);
  objc_destroyWeak(&v32);
  objc_destroyWeak(&from);

  objc_destroyWeak(&location);
}

id __89__CCUIButtonModuleViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _accessibilityControlCenterButtonLabel];

  return v2;
}

id __89__CCUIButtonModuleViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _accessibilityControlCenterButtonHint];

  v4 = objc_loadWeakRetained((a1 + 40));
  LODWORD(WeakRetained) = UIAccessibilityControlCenterElementShouldIncludeOpenModuleAction();

  if (WeakRetained)
  {
    v7 = UIAccessibilityControlCenterModuleExpandPlatterHint();
    v5 = __UIAXStringForVariables();

    v3 = v5;
  }

  return v3;
}

__CFString *__89__CCUIButtonModuleViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeBoolForKey:@"isExpanded"];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 _accessibilityControlCenterButtonIsToggle];

  v6 = 0;
  if (v5 && (v3 & 1) == 0)
  {
    v7 = objc_loadWeakRetained((a1 + 40));
    v8 = [v7 isSelected];
    v9 = @"0";
    if (v8)
    {
      v9 = @"1";
    }

    v6 = v9;
  }

  return v6;
}

uint64_t __89__CCUIButtonModuleViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeBoolForKey:@"isExpanded"];

  if (v3)
  {
    return *MEMORY[0x29EDC7F80];
  }

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 safeValueForKey:@"_accesibilityRawTraits"];
  v7 = [v6 longLongValue];

  v8 = objc_loadWeakRetained((a1 + 32));
  LODWORD(v6) = [v8 _accessibilityControlCenterButtonIsToggle];

  if (v6)
  {
    v7 = v7 & ~*MEMORY[0x29EDC7FC0] | *MEMORY[0x29EDC7FE8];
  }

  v9 = objc_loadWeakRetained((a1 + 32));
  v4 = [v9 _accessibilityControlCenterButtonAdditionalTraits] | v7;

  return v4;
}

id __89__CCUIButtonModuleViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _accessibilityControlCenterButtonIdentifier];

  return v2;
}

double __89__CCUIButtonModuleViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accessibilityControlCenterButtonFrame];
  v3 = v2;

  return v3;
}

id __89__CCUIButtonModuleViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _accessibilityControlCenterButtonPath];

  return v2;
}

id __89__CCUIButtonModuleViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _accessibilityControlCenterRoundButtonIdentifier];

  return v2;
}

id __89__CCUIButtonModuleViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _accessibilityControlCenterButtonLabel];

  return v2;
}

id __89__CCUIButtonModuleViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained safeBoolForKey:@"appearsSelected"])
  {
    v3 = @"control.center.module.status.on";
  }

  else
  {
    v3 = @"control.center.module.status.off";
  }

  v4 = accessibilityLocalizedString(v3);

  v5 = objc_loadWeakRetained((a1 + 32));
  MEMORY[0x29C2D2560](@"CCUIMenuModuleViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = objc_loadWeakRetained((a1 + 32));
    v8 = [v7 safeStringForKey:@"selectedValueText"];
  }

  else
  {
    v8 = 0;
  }

  v9 = objc_loadWeakRetained((a1 + 32));
  MEMORY[0x29C2D2560](@"CCUIBluetoothModuleViewController");
  v10 = objc_opt_isKindOfClass();

  if (v10)
  {

    v4 = 0;
  }

  v11 = __UIAXStringForVariables();

  return v11;
}

- (CGRect)_accessibilityControlCenterButtonFrame
{
  objc_opt_class();
  v3 = [(CCUIButtonModuleViewControllerAccessibility *)self safeValueForKey:@"_buttonModuleView"];
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

- (id)_accessibilityControlCenterRoundButtonIdentifier
{
  MEMORY[0x29C2D2560](@"CCUIWiFiModuleViewController", a2);
  if (objc_opt_isKindOfClass())
  {
    return @"wifi-button-round";
  }

  MEMORY[0x29C2D2560](@"CCUIBluetoothModuleViewController");
  if (objc_opt_isKindOfClass())
  {
    return @"bluetooth-button-round";
  }

  MEMORY[0x29C2D2560](@"CCUISatelliteModuleViewController");
  if (objc_opt_isKindOfClass())
  {
    return @"satallite-button-round";
  }

  MEMORY[0x29C2D2560](@"CCUIVPNModuleViewController");
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = AXLogTemp();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(CCUIButtonModuleViewControllerAccessibility *)v3 _accessibilityControlCenterRoundButtonIdentifier];
  }

  return @"vpn-button-round";
}

- (id)_accessibilityControlCenterButtonLabel
{
  v2 = [(CCUIButtonModuleViewControllerAccessibility *)self accessibilityLabel];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    objc_opt_class();
    v5 = __UIAccessibilityCastAsClass();
    v4 = [v5 title];
  }

  return v4;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CCUIButtonModuleViewControllerAccessibility;
  [(CCUIButtonModuleViewControllerAccessibility *)&v3 viewDidLoad];
  [(CCUIButtonModuleViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end