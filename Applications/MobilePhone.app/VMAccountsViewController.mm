@interface VMAccountsViewController
- (VMAccountsView)accountsView;
- (VMAccountsViewControllerDelegate)delegate;
- (id)accountAtIndex:(unint64_t)a3;
- (void)loadView;
- (void)updateAccounts;
- (void)updateAccountsView;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
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
  v3 = [(VMAccountsViewController *)self accountsView];
  v4 = +[UIColor dynamicBackgroundColor];
  [v3 setBackgroundColor:v4];

  objc_initWeak(&location, self);
  v5 = [(VMViewController *)self manager];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = __39__VMAccountsViewController_viewDidLoad__block_invoke;
  v10 = &unk_100285148;
  objc_copyWeak(&v11, &location);
  v6 = [v5 listenForChangesWithHandler:&v7];
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

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = VMAccountsViewController;
  [(VMAccountsViewController *)&v5 viewWillAppear:a3];
  v4 = [(VMAccountsViewController *)self accounts];

  if (!v4)
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
    v4 = [(VMAccountsViewController *)self view];
    v5 = self->_accountsView;
    self->_accountsView = v4;

    accountsView = self->_accountsView;
  }

  return accountsView;
}

- (id)accountAtIndex:(unint64_t)a3
{
  v4 = [(VMAccountsViewController *)self accounts];
  if ([v4 count] <= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 objectAtIndexedSubscript:a3];
  }

  return v5;
}

- (void)updateAccounts
{
  v4 = [(VMViewController *)self manager];
  v3 = [v4 accounts];
  [(VMAccountsViewController *)self setAccounts:v3];
}

- (void)updateAccountsView
{
  v2 = [(VMAccountsViewController *)self accountsView];
  [v2 reloadData];
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