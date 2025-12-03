@interface MailSettingsSpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (MailSettingsSpecifierProvider)initWithAccountManager:(id)manager presenter:(id)presenter;
- (NSArray)specifiers;
- (id)_dataclassState:(id)state;
- (id)_isMailEnabled:(id)enabled;
- (id)account;
- (void)_loadBundleIfNeeded:(id)needed;
- (void)_mailSpecifierWasTapped:(id)tapped;
- (void)_mailStateChanged:(id)changed withSpecifier:(id)specifier;
- (void)_navigateToExistingFlow:(id)flow;
- (void)_navigateToMailPreferences:(id)preferences;
- (void)_navigateToSwiftUIFlow:(id)flow;
- (void)_presentAccountCreationPage;
- (void)onMailTapWithDeeplink:(id)deeplink;
- (void)pushViewController:(id)controller;
@end

@implementation MailSettingsSpecifierProvider

- (id)account
{
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [accounts objectForKeyedSubscript:AIDAServiceTypeCloud];

  return v3;
}

- (MailSettingsSpecifierProvider)initWithAccountManager:(id)manager presenter:(id)presenter
{
  objc_storeStrong(&self->_accountManager, manager);
  presenterCopy = presenter;
  objc_storeWeak(&self->_presenter, presenterCopy);

  return self;
}

- (NSArray)specifiers
{
  v3 = +[NSMutableArray array];
  account = [(MailSettingsSpecifierProvider *)self account];
  v5 = account;
  if (account && (v6 = ACAccountDataclassMail, [account isProvisionedForDataclass:ACAccountDataclassMail]))
  {
    v7 = [v5 aa_isAccountClass:AAAccountClassPrimary];
    v8 = _MSLogSystem();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
    if (v7)
    {
      if (v9)
      {
        sub_D43B4(v5);
      }

      v10 = [PSSpecifier acui_linkListCellSpecifierForDataclass:v6 account:v5 target:self set:0 get:"_dataclassState:" detail:0];
      mailSpecifier = self->_mailSpecifier;
      self->_mailSpecifier = v10;

      v12 = self->_mailSpecifier;
      v13 = [NSBundle bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"ICLOUD_MAIL_LABEL" value:&stru_11B690 table:0];
      [(PSSpecifier *)v12 setName:v14];

      [(PSSpecifier *)self->_mailSpecifier setControllerLoadAction:"_mailSpecifierWasTapped:"];
      v26[0] = &__kCFBooleanTrue;
      v15 = ACUIAccountKey;
      v25[0] = ACUIAlreadyShowedEnableAndDeleteKey;
      v25[1] = ACUIAccountKey;
      accounts = [(AIDAAccountManager *)self->_accountManager accounts];
      v17 = [accounts objectForKeyedSubscript:AIDAServiceTypeCloud];
      v26[1] = v17;
      v18 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
      v19 = [NSMutableDictionary dictionaryWithDictionary:v18];

      [v19 setObject:&__kCFBooleanTrue forKey:@"MailDetailViewWithBackKey"];
      aa_childMailAccount = [v5 aa_childMailAccount];
      if (aa_childMailAccount)
      {
        [v19 setObject:aa_childMailAccount forKey:v15];
      }

      [(PSSpecifier *)self->_mailSpecifier setUserInfo:v19];
      [(PSSpecifier *)self->_mailSpecifier setObject:self->_accountManager forKeyedSubscript:@"icloudAccountManager"];
      [v3 addObject:self->_mailSpecifier];
    }

    else
    {
      if (v9)
      {
        sub_D4330(v5);
      }

      v23 = [PSSpecifier acui_specifierForDataclass:v6 account:v5 target:self set:"_mailStateChanged:withSpecifier:" get:"_isMailEnabled:"];
      v24 = self->_mailSpecifier;
      self->_mailSpecifier = v23;

      [v3 addObject:self->_mailSpecifier];
    }
  }

  else
  {
    v21 = _MSLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      sub_D4438();
    }
  }

  return v3;
}

- (id)_dataclassState:(id)state
{
  account = [(MailSettingsSpecifierProvider *)self account];
  v5 = [account isEnabledForDataclass:ACAccountDataclassMail];

  if (v5)
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = v6;
    v8 = @"ON";
  }

  else
  {
    account2 = [(MailSettingsSpecifierProvider *)self account];
    aa_needsEmailConfiguration = [account2 aa_needsEmailConfiguration];

    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = v6;
    if (aa_needsEmailConfiguration)
    {
      v8 = @"DATACLASS_NEEDS_SETUP";
    }

    else
    {
      v8 = @"OFF";
    }
  }

  v11 = [v6 localizedStringForKey:v8 value:&stru_11B690 table:0];

  return v11;
}

- (void)_mailSpecifierWasTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = _MSLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_D4474();
  }

  if (_os_feature_enabled_impl())
  {
    [(MailSettingsSpecifierProvider *)self _navigateToSwiftUIFlow:tappedCopy];
  }

  else
  {
    [(MailSettingsSpecifierProvider *)self _navigateToExistingFlow:tappedCopy];
  }
}

- (void)_navigateToExistingFlow:(id)flow
{
  flowCopy = flow;
  [(MailSettingsSpecifierProvider *)self _loadMailSettingsBundleIfNeeded];
  [flowCopy setDetailControllerClass:NSClassFromString(@"ICloudMailAccountController")];
  [flowCopy setControllerLoadAction:0];
}

- (void)_navigateToSwiftUIFlow:(id)flow
{
  flowCopy = flow;
  account = [(MailSettingsSpecifierProvider *)self account];
  aa_needsEmailConfiguration = [account aa_needsEmailConfiguration];

  if (aa_needsEmailConfiguration)
  {
    [(MailSettingsSpecifierProvider *)self _presentAccountCreationPage];
  }

  else
  {
    [(MailSettingsSpecifierProvider *)self _navigateToMailPreferences:flowCopy];
  }
}

- (void)_navigateToMailPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v5 = _MSLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_D44B0();
  }

  account = [(MailSettingsSpecifierProvider *)self account];
  if ([account aa_isAccountClass:AAAccountClassPrimary])
  {
    accounts = [(AIDAAccountManager *)self->_accountManager accounts];
    v8 = [accounts objectForKeyedSubscript:AIDAServiceTypeCloud];
    userInfo = [preferencesCopy userInfo];
    v10 = ACUIAccountKey;
    [userInfo setObject:v8 forKeyedSubscript:ACUIAccountKey];

    aa_childMailAccount = [account aa_childMailAccount];
    if (aa_childMailAccount)
    {
      userInfo2 = [preferencesCopy userInfo];
      [userInfo2 setObject:aa_childMailAccount forKeyedSubscript:v10];
    }
  }

  accountManager = self->_accountManager;
  userInfo3 = [preferencesCopy userInfo];
  [userInfo3 setObject:accountManager forKeyedSubscript:@"ACUIAccountManagerKey"];

  [preferencesCopy setDetailControllerClass:objc_opt_class()];
  [preferencesCopy setControllerLoadAction:0];
}

- (void)_presentAccountCreationPage
{
  v3 = _MSLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_D44EC();
  }

  objc_initWeak(&location, self);
  v4 = [iCloudMailAccountProvider alloc];
  accountStore = [(AIDAAccountManager *)self->_accountManager accountStore];
  account = [(MailSettingsSpecifierProvider *)self account];
  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  v8 = [v4 initWithAccountStore:accountStore appleAccount:account presenter:WeakRetained];
  mailAccountProvider = self->_mailAccountProvider;
  self->_mailAccountProvider = v8;

  v10 = self->_mailAccountProvider;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_2D94;
  v11[3] = &unk_112FE8;
  objc_copyWeak(&v12, &location);
  [(iCloudMailAccountProvider *)v10 presentWithCompletionHandler:v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_loadBundleIfNeeded:(id)needed
{
  neededCopy = needed;
  v4 = UISystemRootDirectory();
  v5 = [v4 stringByAppendingPathComponent:@"System/Library/PreferenceBundles/AccountSettings"];

  v6 = [v5 stringByAppendingPathComponent:neededCopy];
  v7 = [NSBundle bundleWithPath:v6];
  if (([v7 isLoaded] & 1) == 0)
  {
    v8 = _MSLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_D4528();
    }

    [v7 load];
  }
}

- (void)_mailStateChanged:(id)changed withSpecifier:(id)specifier
{
  changedCopy = changed;
  specifierCopy = specifier;
  v8 = _MSLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_D4598();
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v11 = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = objc_loadWeakRetained(&self->_delegate);
      [v13 specifierProvider:self dataclassSwitchStateDidChange:changedCopy withSpecifier:specifierCopy];
    }
  }
}

- (id)_isMailEnabled:(id)enabled
{
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v4 = [accounts objectForKeyedSubscript:AIDAServiceTypeCloud];

  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isEnabledForDataclass:ACAccountDataclassMail]);

  return v5;
}

- (void)onMailTapWithDeeplink:(id)deeplink
{
  deeplinkCopy = deeplink;
  v5 = _MSLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_D4680();
  }

  account = [(MailSettingsSpecifierProvider *)self account];
  v7 = _MSLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    accountManager = self->_accountManager;
    WeakRetained = objc_loadWeakRetained(&self->_presenter);
    v18 = 138412546;
    v19 = accountManager;
    v20 = 2112;
    v21 = WeakRetained;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "onMailTapWithDeeplink accountManager: %@, presenter: %@", &v18, 0x16u);
  }

  if (account && [account isProvisionedForDataclass:ACAccountDataclassMail])
  {
    aa_needsEmailConfiguration = [account aa_needsEmailConfiguration];
    v11 = _MSLogSystem();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (aa_needsEmailConfiguration)
    {
      if (v12)
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "User has no iCloud Mail account created, navigating to Account Creation flow", &v18, 2u);
      }

      [(MailSettingsSpecifierProvider *)self _presentAccountCreationPage];
    }

    else
    {
      if (v12)
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "User has iCloud Mail configured, navigating to Unified Settings", &v18, 2u);
      }

      specifiers = [(MailSettingsSpecifierProvider *)self specifiers];
      v15 = objc_alloc_init(PreferencesViewController);
      v16 = self->_accountManager;
      userInfo = [(PSSpecifier *)self->_mailSpecifier userInfo];
      [userInfo setObject:v16 forKeyedSubscript:@"ACUIAccountManagerKey"];

      [(PreferencesViewController *)v15 setSpecifier:self->_mailSpecifier];
      if (deeplinkCopy)
      {
        [(PreferencesViewController *)v15 setDeeplink:deeplinkCopy];
      }

      [(MailSettingsSpecifierProvider *)self pushViewController:v15];
    }
  }

  else
  {
    v13 = _MSLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_D46F0();
    }
  }
}

- (void)pushViewController:(id)controller
{
  controllerCopy = controller;
  v5 = _MSLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(&self->_presenter);
    v10 = 138412290;
    v11 = WeakRetained;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "pushViewController: %@", &v10, 0xCu);
  }

  v7 = objc_loadWeakRetained(&self->_presenter);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = objc_loadWeakRetained(&self->_presenter);
    [v9 showController:controllerCopy animate:1];
  }

  else
  {
    v9 = _MSLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_D4730();
    }
  }
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end