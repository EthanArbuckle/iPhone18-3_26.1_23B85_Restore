@interface PKPeerPaymentMessagesAmountStepperViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityHint;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_shakeAmountLabel;
- (void)dealloc;
- (void)handleNumberPadAction:(unint64_t)action;
@end

@implementation PKPeerPaymentMessagesAmountStepperViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKPeerPaymentMessagesAmountStepperView" hasInstanceMethod:@"_decrementAmount" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PKPeerPaymentMessagesAmountStepperView" hasInstanceMethod:@"_incrementAmount" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PKPeerPaymentMessagesAmountStepperView" hasInstanceVariable:@"_amountLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PKPeerPaymentMessagesAmountStepperView" hasInstanceMethod:@"keypadVisible" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PKPeerPaymentMessagesAmountStepperView" hasInstanceMethod:@"handleNumberPadAction:" withFullSignature:{"v", "Q", 0}];
  [validationsCopy validateClass:@"PKPeerPaymentMessagesAmountStepperView" hasInstanceMethod:@"_shakeAmountLabel" withFullSignature:{"v", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = PKPeerPaymentMessagesAmountStepperViewAccessibility;
  return *MEMORY[0x29EDC7F60] | [(PKPeerPaymentMessagesAmountStepperViewAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityValue
{
  v2 = [(PKPeerPaymentMessagesAmountStepperViewAccessibility *)self safeValueForKey:@"_amountLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityHint
{
  v2 = [(PKPeerPaymentMessagesAmountStepperViewAccessibility *)self safeValueForKey:@"keypadVisible"];
  v3 = v2;
  if (v2)
  {
    if ([v2 BOOLValue])
    {
      v4 = @"dismiss.keypad.hint";
    }

    else
    {
      v4 = @"show.keypad.hint";
    }

    v5 = accessibilityPeerPaymentLocalizedString(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)dealloc
{
  [(PKPeerPaymentMessagesAmountStepperViewAccessibility *)self _setAXSpeakAmountTimer:0];
  v3.receiver = self;
  v3.super_class = PKPeerPaymentMessagesAmountStepperViewAccessibility;
  [(PKPeerPaymentMessagesAmountStepperViewAccessibility *)&v3 dealloc];
}

- (void)handleNumberPadAction:(unint64_t)action
{
  [(PKPeerPaymentMessagesAmountStepperViewAccessibility *)self _setAXHasInvalidAmount:0];
  v11.receiver = self;
  v11.super_class = PKPeerPaymentMessagesAmountStepperViewAccessibility;
  [(PKPeerPaymentMessagesAmountStepperViewAccessibility *)&v11 handleNumberPadAction:action];
  _axSpeakAmountTimer = [(PKPeerPaymentMessagesAmountStepperViewAccessibility *)self _axSpeakAmountTimer];

  if (!_axSpeakAmountTimer)
  {
    v6 = objc_alloc(MEMORY[0x29EDBD6A0]);
    v7 = [v6 initWithTargetSerialQueue:MEMORY[0x29EDCA578]];
    [(PKPeerPaymentMessagesAmountStepperViewAccessibility *)self _setAXSpeakAmountTimer:v7];

    _axSpeakAmountTimer2 = [(PKPeerPaymentMessagesAmountStepperViewAccessibility *)self _axSpeakAmountTimer];
    [_axSpeakAmountTimer2 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
  }

  _axSpeakAmountTimer3 = [(PKPeerPaymentMessagesAmountStepperViewAccessibility *)self _axSpeakAmountTimer];
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __77__PKPeerPaymentMessagesAmountStepperViewAccessibility_handleNumberPadAction___block_invoke;
  v10[3] = &unk_29F2E3868;
  v10[4] = self;
  [_axSpeakAmountTimer3 afterDelay:v10 processBlock:1.0];
}

void __77__PKPeerPaymentMessagesAmountStepperViewAccessibility_handleNumberPadAction___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _axHasInvalidAmount])
  {
    v2 = @"invalid.amount.text";
  }

  else
  {
    v2 = @"amount.text";
  }

  v3 = accessibilityPeerPaymentLocalizedString(v2);
  v4 = [*(a1 + 32) accessibilityValue];
  v5 = __AXStringForVariables();

  UIAccessibilitySpeakOrQueueIfNeeded();
}

- (void)_shakeAmountLabel
{
  v3.receiver = self;
  v3.super_class = PKPeerPaymentMessagesAmountStepperViewAccessibility;
  [(PKPeerPaymentMessagesAmountStepperViewAccessibility *)&v3 _shakeAmountLabel];
  [(PKPeerPaymentMessagesAmountStepperViewAccessibility *)self _setAXHasInvalidAmount:1];
}

@end