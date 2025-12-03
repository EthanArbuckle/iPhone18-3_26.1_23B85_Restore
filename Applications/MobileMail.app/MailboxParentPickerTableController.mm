@interface MailboxParentPickerTableController
- (MailboxParentPickerTableController)initWithMailboxUid:(id)uid parentMailbox:(id)mailbox visibleAccounts:(id)accounts;
- (NSMutableArray)sortedAccountsMailboxes;
- (id)indexPathForMailbox:(id)mailbox;
- (id)mailboxForIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)indexOfParentMailbox;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path tableViewPath:(id)viewPath;
@end

@implementation MailboxParentPickerTableController

- (MailboxParentPickerTableController)initWithMailboxUid:(id)uid parentMailbox:(id)mailbox visibleAccounts:(id)accounts
{
  uidCopy = uid;
  mailboxCopy = mailbox;
  accountsCopy = accounts;
  v18.receiver = self;
  v18.super_class = MailboxParentPickerTableController;
  v12 = [(MailboxParentPickerTableController *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_mailbox, uid);
    objc_storeStrong(&v13->_parentMailbox, mailbox);
    v14 = [accountsCopy copy];
    visibleAccounts = v13->_visibleAccounts;
    v13->_visibleAccounts = v14;

    sortedAccountsMailboxes = v13->_sortedAccountsMailboxes;
    v13->_sortedAccountsMailboxes = 0;
  }

  return v13;
}

- (NSMutableArray)sortedAccountsMailboxes
{
  sortedAccountsMailboxes = self->_sortedAccountsMailboxes;
  if (!sortedAccountsMailboxes)
  {
    v4 = objc_alloc_init(NSMutableArray);
    v5 = self->_sortedAccountsMailboxes;
    self->_sortedAccountsMailboxes = v4;

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    visibleAccounts = [(MailboxParentPickerTableController *)self visibleAccounts];
    v7 = [visibleAccounts countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(visibleAccounts);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          [(NSMutableArray *)self->_sortedAccountsMailboxes addObject:v10];
          v11 = +[MailChangeManager sharedChangeManager];
          v12 = [v11 genericMailboxUidsSortedForAccount:v10 includingLocals:0 excludingMailbox:self->_mailbox];

          [(NSMutableArray *)self->_sortedAccountsMailboxes addObjectsFromArray:v12];
        }

        v7 = [visibleAccounts countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    sortedAccountsMailboxes = self->_sortedAccountsMailboxes;
  }

  return sortedAccountsMailboxes;
}

- (int64_t)indexOfParentMailbox
{
  if (!self->_parentMailbox)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  sortedAccountsMailboxes = [(MailboxParentPickerTableController *)self sortedAccountsMailboxes];
  v4 = [sortedAccountsMailboxes indexOfObject:self->_parentMailbox];

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(MailboxParentPickerTableController *)self sortedAccountsMailboxes:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(MailboxParentPickerTableController *)self mailboxForIndexPath:path];
  v8 = [viewCopy dequeueReusableCellWithIdentifier:@"MailboxParentPickerReuseCell"];
  if (!v8)
  {
    v8 = [[MailMailboxGroupedPickerTableCell alloc] initWithStyle:0 reuseIdentifier:@"MailboxParentPickerReuseCell"];
  }

  [(MailboxGroupedPickerTableCell *)v8 setMailbox:v7];
  if (self->_parentMailbox == v7)
  {
    v9 = 3;
  }

  else
  {
    v9 = 0;
  }

  [(MailMailboxGroupedPickerTableCell *)v8 setAccessoryType:v9];

  return v8;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path tableViewPath:(id)viewPath
{
  viewCopy = view;
  pathCopy = path;
  viewPathCopy = viewPath;
  v10 = [(MailboxParentPickerTableController *)self indexPathForMailbox:self->_parentMailbox];
  v11 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v10 row], objc_msgSend(viewPathCopy, "section"));
  v12 = [(MailboxParentPickerTableController *)self mailboxForIndexPath:pathCopy];
  objc_storeStrong(&self->_parentMailbox, v12);
  v13 = [viewCopy cellForRowAtIndexPath:v11];
  [v13 setAccessoryType:0];

  v14 = [viewCopy cellForRowAtIndexPath:viewPathCopy];
  [v14 setAccessoryType:3];

  [(MailboxParentPickerSelectionTarget *)self->_mailboxSelectionTarget mailboxParentPickerDidSelectMailbox:v12];
}

- (id)mailboxForIndexPath:(id)path
{
  pathCopy = path;
  sortedAccountsMailboxes = [(MailboxParentPickerTableController *)self sortedAccountsMailboxes];
  v6 = [sortedAccountsMailboxes objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    rootMailbox = v6;
LABEL_5:
    v8 = rootMailbox;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    rootMailbox = [v6 rootMailbox];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)indexPathForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  sortedAccountsMailboxes = [(MailboxParentPickerTableController *)self sortedAccountsMailboxes];
  v6 = [sortedAccountsMailboxes indexOfObject:mailboxCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL && (-[MailboxParentPickerTableController sortedAccountsMailboxes](self, "sortedAccountsMailboxes"), v7 = objc_claimAutoreleasedReturnValue(), [mailboxCopy account], v8 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v7, "indexOfObject:", v8), v8, v7, v6 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v9 = 0;
  }

  else
  {
    v9 = [NSIndexPath indexPathForRow:v6 inSection:0];
  }

  return v9;
}

@end