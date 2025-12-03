@interface PKPeerPaymentBubbleViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsActionButtonVisible;
- (id)_axBubbleLabel;
- (id)_axBubbleValue;
- (id)_axBubbleViewElement;
- (id)_axCurrencyAmountLabel;
- (id)_axObserverInformationLabel;
- (id)_axRecurringInformationLabel;
- (id)_axRecurringInformationValue;
- (id)_axTransferLabel;
- (id)accessibilityElements;
- (void)_actionButtonTapped:(id)tapped;
@end

@implementation PKPeerPaymentBubbleViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKPeerPaymentBubbleView" hasInstanceMethod:@"actionButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKPeerPaymentBubbleView" hasInstanceVariable:@"_messageLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PKPeerPaymentBubbleView" hasInstanceVariable:@"_groupLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PKPeerPaymentBubbleView" hasInstanceVariable:@"_statusLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PKPeerPaymentBubbleView" hasInstanceVariable:@"_recurringPaymentFrequency" withType:"NSUInteger"];
  [validationsCopy validateClass:@"PKPeerPaymentBubbleView" hasInstanceVariable:@"_recurringPaymentMemo" withType:"PKPeerPaymentRecurringPaymentMemo"];
  [validationsCopy validateClass:@"PKPeerPaymentBubbleView" hasInstanceMethod:@"amount" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKPeerPaymentBubbleView" hasInstanceMethod:@"currency" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKPeerPaymentBubbleView" hasInstanceMethod:@"state" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"PKPeerPaymentBubbleView" hasInstanceMethod:@"recipientAddress" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKPeerPaymentRecurringPaymentMemo" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKPeerPaymentBubbleView" hasInstanceMethod:@"_actionButtonTapped:" withFullSignature:{"v", "@", 0}];
}

- (id)accessibilityElements
{
  _axBubbleViewElement = [(PKPeerPaymentBubbleViewAccessibility *)self _axBubbleViewElement];
  _axIsActionButtonVisible = [(PKPeerPaymentBubbleViewAccessibility *)self _axIsActionButtonVisible];
  v5 = MEMORY[0x29EDB8D80];
  if (_axIsActionButtonVisible)
  {
    _axActionButton = [(PKPeerPaymentBubbleViewAccessibility *)self _axActionButton];
    v7 = [v5 axArrayByIgnoringNilElementsWithCount:{2, _axBubbleViewElement, _axActionButton}];
  }

  else
  {
    v7 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, _axBubbleViewElement}];
  }

  return v7;
}

- (id)_axBubbleViewElement
{
  v3 = [(PKPeerPaymentBubbleViewAccessibility *)self _accessibilityValueForKey:@"PKPeerPaymentBubbleElement"];
  if (!v3)
  {
    v3 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
    [(PKPeerPaymentBubbleViewAccessibility *)self _accessibilitySetRetainedValue:v3 forKey:@"PKPeerPaymentBubbleElement"];
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__1;
    v20 = __Block_byref_object_dispose__1;
    v21 = 0;
    LOBYTE(location) = 0;
    objc_opt_class();
    v4 = __UIAccessibilityCastAsClass();
    v5 = v17[5];
    v17[5] = v4;

    objc_initWeak(&location, self);
    v13[0] = MEMORY[0x29EDCA5F8];
    v13[1] = 3221225472;
    v13[2] = __60__PKPeerPaymentBubbleViewAccessibility__axBubbleViewElement__block_invoke;
    v13[3] = &unk_29F2E1EB0;
    objc_copyWeak(&v14, &location);
    v13[4] = &v16;
    [v3 _setAccessibilityFrameBlock:v13];
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 3221225472;
    v11[2] = __60__PKPeerPaymentBubbleViewAccessibility__axBubbleViewElement__block_invoke_2;
    v11[3] = &unk_29F2E1B98;
    objc_copyWeak(&v12, &location);
    [v3 _setAccessibilityIdentifierBlock:v11];
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 3221225472;
    v9[2] = __60__PKPeerPaymentBubbleViewAccessibility__axBubbleViewElement__block_invoke_3;
    v9[3] = &unk_29F2E1B98;
    objc_copyWeak(&v10, &location);
    [v3 _setAccessibilityLabelBlock:v9];
    v7[0] = MEMORY[0x29EDCA5F8];
    v7[1] = 3221225472;
    v7[2] = __60__PKPeerPaymentBubbleViewAccessibility__axBubbleViewElement__block_invoke_4;
    v7[3] = &unk_29F2E1B98;
    objc_copyWeak(&v8, &location);
    [v3 _setAccessibilityValueBlock:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
    _Block_object_dispose(&v16, 8);
  }

  return v3;
}

double __60__PKPeerPaymentBubbleViewAccessibility__axBubbleViewElement__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _axIsActionButtonVisible];

  [*(*(*(a1 + 32) + 8) + 40) accessibilityFrame];
  v5 = v4;
  if (v3)
  {
    v6 = objc_loadWeakRetained((a1 + 40));
    v7 = [v6 _axActionButton];
    [v7 accessibilityFrame];
    AX_CGRectBySubtractingRect();
    v5 = v8;
  }

  return v5;
}

id __60__PKPeerPaymentBubbleViewAccessibility__axBubbleViewElement__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained accessibilityIdentifier];

  return v2;
}

id __60__PKPeerPaymentBubbleViewAccessibility__axBubbleViewElement__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _axBubbleLabel];

  return v2;
}

id __60__PKPeerPaymentBubbleViewAccessibility__axBubbleViewElement__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _axBubbleValue];

  return v2;
}

- (id)_axBubbleLabel
{
  v3 = [(PKPeerPaymentBubbleViewAccessibility *)self safeIntegerForKey:@"state"];
  if (v3 == 11)
  {
    _axRecurringInformationLabel = [(PKPeerPaymentBubbleViewAccessibility *)self _axRecurringInformationLabel];
  }

  else
  {
    if (v3 == 12)
    {
      [(PKPeerPaymentBubbleViewAccessibility *)self _axObserverInformationLabel];
    }

    else
    {
      [(PKPeerPaymentBubbleViewAccessibility *)self _axTransferLabel];
    }
    _axRecurringInformationLabel = ;
  }

  return _axRecurringInformationLabel;
}

- (id)_axBubbleValue
{
  if ([(PKPeerPaymentBubbleViewAccessibility *)self safeIntegerForKey:@"state"]== 11)
  {
    _axRecurringInformationValue = [(PKPeerPaymentBubbleViewAccessibility *)self _axRecurringInformationValue];
  }

  else
  {
    _axRecurringInformationValue = 0;
  }

  return _axRecurringInformationValue;
}

- (id)_axTransferLabel
{
  v3 = [(PKPeerPaymentBubbleViewAccessibility *)self safeIntegerForKey:@"state"];
  objc_opt_class();
  v4 = [(PKPeerPaymentBubbleViewAccessibility *)self safeValueForKey:@"_messageLabel"];
  v5 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v6 = [(PKPeerPaymentBubbleViewAccessibility *)self safeValueForKey:@"_groupLabel"];
  v7 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v8 = [(PKPeerPaymentBubbleViewAccessibility *)self safeValueForKey:@"_statusLabel"];
  v9 = __UIAccessibilityCastAsClass();

  if (v5)
  {
    if ((v3 - 5) > 3)
    {
      v10 = @"unknown.transfer.format";
    }

    else
    {
      v10 = off_29F2E1EF8[v3 - 5];
    }

    v12 = MEMORY[0x29EDBA0F8];
    v13 = accessibilityLocalizedString(v10);
    text = [v5 text];
    v11 = [v12 stringWithFormat:v13, text];

    if (v3 == 1)
    {
      text2 = [v5 text];

      v11 = text2;
    }
  }

  else
  {
    v11 = accessibilityLocalizedString(@"unknown.transfer");
  }

  v16 = __UIAXStringForVariables();

  return v16;
}

- (id)_axRecurringInformationLabel
{
  v3 = [(PKPeerPaymentBubbleViewAccessibility *)self safeIntegerForKey:@"_recurringPaymentFrequency"]- 1;
  if (v3 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_29F2E1F18[v3];
  }

  _axCurrencyAmountLabel = [(PKPeerPaymentBubbleViewAccessibility *)self _axCurrencyAmountLabel];
  v6 = MEMORY[0x29EDBA0F8];
  v7 = accessibilityLocalizedString(v4);
  v8 = [v6 stringWithFormat:v7, _axCurrencyAmountLabel];

  objc_opt_class();
  v9 = [(PKPeerPaymentBubbleViewAccessibility *)self safeValueForKey:@"_statusLabel"];
  v10 = __UIAccessibilityCastAsClass();

  v11 = __UIAXStringForVariables();

  return v11;
}

- (id)_axRecurringInformationValue
{
  v2 = [(PKPeerPaymentBubbleViewAccessibility *)self safeValueForKey:@"_recurringPaymentMemo"];
  v3 = [v2 safeStringForKey:@"text"];

  return v3;
}

- (id)_axObserverInformationLabel
{
  _axCurrencyAmountLabel = [(PKPeerPaymentBubbleViewAccessibility *)self _axCurrencyAmountLabel];
  v4 = [(PKPeerPaymentBubbleViewAccessibility *)self safeStringForKey:@"_recipientAddress"];
  v5 = MEMORY[0x29EDBA0F8];
  v6 = accessibilityLocalizedString(@"observer.transfer.format");
  v7 = [v5 stringWithFormat:v6, _axCurrencyAmountLabel, v4];

  return v7;
}

- (id)_axCurrencyAmountLabel
{
  v3 = [(PKPeerPaymentBubbleViewAccessibility *)self safeValueForKey:@"_amount"];
  v4 = [(PKPeerPaymentBubbleViewAccessibility *)self safeStringForKey:@"_currency"];
  v5 = PKCurrencyAmountMake();
  v6 = [v5 safeStringForKey:@"minimalFormattedStringValue"];

  return v6;
}

- (BOOL)_axIsActionButtonVisible
{
  _axActionButton = [(PKPeerPaymentBubbleViewAccessibility *)self _axActionButton];
  _accessibilityViewIsVisible = [_axActionButton _accessibilityViewIsVisible];

  return _accessibilityViewIsVisible;
}

- (void)_actionButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  v10.receiver = self;
  v10.super_class = PKPeerPaymentBubbleViewAccessibility;
  [(PKPeerPaymentBubbleViewAccessibility *)&v10 _actionButtonTapped:tappedCopy];
  accessibilityElements = [(PKPeerPaymentBubbleViewAccessibility *)self accessibilityElements];
  firstObject = [accessibilityElements firstObject];

  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __60__PKPeerPaymentBubbleViewAccessibility__actionButtonTapped___block_invoke;
  v7[3] = &unk_29F2E1ED8;
  objc_copyWeak(&v8, &location);
  [firstObject _setAccessibilityFrameBlock:v7];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], firstObject);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

double __60__PKPeerPaymentBubbleViewAccessibility__actionButtonTapped___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained accessibilityFrame];
  v3 = v2;

  return v3;
}

@end