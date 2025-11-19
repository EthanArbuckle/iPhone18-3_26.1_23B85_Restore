@interface PKPeerPaymentMessagesAmountStepperViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_axAnnounceAmount;
- (void)_decrementAmount;
- (void)_incrementAmount;
- (void)handleNumberPadAction:(unint64_t)a3;
@end

@implementation PKPeerPaymentMessagesAmountStepperViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKPeerPaymentMessagesAmountStepperView" hasInstanceMethod:@"amount" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKCurrencyAmount" hasInstanceMethod:@"formattedStringValue" withFullSignature:{"@", 0}];
}

- (void)handleNumberPadAction:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = PKPeerPaymentMessagesAmountStepperViewAccessibility;
  [(PKPeerPaymentMessagesAmountStepperViewAccessibility *)&v4 handleNumberPadAction:a3];
  [(PKPeerPaymentMessagesAmountStepperViewAccessibility *)self _axAnnounceAmount];
}

- (void)_decrementAmount
{
  v3.receiver = self;
  v3.super_class = PKPeerPaymentMessagesAmountStepperViewAccessibility;
  [(PKPeerPaymentMessagesAmountStepperViewAccessibility *)&v3 _decrementAmount];
  [(PKPeerPaymentMessagesAmountStepperViewAccessibility *)self _axAnnounceAmount];
}

- (void)_incrementAmount
{
  v3.receiver = self;
  v3.super_class = PKPeerPaymentMessagesAmountStepperViewAccessibility;
  [(PKPeerPaymentMessagesAmountStepperViewAccessibility *)&v3 _incrementAmount];
  [(PKPeerPaymentMessagesAmountStepperViewAccessibility *)self _axAnnounceAmount];
}

- (void)_axAnnounceAmount
{
  v2 = [(PKPeerPaymentMessagesAmountStepperViewAccessibility *)self safeValueForKey:@"amount"];
  v3 = [v2 safeStringForKey:@"formattedStringValue"];

  UIAccessibilitySpeakOrQueueIfNeeded();
}

@end