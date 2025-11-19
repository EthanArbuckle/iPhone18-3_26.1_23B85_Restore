@interface AccountFavoritesPickerController
- (AccountFavoritesPickerControllerDelegate)delegate;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_ntsMailboxesForAccount:(id)a3;
- (id)indexPathForMailbox:(id)a3;
- (id)mailboxForIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)doneButtonClicked:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AccountFavoritesPickerController

- (void)viewWillAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = AccountFavoritesPickerController;
  [(MailboxListViewControllerBase *)&v9 viewWillAppear:a3];
  v4 = [(MailboxListViewControllerBase *)self account];
  v5 = [v4 displayName];
  v6 = [(AccountFavoritesPickerController *)self navigationItem];
  [v6 setTitle:v5];

  v7 = [(AccountFavoritesPickerController *)self tableView];
  [v7 reloadData];

  v8 = [(AccountFavoritesPickerController *)self mf_updatePreferredContentSizeBasedOnTableView];
  [(AccountFavoritesPickerController *)self setTableViewObserver:v8];
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

  v7 = [(AccountFavoritesPickerController *)self navigationItem];
  [v7 setRightBarButtonItem:v6];

  v8 = [(AccountFavoritesPickerController *)self tableView];
  +[MailboxTableCell defaultRowHeight];
  [v8 setEstimatedRowHeight:?];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = AccountFavoritesPickerController;
  [(AccountFavoritesPickerController *)&v5 traitCollectionDidChange:v4];
  [(AccountFavoritesPickerController *)self mf_updateTableViewBackgroundColorForPopover];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(MailboxListViewControllerBase *)self sortedMailboxes:a3];
  v5 = [v4 count];

  return v5;
}

- (void)doneButtonClicked:(id)a3
{
  v3 = [(AccountFavoritesPickerController *)self delegate];
  [v3 didFinish];
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v4 = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

  if (IsAccessibilityCategory)
  {
    return UITableViewAutomaticDimension;
  }

  +[MailboxTableCell defaultRowHeight];
  return result;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"AccountFavoritesPickerControllerReuseCell"];
  if (!v7)
  {
    v7 = [[MailboxTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccountFavoritesPickerControllerReuseCell"];
  }

  v8 = [(AccountFavoritesPickerController *)self mailboxForIndexPath:v6];
  v9 = [v8 type];
  v10 = [NSSet setWithObject:v8];
  [(MailboxTableCell *)v7 setLegacyMailboxes:v10];

  if (v9 == 7)
  {
    [(MailboxTableCell *)v7 setCellEnabled:0];
  }

  else
  {
    v11 = [(AccountFavoritesPickerController *)self delegate];
    v12 = [v11 selectedStateForMailbox:v8];

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

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(AccountFavoritesPickerController *)self mailboxForIndexPath:v5];
  v7 = v6;
  v8 = v5;
  if (v6)
  {
    v8 = v5;
    if ([v6 type] == 7)
    {

      v8 = 0;
    }
  }

  return v8;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [v12 cellForRowAtIndexPath:v6];
  v8 = [(AccountFavoritesPickerController *)self mailboxForIndexPath:v6];
  v9 = [(AccountFavoritesPickerController *)self delegate];
  v10 = [v9 toggleAndReturnSelectedStateForMailbox:v8];

  if (v10)
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  [v7 setAccessoryType:v11];
  [v12 deselectRowAtIndexPath:v6 animated:1];
}

- (id)mailboxForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(MailboxListViewControllerBase *)self sortedMailboxes];
  v6 = [v5 objectAtIndex:{objc_msgSend(v4, "row")}];

  return v6;
}

- (id)indexPathForMailbox:(id)a3
{
  v4 = a3;
  v5 = [(MailboxListViewControllerBase *)self sortedMailboxes];
  v6 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v5 indexOfObject:v4], 0);

  return v6;
}

- (id)_ntsMailboxesForAccount:(id)a3
{
  v4 = a3;
  v5 = +[MailChangeManager sharedChangeManager];
  v6 = [v5 allMailboxUidsSortedWithSpecialsAtTopForAccount:v4 includingLocals:1 client:self outbox:0];

  return v6;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v6 = a4;
  [v6 mf_updateBackgroundColorForPopover:{-[AccountFavoritesPickerController mf_supportsPopoverPresentation](self, "mf_supportsPopoverPresentation")}];
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(MailboxListViewControllerBase *)self sortedMailboxes];
  v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v5, "row")}];

  if (v7)
  {
    v8 = [v7 mv_isSelectable];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (AccountFavoritesPickerControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end