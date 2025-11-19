@interface ESSettingsDataclassConfigurationViewController
- (Class)accountInfoControllerClass;
- (DAAccount)daAccount;
- (id)_navTitle;
- (id)accountDescriptionForFirstTimeSetup;
- (id)accountFromSpecifier;
- (id)otherSpecifiers;
- (id)specifiers;
- (void)_accountsChanged:(id)a3;
- (void)_listenForAccountsChangedNotifications;
- (void)cancelButtonClicked:(id)a3;
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
  v2 = [(ESSettingsDataclassConfigurationViewController *)self daAccount];
  v3 = [v2 accountDescription];

  return v3;
}

- (id)_navTitle
{
  if ([(ESSettingsDataclassConfigurationViewController *)self isFirstTimeSetup])
  {
    v3 = [(ESSettingsDataclassConfigurationViewController *)self accountDescriptionForFirstTimeSetup];
  }

  else
  {
    v4 = [(ESSettingsDataclassConfigurationViewController *)self daAccount];
    v3 = [v4 accountDescription];
  }

  return v3;
}

- (void)loadView
{
  v3 = [(ESSettingsDataclassConfigurationViewController *)self navigationItem];
  v4 = [(ESSettingsDataclassConfigurationViewController *)self _navTitle];
  [v3 setTitle:v4];

  v5.receiver = self;
  v5.super_class = ESSettingsDataclassConfigurationViewController;
  [(ESSettingsDataclassConfigurationViewController *)&v5 loadView];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = ESSettingsDataclassConfigurationViewController;
  [(ESSettingsDataclassConfigurationViewController *)&v5 viewDidLoad];
  v3 = [(ESSettingsDataclassConfigurationViewController *)self navigationItem];
  v4 = [(ESSettingsDataclassConfigurationViewController *)self _navTitle];
  [v3 setTitle:v4];
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
    v4 = [(ESSettingsDataclassConfigurationViewController *)self accountFromSpecifier];
    v5 = self->_daAccount;
    self->_daAccount = v4;

    daAccount = self->_daAccount;
  }

  return daAccount;
}

- (void)reloadAccount
{
  v3 = [(ESSettingsDataclassConfigurationViewController *)self daAccount];
  [v3 reload];

  v5 = [(ESSettingsDataclassConfigurationViewController *)self daAccount];
  v4 = [v5 backingAccountInfo];
  [v4 setAuthenticated:1];
}

- (id)accountFromSpecifier
{
  v2 = [(ESSettingsDataclassConfigurationViewController *)self specifier];
  v3 = [v2 userInfo];
  v4 = [v3 objectForKeyedSubscript:ACUIAccountKey];

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

- (void)_accountsChanged:(id)a3
{
  [(ESSettingsDataclassConfigurationViewController *)self reloadAccount];

  [(ESSettingsDataclassConfigurationViewController *)self reloadSpecifiers];
}

- (id)specifiers
{
  [(ESSettingsDataclassConfigurationViewController *)self _listenForAccountsChangedNotifications];
  v5.receiver = self;
  v5.super_class = ESSettingsDataclassConfigurationViewController;
  v3 = [(ESSettingsDataclassConfigurationViewController *)&v5 specifiers];

  return v3;
}

- (id)otherSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = [(ESSettingsDataclassConfigurationViewController *)self account];
  v5 = [v4 mcBackingProfile];

  if (v5)
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"PROFILE_ACCOUNT_DESCRIPTION" value:&stru_30C98 table:@"Localizable"];
    v8 = [v5 friendlyName];
    v9 = [NSString stringWithFormat:v7, v8];

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

- (void)cancelButtonClicked:(id)a3
{
  v3 = [(ESSettingsDataclassConfigurationViewController *)self rootController];
  if (objc_opt_respondsToSelector())
  {
    [v3 dismiss];
  }
}

@end