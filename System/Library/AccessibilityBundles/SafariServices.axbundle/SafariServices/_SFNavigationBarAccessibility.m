@interface _SFNavigationBarAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (_SFNavigationBarAccessibility)initWithFrame:(CGRect)a3;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (int64_t)_accessibilitySortPriority;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axUpdateCancelButton;
- (void)_axUpdateTextFields;
- (void)_axUpdateURLValue;
- (void)_compressedBarTapped;
- (void)_formatToggleButtonTapped:(id)a3;
- (void)_updateSecurityWarningsVisibility;
- (void)_updateText;
- (void)fluidProgressViewDidShowProgress:(id)a3;
- (void)layoutSubviews;
- (void)setExpanded:(BOOL)a3 textFieldSelectionRange:(_NSRange)a4;
@end

@implementation _SFNavigationBarAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_SFDimmingButton" isKindOfClass:@"UIButton"];
  [v3 validateClass:@"_SFNavigationBar" isKindOfClass:@"UIView"];
  [v3 validateClass:@"_SFNavigationBar" hasInstanceVariable:@"_reloadButton" withType:"_SFDimmingButton"];
  [v3 validateClass:@"_SFNavigationBar" hasInstanceVariable:@"_stopButton" withType:"_SFDimmingButton"];
  [v3 validateClass:@"_SFNavigationBar" hasInstanceVariable:@"_formatToggleButton" withType:"SFNavigationBarToggleButton"];
  [v3 validateClass:@"_SFNavigationBar" hasInstanceVariable:@"_URLOutline" withType:"_SFNavigationBarURLButton"];
  [v3 validateClass:@"_SFNavigationBar" hasInstanceVariable:@"_compressedBarButton" withType:"UIButton"];
  [v3 validateClass:@"_SFNavigationBar" hasInstanceVariable:@"_cancelButton" withType:"UIButton"];
  [v3 validateClass:@"_SFNavigationBar" hasInstanceVariable:@"_item" withType:"SFNavigationBarItem"];
  [v3 validateClass:@"_SFNavigationBar" hasInstanceVariable:@"_securityAnnotationLabel" withType:"UILabel"];
  [v3 validateClass:@"_SFNavigationBar" hasInstanceMethod:@"isExpanded" withFullSignature:{"B", 0}];
  [v3 validateClass:@"_SFNavigationBar" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateProtocol:@"_SFNavigationBarDelegate" hasRequiredInstanceMethod:@"navigationBarReaderButtonWasTapped:"];
  [v3 validateClass:@"_SFNavigationBar" hasInstanceMethod:@"_updateText" withFullSignature:{"v", 0}];
  [v3 validateClass:@"_SFNavigationBar" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [v3 validateClass:@"_SFNavigationBar" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v3 validateClass:@"_SFNavigationBar" hasInstanceVariable:@"_item" withType:"SFNavigationBarItem"];
  [v3 validateClass:@"SFNavigationBarItem" hasInstanceMethod:@"showsReaderButton" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SFNavigationBarItem" hasInstanceMethod:@"showsSecurityAnnotation" withFullSignature:{"B", 0}];
  [v3 validateClass:@"_SFNavigationBar" hasInstanceMethod:@"_formatToggleButtonTapped:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"_SFNavigationBar" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [v3 validateClass:@"_SFNavigationBar" hasInstanceMethod:@"_compressedBarTapped" withFullSignature:{"v", 0}];
  [v3 validateClass:@"_SFNavigationBar" hasInstanceMethod:@"setExpanded:textFieldSelectionRange:" withFullSignature:{"v", "B", "{_NSRange=QQ}", 0}];
  [v3 validateClass:@"_SFNavigationBar" hasInstanceMethod:@"fluidProgressViewDidShowProgress:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"_SFNavigationBar" hasInstanceVariable:@"_inputMode" withType:"Q"];
  [v3 validateClass:@"_SFNavigationBar" hasInstanceMethod:@"_updateSecurityWarningsVisibility" withFullSignature:{"v", 0}];
  [v3 validateClass:@"_SFBrowserContentViewController" hasInstanceVariable:@"_showingReader" withType:"B"];
  [v3 validateClass:@"_SFBrowserContentViewController" hasInstanceMethod:@"webViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SFReaderEnabledWebViewController" hasInstanceMethod:@"readerController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_SFReaderController" hasInstanceMethod:@"isReaderAvailable" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SFNavigationBarItem"];
  [v3 validateClass:@"SFNavigationBarItem" hasInstanceMethod:@"showsSecurityAnnotation" withFullSignature:{"B", 0}];
  if (AXProcessIsSafari())
  {
    [v3 validateClass:@"BrowserController" hasInstanceMethod:@"isShowingReader" withFullSignature:{"B", 0}];
    [v3 validateClass:@"BrowserController" hasInstanceVariable:@"_tabController" withType:"TabController"];
    [v3 validateClass:@"TabController" hasInstanceMethod:@"activeTabDocument" withFullSignature:{"@", 0}];
    [v3 validateClass:@"TabDocument" hasInstanceMethod:@"readerContext" withFullSignature:{"@", 0}];
    [v3 validateClass:@"TabDocument" hasInstanceMethod:@"prepareToUseReader" withFullSignature:{"v", 0}];
  }
}

- (int64_t)_accessibilitySortPriority
{
  if (AXDeviceIsPhoneIdiom())
  {
    return 1000;
  }

  v4.receiver = self;
  v4.super_class = _SFNavigationBarAccessibility;
  return [(_SFNavigationBarAccessibility *)&v4 _accessibilitySortPriority];
}

- (void)_formatToggleButtonTapped:(id)a3
{
  v3.receiver = self;
  v3.super_class = _SFNavigationBarAccessibility;
  [(_SFNavigationBarAccessibility *)&v3 _formatToggleButtonTapped:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

- (void)_updateSecurityWarningsVisibility
{
  v7.receiver = self;
  v7.super_class = _SFNavigationBarAccessibility;
  [(_SFNavigationBarAccessibility *)&v7 _updateSecurityWarningsVisibility];
  [(_SFNavigationBarAccessibility *)self _axUpdateURLValue];
  v3 = [(_SFNavigationBarAccessibility *)self safeValueForKey:@"_item"];
  if ([v3 safeBoolForKey:@"showsSecurityAnnotation"])
  {
    v4 = MEMORY[0x29EDBD7E8];
    v5 = accessibilitySafariServicesLocalizedString(@"website.not.secure");
    v6 = [v4 axAttributedStringWithString:v5];

    [v6 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD978]];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v6);
  }
}

- (void)fluidProgressViewDidShowProgress:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = _SFNavigationBarAccessibility;
  [(_SFNavigationBarAccessibility *)&v5 fluidProgressViewDidShowProgress:v4];
  if ([v4 _accessibilityBoolValueForKey:@"StartedFluidProgress"])
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC75E8], &unk_2A22C82F0);
    [v4 _accessibilitySetBoolValue:0 forKey:@"StartedFluidProgress"];
  }
}

- (void)setExpanded:(BOOL)a3 textFieldSelectionRange:(_NSRange)a4
{
  v5.receiver = self;
  v5.super_class = _SFNavigationBarAccessibility;
  [(_SFNavigationBarAccessibility *)&v5 setExpanded:a3 textFieldSelectionRange:a4.location, a4.length];
  [(_SFNavigationBarAccessibility *)self _axUpdateCancelButton];
  [(_SFNavigationBarAccessibility *)self _axUpdateTextFields];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v24.receiver = self;
  v24.super_class = _SFNavigationBarAccessibility;
  [(_SFNavigationBarAccessibility *)&v24 _accessibilityLoadAccessibilityInformation];
  v3 = [(_SFNavigationBarAccessibility *)self safeValueForKey:@"_reloadButton"];
  v4 = accessibilitySafariServicesLocalizedString(@"button.reload");
  [v3 setAccessibilityLabel:v4];

  v5 = [(_SFNavigationBarAccessibility *)self safeValueForKey:@"_reloadButton"];
  [v5 setAccessibilityIdentifier:@"ReloadButton"];

  v6 = [(_SFNavigationBarAccessibility *)self safeValueForKey:@"_stopButton"];
  v7 = accessibilitySafariServicesLocalizedString(@"button.stop");
  [v6 setAccessibilityLabel:v7];

  v8 = [(_SFNavigationBarAccessibility *)self safeValueForKey:@"_stopButton"];
  [v8 setAccessibilityIdentifier:@"StopButton"];

  LOBYTE(location) = 0;
  objc_opt_class();
  v9 = [(_SFNavigationBarAccessibility *)self safeUIViewForKey:@"_formatToggleButton"];
  v10 = __UIAccessibilityCastAsClass();

  v11 = accessibilitySafariServicesLocalizedString(@"format.options.button");
  [v10 setAccessibilityLabel:v11];

  [v10 _setAccessibilityIsNotFirstElement:1];
  v12 = accessibilitySafariServicesLocalizedString(@"format.options.button.hint");
  [v10 setAccessibilityHint:v12];

  objc_initWeak(&location, self);
  v21[0] = MEMORY[0x29EDCA5F8];
  v21[1] = 3221225472;
  v21[2] = __75___SFNavigationBarAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v21[3] = &unk_29F2F2A28;
  objc_copyWeak(&v22, &location);
  v21[4] = self;
  [v10 _setAccessibilityCustomActionsBlock:v21];
  v13 = [(_SFNavigationBarAccessibility *)self safeValueForKey:@"_URLLabel"];
  [v13 setIsAccessibilityElement:0];

  v14 = [(_SFNavigationBarAccessibility *)self safeValueForKey:@"_URLOutline"];
  [v14 setIsAccessibilityElement:1];

  v15 = [(_SFNavigationBarAccessibility *)self safeValueForKey:@"_URLOutline"];
  v16 = accessibilitySafariServicesLocalizedString(@"address.text");
  [v15 setAccessibilityLabel:v16];

  v17 = [(_SFNavigationBarAccessibility *)self safeValueForKey:@"_URLOutline"];
  [v17 setAccessibilityIdentifier:@"URL"];

  [(_SFNavigationBarAccessibility *)self _axUpdateURLValue];
  [(_SFNavigationBarAccessibility *)self _axUpdateCancelButton];
  [(_SFNavigationBarAccessibility *)self _axUpdateTextFields];
  if ([(_SFNavigationBarAccessibility *)self safeUnsignedIntegerForKey:@"_inputMode"]!= 1)
  {
    if (AXDeviceIsPhoneIdiom())
    {
      v18 = [(_SFNavigationBarAccessibility *)self safeValueForKey:@"_compressedBarButton"];

      v19 = [(_SFNavigationBarAccessibility *)self safeValueForKey:@"_URLOutline"];
      if (v18)
      {
        accessibilitySafariServicesLocalizedString(@"addressbar.minimized.hint");
      }

      else
      {
        accessibilitySafariServicesLocalizedString(@"addressbar.hint");
      }
      v20 = ;
      [v19 setAccessibilityHint:v20];
    }

    else
    {
      v19 = [(_SFNavigationBarAccessibility *)self safeValueForKey:@"_URLOutline"];
      v20 = accessibilitySafariServicesLocalizedString(@"addressbar.hint");
      [v19 setAccessibilityHint:v20];
    }
  }

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)_axUpdateCancelButton
{
  v3 = [(_SFNavigationBarAccessibility *)self safeBoolForKey:@"isExpanded"];
  v4 = [(_SFNavigationBarAccessibility *)self safeValueForKey:@"_cancelButton"];
  [v4 setAccessibilityElementsHidden:v3 ^ 1u];
}

- (void)_axUpdateTextFields
{
  v3 = [(_SFNavigationBarAccessibility *)self safeBoolForKey:@"isExpanded"];
  v4 = [(_SFNavigationBarAccessibility *)self safeValueForKey:@"_URLOutline"];
  [v4 setIsAccessibilityElement:v3 ^ 1];

  v5 = [(_SFNavigationBarAccessibility *)self safeValueForKey:@"_textField"];
  [v5 setIsAccessibilityElement:v3];
}

- (void)_axUpdateURLValue
{
  objc_initWeak(&location, self);
  v3 = [(_SFNavigationBarAccessibility *)self safeUIViewForKey:@"_URLOutline"];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __50___SFNavigationBarAccessibility__axUpdateURLValue__block_invoke;
  v4[3] = &unk_29F2F2A50;
  objc_copyWeak(&v5, &location);
  [v3 _setAccessibilityValueBlock:v4];
  objc_destroyWeak(&v5);

  objc_destroyWeak(&location);
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  objc_opt_class();
  v8 = [(_SFNavigationBarAccessibility *)self safeValueForKey:@"_reloadButton"];
  v9 = __UIAccessibilityCastAsClass();

  v41 = 0;
  objc_opt_class();
  v10 = __UIAccessibilityCastAsClass();
  [v10 convertPoint:v9 toView:{x, y}];
  v12 = v11;
  v14 = v13;

  if ([v9 pointInside:v7 withEvent:{v12, v14}] && objc_msgSend(v9, "_accessibilityViewIsVisible"))
  {
    v15 = v9;
    goto LABEL_22;
  }

  objc_opt_class();
  v16 = [(_SFNavigationBarAccessibility *)self safeValueForKey:@"_stopButton"];
  v17 = __UIAccessibilityCastAsClass();

  v41 = 0;
  objc_opt_class();
  v18 = __UIAccessibilityCastAsClass();
  [v18 convertPoint:v17 toView:{x, y}];
  v20 = v19;
  v22 = v21;

  if (![v17 pointInside:v7 withEvent:{v20, v22}] || !objc_msgSend(v17, "_accessibilityViewIsVisible"))
  {
    v23 = [(_SFNavigationBarAccessibility *)self safeValueForKey:@"_textField"];
    v41 = 0;
    objc_opt_class();
    v24 = __UIAccessibilityCastAsClass();
    [v24 convertPoint:v23 toView:{x, y}];
    v26 = v25;
    v28 = v27;

    if ([v23 pointInside:v7 withEvent:{v26, v28}])
    {
      v29 = [v23 _accessibilityHitTest:v7 withEvent:{v26, v28}];
      v30 = v29;
      if (v29 && [v29 isAccessibilityElement])
      {
        v30 = v30;
        v15 = v30;
LABEL_20:

        goto LABEL_21;
      }
    }

    else
    {
      v30 = 0;
    }

    v31 = [(_SFNavigationBarAccessibility *)self safeValueForKey:@"_URLOutline"];
    v41 = 0;
    objc_opt_class();
    v32 = __UIAccessibilityCastAsClass();
    [v32 convertPoint:v31 toView:{x, y}];
    v34 = v33;
    v36 = v35;

    if ([v31 pointInside:v7 withEvent:{v34, v36}])
    {
      v37 = [v31 _accessibilityHitTest:v7 withEvent:{v34, v36}];

      if (v37)
      {
        if ([v37 isAccessibilityElement])
        {
          v38 = v37;
          v30 = v38;
LABEL_19:
          v15 = v38;

          goto LABEL_20;
        }

        v30 = v37;
      }

      else
      {
        v30 = 0;
      }
    }

    v40.receiver = self;
    v40.super_class = _SFNavigationBarAccessibility;
    v38 = [(_SFNavigationBarAccessibility *)&v40 _accessibilityHitTest:v7 withEvent:x, y];
    goto LABEL_19;
  }

  v15 = v17;
LABEL_21:

LABEL_22:

  return v15;
}

- (void)_updateText
{
  v3.receiver = self;
  v3.super_class = _SFNavigationBarAccessibility;
  [(_SFNavigationBarAccessibility *)&v3 _updateText];
  [(_SFNavigationBarAccessibility *)self _axUpdateURLValue];
}

- (void)_compressedBarTapped
{
  v2.receiver = self;
  v2.super_class = _SFNavigationBarAccessibility;
  [(_SFNavigationBarAccessibility *)&v2 _compressedBarTapped];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _SFNavigationBarAccessibility;
  [(_SFNavigationBarAccessibility *)&v3 layoutSubviews];
  [(_SFNavigationBarAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (_SFNavigationBarAccessibility)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = _SFNavigationBarAccessibility;
  v3 = [(_SFNavigationBarAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(_SFNavigationBarAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

@end