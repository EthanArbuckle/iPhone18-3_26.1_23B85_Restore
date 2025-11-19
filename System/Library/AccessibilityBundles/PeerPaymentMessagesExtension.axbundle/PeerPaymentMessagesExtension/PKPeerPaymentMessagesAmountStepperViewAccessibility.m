@interface PKPeerPaymentMessagesAmountStepperViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityHint;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_shakeAmountLabel;
- (void)dealloc;
- (void)handleNumberPadAction:(unint64_t)a3;
@end

@implementation PKPeerPaymentMessagesAmountStepperViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKPeerPaymentMessagesAmountStepperView" hasInstanceMethod:@"_decrementAmount" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PKPeerPaymentMessagesAmountStepperView" hasInstanceMethod:@"_incrementAmount" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PKPeerPaymentMessagesAmountStepperView" hasInstanceVariable:@"_amountLabel" withType:"UILabel"];
  [v3 validateClass:@"PKPeerPaymentMessagesAmountStepperView" hasInstanceMethod:@"keypadVisible" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PKPeerPaymentMessagesAmountStepperView" hasInstanceMethod:@"handleNumberPadAction:" withFullSignature:{"v", "Q", 0}];
  [v3 validateClass:@"PKPeerPaymentMessagesAmountStepperView" hasInstanceMethod:@"_shakeAmountLabel" withFullSignature:{"v", 0}];
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
  v3 = [v2 accessibilityLabel];

  return v3;
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

- (void)handleNumberPadAction:(unint64_t)a3
{
  [(PKPeerPaymentMessagesAmountStepperViewAccessibility *)self _setAXHasInvalidAmount:0];
  v11.receiver = self;
  v11.super_class = PKPeerPaymentMessagesAmountStepperViewAccessibility;
  [(PKPeerPaymentMessagesAmountStepperViewAccessibility *)&v11 handleNumberPadAction:a3];
  v5 = [(PKPeerPaymentMessagesAmountStepperViewAccessibility *)self _axSpeakAmountTimer];

  if (!v5)
  {
    v6 = objc_alloc(MEMORY[0x29EDBD6A0]);
    v7 = [v6 initWithTargetSerialQueue:MEMORY[0x29EDCA578]];
    [(PKPeerPaymentMessagesAmountStepperViewAccessibility *)self _setAXSpeakAmountTimer:v7];

    v8 = [(PKPeerPaymentMessagesAmountStepperViewAccessibility *)self _axSpeakAmountTimer];
    [v8 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
  }

  v9 = [(PKPeerPaymentMessagesAmountStepperViewAccessibility *)self _axSpeakAmountTimer];
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __77__PKPeerPaymentMessagesAmountStepperViewAccessibility_handleNumberPadAction___block_invoke;
  v10[3] = &unk_29F2E3868;
  v10[4] = self;
  [v9 afterDelay:v10 processBlock:1.0];
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