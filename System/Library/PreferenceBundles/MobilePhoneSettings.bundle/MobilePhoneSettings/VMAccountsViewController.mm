@interface VMAccountsViewController
- (VMAccountsView)accountsView;
- (VMAccountsViewControllerDelegate)delegate;
- (id)accountAtIndex:(unint64_t)index;
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
  accountsView = [(VMAccountsViewController *)self accountsView];
  dynamicBackgroundColor = [MEMORY[0x277D75348] dynamicBackgroundColor];
  [accountsView setBackgroundColor:dynamicBackgroundColor];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = *MEMORY[0x277D79788];
  manager = [(VMViewController *)self manager];
  [defaultCenter addObserver:self selector:sel_handleVMVoicemailManagerAccountsDidChangeNotification_ name:v6 object:manager];
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