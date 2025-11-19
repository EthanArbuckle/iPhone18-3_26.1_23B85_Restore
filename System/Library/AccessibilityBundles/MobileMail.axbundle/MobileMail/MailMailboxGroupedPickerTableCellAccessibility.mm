@interface MailMailboxGroupedPickerTableCellAccessibility
- (id)accessibilityLabel;
@end

@implementation MailMailboxGroupedPickerTableCellAccessibility

- (id)accessibilityLabel
{
  v2 = UIAXStringForAllChildren();
  if (![v2 length])
  {
    v3 = accessibilityLocalizedString(@"mailbox.location");

    v2 = v3;
  }

  return v2;
}

@end