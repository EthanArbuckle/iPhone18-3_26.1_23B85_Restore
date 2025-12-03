@interface MailboxListViewControllerPrefs
- (id)_ntsMailboxesForAccount:(id)account;
- (id)indexPathForMailbox:(id)mailbox;
- (id)mailboxForIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_loadMailboxes;
- (void)_resetCell:(id)cell isSelectedMailbox:(BOOL)mailbox;
- (void)_updateSelection;
- (void)refreshDisplay;
- (void)setViewingContext:(id)context;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation MailboxListViewControllerPrefs

- (void)setViewingContext:(id)context
{
  contextCopy = context;
  v7.receiver = self;
  v7.super_class = MailboxListViewControllerPrefs;
  [(MailboxListViewControllerBase *)&v7 setViewingContext:contextCopy];
  if (contextCopy)
  {
    self->_pickingForType = [contextCopy type];
    account = [contextCopy account];
    displayName = [account displayName];
    [(MailboxListViewControllerPrefs *)self setTitle:displayName];
  }
}

- (id)mailboxForIndexPath:(id)path
{
  pathCopy = path;
  v5 = pathCopy;
  if (!pathCopy)
  {
    goto LABEL_6;
  }

  if ([pathCopy section] != &dword_0 + 1)
  {
    if (![v5 section])
    {
      mailboxSelectionTarget = [(MailboxListViewControllerBase *)self mailboxSelectionTarget];
      if (mailboxSelectionTarget && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [mailboxSelectionTarget selectedLocally:self];
      }

      goto LABEL_10;
    }

LABEL_6:
    v8 = 0;
    goto LABEL_12;
  }

  sortedMailboxes = [(MailboxListViewControllerBase *)self sortedMailboxes];
  mailboxSelectionTarget = [sortedMailboxes objectAtIndex:{objc_msgSend(v5, "row")}];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  mailboxSelectionTarget = mailboxSelectionTarget;
  v8 = mailboxSelectionTarget;
LABEL_11:

LABEL_12:

  return v8;
}

- (id)indexPathForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  sortedMailboxes = [(MailboxListViewControllerBase *)self sortedMailboxes];
  v6 = [sortedMailboxes indexOfObject:mailboxCopy];

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
  tableView = [(MailboxListViewControllerPrefs *)self tableView];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  visibleCells = [tableView visibleCells];
  v5 = [visibleCells countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(visibleCells);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        [v8 setAccessoryType:0];
        [v8 setCurrentMailbox:0];
      }

      v5 = [visibleCells countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  selectedMailbox = [(MailboxListViewControllerBase *)self selectedMailbox];

  if (selectedMailbox)
  {
    sortedMailboxes = [(MailboxListViewControllerBase *)self sortedMailboxes];
    selectedMailbox2 = [(MailboxListViewControllerBase *)self selectedMailbox];
    v12 = [sortedMailboxes indexOfObject:selectedMailbox2];

    [NSIndexPath indexPathForRow:v12 inSection:1];
  }

  else
  {
    [NSIndexPath indexPathForRow:0 inSection:0];
  }
  v13 = ;
  v14 = [tableView cellForRowAtIndexPath:v13];

  [v14 setAccessoryType:3];
  [v14 setCurrentMailbox:1];
}

- (void)refreshDisplay
{
  [(MailboxListViewControllerPrefs *)self _updateSelection];
  v4 = [NSIndexPath indexPathForRow:0x7FFFFFFFFFFFFFFFLL inSection:0x7FFFFFFFFFFFFFFFLL];
  tableView = [(MailboxListViewControllerPrefs *)self tableView];
  [tableView selectRowAtIndexPath:v4 animated:1 scrollPosition:0];
}

- (id)_ntsMailboxesForAccount:(id)account
{
  v3 = [account allMailboxUidsSortedWithSpecialsAtTopIncludingLocals:0];

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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  if (section)
  {
    v9.receiver = self;
    v9.super_class = MailboxListViewControllerPrefs;
    v7 = [(MailboxListViewControllerBase *)&v9 tableView:viewCopy numberOfRowsInSection:section];
  }

  else
  {
    v7 = &dword_0 + 1;
  }

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section] == &dword_0 + 1)
  {
    sortedMailboxes = [(MailboxListViewControllerBase *)self sortedMailboxes];
    selectedMailbox2 = [sortedMailboxes objectAtIndex:{objc_msgSend(pathCopy, "row")}];

    v10 = [viewCopy dequeueReusableCellWithIdentifier:@"MailboxServerReuseCell"];
    if (!v10)
    {
      v10 = [[MailboxGroupedPickerTableCell alloc] initWithStyle:0 reuseIdentifier:@"MailboxServerReuseCell"];
    }

    [(MailboxGroupedPickerTableCell *)v10 setMailbox:selectedMailbox2];
    if ([selectedMailbox2 type])
    {
      v11 = [selectedMailbox2 type] == self->_pickingForType;
    }

    else
    {
      v11 = 1;
    }

    [(MailboxGroupedPickerTableCell *)v10 setCellEnabled:v11];
    selectedMailbox = [(MailboxListViewControllerBase *)self selectedMailbox];
    v12 = selectedMailbox == selectedMailbox2;
  }

  else
  {
    v10 = [viewCopy dequeueReusableCellWithIdentifier:@"MailboxPhoneReuseCell"];
    if (!v10)
    {
      v10 = [[MailboxGroupedPickerTableCell alloc] initWithStyle:0 reuseIdentifier:@"MailboxPhoneReuseCell"];
    }

    [(MailboxGroupedPickerTableCell *)v10 setMailboxType:self->_pickingForType];
    selectedMailbox2 = [(MailboxListViewControllerBase *)self selectedMailbox];
    v12 = selectedMailbox2 == 0;
  }

  [(MailboxListViewControllerPrefs *)self _resetCell:v10 isSelectedMailbox:v12];

  return v10;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  sortedMailboxes = [(MailboxListViewControllerBase *)self sortedMailboxes];
  v9 = [sortedMailboxes objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  selectedMailbox = [(MailboxListViewControllerBase *)self selectedMailbox];
  [(MailboxListViewControllerPrefs *)self _resetCell:cellCopy isSelectedMailbox:selectedMailbox == v9];
}

- (void)_resetCell:(id)cell isSelectedMailbox:(BOOL)mailbox
{
  mailboxCopy = mailbox;
  cellCopy = cell;
  if (mailboxCopy)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  v7 = cellCopy;
  [cellCopy setAccessoryType:v6];
  [v7 setCurrentMailbox:mailboxCopy];
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (section == 1)
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v6 localizedStringForKey:@"ON_THE_SERVER" value:&stru_B9FC8 table:@"AccountPreferences"];
    goto LABEL_5;
  }

  if (!section)
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

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [view cellForRowAtIndexPath:pathCopy];
  if ([v6 isCellEnabled])
  {
    v7 = pathCopy;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end