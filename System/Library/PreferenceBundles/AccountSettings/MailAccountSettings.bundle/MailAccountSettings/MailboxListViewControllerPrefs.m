@interface MailboxListViewControllerPrefs
- (id)_ntsMailboxesForAccount:(id)a3;
- (id)indexPathForMailbox:(id)a3;
- (id)mailboxForIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_loadMailboxes;
- (void)_resetCell:(id)a3 isSelectedMailbox:(BOOL)a4;
- (void)_updateSelection;
- (void)refreshDisplay;
- (void)setViewingContext:(id)a3;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation MailboxListViewControllerPrefs

- (void)setViewingContext:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MailboxListViewControllerPrefs;
  [(MailboxListViewControllerBase *)&v7 setViewingContext:v4];
  if (v4)
  {
    self->_pickingForType = [v4 type];
    v5 = [v4 account];
    v6 = [v5 displayName];
    [(MailboxListViewControllerPrefs *)self setTitle:v6];
  }
}

- (id)mailboxForIndexPath:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

  if ([v4 section] != &dword_0 + 1)
  {
    if (![v5 section])
    {
      v7 = [(MailboxListViewControllerBase *)self mailboxSelectionTarget];
      if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v7 selectedLocally:self];
      }

      goto LABEL_10;
    }

LABEL_6:
    v8 = 0;
    goto LABEL_12;
  }

  v6 = [(MailboxListViewControllerBase *)self sortedMailboxes];
  v7 = [v6 objectAtIndex:{objc_msgSend(v5, "row")}];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  v7 = v7;
  v8 = v7;
LABEL_11:

LABEL_12:

  return v8;
}

- (id)indexPathForMailbox:(id)a3
{
  v4 = a3;
  v5 = [(MailboxListViewControllerBase *)self sortedMailboxes];
  v6 = [v5 indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [NSIndexPath indexPathForRow:v6 inSection:1];
  }

  return v7;
}

- (void)_updateSelection
{
  v3 = [(MailboxListViewControllerPrefs *)self tableView];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 visibleCells];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        [v8 setAccessoryType:0];
        [v8 setCurrentMailbox:0];
      }

      v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v9 = [(MailboxListViewControllerBase *)self selectedMailbox];

  if (v9)
  {
    v10 = [(MailboxListViewControllerBase *)self sortedMailboxes];
    v11 = [(MailboxListViewControllerBase *)self selectedMailbox];
    v12 = [v10 indexOfObject:v11];

    [NSIndexPath indexPathForRow:v12 inSection:1];
  }

  else
  {
    [NSIndexPath indexPathForRow:0 inSection:0];
  }
  v13 = ;
  v14 = [v3 cellForRowAtIndexPath:v13];

  [v14 setAccessoryType:3];
  [v14 setCurrentMailbox:1];
}

- (void)refreshDisplay
{
  [(MailboxListViewControllerPrefs *)self _updateSelection];
  v4 = [NSIndexPath indexPathForRow:0x7FFFFFFFFFFFFFFFLL inSection:0x7FFFFFFFFFFFFFFFLL];
  v3 = [(MailboxListViewControllerPrefs *)self tableView];
  [v3 selectRowAtIndexPath:v4 animated:1 scrollPosition:0];
}

- (id)_ntsMailboxesForAccount:(id)a3
{
  v3 = [a3 allMailboxUidsSortedWithSpecialsAtTopIncludingLocals:0];

  return v3;
}

- (void)_loadMailboxes
{
  v3.receiver = self;
  v3.super_class = MailboxListViewControllerPrefs;
  [(MailboxListViewControllerBase *)&v3 _loadMailboxes];
  [(MailboxListViewControllerPrefs *)self _updateSelection];
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_updateSelection" object:0];
  [(MailboxListViewControllerPrefs *)self performSelector:"_updateSelection" withObject:0 afterDelay:0.01];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  if (a4)
  {
    v9.receiver = self;
    v9.super_class = MailboxListViewControllerPrefs;
    v7 = [(MailboxListViewControllerBase *)&v9 tableView:v6 numberOfRowsInSection:a4];
  }

  else
  {
    v7 = &dword_0 + 1;
  }

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 section] == &dword_0 + 1)
  {
    v8 = [(MailboxListViewControllerBase *)self sortedMailboxes];
    v9 = [v8 objectAtIndex:{objc_msgSend(v7, "row")}];

    v10 = [v6 dequeueReusableCellWithIdentifier:@"MailboxServerReuseCell"];
    if (!v10)
    {
      v10 = [[MailboxGroupedPickerTableCell alloc] initWithStyle:0 reuseIdentifier:@"MailboxServerReuseCell"];
    }

    [(MailboxGroupedPickerTableCell *)v10 setMailbox:v9];
    if ([v9 type])
    {
      v11 = [v9 type] == self->_pickingForType;
    }

    else
    {
      v11 = 1;
    }

    [(MailboxGroupedPickerTableCell *)v10 setCellEnabled:v11];
    v13 = [(MailboxListViewControllerBase *)self selectedMailbox];
    v12 = v13 == v9;
  }

  else
  {
    v10 = [v6 dequeueReusableCellWithIdentifier:@"MailboxPhoneReuseCell"];
    if (!v10)
    {
      v10 = [[MailboxGroupedPickerTableCell alloc] initWithStyle:0 reuseIdentifier:@"MailboxPhoneReuseCell"];
    }

    [(MailboxGroupedPickerTableCell *)v10 setMailboxType:self->_pickingForType];
    v9 = [(MailboxListViewControllerBase *)self selectedMailbox];
    v12 = v9 == 0;
  }

  [(MailboxListViewControllerPrefs *)self _resetCell:v10 isSelectedMailbox:v12];

  return v10;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v11 = a4;
  v7 = a5;
  v8 = [(MailboxListViewControllerBase *)self sortedMailboxes];
  v9 = [v8 objectAtIndex:{objc_msgSend(v7, "row")}];

  v10 = [(MailboxListViewControllerBase *)self selectedMailbox];
  [(MailboxListViewControllerPrefs *)self _resetCell:v11 isSelectedMailbox:v10 == v9];
}

- (void)_resetCell:(id)a3 isSelectedMailbox:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (v4)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  v7 = v5;
  [v5 setAccessoryType:v6];
  [v7 setCurrentMailbox:v4];
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = a3;
  if (a4 == 1)
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v6 localizedStringForKey:@"ON_THE_SERVER" value:&stru_B9FC8 table:@"AccountPreferences"];
    goto LABEL_5;
  }

  if (!a4)
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"ON_MY"];
    v8 = [v6 localizedStringForKey:v7 value:&stru_B9FC8 table:@"AccountPreferences"];

LABEL_5:
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [a3 cellForRowAtIndexPath:v5];
  if ([v6 isCellEnabled])
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end