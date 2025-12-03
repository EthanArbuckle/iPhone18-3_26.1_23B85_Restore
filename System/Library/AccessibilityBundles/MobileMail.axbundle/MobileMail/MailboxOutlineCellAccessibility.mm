@interface MailboxOutlineCellAccessibility
- (id)accessibilityLabel;
@end

@implementation MailboxOutlineCellAccessibility

- (id)accessibilityLabel
{
  if (([(MailboxOutlineCellAccessibility *)self safeBoolForKey:@"showFocusIcon"]& 1) != 0)
  {
    v8.receiver = self;
    v8.super_class = MailboxOutlineCellAccessibility;
    accessibilityLabel = [(MailboxOutlineCellAccessibility *)&v8 accessibilityLabel];
    v6 = accessibilityLocalizedString(@"mailbox.focus.filtered");
    accessibilityLabel2 = __AXStringForVariables();
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MailboxOutlineCellAccessibility;
    accessibilityLabel2 = [(MailboxOutlineCellAccessibility *)&v7 accessibilityLabel];
  }

  return accessibilityLabel2;
}

@end