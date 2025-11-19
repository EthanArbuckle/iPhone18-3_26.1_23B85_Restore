@interface PKPeerPaymentMessageBalloonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation PKPeerPaymentMessageBalloonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKPeerPaymentMessageBalloonView" hasInstanceMethod:@"bubbleView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKPeerPaymentMessageBalloonView" hasInstanceMethod:@"peerPaymentType" withFullSignature:{"q", 0}];
  [v3 validateClass:@"PKPeerPaymentBubbleView" hasInstanceMethod:@"_messageText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKPeerPaymentBubbleView" hasInstanceMethod:@"_statusText" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(PKPeerPaymentMessageBalloonViewAccessibility *)self safeIntegerForKey:@"peerPaymentType"];
  v4 = [(PKPeerPaymentMessageBalloonViewAccessibility *)self safeValueForKey:@"bubbleView"];
  v5 = __UIAccessibilitySafeClass();

  v6 = [v5 safeStringForKey:@"_messageText"];
  v7 = [v5 safeStringForKey:@"_statusText"];
  if (v6)
  {
    v8 = @"unknown.transfer.format";
    if (v3 == 1)
    {
      v8 = @"sent.transfer.format";
    }

    if (v3 == 2)
    {
      v9 = @"received.transfer.format";
    }

    else
    {
      v9 = v8;
    }

    v10 = MEMORY[0x29EDBA0F8];
    v11 = accessibilityLocalizedString(v9);
    v12 = [v10 stringWithFormat:v11, v6];
  }

  else
  {
    v12 = accessibilityLocalizedString(@"unknown.transfer");
  }

  v13 = __UIAXStringForVariables();

  return v13;
}

@end