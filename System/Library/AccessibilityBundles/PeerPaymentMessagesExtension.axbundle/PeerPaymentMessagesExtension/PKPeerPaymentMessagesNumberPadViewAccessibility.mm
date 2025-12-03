@interface PKPeerPaymentMessagesNumberPadViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_handleActionButton:(id)button;
@end

@implementation PKPeerPaymentMessagesNumberPadViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKPeerPaymentMessagesNumberPadView" hasInstanceMethod:@"actionHandler" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKPeerPaymentMessagesNumberPadView" hasInstanceMethod:@"enabled" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PKPeerPaymentMessagesNumberPadView" hasInstanceMethod:@"_handleActionButton:" withFullSignature:{"v", "@", 0}];
}

- (void)_handleActionButton:(id)button
{
  buttonCopy = button;
  v9.receiver = self;
  v9.super_class = PKPeerPaymentMessagesNumberPadViewAccessibility;
  [(PKPeerPaymentMessagesNumberPadViewAccessibility *)&v9 _handleActionButton:buttonCopy];
  v5 = [(PKPeerPaymentMessagesNumberPadViewAccessibility *)self safeValueForKey:@"actionHandler"];
  if (!v5 || ![(PKPeerPaymentMessagesNumberPadViewAccessibility *)self safeBoolForKey:@"enabled"])
  {
    goto LABEL_5;
  }

  if (buttonCopy)
  {
    v6 = MEMORY[0x29EDBD7E8];
    accessibilityLabel = [buttonCopy accessibilityLabel];
    v5 = [v6 axAttributedStringWithString:accessibilityLabel];

    v8 = *MEMORY[0x29EDB8F00];
    [v5 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD8E0]];
    [v5 setAttribute:v8 forKey:*MEMORY[0x29EDBDA18]];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v5);
LABEL_5:
  }
}

@end