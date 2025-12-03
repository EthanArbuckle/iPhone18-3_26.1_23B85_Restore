@interface YahooAccountSyncController
- (BOOL)_needsReAuthenciationSection;
- (YahooAccountSyncController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_reAuthenticationSectionSpecifiers;
- (id)specifiers;
- (void)_accountStoreDidChange:(id)change;
- (void)_beginObservingAccountStoreDidChangeNotification;
- (void)_reAuthenticationButtonTapped:(id)tapped;
- (void)_stopObservingAccountStoreDidChangeNotification;
- (void)accountValidator:(id)validator finishedValidationOfAccount:(id)account usedSSL:(BOOL)l;
- (void)dealloc;
- (void)handleURL:(id)l;
- (void)viewDidLoad;
@end

@implementation YahooAccountSyncController

- (YahooAccountSyncController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  v11.receiver = self;
  v11.super_class = YahooAccountSyncController;
  v8 = [(YahooAccountSyncController *)&v11 initWithNibName:nameCopy bundle:bundleCopy];
  v9 = v8;
  if (v8)
  {
    v8->_showingReAuthenticationSection = 0;
    [(YahooAccountSyncController *)v8 _beginObservingAccountStoreDidChangeNotification];
  }

  return v9;
}

- (void)dealloc
{
  [(YahooAccountSyncController *)self _stopObservingAccountStoreDidChangeNotification];
  v3.receiver = self;
  v3.super_class = YahooAccountSyncController;
  [(YahooAccountSyncController *)&v3 dealloc];
}

- (void)handleURL:(id)l
{
  lCopy = l;
  v7.receiver = self;
  v7.super_class = YahooAccountSyncController;
  [(YahooAccountSyncController *)&v7 handleURL:lCopy];
  v5 = [lCopy objectForKeyedSubscript:@"slYahooAction"];
  v6 = [v5 isEqualToString:@"showAuthSheet"];

  if (v6)
  {
    [(YahooAccountSyncController *)self _reAuthenticationButtonTapped:self];
  }
}

- (void)_beginObservingAccountStoreDidChangeNotification
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_accountStoreDidChange:" name:ACAccountStoreDidChangeNotification object:0];
}

- (void)_stopObservingAccountStoreDidChangeNotification
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:ACAccountStoreDidChangeNotification object:0];
}

- (void)_accountStoreDidChange:(id)change
{
  account = [(YahooAccountSyncController *)self account];
  [account refresh];

  LODWORD(account) = self->_showingReAuthenticationSection;
  if (account != [(YahooAccountSyncController *)self _needsReAuthenciationSection])
  {

    [(YahooAccountSyncController *)self reloadSpecifiers];
  }
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = YahooAccountSyncController;
  [(AccountPSSyncController *)&v8 viewDidLoad];
  if ([(YahooAccountSyncController *)self isFirstTimeSetup])
  {
    navigationItem = [(YahooAccountSyncController *)self navigationItem];
    title = [navigationItem title];
    firstTimeSetupValidationOriginalTitle = self->_firstTimeSetupValidationOriginalTitle;
    self->_firstTimeSetupValidationOriginalTitle = title;

    [(YahooAccountSyncController *)self startValidationWithPrompt:self->_firstTimeSetupValidationOriginalTitle];
    [(YahooAccountSyncController *)self setTaskCompletionAssertionEnabled:1];
    v6 = objc_alloc_init(+[YahooAccount accountValidatorClass]);
    [v6 setDelegate:self];
    mailAccount = [(AccountPSSyncController *)self mailAccount];
    [v6 validateAccount:mailAccount useSSL:1];
  }
}

- (BOOL)_needsReAuthenciationSection
{
  if (([(YahooAccountSyncController *)self isFirstTimeSetup]& 1) != 0)
  {
    return 0;
  }

  account = [(YahooAccountSyncController *)self account];
  isAuthenticated = [account isAuthenticated];

  if ((isAuthenticated & 1) == 0)
  {
    return 1;
  }

  account2 = [(YahooAccountSyncController *)self account];
  credential = [account2 credential];
  oauthToken = [credential oauthToken];
  if (oauthToken)
  {
    v3 = 0;
  }

  else
  {
    account3 = [(YahooAccountSyncController *)self account];
    credential2 = [account3 credential];
    oauthRefreshToken = [credential2 oauthRefreshToken];
    v3 = oauthRefreshToken == 0;
  }

  return v3;
}

- (id)specifiers
{
  if ([(YahooAccountSyncController *)self isFirstTimeSetup])
  {
    v3 = !self->_didFirstTimeSetupValidation;
  }

  else
  {
    v3 = 0;
  }

  _needsReAuthenciationSection = [(YahooAccountSyncController *)self _needsReAuthenciationSection];
  obj = objc_alloc_init(NSMutableArray);
  if (_needsReAuthenciationSection)
  {
    _reAuthenticationSectionSpecifiers = [(YahooAccountSyncController *)self _reAuthenticationSectionSpecifiers];
    [obj addObjectsFromArray:_reAuthenticationSectionSpecifiers];
  }

  else
  {
    _reAuthenticationSectionSpecifiers = 0;
  }

  self->_showingReAuthenticationSection = _needsReAuthenciationSection;
  v22.receiver = self;
  v22.super_class = YahooAccountSyncController;
  specifiers = [(AccountPSSyncController *)&v22 specifiers];
  [obj addObjectsFromArray:specifiers];

  if (_needsReAuthenciationSection || v3)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = obj;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v8)
    {
      v9 = *v19;
      v10 = PSEnabledKey;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          deleteButtonSpecifier = [(YahooAccountSyncController *)self deleteButtonSpecifier];
          v14 = deleteButtonSpecifier;
          if (v12 == deleteButtonSpecifier)
          {
          }

          else
          {
            v15 = [_reAuthenticationSectionSpecifiers containsObject:v12];

            if ((v15 & 1) == 0)
            {
              [v12 setProperty:&__kCFBooleanFalse forKey:v10];
            }
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v8);
    }
  }

  objc_storeStrong(&self->super.ACUIDataclassConfigurationViewController_opaque[OBJC_IVAR___PSListController__specifiers], obj);

  return obj;
}

- (id)_reAuthenticationSectionSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = +[PSSpecifier emptyGroupSpecifier];
  account = [(YahooAccountSyncController *)self account];
  username = [account username];
  [v4 setProperty:username forKey:@"YahooNameForAccountToAuthenticate"];

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v4 setProperty:v8 forKey:PSFooterCellClassGroupKey];

  [v3 addObject:v4];
  v9 = +[PSSpecifier emptyGroupSpecifier];
  [v3 addObject:v9];

  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"REENTER_PASSWORD" value:&stru_B9FC8 table:@"AccountPreferences"];
  v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:objc_opt_class() cell:13 edit:0];

  [v12 setButtonAction:"_reAuthenticationButtonTapped:"];
  [v3 addObject:v12];

  return v3;
}

- (void)_reAuthenticationButtonTapped:(id)tapped
{
  if (!self->_reAuthenticating)
  {
    self->_reAuthenticating = 1;
    v4 = [SLYahooWebAuthController alloc];
    account = [(YahooAccountSyncController *)self account];
    accountStore = [(YahooAccountSyncController *)self accountStore];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_78878;
    v12[3] = &unk_B9010;
    v12[4] = self;
    v7 = [v4 initWithAccount:account accountStore:accountStore presentationBlock:v12];
    webAuthController = self->_webAuthController;
    self->_webAuthController = v7;

    objc_initWeak(&location, self);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_7888C;
    v9[3] = &unk_B8FE8;
    objc_copyWeak(&v10, &location);
    [(SLYahooWebAuthController *)self->_webAuthController setCompletion:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (void)accountValidator:(id)validator finishedValidationOfAccount:(id)account usedSSL:(BOOL)l
{
  validatorCopy = validator;
  accountCopy = account;
  self->_didFirstTimeSetupValidation = 1;
  [(YahooAccountSyncController *)self stopValidationWithPrompt:self->_firstTimeSetupValidationOriginalTitle showButtons:1];
  if ([validatorCopy accountIsValid])
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([accountCopy deliveryAccount], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = accountCopy;
      if (v9)
      {
        v10 = +[MFInvocationQueue sharedInvocationQueue];
        v11 = [MFMonitoredInvocation mf_invocationWithSelector:"updateEmailAliases" target:v9];
        [v10 addInvocation:v11];
      }

      v12 = v8;
    }

    else
    {
      v9 = 0;
      v12 = 0;
    }

    [(YahooAccountSyncController *)self reloadSpecifiers];
  }

  else
  {
    v9 = 0;
    [(YahooAccountSyncController *)self cancelButtonTapped:self];
  }

  [(YahooAccountSyncController *)self setTaskCompletionAssertionEnabled:0];
}

@end