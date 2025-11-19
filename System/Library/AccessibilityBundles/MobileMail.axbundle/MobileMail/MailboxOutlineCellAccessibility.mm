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
    v3 = [(MailboxOutlineCellAccessibility *)&v8 accessibilityLabel];
    v6 = accessibilityLocalizedString(@"mailbox.focus.filtered");
    v4 = __AXStringForVariables();
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MailboxOutlineCellAccessibility;
    v4 = [(MailboxOutlineCellAccessibility *)&v7 accessibilityLabel];
  }

  return v4;
}

@end