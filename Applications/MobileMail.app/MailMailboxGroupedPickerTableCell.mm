@interface MailMailboxGroupedPickerTableCell
- (id)nameForMailbox:(id)mailbox;
- (int)levelForMailbox:(id)mailbox;
@end

@implementation MailMailboxGroupedPickerTableCell

- (int)levelForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  if ([mailboxCopy mailboxType] || -[MailMailboxGroupedPickerTableCell alwaysDisplayAsTopLevel](self, "alwaysDisplayAsTopLevel"))
  {
    v5 = 0;
  }

  else
  {
    v7 = +[MailChangeManager sharedChangeManager];
    v5 = [v7 levelForMailbox:mailboxCopy];
  }

  return v5;
}

- (id)nameForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  if ([mailboxCopy mailboxType] == 7)
  {
    v4 = +[MailChangeManager sharedChangeManager];
    [v4 displayNameUsingSpecialNamesForMailbox:mailboxCopy];
  }

  else
  {
    v4 = +[MailChangeManager sharedChangeManager];
    [v4 displayNameForMailbox:mailboxCopy];
  }
  v5 = ;

  return v5;
}

@end