@interface VMAccountsViewController
- (VMAccountsView)accountsView;
- (VMAccountsViewControllerDelegate)delegate;
- (id)accountAtIndex:(unint64_t)index;
- (void)loadView;
- (void)updateAccounts;
- (void)updateAccountsView;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation VMAccountsViewController

- (void)loadView
{
  v3 = objc_alloc_init(VMAccountsView);
  [(VMAccountsView *)v3 setAutoresizingMask:2];
  [(VMAccountsViewController *)self setAccountsView:v3];
  [(VMAccountsViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = VMAccountsViewController;
  [(VMAccountsViewController *)&v13 viewDidLoad];
  accountsView = [(VMAccountsViewController *)self accountsView];
  v4 = +[UIColor dynamicBackgroundColor];
  [accountsView setBackgroundColor:v4];

  objc_initWeak(&location, self);
  manager = [(VMViewController *)self manager];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = __39__VMAccountsViewController_viewDidLoad__block_invoke;
  v10 = &unk_100285148;
  objc_copyWeak(&v11, &location);
  v6 = [manager listenForChangesWithHandler:&v7];
  [(VMAccountsViewController *)self setAccountsChangesListener:v6, v7, v8, v9, v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __39__VMAccountsViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = PHDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "VMAccountsViewController - handling account manager updates %@", &v8, 0xCu);
    }

    v6 = +[MPVoicemailAccountManagerUpdate accounts];
    v7 = [v3 contains:v6];

    if (v7)
    {
      [WeakRetained handleVoicemailManagerAccountsDidChange];
    }
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = VMAccountsViewController;
  [(VMAccountsViewController *)&v5 viewWillAppear:appear];
  accounts = [(VMAccountsViewController *)self accounts];

  if (!accounts)
  {
    [(VMAccountsViewController *)self updateAccounts];
    [(VMAccountsViewController *)self updateAccountsView];
  }
}

- (VMAccountsView)accountsView
{
  accountsView = self->_accountsView;
  if (!accountsView)
  {
    view = [(VMAccountsViewController *)self view];
    v5 = self->_accountsView;
    self->_accountsView = view;

    accountsView = self->_accountsView;
  }

  return accountsView;
}

- (id)accountAtIndex:(unint64_t)index
{
  accounts = [(VMAccountsViewController *)self accounts];
  if ([accounts count] <= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [accounts objectAtIndexedSubscript:index];
  }

  return v5;
}

- (void)updateAccounts
{
  manager = [(VMViewController *)self manager];
  accounts = [manager accounts];
  [(VMAccountsViewController *)self setAccounts:accounts];
}

- (void)updateAccountsView
{
  accountsView = [(VMAccountsViewController *)self accountsView];
  [accountsView reloadData];
}

id __67__VMAccountsViewController_handleVoicemailManagerAccountsDidChange__block_invoke(uint64_t a1)
{
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = objc_opt_class();
    v3 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ is handling VoicemailManagerAccountsDidChange", &v5, 0xCu);
  }

  [*(a1 + 32) updateAccounts];
  return [*(a1 + 32) updateAccountsView];
}

- (VMAccountsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end