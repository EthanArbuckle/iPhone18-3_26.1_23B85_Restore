@interface AccountListController
- (AccountListController)initWithScene:(id)scene;
- (AccountListControllerDelegate)accountListDelegate;
- (BOOL)_enableAccount:(id)account;
- (BOOL)containsMultipleAccounts;
- (MailScene)scene;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_indexPathForSelectedAccount;
- (id)accounts;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_updateBarButtonItems;
- (void)cancelButtonClicked;
- (void)selectAccount:(id)account mailbox:(id)mailbox;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AccountListController

- (AccountListController)initWithScene:(id)scene
{
  sceneCopy = scene;
  v8.receiver = self;
  v8.super_class = AccountListController;
  v5 = [(AccountListController *)&v8 initWithStyle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scene, sceneCopy);
  }

  return v6;
}

- (id)accounts
{
  v2 = +[UIApplication sharedApplication];
  accountsProvider = [v2 accountsProvider];
  orderedAccounts = [accountsProvider orderedAccounts];

  return orderedAccounts;
}

- (BOOL)containsMultipleAccounts
{
  accounts = [(AccountListController *)self accounts];
  v3 = [accounts count] > 1;

  return v3;
}

- (void)selectAccount:(id)account mailbox:(id)mailbox
{
  accountCopy = account;
  v6 = +[LocalAccount localAccount];

  v7 = accountCopy;
  if (v6 != accountCopy)
  {
    if (self->_selectedAccount != accountCopy)
    {
      objc_storeStrong(&self->_selectedAccount, account);
    }

    WeakRetained = objc_loadWeakRetained(&self->_accountListDelegate);
    [WeakRetained accountList:self didSelectAccount:self->_selectedAccount];

    v7 = accountCopy;
  }
}

- (void)cancelButtonClicked
{
  WeakRetained = objc_loadWeakRetained(&self->_accountListDelegate);
  [WeakRetained accountList:self didCancel:1];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = AccountListController;
  [(AccountListController *)&v7 viewDidLoad];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"ACCOUNTS" value:&stru_100662A88 table:@"Main"];
  [(AccountListController *)self setTitle:v4];

  tableView = [(AccountListController *)self tableView];
  +[MailboxTableCell defaultRowHeight];
  [tableView setEstimatedRowHeight:?];
  [tableView setSeparatorStyle:1];
  v6 = +[UIColor tableBackgroundColor];
  [tableView setBackgroundColor:v6];

  [tableView setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [tableView setAccessibilityIdentifier:MSAccessibilityIdentifierMailMoveMessageViewAccountsTable];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v10.receiver = self;
  v10.super_class = AccountListController;
  [(AccountListController *)&v10 viewWillAppear:?];
  _indexPathForSelectedAccount = [(AccountListController *)self _indexPathForSelectedAccount];
  if (_indexPathForSelectedAccount)
  {
    tableView = [(AccountListController *)self tableView];
    if (+[UIDevice mf_isPadIdiom])
    {
      v7 = 0;
    }

    else
    {
      v7 = 2;
    }

    [tableView selectRowAtIndexPath:_indexPathForSelectedAccount animated:0 scrollPosition:v7];
    splitViewController = [(AccountListController *)self splitViewController];
    isCollapsed = [splitViewController isCollapsed];

    if (isCollapsed)
    {
      [tableView deselectRowAtIndexPath:_indexPathForSelectedAccount animated:appearCopy];
    }
  }

  [(AccountListController *)self _updateBarButtonItems];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = AccountListController;
  [(AccountListController *)&v5 viewDidDisappear:0];
  parentViewController = [(AccountListController *)self parentViewController];

  if (!parentViewController)
  {
    [(AccountListController *)self unloadViewIfReloadable];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v5.receiver = self;
  v5.super_class = AccountListController;
  [(AccountListController *)&v5 traitCollectionDidChange:changeCopy];
  [(AccountListController *)self _updateBarButtonItems];
}

- (void)_updateBarButtonItems
{
  navigationItem = [(AccountListController *)self navigationItem];
  splitViewController = [(AccountListController *)self splitViewController];
  isCollapsed = [splitViewController isCollapsed];

  if (isCollapsed)
  {
    v5 = [UIBarButtonItem alloc];
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"CANCEL" value:&stru_100662A88 table:@"Main"];
    v8 = [v5 initWithTitle:v7 style:0 target:self action:"cancelButtonClicked"];

    [v8 setAccessibilityIdentifier:MSAccessibilityIdentifierMailMoveMessageViewCancelButton];
    [navigationItem setRightBarButtonItem:v8];
  }

  else
  {
    [navigationItem setRightBarButtonItem:0];
  }
}

- (id)_indexPathForSelectedAccount
{
  if (self->_selectedAccount && (-[AccountListController accounts](self, "accounts"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 indexOfObject:self->_selectedAccount], v3, v4 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v5 = [NSIndexPath indexPathForRow:v4 inSection:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(AccountListController *)self accounts:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"AccountListTableCell"];
  if (!v7)
  {
    v7 = [[MailboxTableCell alloc] initWithStyle:1 reuseIdentifier:@"AccountListTableCell"];
  }

  accounts = [(AccountListController *)self accounts];
  v9 = [accounts objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  displayName = [v9 displayName];
  [(MailboxTableCell *)v7 setTitle:displayName];
  [(MailboxTableCell *)v7 setCellEnabled:[(AccountListController *)self _enableAccount:v9]];
  [(MailboxTableCell *)v7 setIcon:0];
  v11 = [NSString stringWithFormat:@"Mail.moveMessagePopover.accountsTable.%@Cell", displayName];
  [(MailboxTableCell *)v7 setAccessibilityIdentifier:v11];

  splitViewController = [(AccountListController *)self splitViewController];
  isCollapsed = [splitViewController isCollapsed];

  [(MailboxTableCell *)v7 setAccessoryType:isCollapsed];

  return v7;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    return UITableViewAutomaticDimension;
  }

  v7 = +[UIDevice mf_isPadIdiom];
  result = 48.0;
  if (v7)
  {
    return 44.0;
  }

  return result;
}

- (BOOL)_enableAccount:(id)account
{
  accountCopy = account;
  v5 = +[UIApplication sharedApplication];
  v6 = [v5 canPerformNetworkOperationOnAccount:accountCopy];

  if (v6)
  {
    v7 = ![(NSSet *)self->_disabledAccounts containsObject:accountCopy];
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  accounts = [(AccountListController *)self accounts];
  v7 = [accounts objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  if (v7 && ![(NSSet *)self->_disabledAccounts containsObject:v7])
  {
    v8 = pathCopy;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = pathCopy;
  if (pathCopy && [pathCopy row] != 0x7FFFFFFFFFFFFFFFLL)
  {
    accounts = [(AccountListController *)self accounts];
    v9 = [accounts objectAtIndex:{objc_msgSend(v7, "row")}];

    [(AccountListController *)self selectAccount:v9 mailbox:0];
  }
}

- (AccountListControllerDelegate)accountListDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_accountListDelegate);

  return WeakRetained;
}

- (MailScene)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end