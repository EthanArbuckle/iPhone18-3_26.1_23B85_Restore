@interface PKPeerPaymentMessagesNumberPadViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_handleActionButton:(id)a3;
@end

@implementation PKPeerPaymentMessagesNumberPadViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKPeerPaymentMessagesNumberPadView" hasInstanceMethod:@"actionHandler" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKPeerPaymentMessagesNumberPadView" hasInstanceMethod:@"enabled" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PKPeerPaymentMessagesNumberPadView" hasInstanceMethod:@"_handleActionButton:" withFullSignature:{"v", "@", 0}];
}

- (void)_handleActionButton:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPeerPaymentMessagesNumberPadViewAccessibility;
  [(PKPeerPaymentMessagesNumberPadViewAccessibility *)&v9 _handleActionButton:v4];
  v5 = [(PKPeerPaymentMessagesNumberPadViewAccessibility *)self safeValueForKey:@"actionHandler"];
  if (!v5 || ![(PKPeerPaymentMessagesNumberPadViewAccessibility *)self safeBoolForKey:@"enabled"])
  {
    goto LABEL_5;
  }

  if (v4)
  {
    v6 = MEMORY[0x29EDBD7E8];
    v7 = [v4 accessibilityLabel];
    v5 = [v6 axAttributedStringWithString:v7];

    v8 = *MEMORY[0x29EDB8F00];
    [v5 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD8E0]];
    [v5 setAttribute:v8 forKey:*MEMORY[0x29EDBDA18]];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v5);
LABEL_5:
  }
}

@end