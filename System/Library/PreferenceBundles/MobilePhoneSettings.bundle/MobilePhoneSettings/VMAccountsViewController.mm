@interface VMAccountsViewController
- (VMAccountsView)accountsView;
- (VMAccountsViewControllerDelegate)delegate;
- (id)accountAtIndex:(unint64_t)a3;
- (void)loadView;
- (void)updateAccounts;
- (void)updateAccountsView;
- (void)viewDidLoad;
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
  v8.receiver = self;
  v8.super_class = VMAccountsViewController;
  [(VMAccountsViewController *)&v8 viewDidLoad];
  v3 = [(VMAccountsViewController *)self accountsView];
  v4 = [MEMORY[0x277D75348] dynamicBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = *MEMORY[0x277D79788];
  v7 = [(VMViewController *)self manager];
  [v5 addObserver:self selector:sel_handleVMVoicemailManagerAccountsDidChangeNotification_ name:v6 object:v7];
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

uint64_t __67__VMAccountsViewController_handleVoicemailManagerAccountsDidChange__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = objc_opt_class();
    v4 = v8;
    _os_log_impl(&dword_23C144000, v2, OS_LOG_TYPE_DEFAULT, "%@ is handling VoicemailManagerAccountsDidChange", &v7, 0xCu);
  }

  [*(a1 + 32) updateAccounts];
  result = [*(a1 + 32) updateAccountsView];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (VMAccountsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end