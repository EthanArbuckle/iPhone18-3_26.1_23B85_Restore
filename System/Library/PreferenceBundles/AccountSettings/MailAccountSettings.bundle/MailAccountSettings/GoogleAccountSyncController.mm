@interface GoogleAccountSyncController
- (BOOL)_needsReAuthenciationSection;
- (GoogleAccountSyncController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_reAuthenticationSectionSpecifiers;
- (id)specifiers;
- (void)_accountStoreDidChange:(id)change;
- (void)_beginObservingAccountStoreDidChangeNotification;
- (void)_effectiveSettingsDidChange:(id)change;
- (void)_reAuthenticationButtonTapped:(id)tapped;
- (void)_stopObservingAccountStoreDidChangeNotification;
- (void)accountValidator:(id)validator finishedValidationOfAccount:(id)account usedSSL:(BOOL)l;
- (void)dealloc;
- (void)handleURL:(id)l;
- (void)viewDidLoad;
@end

@implementation GoogleAccountSyncController

- (GoogleAccountSyncController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  v12.receiver = self;
  v12.super_class = GoogleAccountSyncController;
  v8 = [(GoogleAccountSyncController *)&v12 initWithNibName:nameCopy bundle:bundleCopy];
  v9 = v8;
  if (v8)
  {
    v8->_showingReAuthenticationSection = 0;
    [(GoogleAccountSyncController *)v8 _beginObservingAccountStoreDidChangeNotification];
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v9 selector:"_effectiveSettingsDidChange:" name:MCEffectiveSettingsChangedNotification object:0];
  }

  return v9;
}

- (void)dealloc
{
  [(GoogleAccountSyncController *)self _stopObservingAccountStoreDidChangeNotification];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:MCEffectiveSettingsChangedNotification object:0];

  v4.receiver = self;
  v4.super_class = GoogleAccountSyncController;
  [(GoogleAccountSyncController *)&v4 dealloc];
}

- (void)handleURL:(id)l
{
  lCopy = l;
  v7.receiver = self;
  v7.super_class = GoogleAccountSyncController;
  [(GoogleAccountSyncController *)&v7 handleURL:lCopy];
  v5 = [lCopy objectForKeyedSubscript:@"slGoogleAction"];
  v6 = [v5 isEqualToString:@"showAuthSheet"];

  if (v6)
  {
    [(GoogleAccountSyncController *)self _reAuthenticationButtonTapped:self];
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
  account = [(GoogleAccountSyncController *)self account];
  [account refresh];

  LODWORD(account) = self->_showingReAuthenticationSection;
  if (account != [(GoogleAccountSyncController *)self _needsReAuthenciationSection])
  {

    [(GoogleAccountSyncController *)self reloadSpecifiers];
  }
}

- (void)_effectiveSettingsDidChange:(id)change
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6B01C;
  block[3] = &unk_B8EB0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = GoogleAccountSyncController;
  [(AccountPSSyncController *)&v8 viewDidLoad];
  if ([(GoogleAccountSyncController *)self isFirstTimeSetup])
  {
    navigationItem = [(GoogleAccountSyncController *)self navigationItem];
    title = [navigationItem title];
    firstTimeSetupValidationOriginalTitle = self->_firstTimeSetupValidationOriginalTitle;
    self->_firstTimeSetupValidationOriginalTitle = title;

    [(GoogleAccountSyncController *)self startValidationWithPrompt:self->_firstTimeSetupValidationOriginalTitle];
    [(GoogleAccountSyncController *)self setTaskCompletionAssertionEnabled:1];
    v6 = objc_alloc_init(+[GmailAccount accountValidatorClass]);
    [v6 setDelegate:self];
    mailAccount = [(AccountPSSyncController *)self mailAccount];
    [v6 validateAccount:mailAccount useSSL:1];
  }
}

- (BOOL)_needsReAuthenciationSection
{
  if (([(GoogleAccountSyncController *)self isFirstTimeSetup]& 1) != 0)
  {
    return 0;
  }

  account = [(GoogleAccountSyncController *)self account];
  isAuthenticated = [account isAuthenticated];

  if ((isAuthenticated & 1) == 0)
  {
    return 1;
  }

  account2 = [(GoogleAccountSyncController *)self account];
  credential = [account2 credential];
  oauthToken = [credential oauthToken];
  if (oauthToken)
  {
    v3 = 0;
  }

  else
  {
    account3 = [(GoogleAccountSyncController *)self account];
    credential2 = [account3 credential];
    oauthRefreshToken = [credential2 oauthRefreshToken];
    v3 = oauthRefreshToken == 0;
  }

  return v3;
}

- (id)specifiers
{
  selfCopy3 = self;
  v27 = OBJC_IVAR___PSListController__specifiers;
  if (!*&self->super.ACUIDataclassConfigurationViewController_opaque[OBJC_IVAR___PSListController__specifiers])
  {
    if ([(GoogleAccountSyncController *)self isFirstTimeSetup])
    {
      v3 = !selfCopy3->_didFirstTimeSetupValidation;
    }

    else
    {
      v3 = 0;
    }

    _needsReAuthenciationSection = [(GoogleAccountSyncController *)selfCopy3 _needsReAuthenciationSection];
    v5 = objc_alloc_init(NSMutableArray);
    if (_needsReAuthenciationSection)
    {
      _reAuthenticationSectionSpecifiers = [(GoogleAccountSyncController *)selfCopy3 _reAuthenticationSectionSpecifiers];
      [v5 addObjectsFromArray:_reAuthenticationSectionSpecifiers];
    }

    else
    {
      _reAuthenticationSectionSpecifiers = 0;
    }

    self->_showingReAuthenticationSection = _needsReAuthenciationSection;
    v35.receiver = self;
    v35.super_class = GoogleAccountSyncController;
    specifiers = [(AccountPSSyncController *)&v35 specifiers];
    [v5 addObjectsFromArray:specifiers];

    v7 = +[MCProfileConnection sharedConnection];
    v8 = [v7 effectiveBoolValueForSetting:MCFeatureAccountModificationAllowed];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v5;
    v9 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v9)
    {
      v10 = _needsReAuthenciationSection | v3;
      v11 = *v32;
      v12 = PSEnabledKey;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v31 + 1) + 8 * i);
          v15 = [v14 propertyForKey:v12];
          if (v15)
          {
            v16 = [v14 propertyForKey:v12];
            bOOLValue = [v16 BOOLValue];

            if (!bOOLValue)
            {
              continue;
            }
          }

          if (v10)
          {
            deleteButtonSpecifier = [(GoogleAccountSyncController *)self deleteButtonSpecifier];
            v19 = deleteButtonSpecifier;
            if (v14 == deleteButtonSpecifier)
            {
            }

            else
            {
              v20 = [_reAuthenticationSectionSpecifiers containsObject:v14];

              if ((v20 & 1) == 0)
              {
                goto LABEL_23;
              }
            }
          }

          if (v8 == 2 && ![_reAuthenticationSectionSpecifiers containsObject:v14])
          {
LABEL_23:
            v21 = &__kCFBooleanFalse;
          }

          else
          {
            v21 = &__kCFBooleanTrue;
          }

          [v14 setProperty:v21 forKey:v12];
          continue;
        }

        v9 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v9);
    }

    v22 = *&self->super.ACUIDataclassConfigurationViewController_opaque[v27];
    *&self->super.ACUIDataclassConfigurationViewController_opaque[v27] = obj;

    selfCopy3 = self;
  }

  if (selfCopy3->_IMAPValidationFailure)
  {
    account = [(GoogleAccountSyncController *)selfCopy3 account];
    [account setEnabled:0 forDataclass:ACAccountDataclassMail];

    account2 = [(GoogleAccountSyncController *)self account];
    [account2 refresh];

    selfCopy3 = self;
  }

  v25 = *&selfCopy3->super.ACUIDataclassConfigurationViewController_opaque[v27];

  return v25;
}

- (id)_reAuthenticationSectionSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = +[PSSpecifier emptyGroupSpecifier];
  account = [(GoogleAccountSyncController *)self account];
  username = [account username];
  [v4 setProperty:username forKey:@"GoogleNameForAccountToAuthenticate"];

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
    objc_initWeak(&location, self);
    account = [(GoogleAccountSyncController *)self account];
    accountStore = [(GoogleAccountSyncController *)self accountStore];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_6B9C8;
    v9[3] = &unk_B8FC0;
    v9[4] = self;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_6B9DC;
    v7[3] = &unk_B8FE8;
    objc_copyWeak(&v8, &location);
    v6 = [SLGoogleAuthController googleAuthControllerWithAccount:account accountStore:accountStore presentationBlock:v9 completion:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)accountValidator:(id)validator finishedValidationOfAccount:(id)account usedSSL:(BOOL)l
{
  validatorCopy = validator;
  accountCopy = account;
  self->_didFirstTimeSetupValidation = 1;
  [(GoogleAccountSyncController *)self stopValidationWithPrompt:self->_firstTimeSetupValidationOriginalTitle showButtons:1];
  if ([validatorCopy accountIsValid])
  {
    if (objc_opt_respondsToSelector())
    {
      deliveryAccount = [accountCopy deliveryAccount];
      if (deliveryAccount)
      {
        v9 = accountCopy;
        if (v9)
        {
          v10 = +[MFInvocationQueue sharedInvocationQueue];
          v11 = [MFMonitoredInvocation mf_invocationWithSelector:"updateEmailAliases" target:v9];
          [v10 addInvocation:v11];
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
      deliveryAccount = 0;
    }
  }

  else
  {
    v9 = 0;
    self->_IMAPValidationFailure = 1;
  }

  [(GoogleAccountSyncController *)self reloadSpecifiers];
  [(GoogleAccountSyncController *)self setTaskCompletionAssertionEnabled:0];
}

@end