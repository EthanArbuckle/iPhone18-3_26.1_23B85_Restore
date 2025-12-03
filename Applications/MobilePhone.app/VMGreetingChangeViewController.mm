@interface VMGreetingChangeViewController
- (BOOL)arrayContainsUUID:(id)d uuid:(id)uuid;
- (BOOL)liveVoicemailEnabled;
- (VMAccountsViewController)accountsViewController;
- (id)accountAtIndex:(unint64_t)index;
- (id)accountsView:(id)view buttonForRowAtIndex:(unint64_t)index;
- (id)greetingViewControllerForAccount:(id)account;
- (id)liveVoicemailAccount;
- (id)titleForAccountsView:(id)view;
- (unint64_t)numberOfRowsForAccountsView:(id)view;
- (void)accountsView:(id)view buttonTappedForRowWithIndex:(unint64_t)index;
- (void)activeSubscriptionsDidChange;
- (void)cancelAction:(id)action;
- (void)startObservingPreferences;
- (void)stopObservingPreferences;
- (void)updateAccounts;
- (void)updateActiveContexts;
- (void)updateView;
- (void)viewDidLoad;
@end

@implementation VMGreetingChangeViewController

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = VMGreetingChangeViewController;
  [(VMGreetingChangeViewController *)&v9 viewDidLoad];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"ACCOUNTS_VIEW_CONTROLLER_NAVIGATION_ITEM_TITLE_GREETING" value:&stru_10028F310 table:@"VoicemailUI"];
  navigationItem = [(VMGreetingChangeViewController *)self navigationItem];
  [navigationItem setTitle:v4];

  v6 = [[CoreTelephonyClient alloc] initWithQueue:&_dispatch_main_q];
  client = self->_client;
  self->_client = v6;

  client = [(VMGreetingChangeViewController *)self client];
  [client setDelegate:self];

  [(VMGreetingChangeViewController *)self updateActiveContexts];
  [(VMGreetingChangeViewController *)self updateAccounts];
  [(VMGreetingChangeViewController *)self updateView];
}

- (id)accountAtIndex:(unint64_t)index
{
  accounts = [(VMGreetingChangeViewController *)self accounts];
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
  labelID = [a2 labelID];
  *self = 138412290;
  *a3 = labelID;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "Failed to create account for subscription %@", self, 0xCu);
}

- (void)updateView
{
  manager = [(VMNavigationController *)self manager];
  accounts = [manager accounts];
  v5 = [accounts count];

  if (v5 >= 2)
  {
    accountsViewController = [(VMGreetingChangeViewController *)self accountsViewController];
    v18 = accountsViewController;
    v7 = [NSArray arrayWithObjects:&v18 count:1];
    [(VMGreetingChangeViewController *)self setViewControllers:v7];
    goto LABEL_8;
  }

  accounts2 = [(VMGreetingChangeViewController *)self accounts];
  accountsViewController = [accounts2 firstObject];

  if (accountsViewController)
  {
    [(VMGreetingChangeViewController *)self setSelectedAccount:accountsViewController];
    selectedAccount = [(VMGreetingChangeViewController *)self selectedAccount];
    v7 = [(VMGreetingChangeViewController *)self greetingViewControllerForAccount:selectedAccount];

    v17 = v7;
    v10 = &v17;
LABEL_7:
    v14 = [NSArray arrayWithObjects:v10 count:1];
    [(VMGreetingChangeViewController *)self setViewControllers:v14];

    goto LABEL_8;
  }

  liveVoicemailAccount = [(VMGreetingChangeViewController *)self liveVoicemailAccount];

  if (liveVoicemailAccount)
  {
    liveVoicemailAccount2 = [(VMGreetingChangeViewController *)self liveVoicemailAccount];
    [(VMGreetingChangeViewController *)self setSelectedAccount:liveVoicemailAccount2];

    selectedAccount2 = [(VMGreetingChangeViewController *)self selectedAccount];
    v7 = [(VMGreetingChangeViewController *)self greetingViewControllerForAccount:selectedAccount2];

    v16 = v7;
    v10 = &v16;
    goto LABEL_7;
  }

  v7 = PHDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "No accounts were found.", v15, 2u);
  }

LABEL_8:
}

- (VMAccountsViewController)accountsViewController
{
  accountsViewController = self->_accountsViewController;
  if (!accountsViewController)
  {
    v4 = [VMAccountsViewController alloc];
    manager = [(VMNavigationController *)self manager];
    v6 = [(VMViewController *)v4 initWithManager:manager];
    v7 = self->_accountsViewController;
    self->_accountsViewController = v6;

    accountsView = [(VMAccountsViewController *)self->_accountsViewController accountsView];
    [accountsView setDataSource:self];

    accountsView2 = [(VMAccountsViewController *)self->_accountsViewController accountsView];
    [accountsView2 setDelegate:self];

    v10 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"cancelAction:"];
    navigationItem = [(VMAccountsViewController *)self->_accountsViewController navigationItem];
    [navigationItem setLeftBarButtonItem:v10];

    accountsViewController = self->_accountsViewController;
  }

  return accountsViewController;
}

- (id)greetingViewControllerForAccount:(id)account
{
  accountCopy = account;
  v5 = [[PHVoicemailGreetingViewController alloc] initWithAccount:accountCopy];

  [(PHVoicemailGreetingViewController *)v5 setGreetingDelegate:self];

  return v5;
}

- (void)updateActiveContexts
{
  client = [self client];
  v6 = 138412546;
  v7 = client;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to get active contexts from client %@: %@", &v6, 0x16u);
}

- (void)cancelAction:(id)action
{
  accountsViewController = [(VMGreetingChangeViewController *)self accountsViewController];
  [accountsViewController dismissViewControllerAnimated:1 completion:0];
}

- (id)accountsView:(id)view buttonForRowAtIndex:(unint64_t)index
{
  v6 = +[VMAccountButton accountButton];
  v7 = [(VMGreetingChangeViewController *)self accountAtIndex:index];
  accountDescription = [v7 accountDescription];
  manager = [(VMNavigationController *)self manager];
  accounts = [manager accounts];
  v11 = [accounts count];

  if (v11 == 1)
  {
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"ACCOUNTS_VIEW_BUTTON_TITLE_CHANGE_GREETING" value:&stru_10028F310 table:@"VoicemailUI"];

    accountDescription = v13;
  }

  [v6 setTitle:accountDescription forState:0];

  return v6;
}

- (unint64_t)numberOfRowsForAccountsView:(id)view
{
  accounts = [(VMGreetingChangeViewController *)self accounts];
  v4 = [accounts count];

  return v4;
}

- (id)titleForAccountsView:(id)view
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"ACCOUNTS_VIEW_MESSAGE_TITLE_CHANGE_GREETING" value:&stru_10028F310 table:@"VoicemailUI"];

  return v4;
}

- (void)accountsView:(id)view buttonTappedForRowWithIndex:(unint64_t)index
{
  v6 = [(VMGreetingChangeViewController *)self accountAtIndex:index];
  if (v6)
  {
    [(VMGreetingChangeViewController *)self setSelectedAccount:v6];
    selectedAccount = [(VMGreetingChangeViewController *)self selectedAccount];
    v8 = [(VMGreetingChangeViewController *)self greetingViewControllerForAccount:selectedAccount];

    [(VMGreetingChangeViewController *)self pushViewController:v8 animated:1];
  }

  else
  {
    v9 = PHDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      indexCopy = index;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Could not retrieve account at index %lu", &v10, 0xCu);
    }
  }
}

- (void)activeSubscriptionsDidChange
{
  [(VMGreetingChangeViewController *)self updateActiveContexts];

  [(VMGreetingChangeViewController *)self updateAccounts];
}

- (id)liveVoicemailAccount
{
  selfCopy = self;
  if ([(VMGreetingChangeViewController *)selfCopy liveVoicemailEnabled])
  {
    v3 = objc_allocWithZone(type metadata accessor for GreetingAccount());
    v4 = GreetingAccount.init(accountType:)(0, 2);

    v5 = v4;
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (BOOL)liveVoicemailEnabled
{
  if (one-time initialization token for featureFlags != -1)
  {
    swift_once();
  }

  return TUCallScreeningEnabled();
}

- (void)startObservingPreferences
{
  selfCopy = self;
  VMGreetingChangeViewController.startObservingPreferences()();
}

- (BOOL)arrayContainsUUID:(id)d uuid:(id)uuid
{
  type metadata accessor for GreetingAccount();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  selfCopy = self;
  LOBYTE(v6) = specialized VMGreetingChangeViewController.arrayContainsUUID(_:uuid:)(v5, v6, v8);

  return v6 & 1;
}

- (void)stopObservingPreferences
{
  type metadata accessor for NSMutableArray();
  selfCopy = self;
  v3 = NSArray.init(arrayLiteral:)();
  [(VMGreetingChangeViewController *)selfCopy setObservations:v3];
}

@end