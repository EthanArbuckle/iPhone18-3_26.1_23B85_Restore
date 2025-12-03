@interface SKUIItemOfferButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)accessibilityHint;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation SKUIItemOfferButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKUIItemOfferButton" hasInstanceMethod:@"confirmationTitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKUIItemOfferButton" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKUIItemOfferButton" hasInstanceMethod:@"progress" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"SKUIItemOfferButton" hasInstanceMethod:@"isShowingConfirmation" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SKUIItemOfferButton" hasInstanceMethod:@"progressType" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"SKUIItemBrowseCellLayout" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKUIItemOfferButton" hasInstanceVariable:@"_cloudImage" withType:"UIImage"];
  [validationsCopy validateClass:@"SKUIItemOfferButton" hasInstanceMethod:@"buttonDescriptor" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKUIItemOfferButton" hasInstanceMethod:@"_buttonPropertiesForState:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"SKUIItemOfferButtonProperties" hasInstanceMethod:@"image" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKUIItemOfferButton" hasInstanceMethod:@"element" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKUIButtonViewElement" isKindOfClass:@"SKUIViewElement"];
  [validationsCopy validateClass:@"SKUIViewElement" isKindOfClass:@"IKViewElement"];
  [validationsCopy validateClass:@"IKViewElement" hasInstanceMethod:@"parent" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"IKViewElement" hasInstanceMethod:@"attributes" withFullSignature:{"@", 0}];
}

- (id)accessibilityValue
{
  v3 = [(SKUIItemOfferButtonAccessibility *)self safeValueForKey:@"progressType"];
  integerValue = [v3 integerValue];

  if ((integerValue & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    [(SKUIItemOfferButtonAccessibility *)self safeCGFloatForKey:@"progress"];
    if (v5 == 0.0)
    {
      v6 = 0;
    }

    else
    {
      v8 = MEMORY[0x29EDBA0F8];
      v9 = accessibilitySKUILocalizedString(@"item.offer.button.progress");
      v10 = AXFormatFloatWithPercentage();
      v6 = [v8 stringWithFormat:v9, v10];
    }
  }

  else
  {
    if (integerValue == 4)
    {
      accessibilityValue = accessibilitySKUILocalizedString(@"item.download.paused");
    }

    else
    {
      v12.receiver = self;
      v12.super_class = SKUIItemOfferButtonAccessibility;
      accessibilityValue = [(SKUIItemOfferButtonAccessibility *)&v12 accessibilityValue];
    }

    v6 = accessibilityValue;
  }

  return v6;
}

- (id)accessibilityLabel
{
  accessibilityUserDefinedLabel = [(SKUIItemOfferButtonAccessibility *)self accessibilityUserDefinedLabel];

  if (accessibilityUserDefinedLabel)
  {
    accessibilityUserDefinedLabel2 = [(SKUIItemOfferButtonAccessibility *)self accessibilityUserDefinedLabel];
LABEL_5:
    v7 = accessibilityUserDefinedLabel2;
    goto LABEL_6;
  }

  v5 = [(SKUIItemOfferButtonAccessibility *)self safeValueForKey:@"progressType"];
  integerValue = [v5 integerValue];

  if (integerValue == 1)
  {
    accessibilityUserDefinedLabel2 = accessibilitySKUILocalizedString(@"item.connecting");
    goto LABEL_5;
  }

  v9 = [(SKUIItemOfferButtonAccessibility *)self safeValueForKey:@"delegate"];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(SKUIItemOfferButtonAccessibility *)self safeValueForKey:@"delegate"];
    v12 = [v11 safeValueForKey:@"title"];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(SKUIItemOfferButtonAccessibility *)self safeValueForKey:@"buttonDescriptor"];
  v14 = __UIAccessibilitySafeClass();

  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__1;
  v39 = __Block_byref_object_dispose__1;
  v40 = 0;
  if (v14)
  {
    v34 = v14;
    AXPerformSafeBlock();
  }

  v15 = [(SKUIItemOfferButtonAccessibility *)self safeValueForKey:@"_cloudImage"];
  if (v15 && ([v36[5] safeValueForKey:@"image"], v16 = objc_claimAutoreleasedReturnValue(), -[SKUIItemOfferButtonAccessibility safeValueForKey:](self, "safeValueForKey:", @"_cloudImage"), v17 = objc_claimAutoreleasedReturnValue(), v17, v16, v15, v16 == v17))
  {
    v20 = accessibilitySKUILocalizedString(@"item.download");
  }

  else
  {
    v18 = [(SKUIItemOfferButtonAccessibility *)self safeValueForKey:@"isShowingConfirmation"];
    bOOLValue = [v18 BOOLValue];

    if (!bOOLValue)
    {
      v21 = 0;
      goto LABEL_21;
    }

    v20 = [(SKUIItemOfferButtonAccessibility *)self safeValueForKey:@"confirmationTitle"];
  }

  v21 = v20;
LABEL_21:
  if (![v21 length])
  {
    if (integerValue == 3)
    {
      v22 = @"item.downloading";
      goto LABEL_26;
    }

    if (integerValue == 2)
    {
      v22 = @"item.downloading.cancelable";
LABEL_26:
      v23 = accessibilitySKUILocalizedString(v22);

      v21 = v23;
    }
  }

  if (![v21 length])
  {
    v24 = [(SKUIItemOfferButtonAccessibility *)self safeValueForKey:@"title"];

    if ([v24 length] == 1)
    {
      v21 = accessibilitySKUILocalizedString(@"no.value");
    }

    else
    {
      v21 = v24;
    }
  }

  if (![v21 length])
  {
    objc_opt_class();
    v25 = [(SKUIItemOfferButtonAccessibility *)self safeValueForKey:@"element"];
    v26 = [v25 safeValueForKey:@"parent"];
    v27 = [v26 safeValueForKey:@"attributes"];
    v28 = __UIAccessibilityCastAsClass();

    v29 = [v28 objectForKey:@"supportsPlayButton"];
    bOOLValue2 = [v29 BOOLValue];

    if (bOOLValue2)
    {
      v31 = accessibilitySKUILocalizedString(@"play.button");

      v21 = v31;
    }
  }

  if (![v21 length])
  {
    v32 = accessibilitySKUILocalizedString(@"item.download");

    v21 = v32;
  }

  if (UIAccessibilityIsVoiceOverRunning())
  {
    lowercaseString = [v21 lowercaseString];

    v21 = lowercaseString;
  }

  v7 = __UIAXStringForVariables();

  _Block_object_dispose(&v35, 8);
LABEL_6:

  return v7;
}

void __54__SKUIItemOfferButtonAccessibility_accessibilityLabel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _buttonPropertiesForState:*(a1 + 40)];
  v3 = __UIAccessibilitySafeClass();

  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)accessibilityHint
{
  v3 = [(SKUIItemOfferButtonAccessibility *)self safeValueForKey:@"isShowingConfirmation"];
  bOOLValue = [v3 BOOLValue];

  if (bOOLValue)
  {
    accessibilityHint = accessibilitySKUILocalizedString(@"item.offer.button.text.confirm.hint");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SKUIItemOfferButtonAccessibility;
    accessibilityHint = [(SKUIItemOfferButtonAccessibility *)&v7 accessibilityHint];
  }

  return accessibilityHint;
}

- (unint64_t)accessibilityTraits
{
  v3 = *MEMORY[0x29EDC7FF0];
  v4 = [(SKUIItemOfferButtonAccessibility *)self safeValueForKey:@"progressType"];
  integerValue = [v4 integerValue];

  if (integerValue != 1)
  {
    v7.receiver = self;
    v7.super_class = SKUIItemOfferButtonAccessibility;
    v3 |= [(SKUIItemOfferButtonAccessibility *)&v7 accessibilityTraits]| *MEMORY[0x29EDC7F70];
    if (integerValue == 5)
    {
      v3 |= *MEMORY[0x29EDC7FC8];
    }
  }

  return v3;
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  AXDeviceGetMainScreenScaleFactor();
  v9 = v8;
  [(SKUIItemOfferButtonAccessibility *)self bounds];
  v17 = CGRectInset(v16, v9 * -15.0, v9 * -15.0);
  v15.x = x;
  v15.y = y;
  if (CGRectContainsPoint(v17, v15))
  {
    selfCopy = self;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SKUIItemOfferButtonAccessibility;
    selfCopy = [(SKUIItemOfferButtonAccessibility *)&v13 _accessibilityHitTest:eventCopy withEvent:x, y];
  }

  v11 = selfCopy;

  return v11;
}

- (id)accessibilityIdentifier
{
  v3 = [(SKUIItemOfferButtonAccessibility *)self safeValueForKey:@"progressType"];
  integerValue = [v3 integerValue];

  if (integerValue == 6)
  {
    v5 = [(SKUIItemOfferButtonAccessibility *)self safeValueForKey:@"title"];
  }

  else
  {
    v5 = @"PurchaseButton";
  }

  return v5;
}

@end