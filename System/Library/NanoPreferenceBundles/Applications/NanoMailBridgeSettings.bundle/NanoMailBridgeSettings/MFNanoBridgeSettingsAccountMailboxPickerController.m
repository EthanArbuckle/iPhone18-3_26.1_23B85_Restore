@interface MFNanoBridgeSettingsAccountMailboxPickerController
- (BOOL)selectedMailboxContains:(id)a3;
- (MFNanoBridgeSettingsAccountMailboxPickerController)initWithAccount:(id)a3;
- (MFNanoBridgeSettingsAccountMailboxPickerControllerDelegate)delegate;
- (id)_indexPathForMailbox:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_notifyDelegateThatSelectedMailboxesChanged;
- (void)_recreateMailboxes;
- (void)refreshData;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation MFNanoBridgeSettingsAccountMailboxPickerController

- (MFNanoBridgeSettingsAccountMailboxPickerController)initWithAccount:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MFNanoBridgeSettingsAccountMailboxPickerController;
  v6 = [(MFNanoBridgeSettingsAccountMailboxPickerController *)&v11 initWithStyle:2];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
    v8 = [(MailAccount *)v7->_account displayName];
    v9 = [(MFNanoBridgeSettingsAccountMailboxPickerController *)v7 navigationItem];
    [v9 setTitle:v8];
  }

  return v7;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = MFNanoBridgeSettingsAccountMailboxPickerController;
  [(MFNanoBridgeSettingsAccountMailboxPickerController *)&v5 viewDidLoad];
  v3 = [(MFNanoBridgeSettingsAccountMailboxPickerController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"kMailboxCellIdentifier"];

  v4 = [(MFNanoBridgeSettingsAccountMailboxPickerController *)self tableView];
  [v4 setSectionFooterHeight:0.0];

  [(MFNanoBridgeSettingsAccountMailboxPickerController *)self refreshData];
}

- (void)refreshData
{
  v3 = [(NSMutableArray *)self->_selectedMailboxes firstObject];
  v12 = [(MFNanoBridgeSettingsAccountMailboxPickerController *)self _indexPathForMailbox:v3];

  [(MFNanoBridgeSettingsAccountMailboxPickerController *)self _recreateMailboxes];
  v4 = [(MFNanoBridgeSettingsAccountMailboxPickerController *)self tableView];
  [v4 reloadData];

  v5 = +[MFNanoBridgeSettingsManager sharedInstance];
  v6 = [v5 includeMailMailboxes];
  v7 = [v6 mutableCopy];
  selectedMailboxes = self->_selectedMailboxes;
  self->_selectedMailboxes = v7;

  v9 = [(NSMutableArray *)self->_selectedMailboxes firstObject];
  v10 = [(MFNanoBridgeSettingsAccountMailboxPickerController *)self _indexPathForMailbox:v9];

  if (v10 && ([v10 isEqual:v12] & 1) == 0)
  {
    v11 = [(MFNanoBridgeSettingsAccountMailboxPickerController *)self tableView];
    [v11 scrollToRowAtIndexPath:v10 atScrollPosition:2 animated:0];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"kMailboxCellIdentifier" forIndexPath:v6];
  v8 = -[NSArray objectAtIndexedSubscript:](self->_mailboxes, "objectAtIndexedSubscript:", [v6 row]);
  v9 = [v8 displayName];
  [v7 setTitle:v9];

  v10 = [v8 icon];
  [v7 setIcon:v10];

  [v7 setLevel:{objc_msgSend(v8, "level")}];
  [v7 setSubtitle:&stru_34FF0];
  if ([(MFNanoBridgeSettingsAccountMailboxPickerController *)self selectedMailboxContains:v8])
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  [v7 setAccessoryType:v11];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (![v6 section])
  {
    v7 = -[NSArray objectAtIndexedSubscript:](self->_mailboxes, "objectAtIndexedSubscript:", [v6 row]);
    v8 = [v12 cellForRowAtIndexPath:v6];
    v9 = [(MFNanoBridgeSettingsAccountMailboxPickerController *)self selectedMailboxContains:v7];
    selectedMailboxes = self->_selectedMailboxes;
    if (v9)
    {
      if ([(NSMutableArray *)selectedMailboxes count]< 2)
      {
        goto LABEL_9;
      }

      [(NSMutableArray *)self->_selectedMailboxes removeObject:v7];
      if (!v8)
      {
        goto LABEL_9;
      }

      v11 = 0;
    }

    else
    {
      [(NSMutableArray *)selectedMailboxes addObject:v7];
      if (!v8)
      {
LABEL_9:
        [(MFNanoBridgeSettingsAccountMailboxPickerController *)self _notifyDelegateThatSelectedMailboxesChanged];
        [v12 deselectRowAtIndexPath:v6 animated:1];

        goto LABEL_10;
      }

      v11 = 3;
    }

    [v8 setAccessoryType:v11];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)_recreateMailboxes
{
  v3 = objc_alloc_init(NSMutableArray);
  [(MailAccount *)self->_account allMailboxUidsSortedWithSpecialsAtTopIncludingLocals:1];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v4 = v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 nano_mailbox];
        if (([(MFNanoBridgeSettingsAccountSpecificMailbox *)v9 shouldFilter]& 1) == 0)
        {
          v10 = [v8 mailboxType] == &dword_4 + 3;

          if (v10)
          {
            continue;
          }

          v9 = [[MFNanoBridgeSettingsAccountSpecificMailbox alloc] initWithMailboxUid:v8 account:self->_account];
          [(NSArray *)v3 addObject:v9];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  mailboxes = self->_mailboxes;
  self->_mailboxes = v3;
}

- (id)_indexPathForMailbox:(id)a3
{
  v4 = a3;
  if (v4)
  {
    mailboxes = self->_mailboxes;
    if (mailboxes)
    {
      if (self->_account)
      {
        for (i = 0; i < [(NSArray *)mailboxes count]; ++i)
        {
          v7 = [(NSArray *)self->_mailboxes objectAtIndexedSubscript:i];
          if ([v4 isEqual:v7])
          {
            v8 = [NSIndexPath indexPathForRow:i inSection:0];

            goto LABEL_9;
          }

          mailboxes = self->_mailboxes;
        }
      }
    }
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (BOOL)selectedMailboxContains:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_selectedMailboxes;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * i) isEqual:{v4, v10}])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_notifyDelegateThatSelectedMailboxesChanged
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained accountMailboxPickerController:self didChangeSelectedMailboxes:self->_selectedMailboxes];
}

- (MFNanoBridgeSettingsAccountMailboxPickerControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end