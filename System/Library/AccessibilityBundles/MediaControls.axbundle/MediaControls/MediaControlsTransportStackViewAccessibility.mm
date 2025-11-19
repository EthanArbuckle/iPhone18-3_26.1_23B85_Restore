@interface MediaControlsTransportStackViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (MediaControlsTransportStackViewAccessibility)initWithFrame:(CGRect)a3;
- (id)_accessibilityDescriptionForCommandRequest:(id)a3;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_updateButtonVisualStyling:(id)a3;
- (void)setResponse:(id)a3;
- (void)setStyle:(int64_t)a3;
@end

@implementation MediaControlsTransportStackViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MediaControlsTransportStackView" hasInstanceMethod:@"_updateButtonVisualStyling:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"MediaControlsTransportStackView" hasInstanceMethod:@"leftButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MediaControlsTransportStackView" hasInstanceMethod:@"middleButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MediaControlsTransportStackView" hasInstanceMethod:@"rightButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MediaControlsTransportButton" hasInstanceMethod:@"touchUpInsideCommandRequest" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MediaControlsTransportStackView" hasInstanceMethod:@"tvRemoteButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MediaControlsTransportStackView" hasInstanceMethod:@"languageOptionsButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MediaControlsTransportStackView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v3 validateClass:@"MediaControlsTransportStackView" hasInstanceMethod:@"setResponse:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"MediaControlsTransportStackView" hasInstanceMethod:@"setStyle:" withFullSignature:{"v", "q", 0}];
  [v3 validateClass:@"MediaControlsTransportStackView" hasInstanceMethod:@"style" withFullSignature:{"q", 0}];
  [v3 validateClass:@"MPCPlayerCommandRequest"];
  [v3 validateClass:@"MPCPlayerCommandRequest" hasInstanceMethod:@"options" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MPCPlayerCommandRequest" hasInstanceMethod:@"command" withFullSignature:{"I", 0}];
}

- (id)_accessibilityDescriptionForCommandRequest:(id)a3
{
  v3 = a3;
  if (_accessibilityDescriptionForCommandRequest__onceToken != -1)
  {
    [MediaControlsTransportStackViewAccessibility _accessibilityDescriptionForCommandRequest:];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = 0;
    goto LABEL_30;
  }

  v4 = [v3 safeUnsignedIntegerForKey:@"command"];
  objc_opt_class();
  v5 = [v3 safeValueForKey:@"options"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = 0;
  if (v4 > 3)
  {
    if ((v4 - 17) < 2)
    {
      v9 = [v6 objectForKey:*MEMORY[0x29EDC5930]];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v9 doubleValue], v10 > 0.0))
      {
        v12 = v10;
        v13 = MEMORY[0x29EDBA0F8];
        if (v4 == 18)
        {
          v14 = @"rewind.button.label.with.seconds";
        }

        else
        {
          v14 = @"fast.forward.button.label.with.seconds";
        }

        v15 = accessibilityLocalizedString(v14);
        v7 = [v13 stringWithFormat:v15, v12];
      }

      else
      {
        if (v4 == 18)
        {
          v11 = @"rewind.button.label";
        }

        else
        {
          v11 = @"fast.forward.button.label";
        }

        v7 = accessibilityLocalizedString(v11);
      }

      goto LABEL_29;
    }

    if (v4 == 4)
    {
      v8 = @"next.track.button.label";
      goto LABEL_23;
    }

    if (v4 == 5)
    {
      v8 = @"previous.track.button.label";
      goto LABEL_23;
    }
  }

  else
  {
    switch(v4)
    {
      case 0:
        v8 = @"play.button.label";
        goto LABEL_23;
      case 1:
        v8 = @"pause.button.label";
        goto LABEL_23;
      case 3:
        v8 = @"stop.button.label";
LABEL_23:
        v7 = accessibilityLocalizedString(v8);
        break;
    }
  }

LABEL_29:

LABEL_30:

  return v7;
}

Class __91__MediaControlsTransportStackViewAccessibility__accessibilityDescriptionForCommandRequest___block_invoke()
{
  result = NSClassFromString(&cfstr_Mpcplayercomma.isa);
  _accessibilityDescriptionForCommandRequest__MPCPlayerCommandRequestClass = result;
  return result;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v2 = self;
  v33.receiver = self;
  v33.super_class = MediaControlsTransportStackViewAccessibility;
  [(MediaControlsTransportStackViewAccessibility *)&v33 _accessibilityLoadAccessibilityInformation];
  v3 = [(MediaControlsTransportStackViewAccessibility *)v2 safeValueForKey:@"leftButton"];
  v4 = [(MediaControlsTransportStackViewAccessibility *)v2 safeValueForKey:@"middleButton"];
  v5 = [(MediaControlsTransportStackViewAccessibility *)v2 safeValueForKey:@"rightButton"];
  v6 = [(MediaControlsTransportStackViewAccessibility *)v2 safeValueForKey:@"tvRemoteButton"];
  v7 = [(MediaControlsTransportStackViewAccessibility *)v2 safeValueForKey:@"languageOptionsButton"];
  [v3 accessibilitySetIdentification:@"rewind"];
  [v5 accessibilitySetIdentification:@"fastforward"];
  objc_initWeak(&location, v2);
  objc_initWeak(&from, v4);
  v28[0] = MEMORY[0x29EDCA5F8];
  v28[1] = 3221225472;
  v28[2] = __90__MediaControlsTransportStackViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v28[3] = &unk_29F2CF388;
  objc_copyWeak(&v29, &from);
  objc_copyWeak(&v30, &location);
  [v4 _setAccessibilityLabelBlock:v28];
  objc_initWeak(&v27, v3);
  v24[0] = MEMORY[0x29EDCA5F8];
  v24[1] = 3221225472;
  v24[2] = __90__MediaControlsTransportStackViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v24[3] = &unk_29F2CF388;
  objc_copyWeak(&v25, &v27);
  objc_copyWeak(&v26, &location);
  [v3 _setAccessibilityLabelBlock:v24];
  objc_initWeak(&v23, v5);
  v20[0] = MEMORY[0x29EDCA5F8];
  v20[1] = 3221225472;
  v20[2] = __90__MediaControlsTransportStackViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
  v20[3] = &unk_29F2CF388;
  objc_copyWeak(&v21, &v23);
  objc_copyWeak(&v22, &location);
  [v5 _setAccessibilityLabelBlock:v20];
  v8 = accessibilityLocalizedString(@"tv.remote.button.label");
  [v6 setAccessibilityLabel:v8];

  v9 = accessibilityLocalizedString(@"language.options.button.label");
  [v7 setAccessibilityLabel:v9];

  LOBYTE(v2) = [(MediaControlsTransportStackViewAccessibility *)v2 safeIntegerForKey:@"style"]== 0;
  v18[0] = MEMORY[0x29EDCA5F8];
  v18[1] = 3221225472;
  v18[2] = __90__MediaControlsTransportStackViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4;
  v18[3] = &__block_descriptor_33_e15___NSString_8__0l;
  v19 = v2;
  [v3 _setAccessibilityHintBlock:v18];
  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 3221225472;
  v16[2] = __90__MediaControlsTransportStackViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_5;
  v16[3] = &__block_descriptor_33_e15___NSString_8__0l;
  v17 = v2;
  [v5 _setAccessibilityHintBlock:v16];
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v14[2] = __90__MediaControlsTransportStackViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_6;
  v14[3] = &__block_descriptor_33_e15___NSString_8__0l;
  v15 = v2;
  [v4 _setAccessibilityHintBlock:v14];
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __90__MediaControlsTransportStackViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_7;
  v12[3] = &__block_descriptor_33_e15___NSString_8__0l;
  v13 = v2;
  [v6 _setAccessibilityHintBlock:v12];
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __90__MediaControlsTransportStackViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_8;
  v10[3] = &__block_descriptor_33_e15___NSString_8__0l;
  v11 = v2;
  [v7 _setAccessibilityHintBlock:v10];
  objc_destroyWeak(&v22);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

id __90__MediaControlsTransportStackViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeValueForKey:@"touchUpInsideCommandRequest"];

  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = [v4 _accessibilityDescriptionForCommandRequest:v3];

  return v5;
}

id __90__MediaControlsTransportStackViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeValueForKey:@"touchUpInsideCommandRequest"];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    v5 = [v4 _accessibilityDescriptionForCommandRequest:v3];
  }

  else
  {
    v5 = accessibilityLocalizedString(@"previous.track.button.label");
  }

  return v5;
}

id __90__MediaControlsTransportStackViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeValueForKey:@"touchUpInsideCommandRequest"];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    v5 = [v4 _accessibilityDescriptionForCommandRequest:v3];
  }

  else
  {
    v5 = accessibilityLocalizedString(@"next.track.button.label");
  }

  return v5;
}

id __90__MediaControlsTransportStackViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = 0;
  }

  else
  {
    v2 = UIAccessibilityControlCenterModuleExpandPlatterHint();
  }

  return v2;
}

id __90__MediaControlsTransportStackViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_5(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = 0;
  }

  else
  {
    v2 = UIAccessibilityControlCenterModuleExpandPlatterHint();
  }

  return v2;
}

id __90__MediaControlsTransportStackViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_6(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = 0;
  }

  else
  {
    v2 = UIAccessibilityControlCenterModuleExpandPlatterHint();
  }

  return v2;
}

id __90__MediaControlsTransportStackViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_7(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = 0;
  }

  else
  {
    v2 = UIAccessibilityControlCenterModuleExpandPlatterHint();
  }

  return v2;
}

id __90__MediaControlsTransportStackViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = 0;
  }

  else
  {
    v2 = UIAccessibilityControlCenterModuleExpandPlatterHint();
  }

  return v2;
}

- (id)accessibilityElements
{
  v3 = [(MediaControlsTransportStackViewAccessibility *)self safeArrayForKey:@"subviews"];
  v4 = [v3 mutableCopy];

  v5 = [(MediaControlsTransportStackViewAccessibility *)self safeValueForKey:@"leftButton"];
  v6 = [(MediaControlsTransportStackViewAccessibility *)self safeValueForKey:@"middleButton"];
  v7 = [(MediaControlsTransportStackViewAccessibility *)self safeValueForKey:@"rightButton"];
  v8 = [v4 indexOfObject:v5];
  v9 = [v4 indexOfObject:v6];
  v10 = [v4 indexOfObject:v7];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL && v9 != 0x7FFFFFFFFFFFFFFFLL && v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v8 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v8;
    }

    if (v11 >= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    [v4 exchangeObjectAtIndex:v12 withObjectAtIndex:v8];
  }

  v13 = [v4 indexOfObject:v5];
  v14 = [v4 indexOfObject:v6];
  v15 = [v4 indexOfObject:v7];
  if (v13 != 0x7FFFFFFFFFFFFFFFLL && v14 != 0x7FFFFFFFFFFFFFFFLL && v15 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v13 <= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v13;
    }

    if (v16 <= v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v16;
    }

    [v4 exchangeObjectAtIndex:v17 withObjectAtIndex:v15];
  }

  return v4;
}

- (void)_updateButtonVisualStyling:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MediaControlsTransportStackViewAccessibility;
  [(MediaControlsTransportStackViewAccessibility *)&v9 _updateButtonVisualStyling:v4];
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  v6 = [v5 imageForState:0];

  v7 = [v6 _accessibilityValueForKey:@"AXInterval"];
  v8 = [v7 integerValue];

  [v4 _accessibilitySetIntegerValue:v8 forKey:@"AXInterval"];
}

- (MediaControlsTransportStackViewAccessibility)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = MediaControlsTransportStackViewAccessibility;
  v3 = [(MediaControlsTransportStackViewAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(MediaControlsTransportStackViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

- (void)setResponse:(id)a3
{
  v4.receiver = self;
  v4.super_class = MediaControlsTransportStackViewAccessibility;
  [(MediaControlsTransportStackViewAccessibility *)&v4 setResponse:a3];
  [(MediaControlsTransportStackViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)setStyle:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = MediaControlsTransportStackViewAccessibility;
  [(MediaControlsTransportStackViewAccessibility *)&v4 setStyle:a3];
  [(MediaControlsTransportStackViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end