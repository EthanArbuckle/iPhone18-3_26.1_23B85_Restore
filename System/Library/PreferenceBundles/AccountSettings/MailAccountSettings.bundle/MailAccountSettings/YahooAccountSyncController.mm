@interface YahooAccountSyncController
- (BOOL)_needsReAuthenciationSection;
- (YahooAccountSyncController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_reAuthenticationSectionSpecifiers;
- (id)specifiers;
- (void)_accountStoreDidChange:(id)a3;
- (void)_beginObservingAccountStoreDidChangeNotification;
- (void)_reAuthenticationButtonTapped:(id)a3;
- (void)_stopObservingAccountStoreDidChangeNotification;
- (void)accountValidator:(id)a3 finishedValidationOfAccount:(id)a4 usedSSL:(BOOL)a5;
- (void)dealloc;
- (void)handleURL:(id)a3;
- (void)viewDidLoad;
@end

@implementation YahooAccountSyncController

- (YahooAccountSyncController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = YahooAccountSyncController;
  v8 = [(YahooAccountSyncController *)&v11 initWithNibName:v6 bundle:v7];
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

- (void)handleURL:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = YahooAccountSyncController;
  [(YahooAccountSyncController *)&v7 handleURL:v4];
  v5 = [v4 objectForKeyedSubscript:@"slYahooAction"];
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

- (void)_accountStoreDidChange:(id)a3
{
  v4 = [(YahooAccountSyncController *)self account];
  [v4 refresh];

  LODWORD(v4) = self->_showingReAuthenticationSection;
  if (v4 != [(YahooAccountSyncController *)self _needsReAuthenciationSection])
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
    v3 = [(YahooAccountSyncController *)self navigationItem];
    v4 = [v3 title];
    firstTimeSetupValidationOriginalTitle = self->_firstTimeSetupValidationOriginalTitle;
    self->_firstTimeSetupValidationOriginalTitle = v4;

    [(YahooAccountSyncController *)self startValidationWithPrompt:self->_firstTimeSetupValidationOriginalTitle];
    [(YahooAccountSyncController *)self setTaskCompletionAssertionEnabled:1];
    v6 = objc_alloc_init(+[YahooAccount accountValidatorClass]);
    [v6 setDelegate:self];
    v7 = [(AccountPSSyncController *)self mailAccount];
    [v6 validateAccount:v7 useSSL:1];
  }
}

- (BOOL)_needsReAuthenciationSection
{
  if (([(YahooAccountSyncController *)self isFirstTimeSetup]& 1) != 0)
  {
    return 0;
  }

  v4 = [(YahooAccountSyncController *)self account];
  v5 = [v4 isAuthenticated];

  if ((v5 & 1) == 0)
  {
    return 1;
  }

  v6 = [(YahooAccountSyncController *)self account];
  v7 = [v6 credential];
  v8 = [v7 oauthToken];
  if (v8)
  {
    v3 = 0;
  }

  else
  {
    v9 = [(YahooAccountSyncController *)self account];
    v10 = [v9 credential];
    v11 = [v10 oauthRefreshToken];
    v3 = v11 == 0;
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

  v4 = [(YahooAccountSyncController *)self _needsReAuthenciationSection];
  obj = objc_alloc_init(NSMutableArray);
  if (v4)
  {
    v5 = [(YahooAccountSyncController *)self _reAuthenticationSectionSpecifiers];
    [obj addObjectsFromArray:v5];
  }

  else
  {
    v5 = 0;
  }

  self->_showingReAuthenticationSection = v4;
  v22.receiver = self;
  v22.super_class = YahooAccountSyncController;
  v6 = [(AccountPSSyncController *)&v22 specifiers];
  [obj addObjectsFromArray:v6];

  if (v4 || v3)
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
          v13 = [(YahooAccountSyncController *)self deleteButtonSpecifier];
          v14 = v13;
          if (v12 == v13)
          {
          }

          else
          {
            v15 = [v5 containsObject:v12];

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
  v5 = [(YahooAccountSyncController *)self account];
  v6 = [v5 username];
  [v4 setProperty:v6 forKey:@"YahooNameForAccountToAuthenticate"];

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

- (void)_reAuthenticationButtonTapped:(id)a3
{
  if (!self->_reAuthenticating)
  {
    self->_reAuthenticating = 1;
    v4 = [SLYahooWebAuthController alloc];
    v5 = [(YahooAccountSyncController *)self account];
    v6 = [(YahooAccountSyncController *)self accountStore];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_78878;
    v12[3] = &unk_B9010;
    v12[4] = self;
    v7 = [v4 initWithAccount:v5 accountStore:v6 presentationBlock:v12];
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

- (void)accountValidator:(id)a3 finishedValidationOfAccount:(id)a4 usedSSL:(BOOL)a5
{
  v13 = a3;
  v7 = a4;
  self->_didFirstTimeSetupValidation = 1;
  [(YahooAccountSyncController *)self stopValidationWithPrompt:self->_firstTimeSetupValidationOriginalTitle showButtons:1];
  if ([v13 accountIsValid])
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([v7 deliveryAccount], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = v7;
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