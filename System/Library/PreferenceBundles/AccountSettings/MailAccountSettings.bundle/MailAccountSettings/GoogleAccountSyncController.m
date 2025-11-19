@interface GoogleAccountSyncController
- (BOOL)_needsReAuthenciationSection;
- (GoogleAccountSyncController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_reAuthenticationSectionSpecifiers;
- (id)specifiers;
- (void)_accountStoreDidChange:(id)a3;
- (void)_beginObservingAccountStoreDidChangeNotification;
- (void)_effectiveSettingsDidChange:(id)a3;
- (void)_reAuthenticationButtonTapped:(id)a3;
- (void)_stopObservingAccountStoreDidChangeNotification;
- (void)accountValidator:(id)a3 finishedValidationOfAccount:(id)a4 usedSSL:(BOOL)a5;
- (void)dealloc;
- (void)handleURL:(id)a3;
- (void)viewDidLoad;
@end

@implementation GoogleAccountSyncController

- (GoogleAccountSyncController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = GoogleAccountSyncController;
  v8 = [(GoogleAccountSyncController *)&v12 initWithNibName:v6 bundle:v7];
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

- (void)handleURL:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = GoogleAccountSyncController;
  [(GoogleAccountSyncController *)&v7 handleURL:v4];
  v5 = [v4 objectForKeyedSubscript:@"slGoogleAction"];
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

- (void)_accountStoreDidChange:(id)a3
{
  v4 = [(GoogleAccountSyncController *)self account];
  [v4 refresh];

  LODWORD(v4) = self->_showingReAuthenticationSection;
  if (v4 != [(GoogleAccountSyncController *)self _needsReAuthenciationSection])
  {

    [(GoogleAccountSyncController *)self reloadSpecifiers];
  }
}

- (void)_effectiveSettingsDidChange:(id)a3
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
    v3 = [(GoogleAccountSyncController *)self navigationItem];
    v4 = [v3 title];
    firstTimeSetupValidationOriginalTitle = self->_firstTimeSetupValidationOriginalTitle;
    self->_firstTimeSetupValidationOriginalTitle = v4;

    [(GoogleAccountSyncController *)self startValidationWithPrompt:self->_firstTimeSetupValidationOriginalTitle];
    [(GoogleAccountSyncController *)self setTaskCompletionAssertionEnabled:1];
    v6 = objc_alloc_init(+[GmailAccount accountValidatorClass]);
    [v6 setDelegate:self];
    v7 = [(AccountPSSyncController *)self mailAccount];
    [v6 validateAccount:v7 useSSL:1];
  }
}

- (BOOL)_needsReAuthenciationSection
{
  if (([(GoogleAccountSyncController *)self isFirstTimeSetup]& 1) != 0)
  {
    return 0;
  }

  v4 = [(GoogleAccountSyncController *)self account];
  v5 = [v4 isAuthenticated];

  if ((v5 & 1) == 0)
  {
    return 1;
  }

  v6 = [(GoogleAccountSyncController *)self account];
  v7 = [v6 credential];
  v8 = [v7 oauthToken];
  if (v8)
  {
    v3 = 0;
  }

  else
  {
    v9 = [(GoogleAccountSyncController *)self account];
    v10 = [v9 credential];
    v11 = [v10 oauthRefreshToken];
    v3 = v11 == 0;
  }

  return v3;
}

- (id)specifiers
{
  v2 = self;
  v27 = OBJC_IVAR___PSListController__specifiers;
  if (!*&self->super.ACUIDataclassConfigurationViewController_opaque[OBJC_IVAR___PSListController__specifiers])
  {
    if ([(GoogleAccountSyncController *)self isFirstTimeSetup])
    {
      v3 = !v2->_didFirstTimeSetupValidation;
    }

    else
    {
      v3 = 0;
    }

    v4 = [(GoogleAccountSyncController *)v2 _needsReAuthenciationSection];
    v5 = objc_alloc_init(NSMutableArray);
    if (v4)
    {
      v29 = [(GoogleAccountSyncController *)v2 _reAuthenticationSectionSpecifiers];
      [v5 addObjectsFromArray:v29];
    }

    else
    {
      v29 = 0;
    }

    self->_showingReAuthenticationSection = v4;
    v35.receiver = self;
    v35.super_class = GoogleAccountSyncController;
    v6 = [(AccountPSSyncController *)&v35 specifiers];
    [v5 addObjectsFromArray:v6];

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
      v10 = v4 | v3;
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
            v17 = [v16 BOOLValue];

            if (!v17)
            {
              continue;
            }
          }

          if (v10)
          {
            v18 = [(GoogleAccountSyncController *)self deleteButtonSpecifier];
            v19 = v18;
            if (v14 == v18)
            {
            }

            else
            {
              v20 = [v29 containsObject:v14];

              if ((v20 & 1) == 0)
              {
                goto LABEL_23;
              }
            }
          }

          if (v8 == 2 && ![v29 containsObject:v14])
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

    v2 = self;
  }

  if (v2->_IMAPValidationFailure)
  {
    v23 = [(GoogleAccountSyncController *)v2 account];
    [v23 setEnabled:0 forDataclass:ACAccountDataclassMail];

    v24 = [(GoogleAccountSyncController *)self account];
    [v24 refresh];

    v2 = self;
  }

  v25 = *&v2->super.ACUIDataclassConfigurationViewController_opaque[v27];

  return v25;
}

- (id)_reAuthenticationSectionSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = +[PSSpecifier emptyGroupSpecifier];
  v5 = [(GoogleAccountSyncController *)self account];
  v6 = [v5 username];
  [v4 setProperty:v6 forKey:@"GoogleNameForAccountToAuthenticate"];

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
    objc_initWeak(&location, self);
    v4 = [(GoogleAccountSyncController *)self account];
    v5 = [(GoogleAccountSyncController *)self accountStore];
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
    v6 = [SLGoogleAuthController googleAuthControllerWithAccount:v4 accountStore:v5 presentationBlock:v9 completion:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)accountValidator:(id)a3 finishedValidationOfAccount:(id)a4 usedSSL:(BOOL)a5
{
  v12 = a3;
  v7 = a4;
  self->_didFirstTimeSetupValidation = 1;
  [(GoogleAccountSyncController *)self stopValidationWithPrompt:self->_firstTimeSetupValidationOriginalTitle showButtons:1];
  if ([v12 accountIsValid])
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [v7 deliveryAccount];
      if (v8)
      {
        v9 = v7;
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
      v8 = 0;
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