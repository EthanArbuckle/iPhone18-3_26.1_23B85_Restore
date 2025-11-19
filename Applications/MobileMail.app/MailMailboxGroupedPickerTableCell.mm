@interface MailMailboxGroupedPickerTableCell
- (id)nameForMailbox:(id)a3;
- (int)levelForMailbox:(id)a3;
@end

@implementation MailMailboxGroupedPickerTableCell

- (int)levelForMailbox:(id)a3
{
  v4 = a3;
  if ([v4 mailboxType] || -[MailMailboxGroupedPickerTableCell alwaysDisplayAsTopLevel](self, "alwaysDisplayAsTopLevel"))
  {
    v5 = 0;
  }

  else
  {
    v7 = +[MailChangeManager sharedChangeManager];
    v5 = [v7 levelForMailbox:v4];
  }

  return v5;
}

- (id)nameForMailbox:(id)a3
{
  v3 = a3;
  if ([v3 mailboxType] == 7)
  {
    v4 = +[MailChangeManager sharedChangeManager];
    [v4 displayNameUsingSpecialNamesForMailbox:v3];
  }

  else
  {
    v4 = +[MailChangeManager sharedChangeManager];
    [v4 displayNameForMailbox:v3];
  }
  v5 = ;

  return v5;
}

@end