@interface AccountListController
- (AccountListController)initWithScene:(id)a3;
- (AccountListControllerDelegate)accountListDelegate;
- (BOOL)_enableAccount:(id)a3;
- (BOOL)containsMultipleAccounts;
- (MailScene)scene;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_indexPathForSelectedAccount;
- (id)accounts;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_updateBarButtonItems;
- (void)cancelButtonClicked;
- (void)selectAccount:(id)a3 mailbox:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AccountListController

- (AccountListController)initWithScene:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AccountListController;
  v5 = [(AccountListController *)&v8 initWithStyle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scene, v4);
  }

  return v6;
}

- (id)accounts
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 accountsProvider];
  v4 = [v3 orderedAccounts];

  return v4;
}

- (BOOL)containsMultipleAccounts
{
  v2 = [(AccountListController *)self accounts];
  v3 = [v2 count] > 1;

  return v3;
}

- (void)selectAccount:(id)a3 mailbox:(id)a4
{
  v9 = a3;
  v6 = +[LocalAccount localAccount];

  v7 = v9;
  if (v6 != v9)
  {
    if (self->_selectedAccount != v9)
    {
      objc_storeStrong(&self->_selectedAccount, a3);
    }

    WeakRetained = objc_loadWeakRetained(&self->_accountListDelegate);
    [WeakRetained accountList:self didSelectAccount:self->_selectedAccount];

    v7 = v9;
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

  v5 = [(AccountListController *)self tableView];
  +[MailboxTableCell defaultRowHeight];
  [v5 setEstimatedRowHeight:?];
  [v5 setSeparatorStyle:1];
  v6 = +[UIColor tableBackgroundColor];
  [v5 setBackgroundColor:v6];

  [v5 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v5 setAccessibilityIdentifier:MSAccessibilityIdentifierMailMoveMessageViewAccountsTable];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v10.receiver = self;
  v10.super_class = AccountListController;
  [(AccountListController *)&v10 viewWillAppear:?];
  v5 = [(AccountListController *)self _indexPathForSelectedAccount];
  if (v5)
  {
    v6 = [(AccountListController *)self tableView];
    if (+[UIDevice mf_isPadIdiom])
    {
      v7 = 0;
    }

    else
    {
      v7 = 2;
    }

    [v6 selectRowAtIndexPath:v5 animated:0 scrollPosition:v7];
    v8 = [(AccountListController *)self splitViewController];
    v9 = [v8 isCollapsed];

    if (v9)
    {
      [v6 deselectRowAtIndexPath:v5 animated:v3];
    }
  }

  [(AccountListController *)self _updateBarButtonItems];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = AccountListController;
  [(AccountListController *)&v5 viewDidDisappear:0];
  v4 = [(AccountListController *)self parentViewController];

  if (!v4)
  {
    [(AccountListController *)self unloadViewIfReloadable];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = AccountListController;
  [(AccountListController *)&v5 traitCollectionDidChange:v4];
  [(AccountListController *)self _updateBarButtonItems];
}

- (void)_updateBarButtonItems
{
  v9 = [(AccountListController *)self navigationItem];
  v3 = [(AccountListController *)self splitViewController];
  v4 = [v3 isCollapsed];

  if (v4)
  {
    v5 = [UIBarButtonItem alloc];
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"CANCEL" value:&stru_100662A88 table:@"Main"];
    v8 = [v5 initWithTitle:v7 style:0 target:self action:"cancelButtonClicked"];

    [v8 setAccessibilityIdentifier:MSAccessibilityIdentifierMailMoveMessageViewCancelButton];
    [v9 setRightBarButtonItem:v8];
  }

  else
  {
    [v9 setRightBarButtonItem:0];
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(AccountListController *)self accounts:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"AccountListTableCell"];
  if (!v7)
  {
    v7 = [[MailboxTableCell alloc] initWithStyle:1 reuseIdentifier:@"AccountListTableCell"];
  }

  v8 = [(AccountListController *)self accounts];
  v9 = [v8 objectAtIndex:{objc_msgSend(v6, "row")}];

  v10 = [v9 displayName];
  [(MailboxTableCell *)v7 setTitle:v10];
  [(MailboxTableCell *)v7 setCellEnabled:[(AccountListController *)self _enableAccount:v9]];
  [(MailboxTableCell *)v7 setIcon:0];
  v11 = [NSString stringWithFormat:@"Mail.moveMessagePopover.accountsTable.%@Cell", v10];
  [(MailboxTableCell *)v7 setAccessibilityIdentifier:v11];

  v12 = [(AccountListController *)self splitViewController];
  v13 = [v12 isCollapsed];

  [(MailboxTableCell *)v7 setAccessoryType:v13];

  return v7;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v4 = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

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

- (BOOL)_enableAccount:(id)a3
{
  v4 = a3;
  v5 = +[UIApplication sharedApplication];
  v6 = [v5 canPerformNetworkOperationOnAccount:v4];

  if (v6)
  {
    v7 = ![(NSSet *)self->_disabledAccounts containsObject:v4];
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(AccountListController *)self accounts];
  v7 = [v6 objectAtIndex:{objc_msgSend(v5, "row")}];

  if (v7 && ![(NSSet *)self->_disabledAccounts containsObject:v7])
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = v6;
  if (v6 && [v6 row] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(AccountListController *)self accounts];
    v9 = [v8 objectAtIndex:{objc_msgSend(v7, "row")}];

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