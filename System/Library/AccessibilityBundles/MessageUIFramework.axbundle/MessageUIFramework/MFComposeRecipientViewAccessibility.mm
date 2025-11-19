@interface MFComposeRecipientViewAccessibility
- (MFComposeRecipientViewAccessibility)initWithFrame:(CGRect)a3;
- (void)removeRecipient:(id)a3;
@end

@implementation MFComposeRecipientViewAccessibility

- (MFComposeRecipientViewAccessibility)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = MFComposeRecipientViewAccessibility;
  return [(MFComposeRecipientViewAccessibility *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

- (void)removeRecipient:(id)a3
{
  v9.receiver = self;
  v9.super_class = MFComposeRecipientViewAccessibility;
  v3 = a3;
  [(MFComposeRecipientViewAccessibility *)&v9 removeRecipient:v3];
  v4 = *MEMORY[0x29EDC7EA8];
  v5 = MEMORY[0x29EDBA0F8];
  v6 = accessibilityLocalizedString(@"remove.item.announce");
  v7 = [v3 safeValueForKey:@"displayString"];

  v8 = [v5 stringWithFormat:v6, v7];
  UIAccessibilityPostNotification(v4, v8);
}

@end