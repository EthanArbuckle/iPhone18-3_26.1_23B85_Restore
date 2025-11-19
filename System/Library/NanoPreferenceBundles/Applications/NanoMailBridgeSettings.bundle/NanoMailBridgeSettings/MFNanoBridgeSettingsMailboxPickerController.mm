@interface MFNanoBridgeSettingsMailboxPickerController
- (BOOL)selectedMailboxes:(id)a3 containsMailbox:(id)a4;
- (BOOL)toggleAllInboxesForSelectedMailboxes:(id)a3;
- (BOOL)toggleUnifiedMailboxForSelectedMailboxes:(id)a3;
- (BOOL)updateInboxSelectionWithNewMailboxSelection:(id)a3 selectedMailboxes:(id)a4;
- (MFNanoBridgeSettingsMailboxPickerController)init;
- (MFNanoBridgeSettingsMailboxPickerControllerDelegate)delegate;
- (id)_indexPathForMailbox:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_notifyDelegateThatSelectedMailboxesChanged;
- (void)_recreateMailboxes;
- (void)accountMailboxPickerController:(id)a3 didChangeSelectedMailboxes:(id)a4;
- (void)refreshData;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation MFNanoBridgeSettingsMailboxPickerController

- (MFNanoBridgeSettingsMailboxPickerController)init
{
  v3.receiver = self;
  v3.super_class = MFNanoBridgeSettingsMailboxPickerController;
  return [(MFNanoBridgeSettingsMailboxPickerController *)&v3 initWithStyle:2];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = MFNanoBridgeSettingsMailboxPickerController;
  [(MFNanoBridgeSettingsMailboxPickerController *)&v7 viewWillAppear:?];
  v5 = [(MFNanoBridgeSettingsMailboxPickerController *)self tableView];
  v6 = [NSIndexPath indexPathForRow:0x7FFFFFFFFFFFFFFFLL inSection:0x7FFFFFFFFFFFFFFFLL];
  [v5 selectRowAtIndexPath:v6 animated:v3 scrollPosition:0];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = MFNanoBridgeSettingsMailboxPickerController;
  [(MFNanoBridgeSettingsMailboxPickerController *)&v6 viewDidLoad];
  v3 = [(MFNanoBridgeSettingsMailboxPickerController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"kMailboxCellIdentifier"];

  v4 = [(MFNanoBridgeSettingsMailboxPickerController *)self tableView];
  [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"kAccountCellIdentifier"];

  v5 = [(MFNanoBridgeSettingsMailboxPickerController *)self tableView];
  [v5 setSectionFooterHeight:0.0];

  [(MFNanoBridgeSettingsMailboxPickerController *)self setClearsSelectionOnViewWillAppear:0];
  [(MFNanoBridgeSettingsMailboxPickerController *)self refreshData];
}

- (void)refreshData
{
  v3 = [(NSMutableArray *)self->_selectedMailboxes firstObject];
  v30 = [(MFNanoBridgeSettingsMailboxPickerController *)self _indexPathForMailbox:v3];

  v4 = +[MFNanoBridgeSettingsManager sharedInstance];
  [v4 reloadCachedAccounts];

  v5 = +[MFNanoBridgeSettingsManager sharedInstance];
  v6 = [v5 activeAccounts];
  activeAccounts = self->_activeAccounts;
  self->_activeAccounts = v6;

  v8 = [(MFNanoBridgeSettingsMailboxPickerController *)self navigationController];
  v9 = [v8 topViewController];
  currentAccountMailboxPickerController = self->_currentAccountMailboxPickerController;

  if (v9 == currentAccountMailboxPickerController)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v12 = self->_activeAccounts;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v13)
    {
      v14 = *v33;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v33 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = [*(*(&v32 + 1) + 8 * i) uniqueID];
          v17 = [(MFNanoBridgeSettingsAccountMailboxPickerController *)self->_currentAccountMailboxPickerController account];
          v18 = [v17 uniqueID];
          v19 = [v16 isEqualToString:v18];

          if (v19)
          {

            goto LABEL_13;
          }
        }

        v13 = [(NSArray *)v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v20 = [(MFNanoBridgeSettingsMailboxPickerController *)self navigationController];
    v21 = [v20 popViewControllerAnimated:1];
  }

  else
  {
    v11 = self->_currentAccountMailboxPickerController;
    self->_currentAccountMailboxPickerController = 0;
  }

LABEL_13:
  [(MFNanoBridgeSettingsMailboxPickerController *)self _recreateMailboxes];
  v22 = +[MFNanoBridgeSettingsManager sharedInstance];
  v23 = [v22 includeMailMailboxes];
  v24 = [v23 mutableCopy];
  selectedMailboxes = self->_selectedMailboxes;
  self->_selectedMailboxes = v24;

  v26 = [(MFNanoBridgeSettingsMailboxPickerController *)self tableView];
  [v26 reloadData];

  v27 = [(NSMutableArray *)self->_selectedMailboxes firstObject];
  v28 = [(MFNanoBridgeSettingsMailboxPickerController *)self _indexPathForMailbox:v27];

  if (v28 && ([v28 isEqual:v31] & 1) == 0)
  {
    v29 = [(MFNanoBridgeSettingsMailboxPickerController *)self tableView];
    [v29 scrollToRowAtIndexPath:v28 atScrollPosition:2 animated:0];
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  if (!a4)
  {
    v8 = &OBJC_IVAR___MFNanoBridgeSettingsMailboxPickerController__mailboxes;
    goto LABEL_5;
  }

  p_activeAccounts = &self->_activeAccounts;
  if ([(NSArray *)self->_activeAccounts count]<= 1)
  {
    v8 = &OBJC_IVAR___MFNanoBridgeSettingsMailboxPickerController__singleAccountMailboxes;
LABEL_5:
    p_activeAccounts = (self + *v8);
  }

  v9 = [(NSArray *)*p_activeAccounts count];

  return v9;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (a4 < 1)
  {
    v7 = 0;
  }

  else
  {
    v4 = [(NSArray *)self->_activeAccounts count];
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = v5;
    if (v4 < 2)
    {
      [v5 localizedStringForKey:@"MAILBOXES_SECTION_TITLE" value:&stru_34FF0 table:@"Main"];
    }

    else
    {
      [v5 localizedStringForKey:@"ACCOUNTS_SECTION_TITLE" value:&stru_34FF0 table:@"Main"];
    }
    v7 = ;
  }

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v26 = a3;
  v27 = a4;
  if ([v27 section] && -[NSArray count](self->_activeAccounts, "count") != &dword_0 + 1)
  {
    v28 = [v26 dequeueReusableCellWithIdentifier:@"kAccountCellIdentifier" forIndexPath:v27];
    v6 = -[NSArray objectAtIndexedSubscript:](self->_activeAccounts, "objectAtIndexedSubscript:", [v27 row]);
    v7 = [v6 displayName];
    [v28 setTitle:v7];

    v8 = [MailAccount accountImageForAccount:v6];
    [v28 setIcon:v8];

    [v28 setLevel:0];
    [v28 setSubtitle:&stru_34FF0];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = self->_selectedMailboxes;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v10)
    {
      v11 = *v30;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v29 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = v13;
            v15 = [v14 accountUniqueIdentifier];
            v16 = [v6 uniqueID];
            if ([v15 isEqualToString:v16])
            {
              v17 = [v14 type] == &dword_4 + 3;

              if (!v17)
              {
                v24 = [v14 displayName];
                [v28 setSubtitle:v24];

                goto LABEL_28;
              }
            }

            else
            {
            }
          }
        }

        v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v10);
    }

LABEL_28:

    [v28 setAccessoryType:1];
  }

  else
  {
    v28 = [v26 dequeueReusableCellWithIdentifier:@"kMailboxCellIdentifier" forIndexPath:v27];
    if ([v27 section])
    {
      -[NSArray objectAtIndexedSubscript:](self->_singleAccountMailboxes, "objectAtIndexedSubscript:", [v27 row]);
    }

    else
    {
      -[NSArray objectAtIndexedSubscript:](self->_mailboxes, "objectAtIndexedSubscript:", [v27 row]);
    }
    v18 = ;
    if ([(NSArray *)self->_activeAccounts count]>= 2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v19 = [v18 accountUniqueIdentifier];
      v20 = [MailAccount accountWithUniqueId:v19];
      v21 = [v20 displayName];
      [v28 setTitle:v21];
    }

    else
    {
      v19 = [v18 displayName];
      [v28 setTitle:v19];
    }

    v22 = [v18 icon];
    [v28 setIcon:v22];

    [v28 setLevel:{objc_msgSend(v18, "level")}];
    [v28 setSubtitle:&stru_34FF0];
    if ([(MFNanoBridgeSettingsMailboxPickerController *)self selectedMailboxes:self->_selectedMailboxes containsMailbox:v18])
    {
      v23 = 3;
    }

    else
    {
      v23 = 0;
    }

    [v28 setAccessoryType:v23];
  }

  return v28;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 section] && -[NSArray count](self->_activeAccounts, "count") != &dword_0 + 1)
  {
    v8 = [MFNanoBridgeSettingsAccountMailboxPickerController alloc];
    v9 = -[NSArray objectAtIndexedSubscript:](self->_activeAccounts, "objectAtIndexedSubscript:", [v7 row]);
    v10 = [(MFNanoBridgeSettingsAccountMailboxPickerController *)v8 initWithAccount:v9];
    currentAccountMailboxPickerController = self->_currentAccountMailboxPickerController;
    self->_currentAccountMailboxPickerController = v10;

    [(MFNanoBridgeSettingsAccountMailboxPickerController *)self->_currentAccountMailboxPickerController setDelegate:self];
    v12 = [(MFNanoBridgeSettingsMailboxPickerController *)self navigationController];
    [v12 pushViewController:self->_currentAccountMailboxPickerController animated:1];
  }

  else
  {
    if ([v7 section])
    {
      -[NSArray objectAtIndexedSubscript:](self->_singleAccountMailboxes, "objectAtIndexedSubscript:", [v7 row]);
    }

    else
    {
      -[NSArray objectAtIndexedSubscript:](self->_mailboxes, "objectAtIndexedSubscript:", [v7 row]);
    }
    v12 = ;
    v13 = [v6 cellForRowAtIndexPath:v7];
    v14 = [(MFNanoBridgeSettingsMailboxPickerController *)self selectedMailboxes:self->_selectedMailboxes containsMailbox:v12];
    selectedMailboxes = self->_selectedMailboxes;
    if (v14)
    {
      if ([(NSMutableArray *)selectedMailboxes count]>= 2)
      {
        v16 = [(NSMutableArray *)self->_selectedMailboxes mutableCopy];
        [v16 removeObject:v12];
        [(MFNanoBridgeSettingsMailboxPickerController *)self updateInboxSelectionWithNewMailboxSelection:v12 selectedMailboxes:v16];
        if ([v16 count])
        {
          [(NSMutableArray *)self->_selectedMailboxes removeObject:v12];
          if (v13)
          {
            [v13 setAccessoryType:0];
            [v13 setSubtitle:&stru_34FF0];
          }
        }
      }
    }

    else
    {
      [(NSMutableArray *)selectedMailboxes addObject:v12];
      if (v13)
      {
        [v13 setAccessoryType:3];
      }
    }

    if ([(MFNanoBridgeSettingsMailboxPickerController *)self updateInboxSelectionWithNewMailboxSelection:v12 selectedMailboxes:self->_selectedMailboxes])
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10F74;
      block[3] = &unk_34A20;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }

    [(MFNanoBridgeSettingsMailboxPickerController *)self _notifyDelegateThatSelectedMailboxesChanged];
    [v6 deselectRowAtIndexPath:v7 animated:1];
  }
}

- (void)accountMailboxPickerController:(id)a3 didChangeSelectedMailboxes:(id)a4
{
  v6 = a4;
  [(NSMutableArray *)self->_selectedMailboxes removeAllObjects];
  [(NSMutableArray *)self->_selectedMailboxes addObjectsFromArray:v6];
  [(MFNanoBridgeSettingsMailboxPickerController *)self toggleUnifiedMailboxForSelectedMailboxes:self->_selectedMailboxes];
  [(MFNanoBridgeSettingsMailboxPickerController *)self _notifyDelegateThatSelectedMailboxesChanged];
  v5 = [(MFNanoBridgeSettingsMailboxPickerController *)self tableView];
  [v5 reloadData];
}

- (void)_recreateMailboxes
{
  v3 = objc_alloc_init(NSMutableArray);
  v30 = self;
  if ([(NSArray *)self->_activeAccounts count]>= 2)
  {
    v4 = [[MFNanoBridgeSettingsUnifiedMailbox alloc] initWithType:7];
    [(NSArray *)v3 addObject:v4];
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v5 = self->_activeAccounts;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v6)
  {
    v7 = *v37;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v37 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v36 + 1) + 8 * i);
        v10 = [MFNanoBridgeSettingsAccountSpecificMailbox alloc];
        v11 = [v9 mailboxUidOfType:7 createIfNeeded:0];
        v12 = [(MFNanoBridgeSettingsAccountSpecificMailbox *)v10 initWithMailboxUid:v11 account:v9];

        [(NSArray *)v3 addObject:v12];
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v6);
  }

  v13 = [[MFNanoBridgeSettingsSharedMailbox alloc] initWithType:1];
  [(NSArray *)v3 addObject:v13];

  v14 = [[MFNanoBridgeSettingsSharedMailbox alloc] initWithType:2];
  [(NSArray *)v3 addObject:v14];

  v15 = [[MFNanoBridgeSettingsSharedMailbox alloc] initWithType:3];
  [(NSArray *)v3 addObject:v15];

  v16 = [[MFNanoBridgeSettingsSharedMailbox alloc] initWithType:4];
  [(NSArray *)v3 addObject:v16];

  v17 = [[MFNanoBridgeSettingsSharedMailbox alloc] initWithType:6];
  [(NSArray *)v3 addObject:v17];

  v18 = [[MFNanoBridgeSettingsSharedMailbox alloc] initWithType:7];
  [(NSArray *)v3 addObject:v18];

  v31 = objc_alloc_init(NSMutableArray);
  if ([(NSArray *)v30->_activeAccounts count]== &dword_0 + 1)
  {
    v19 = [(NSArray *)v30->_activeAccounts objectAtIndexedSubscript:0];
    [v19 allMailboxUidsSortedWithSpecialsAtTopIncludingLocals:1];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v20 = v33 = 0u;
    v21 = [v20 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (!v21)
    {
      goto LABEL_22;
    }

    v22 = *v33;
    while (1)
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v24 = *(*(&v32 + 1) + 8 * j);
        v25 = [v24 nano_mailbox];
        if (([(MFNanoBridgeSettingsAccountSpecificMailbox *)v25 shouldFilter]& 1) == 0)
        {
          v26 = [v24 mailboxType] == &dword_4 + 3;

          if (v26)
          {
            continue;
          }

          v25 = [[MFNanoBridgeSettingsAccountSpecificMailbox alloc] initWithMailboxUid:v24 account:v19];
          [(NSArray *)v31 addObject:v25];
        }
      }

      v21 = [v20 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (!v21)
      {
LABEL_22:

        break;
      }
    }
  }

  mailboxes = v30->_mailboxes;
  v30->_mailboxes = v3;
  v28 = v3;

  singleAccountMailboxes = v30->_singleAccountMailboxes;
  v30->_singleAccountMailboxes = v31;
}

- (id)_indexPathForMailbox:(id)a3
{
  v4 = a3;
  if (v4 && (mailboxes = self->_mailboxes) != 0 && self->_activeAccounts)
  {
    for (i = 0; i < [(NSArray *)mailboxes count]; ++i)
    {
      v7 = [(NSArray *)self->_mailboxes objectAtIndexedSubscript:i];
      if ([v4 isEqual:v7])
      {
        v9 = [NSIndexPath indexPathForRow:i inSection:0];
LABEL_23:
        v16 = v9;
        goto LABEL_24;
      }

      mailboxes = self->_mailboxes;
    }

    for (j = 0; j < [(NSArray *)self->_singleAccountMailboxes count]; ++j)
    {
      v7 = [(NSArray *)self->_singleAccountMailboxes objectAtIndexedSubscript:j];
      if ([v4 isEqual:v7])
      {
        v9 = [NSIndexPath indexPathForRow:j inSection:1];
        goto LABEL_23;
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_21;
    }

    v7 = v4;
    for (k = 0; k < [(NSArray *)self->_activeAccounts count]; ++k)
    {
      v11 = [(NSArray *)self->_activeAccounts objectAtIndexedSubscript:k];
      v12 = [v7 accountUniqueIdentifier];
      v13 = [v11 uniqueID];
      if ([v12 isEqualToString:v13])
      {
        v14 = [v7 type];

        if (v14 != &dword_4 + 3)
        {
          v16 = [NSIndexPath indexPathForRow:k inSection:1];

          goto LABEL_24;
        }
      }

      else
      {
      }
    }

    v16 = 0;
LABEL_24:
  }

  else
  {
LABEL_21:
    v16 = 0;
  }

  return v16;
}

- (BOOL)selectedMailboxes:(id)a3 containsMailbox:(id)a4
{
  v5 = a3;
  v6 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        if ([*(*(&v12 + 1) + 8 * i) isEqual:{v6, v12}])
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (void)_notifyDelegateThatSelectedMailboxesChanged
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained mailboxPickerController:self didChangeSelectedMailboxes:self->_selectedMailboxes];
}

- (BOOL)updateInboxSelectionWithNewMailboxSelection:(id)a3 selectedMailboxes:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(MFNanoBridgeSettingsMailboxPickerController *)self toggleAllInboxesForSelectedMailboxes:v7];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v8 = [(MFNanoBridgeSettingsMailboxPickerController *)self toggleUnifiedMailboxForSelectedMailboxes:v7];
  }

  v9 = v8;
LABEL_7:

  return v9;
}

- (BOOL)toggleUnifiedMailboxForSelectedMailboxes:(id)a3
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          if ([v10 type] == &dword_4 + 3)
          {
            ++v6;
          }
        }

        if (v6 == [(NSArray *)self->_activeAccounts count])
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_15:

  v12 = [[MFNanoBridgeSettingsUnifiedMailbox alloc] initWithType:7];
  v13 = [(MFNanoBridgeSettingsMailboxPickerController *)self selectedMailboxes:v4 containsMailbox:v12];
  if ((v11 | v13))
  {
    if ((v11 & v13) != 1)
    {
      v14 = 0;
      goto LABEL_21;
    }

    [v4 removeObject:v12];
  }

  else
  {
    [v4 addObject:v12];
  }

  v14 = 1;
LABEL_21:

  return v14;
}

- (BOOL)toggleAllInboxesForSelectedMailboxes:(id)a3
{
  v4 = a3;
  v15 = [[MFNanoBridgeSettingsUnifiedMailbox alloc] initWithType:7];
  v16 = [(MFNanoBridgeSettingsMailboxPickerController *)self selectedMailboxes:v4 containsMailbox:v15];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_activeAccounts;
  v6 = 0;
  v7 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 mailboxUidOfType:7 createIfNeeded:0];
        if (v11)
        {
          v12 = [[MFNanoBridgeSettingsAccountSpecificMailbox alloc] initWithMailboxUid:v11 account:v10];
          v13 = [(MFNanoBridgeSettingsMailboxPickerController *)self selectedMailboxes:v4 containsMailbox:v12];
          if ((v16 ^ 1 | v13))
          {
            if (!(v16 & 1 | ((v13 & 1) == 0)))
            {
              [v4 removeObject:v12];
              goto LABEL_11;
            }
          }

          else
          {
            [v4 addObject:v12];
LABEL_11:
            v6 = 1;
          }
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  return v6 & 1;
}

- (MFNanoBridgeSettingsMailboxPickerControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end