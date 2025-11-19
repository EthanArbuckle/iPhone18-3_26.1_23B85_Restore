@interface SUUIItemOfferButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)accessibilityHint;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation SUUIItemOfferButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SUUIItemOfferButton" hasInstanceMethod:@"confirmationTitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SUUIItemOfferButton" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SUUIItemOfferButton" hasInstanceMethod:@"progress" withFullSignature:{"d", 0}];
  [v3 validateClass:@"SUUIItemOfferButton" hasInstanceMethod:@"isShowingConfirmation" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SUUIItemOfferButton" hasInstanceMethod:@"progressType" withFullSignature:{"q", 0}];
  [v3 validateClass:@"SUUIItemBrowseCellLayout" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SUUIItemOfferButton" hasInstanceVariable:@"_cloudImage" withType:"UIImage"];
  [v3 validateClass:@"SUUIItemOfferButton" hasInstanceMethod:@"buttonDescriptor" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SUUIItemOfferButton" hasInstanceMethod:@"_buttonPropertiesForState:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"SUUIItemOfferButtonProperties" hasInstanceMethod:@"image" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SUUIItemOfferButton" hasInstanceMethod:@"element" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SUUIButtonViewElement" isKindOfClass:@"SUUIViewElement"];
  [v3 validateClass:@"SUUIViewElement" isKindOfClass:@"IKViewElement"];
  [v3 validateClass:@"IKViewElement" hasInstanceMethod:@"parent" withFullSignature:{"@", 0}];
  [v3 validateClass:@"IKViewElement" hasInstanceMethod:@"attributes" withFullSignature:{"@", 0}];
}

- (id)accessibilityValue
{
  v3 = [(SUUIItemOfferButtonAccessibility *)self safeValueForKey:@"progressType"];
  v4 = [v3 integerValue];

  if ((v4 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    [(SUUIItemOfferButtonAccessibility *)self safeCGFloatForKey:@"progress"];
    if (v5 == 0.0)
    {
      v6 = 0;
    }

    else
    {
      v8 = MEMORY[0x29EDBA0F8];
      v9 = accessibilityLocalizedString(@"item.offer.button.progress");
      v10 = AXFormatFloatWithPercentage();
      v6 = [v8 stringWithFormat:v9, v10];
    }
  }

  else
  {
    if (v4 == 4)
    {
      v7 = accessibilityLocalizedString(@"item.download.paused");
    }

    else
    {
      v12.receiver = self;
      v12.super_class = SUUIItemOfferButtonAccessibility;
      v7 = [(SUUIItemOfferButtonAccessibility *)&v12 accessibilityValue];
    }

    v6 = v7;
  }

  return v6;
}

- (id)accessibilityLabel
{
  v3 = [(SUUIItemOfferButtonAccessibility *)self accessibilityUserDefinedLabel];

  if (v3)
  {
    v4 = [(SUUIItemOfferButtonAccessibility *)self accessibilityUserDefinedLabel];
LABEL_5:
    v7 = v4;
    goto LABEL_6;
  }

  v5 = [(SUUIItemOfferButtonAccessibility *)self safeValueForKey:@"progressType"];
  v6 = [v5 integerValue];

  if (v6 == 1)
  {
    v4 = accessibilityLocalizedString(@"item.connecting");
    goto LABEL_5;
  }

  v9 = [(SUUIItemOfferButtonAccessibility *)self safeValueForKey:@"delegate"];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(SUUIItemOfferButtonAccessibility *)self safeValueForKey:@"delegate"];
    v12 = [v11 safeValueForKey:@"title"];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(SUUIItemOfferButtonAccessibility *)self safeValueForKey:@"buttonDescriptor"];
  v14 = __UIAccessibilitySafeClass();

  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__2;
  v39 = __Block_byref_object_dispose__2;
  v40 = 0;
  if (v14)
  {
    v34 = v14;
    AXPerformSafeBlock();
  }

  v15 = [(SUUIItemOfferButtonAccessibility *)self safeValueForKey:@"_cloudImage"];
  if (v15 && ([v36[5] safeValueForKey:@"image"], v16 = objc_claimAutoreleasedReturnValue(), -[SUUIItemOfferButtonAccessibility safeValueForKey:](self, "safeValueForKey:", @"_cloudImage"), v17 = objc_claimAutoreleasedReturnValue(), v17, v16, v15, v16 == v17))
  {
    v20 = accessibilityLocalizedString(@"item.download");
  }

  else
  {
    v18 = [(SUUIItemOfferButtonAccessibility *)self safeValueForKey:@"isShowingConfirmation"];
    v19 = [v18 BOOLValue];

    if (!v19)
    {
      v21 = 0;
      goto LABEL_21;
    }

    v20 = [(SUUIItemOfferButtonAccessibility *)self safeValueForKey:@"confirmationTitle"];
  }

  v21 = v20;
LABEL_21:
  if (![v21 length])
  {
    if (v6 == 3)
    {
      v22 = @"item.downloading";
      goto LABEL_26;
    }

    if (v6 == 2)
    {
      v22 = @"item.downloading.cancelable";
LABEL_26:
      v23 = accessibilityLocalizedString(v22);

      v21 = v23;
    }
  }

  if (![v21 length])
  {
    v24 = [(SUUIItemOfferButtonAccessibility *)self safeValueForKey:@"title"];

    if ([v24 length] == 1)
    {
      v21 = accessibilityLocalizedString(@"no.value");
    }

    else
    {
      v21 = v24;
    }
  }

  if (![v21 length])
  {
    objc_opt_class();
    v25 = [(SUUIItemOfferButtonAccessibility *)self safeValueForKey:@"element"];
    v26 = [v25 safeValueForKey:@"parent"];
    v27 = [v26 safeValueForKey:@"attributes"];
    v28 = __UIAccessibilityCastAsClass();

    v29 = [v28 objectForKey:@"supportsPlayButton"];
    v30 = [v29 BOOLValue];

    if (v30)
    {
      v31 = accessibilityLocalizedString(@"play.button");

      v21 = v31;
    }
  }

  if (![v21 length])
  {
    v32 = accessibilityLocalizedString(@"item.download");

    v21 = v32;
  }

  if (UIAccessibilityIsVoiceOverRunning())
  {
    v33 = [v21 lowercaseString];

    v21 = v33;
  }

  v7 = __UIAXStringForVariables();

  _Block_object_dispose(&v35, 8);
LABEL_6:

  return v7;
}

void __54__SUUIItemOfferButtonAccessibility_accessibilityLabel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _buttonPropertiesForState:*(a1 + 40)];
  v3 = __UIAccessibilitySafeClass();

  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)accessibilityHint
{
  v3 = [(SUUIItemOfferButtonAccessibility *)self safeValueForKey:@"isShowingConfirmation"];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = accessibilityLocalizedString(@"item.offer.button.text.confirm.hint");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SUUIItemOfferButtonAccessibility;
    v5 = [(SUUIItemOfferButtonAccessibility *)&v7 accessibilityHint];
  }

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v3 = *MEMORY[0x29EDC7FF0];
  v4 = [(SUUIItemOfferButtonAccessibility *)self safeValueForKey:@"progressType"];
  v5 = [v4 integerValue];

  if (v5 != 1)
  {
    v7.receiver = self;
    v7.super_class = SUUIItemOfferButtonAccessibility;
    v3 |= [(SUUIItemOfferButtonAccessibility *)&v7 accessibilityTraits]| *MEMORY[0x29EDC7F70];
    if (v5 == 5)
    {
      v3 |= *MEMORY[0x29EDC7FC8];
    }
  }

  return v3;
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  AXDeviceGetMainScreenScaleFactor();
  v9 = v8;
  [(SUUIItemOfferButtonAccessibility *)self bounds];
  v17 = CGRectInset(v16, v9 * -15.0, v9 * -15.0);
  v15.x = x;
  v15.y = y;
  if (CGRectContainsPoint(v17, v15))
  {
    v10 = self;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SUUIItemOfferButtonAccessibility;
    v10 = [(SUUIItemOfferButtonAccessibility *)&v13 _accessibilityHitTest:v7 withEvent:x, y];
  }

  v11 = v10;

  return v11;
}

- (id)accessibilityIdentifier
{
  v3 = [(SUUIItemOfferButtonAccessibility *)self safeValueForKey:@"progressType"];
  v4 = [v3 integerValue];

  if (v4 == 6)
  {
    v5 = [(SUUIItemOfferButtonAccessibility *)self safeValueForKey:@"title"];
  }

  else
  {
    v5 = @"PurchaseButton";
  }

  return v5;
}

@end