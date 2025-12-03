@interface MFComposeRecipientViewAccessibility
- (MFComposeRecipientViewAccessibility)initWithFrame:(CGRect)frame;
- (void)removeRecipient:(id)recipient;
@end

@implementation MFComposeRecipientViewAccessibility

- (MFComposeRecipientViewAccessibility)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = MFComposeRecipientViewAccessibility;
  return [(MFComposeRecipientViewAccessibility *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

- (void)removeRecipient:(id)recipient
{
  v9.receiver = self;
  v9.super_class = MFComposeRecipientViewAccessibility;
  recipientCopy = recipient;
  [(MFComposeRecipientViewAccessibility *)&v9 removeRecipient:recipientCopy];
  v4 = *MEMORY[0x29EDC7EA8];
  v5 = MEMORY[0x29EDBA0F8];
  v6 = accessibilityLocalizedString(@"remove.item.announce");
  v7 = [recipientCopy safeValueForKey:@"displayString"];

  v8 = [v5 stringWithFormat:v6, v7];
  UIAccessibilityPostNotification(v4, v8);
}

@end