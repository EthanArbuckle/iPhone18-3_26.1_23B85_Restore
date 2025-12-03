@interface ESSettingsDataclassConfigurationViewController
- (Class)accountInfoControllerClass;
- (DAAccount)daAccount;
- (id)_navTitle;
- (id)accountDescriptionForFirstTimeSetup;
- (id)accountFromSpecifier;
- (id)otherSpecifiers;
- (id)specifiers;
- (void)_accountsChanged:(id)changed;
- (void)_listenForAccountsChangedNotifications;
- (void)cancelButtonClicked:(id)clicked;
- (void)dealloc;
- (void)loadView;
- (void)reloadAccount;
- (void)viewDidLoad;
@end

@implementation ESSettingsDataclassConfigurationViewController

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:ACAccountStoreDidChangeNotification object:0];

  v4.receiver = self;
  v4.super_class = ESSettingsDataclassConfigurationViewController;
  [(ESSettingsDataclassConfigurationViewController *)&v4 dealloc];
}

- (id)accountDescriptionForFirstTimeSetup
{
  daAccount = [(ESSettingsDataclassConfigurationViewController *)self daAccount];
  accountDescription = [daAccount accountDescription];

  return accountDescription;
}

- (id)_navTitle
{
  if ([(ESSettingsDataclassConfigurationViewController *)self isFirstTimeSetup])
  {
    accountDescriptionForFirstTimeSetup = [(ESSettingsDataclassConfigurationViewController *)self accountDescriptionForFirstTimeSetup];
  }

  else
  {
    daAccount = [(ESSettingsDataclassConfigurationViewController *)self daAccount];
    accountDescriptionForFirstTimeSetup = [daAccount accountDescription];
  }

  return accountDescriptionForFirstTimeSetup;
}

- (void)loadView
{
  navigationItem = [(ESSettingsDataclassConfigurationViewController *)self navigationItem];
  _navTitle = [(ESSettingsDataclassConfigurationViewController *)self _navTitle];
  [navigationItem setTitle:_navTitle];

  v5.receiver = self;
  v5.super_class = ESSettingsDataclassConfigurationViewController;
  [(ESSettingsDataclassConfigurationViewController *)&v5 loadView];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = ESSettingsDataclassConfigurationViewController;
  [(ESSettingsDataclassConfigurationViewController *)&v5 viewDidLoad];
  navigationItem = [(ESSettingsDataclassConfigurationViewController *)self navigationItem];
  _navTitle = [(ESSettingsDataclassConfigurationViewController *)self _navTitle];
  [navigationItem setTitle:_navTitle];
}

- (void)_listenForAccountsChangedNotifications
{
  if (!self->_haveRegisteredForAccountsChanged)
  {
    self->_haveRegisteredForAccountsChanged = 1;
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:self selector:"_accountsChanged:" name:ACAccountStoreDidChangeNotification object:0];
  }
}

- (DAAccount)daAccount
{
  daAccount = self->_daAccount;
  if (!daAccount)
  {
    accountFromSpecifier = [(ESSettingsDataclassConfigurationViewController *)self accountFromSpecifier];
    v5 = self->_daAccount;
    self->_daAccount = accountFromSpecifier;

    daAccount = self->_daAccount;
  }

  return daAccount;
}

- (void)reloadAccount
{
  daAccount = [(ESSettingsDataclassConfigurationViewController *)self daAccount];
  [daAccount reload];

  daAccount2 = [(ESSettingsDataclassConfigurationViewController *)self daAccount];
  backingAccountInfo = [daAccount2 backingAccountInfo];
  [backingAccountInfo setAuthenticated:1];
}

- (id)accountFromSpecifier
{
  specifier = [(ESSettingsDataclassConfigurationViewController *)self specifier];
  userInfo = [specifier userInfo];
  v4 = [userInfo objectForKeyedSubscript:ACUIAccountKey];

  if (v4)
  {
    v5 = [v4 objectForKeyedSubscript:kDAAccountEmailAddress];
    v6 = kDAAccountStolenDisplayUsername;
    v7 = [v4 objectForKeyedSubscript:kDAAccountStolenDisplayUsername];
    v8 = v7;
    if (v5 && ([v7 isEqualToString:v5] & 1) == 0)
    {
      [v4 setObject:v5 forKeyedSubscript:v6];
    }

    v9 = +[DAAccountLoader sharedInstance];
    v10 = [v9 daemonAppropriateAccountClassForACAccount:v4];

    v11 = [[v10 alloc] initWithBackingAccountInfo:v4];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_accountsChanged:(id)changed
{
  [(ESSettingsDataclassConfigurationViewController *)self reloadAccount];

  [(ESSettingsDataclassConfigurationViewController *)self reloadSpecifiers];
}

- (id)specifiers
{
  [(ESSettingsDataclassConfigurationViewController *)self _listenForAccountsChangedNotifications];
  v5.receiver = self;
  v5.super_class = ESSettingsDataclassConfigurationViewController;
  specifiers = [(ESSettingsDataclassConfigurationViewController *)&v5 specifiers];

  return specifiers;
}

- (id)otherSpecifiers
{
  v3 = +[NSMutableArray array];
  account = [(ESSettingsDataclassConfigurationViewController *)self account];
  mcBackingProfile = [account mcBackingProfile];

  if (mcBackingProfile)
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"PROFILE_ACCOUNT_DESCRIPTION" value:&stru_30C98 table:@"Localizable"];
    friendlyName = [mcBackingProfile friendlyName];
    v9 = [NSString stringWithFormat:v7, friendlyName];

    [(ESSettingsDataclassConfigurationViewController *)self setShouldShowDeleteAccountButton:0];
    v10 = +[PSSpecifier emptyGroupSpecifier];
    [v10 setProperty:v9 forKey:PSFooterTextGroupKey];
    [v3 addObject:v10];
  }

  return v3;
}

- (Class)accountInfoControllerClass
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"ESSettingsDataclassConfigurationViewController.m" lineNumber:158 description:{@"You need to subclass %@", v6}];

  return 0;
}

- (void)cancelButtonClicked:(id)clicked
{
  rootController = [(ESSettingsDataclassConfigurationViewController *)self rootController];
  if (objc_opt_respondsToSelector())
  {
    [rootController dismiss];
  }
}

@end