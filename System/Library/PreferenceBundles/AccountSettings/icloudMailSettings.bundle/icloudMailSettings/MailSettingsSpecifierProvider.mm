@interface MailSettingsSpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (MailSettingsSpecifierProvider)initWithAccountManager:(id)a3 presenter:(id)a4;
- (NSArray)specifiers;
- (id)_dataclassState:(id)a3;
- (id)_isMailEnabled:(id)a3;
- (id)account;
- (void)_loadBundleIfNeeded:(id)a3;
- (void)_mailSpecifierWasTapped:(id)a3;
- (void)_mailStateChanged:(id)a3 withSpecifier:(id)a4;
- (void)_navigateToExistingFlow:(id)a3;
- (void)_navigateToMailPreferences:(id)a3;
- (void)_navigateToSwiftUIFlow:(id)a3;
- (void)_presentAccountCreationPage;
- (void)onMailTapWithDeeplink:(id)a3;
- (void)pushViewController:(id)a3;
@end

@implementation MailSettingsSpecifierProvider

- (id)account
{
  v2 = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [v2 objectForKeyedSubscript:AIDAServiceTypeCloud];

  return v3;
}

- (MailSettingsSpecifierProvider)initWithAccountManager:(id)a3 presenter:(id)a4
{
  objc_storeStrong(&self->_accountManager, a3);
  v6 = a4;
  objc_storeWeak(&self->_presenter, v6);

  return self;
}

- (NSArray)specifiers
{
  v3 = +[NSMutableArray array];
  v4 = [(MailSettingsSpecifierProvider *)self account];
  v5 = v4;
  if (v4 && (v6 = ACAccountDataclassMail, [v4 isProvisionedForDataclass:ACAccountDataclassMail]))
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
      v16 = [(AIDAAccountManager *)self->_accountManager accounts];
      v17 = [v16 objectForKeyedSubscript:AIDAServiceTypeCloud];
      v26[1] = v17;
      v18 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
      v19 = [NSMutableDictionary dictionaryWithDictionary:v18];

      [v19 setObject:&__kCFBooleanTrue forKey:@"MailDetailViewWithBackKey"];
      v20 = [v5 aa_childMailAccount];
      if (v20)
      {
        [v19 setObject:v20 forKey:v15];
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

- (id)_dataclassState:(id)a3
{
  v4 = [(MailSettingsSpecifierProvider *)self account];
  v5 = [v4 isEnabledForDataclass:ACAccountDataclassMail];

  if (v5)
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = v6;
    v8 = @"ON";
  }

  else
  {
    v9 = [(MailSettingsSpecifierProvider *)self account];
    v10 = [v9 aa_needsEmailConfiguration];

    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = v6;
    if (v10)
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

- (void)_mailSpecifierWasTapped:(id)a3
{
  v4 = a3;
  v5 = _MSLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_D4474();
  }

  if (_os_feature_enabled_impl())
  {
    [(MailSettingsSpecifierProvider *)self _navigateToSwiftUIFlow:v4];
  }

  else
  {
    [(MailSettingsSpecifierProvider *)self _navigateToExistingFlow:v4];
  }
}

- (void)_navigateToExistingFlow:(id)a3
{
  v4 = a3;
  [(MailSettingsSpecifierProvider *)self _loadMailSettingsBundleIfNeeded];
  [v4 setDetailControllerClass:NSClassFromString(@"ICloudMailAccountController")];
  [v4 setControllerLoadAction:0];
}

- (void)_navigateToSwiftUIFlow:(id)a3
{
  v6 = a3;
  v4 = [(MailSettingsSpecifierProvider *)self account];
  v5 = [v4 aa_needsEmailConfiguration];

  if (v5)
  {
    [(MailSettingsSpecifierProvider *)self _presentAccountCreationPage];
  }

  else
  {
    [(MailSettingsSpecifierProvider *)self _navigateToMailPreferences:v6];
  }
}

- (void)_navigateToMailPreferences:(id)a3
{
  v4 = a3;
  v5 = _MSLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_D44B0();
  }

  v6 = [(MailSettingsSpecifierProvider *)self account];
  if ([v6 aa_isAccountClass:AAAccountClassPrimary])
  {
    v7 = [(AIDAAccountManager *)self->_accountManager accounts];
    v8 = [v7 objectForKeyedSubscript:AIDAServiceTypeCloud];
    v9 = [v4 userInfo];
    v10 = ACUIAccountKey;
    [v9 setObject:v8 forKeyedSubscript:ACUIAccountKey];

    v11 = [v6 aa_childMailAccount];
    if (v11)
    {
      v12 = [v4 userInfo];
      [v12 setObject:v11 forKeyedSubscript:v10];
    }
  }

  accountManager = self->_accountManager;
  v14 = [v4 userInfo];
  [v14 setObject:accountManager forKeyedSubscript:@"ACUIAccountManagerKey"];

  [v4 setDetailControllerClass:objc_opt_class()];
  [v4 setControllerLoadAction:0];
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
  v5 = [(AIDAAccountManager *)self->_accountManager accountStore];
  v6 = [(MailSettingsSpecifierProvider *)self account];
  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  v8 = [v4 initWithAccountStore:v5 appleAccount:v6 presenter:WeakRetained];
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

- (void)_loadBundleIfNeeded:(id)a3
{
  v3 = a3;
  v4 = UISystemRootDirectory();
  v5 = [v4 stringByAppendingPathComponent:@"System/Library/PreferenceBundles/AccountSettings"];

  v6 = [v5 stringByAppendingPathComponent:v3];
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

- (void)_mailStateChanged:(id)a3 withSpecifier:(id)a4
{
  v6 = a3;
  v7 = a4;
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
      [v13 specifierProvider:self dataclassSwitchStateDidChange:v6 withSpecifier:v7];
    }
  }
}

- (id)_isMailEnabled:(id)a3
{
  v3 = [(AIDAAccountManager *)self->_accountManager accounts];
  v4 = [v3 objectForKeyedSubscript:AIDAServiceTypeCloud];

  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isEnabledForDataclass:ACAccountDataclassMail]);

  return v5;
}

- (void)onMailTapWithDeeplink:(id)a3
{
  v4 = a3;
  v5 = _MSLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_D4680();
  }

  v6 = [(MailSettingsSpecifierProvider *)self account];
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

  if (v6 && [v6 isProvisionedForDataclass:ACAccountDataclassMail])
  {
    v10 = [v6 aa_needsEmailConfiguration];
    v11 = _MSLogSystem();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
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

      v14 = [(MailSettingsSpecifierProvider *)self specifiers];
      v15 = objc_alloc_init(PreferencesViewController);
      v16 = self->_accountManager;
      v17 = [(PSSpecifier *)self->_mailSpecifier userInfo];
      [v17 setObject:v16 forKeyedSubscript:@"ACUIAccountManagerKey"];

      [(PreferencesViewController *)v15 setSpecifier:self->_mailSpecifier];
      if (v4)
      {
        [(PreferencesViewController *)v15 setDeeplink:v4];
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

- (void)pushViewController:(id)a3
{
  v4 = a3;
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
    [v9 showController:v4 animate:1];
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