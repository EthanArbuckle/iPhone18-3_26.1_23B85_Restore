@interface AccountFavoritesPickerController
- (AccountFavoritesPickerControllerDelegate)delegate;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_ntsMailboxesForAccount:(id)account;
- (id)indexPathForMailbox:(id)mailbox;
- (id)mailboxForIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)doneButtonClicked:(id)clicked;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AccountFavoritesPickerController

- (void)viewWillAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = AccountFavoritesPickerController;
  [(MailboxListViewControllerBase *)&v9 viewWillAppear:appear];
  account = [(MailboxListViewControllerBase *)self account];
  displayName = [account displayName];
  navigationItem = [(AccountFavoritesPickerController *)self navigationItem];
  [navigationItem setTitle:displayName];

  tableView = [(AccountFavoritesPickerController *)self tableView];
  [tableView reloadData];

  mf_updatePreferredContentSizeBasedOnTableView = [(AccountFavoritesPickerController *)self mf_updatePreferredContentSizeBasedOnTableView];
  [(AccountFavoritesPickerController *)self setTableViewObserver:mf_updatePreferredContentSizeBasedOnTableView];
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = AccountFavoritesPickerController;
  [(MailboxListViewControllerBase *)&v9 viewDidLoad];
  v3 = [UIBarButtonItem alloc];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"DONE" value:&stru_100662A88 table:@"Main"];
  v6 = [v3 initWithTitle:v5 style:2 target:self action:"doneButtonClicked:"];

  navigationItem = [(AccountFavoritesPickerController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v6];

  tableView = [(AccountFavoritesPickerController *)self tableView];
  +[MailboxTableCell defaultRowHeight];
  [tableView setEstimatedRowHeight:?];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v5.receiver = self;
  v5.super_class = AccountFavoritesPickerController;
  [(AccountFavoritesPickerController *)&v5 traitCollectionDidChange:changeCopy];
  [(AccountFavoritesPickerController *)self mf_updateTableViewBackgroundColorForPopover];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(MailboxListViewControllerBase *)self sortedMailboxes:view];
  v5 = [v4 count];

  return v5;
}

- (void)doneButtonClicked:(id)clicked
{
  delegate = [(AccountFavoritesPickerController *)self delegate];
  [delegate didFinish];
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    return UITableViewAutomaticDimension;
  }

  +[MailboxTableCell defaultRowHeight];
  return result;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"AccountFavoritesPickerControllerReuseCell"];
  if (!v7)
  {
    v7 = [[MailboxTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccountFavoritesPickerControllerReuseCell"];
  }

  v8 = [(AccountFavoritesPickerController *)self mailboxForIndexPath:pathCopy];
  type = [v8 type];
  v10 = [NSSet setWithObject:v8];
  [(MailboxTableCell *)v7 setLegacyMailboxes:v10];

  if (type == 7)
  {
    [(MailboxTableCell *)v7 setCellEnabled:0];
  }

  else
  {
    delegate = [(AccountFavoritesPickerController *)self delegate];
    v12 = [delegate selectedStateForMailbox:v8];

    if (v12)
    {
      v13 = 3;
      goto LABEL_8;
    }
  }

  v13 = 0;
LABEL_8:
  [(MailboxTableCell *)v7 setAccessoryType:v13];

  return v7;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(AccountFavoritesPickerController *)self mailboxForIndexPath:pathCopy];
  v7 = v6;
  v8 = pathCopy;
  if (v6)
  {
    v8 = pathCopy;
    if ([v6 type] == 7)
    {

      v8 = 0;
    }
  }

  return v8;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = [viewCopy cellForRowAtIndexPath:pathCopy];
  v8 = [(AccountFavoritesPickerController *)self mailboxForIndexPath:pathCopy];
  delegate = [(AccountFavoritesPickerController *)self delegate];
  v10 = [delegate toggleAndReturnSelectedStateForMailbox:v8];

  if (v10)
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  [v7 setAccessoryType:v11];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (id)mailboxForIndexPath:(id)path
{
  pathCopy = path;
  sortedMailboxes = [(MailboxListViewControllerBase *)self sortedMailboxes];
  v6 = [sortedMailboxes objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  return v6;
}

- (id)indexPathForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  sortedMailboxes = [(MailboxListViewControllerBase *)self sortedMailboxes];
  v6 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [sortedMailboxes indexOfObject:mailboxCopy], 0);

  return v6;
}

- (id)_ntsMailboxesForAccount:(id)account
{
  accountCopy = account;
  v5 = +[MailChangeManager sharedChangeManager];
  v6 = [v5 allMailboxUidsSortedWithSpecialsAtTopForAccount:accountCopy includingLocals:1 client:self outbox:0];

  return v6;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  [cellCopy mf_updateBackgroundColorForPopover:{-[AccountFavoritesPickerController mf_supportsPopoverPresentation](self, "mf_supportsPopoverPresentation")}];
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  sortedMailboxes = [(MailboxListViewControllerBase *)self sortedMailboxes];
  v7 = [sortedMailboxes objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  if (v7)
  {
    mv_isSelectable = [v7 mv_isSelectable];
  }

  else
  {
    mv_isSelectable = 1;
  }

  return mv_isSelectable;
}

- (AccountFavoritesPickerControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end