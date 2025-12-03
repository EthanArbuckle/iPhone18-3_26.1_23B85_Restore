@interface PKPeerPaymentMessagesAmountStepperViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_axAnnounceAmount;
- (void)_decrementAmount;
- (void)_incrementAmount;
- (void)handleNumberPadAction:(unint64_t)action;
@end

@implementation PKPeerPaymentMessagesAmountStepperViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKPeerPaymentMessagesAmountStepperView" hasInstanceMethod:@"amount" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKCurrencyAmount" hasInstanceMethod:@"formattedStringValue" withFullSignature:{"@", 0}];
}

- (void)handleNumberPadAction:(unint64_t)action
{
  v4.receiver = self;
  v4.super_class = PKPeerPaymentMessagesAmountStepperViewAccessibility;
  [(PKPeerPaymentMessagesAmountStepperViewAccessibility *)&v4 handleNumberPadAction:action];
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