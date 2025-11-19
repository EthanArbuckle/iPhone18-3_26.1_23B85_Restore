@interface PreferencesViewController
- (BOOL)_hasIcloudMailConfigured;
- (id)customEmailSpecifierProvider;
- (id)mailboxSpecifierProvider;
- (id)specifierProviderWithName:(id)a3;
- (void)_loadBundleIfNeeded:(id)a3;
- (void)_onCustomEmailDomainLoadComplete:(id)a3;
- (void)_onMailCleanupDeeplinkNotificationHandler:(id)a3;
- (void)addSwiftUIView;
- (void)customEmailDomainWasTapped;
- (void)handleDeeplink:(id)a3;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)initAccountInfo;
- (void)mailboxBehaviorWasTapped;
- (void)openMailboxBehaviors;
- (void)openSMIME;
- (void)sMimeTapped;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PreferencesViewController

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = PreferencesViewController;
  [(PreferencesViewController *)&v9 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"MAIL_CARD_TITLE" value:&stru_11B690 table:0];
  [(PreferencesViewController *)self setTitle:v4];

  [(PreferencesViewController *)self initAccountInfo];
  [(PreferencesViewController *)self addSwiftUIView];
  if (self->_deeplink)
  {
    [(PreferencesViewController *)self handleDeeplink:?];
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_onCustomEmailDomainLoadComplete:" name:@"BYOD_SPINNER_CHANGE_NOTIFICATION" object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"_onMailCleanupDeeplinkNotificationHandler:" name:@"MAIL_CLEANUP_DEEPLINK_NOTIFICATION" object:0];

  v7 = [*&self->PSViewController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v8 = [v7 objectForKeyedSubscript:@"START_MAIL_IMPORT"];

  if ([v8 BOOLValue])
  {
    [(MAPreferencesControllerDelegate *)self->swiftUIController presentMailImport];
  }
}

- (void)initAccountInfo
{
  v3 = OBJC_IVAR___PSViewController__specifier;
  v4 = [*&self->PSViewController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v5 = [v4 objectForKey:ACUIAccountKey];
  v6 = [v5 parentAccount];
  [(PreferencesViewController *)self setAppleAccount:v6];

  v7 = [(PreferencesViewController *)self appleAccount];

  if (!v7)
  {
    [(PreferencesViewController *)self setAppleAccount:v5];
  }

  v8 = [v4 objectForKeyedSubscript:@"ACUIAccountManagerKey"];
  [(PreferencesViewController *)self setAccountManager:v8];

  v9 = [(PreferencesViewController *)self accountManager];
  v10 = [v9 accountStore];
  [(PreferencesViewController *)self setAccountStore:v10];

  v11 = [*&self->PSViewController_opaque[v3] target];
  mailSpecifier = self->_mailSpecifier;
  self->_mailSpecifier = v11;

  v13 = [(PreferencesViewController *)self accountManager];
  if (!v13 || (v14 = v13, [(PreferencesViewController *)self appleAccount], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, !v15))
  {
    v16 = _MSLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_D47B8(self, v16);
    }
  }
}

- (void)addSwiftUIView
{
  v3 = [(PreferencesViewController *)self accountStore];
  v4 = [(PreferencesViewController *)self appleAccount];
  v5 = [_TtC18icloudMailSettings25MAPreferencesViewProvider getSwiftUIViewWithAccountStore:v3 appleAccount:v4 delegate:self];
  swiftUIController = self->swiftUIController;
  self->swiftUIController = v5;

  [(PreferencesViewController *)self addChildViewController:self->swiftUIController];
  v7 = [(PreferencesViewController *)self view];
  v8 = [(MAPreferencesControllerDelegate *)self->swiftUIController view];
  [v7 addSubview:v8];

  v9 = self->swiftUIController;

  [(MAPreferencesControllerDelegate *)v9 didMoveToParentViewController:self];
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = PreferencesViewController;
  [(PreferencesViewController *)&v13 viewDidLayoutSubviews];
  v3 = [(PreferencesViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(MAPreferencesControllerDelegate *)self->swiftUIController view];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (void)handleURL:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKey:@"path"];
  v9 = _MSLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_D488C();
  }

  v10 = [v8 isEqualToString:@"BYOD_SETTING_SPECIFIER_ID"];
  v11 = _MSLogSystem();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
  if (v10)
  {
    if (v12)
    {
      sub_D496C();
    }

    v13 = [v6 objectForKey:@"domain"];
    if ([(PreferencesViewController *)self _hasIcloudMailConfigured])
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_3F1C;
      block[3] = &unk_113050;
      v29 = v6;
      dispatch_async(&_dispatch_main_q, block);
      v14 = v29;
    }

    else
    {
      v15 = _MSLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_D49A8();
      }

      v16 = [NSBundle bundleForClass:objc_opt_class()];
      v17 = [v16 localizedStringForKey:@"BYOD_MEMBER_MAIL_CONFIGURE_ALERT_MESSAGE" value:&stru_11B690 table:0];
      v14 = [NSString stringWithFormat:v17, v13];

      v18 = [NSBundle bundleForClass:objc_opt_class()];
      [v18 localizedStringForKey:@"BYOD_MEMBER_MAIL_CONFIGURE_ALERT_TITLE" value:&stru_11B690 table:0];
      v19 = v25 = v13;
      v20 = [UIAlertController alertControllerWithTitle:v19 message:v14 preferredStyle:1];

      v21 = [NSBundle bundleForClass:objc_opt_class()];
      v22 = [v21 localizedStringForKey:@"OK" value:&stru_11B690 table:0];
      v23 = [UIAlertAction actionWithTitle:v22 style:0 handler:0];

      v13 = v25;
      [v20 addAction:v23];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_3F80;
      v26[3] = &unk_113078;
      v26[4] = self;
      v27 = v20;
      v24 = v20;
      dispatch_async(&_dispatch_main_q, v26);
    }

    if (v7)
    {
LABEL_16:
      v7[2](v7);
    }
  }

  else
  {
    if (v12)
    {
      sub_D48FC();
    }

    [(MAPreferencesControllerDelegate *)self->swiftUIController handleUniversalLinkWithUserInfo:v6];
    if (v7)
    {
      goto LABEL_16;
    }
  }
}

- (void)handleDeeplink:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = _MSLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Deeplink: %@", buf, 0xCu);
    }

    v22 = self;

    v6 = [[NSURLComponents alloc] initWithString:v4];
    v7 = [v6 path];
    v8 = [v7 stringByReplacingOccurrencesOfString:@"com.apple.Dataclass.Mail/" withString:&stru_11B690];
    v9 = [v8 stringByReplacingOccurrencesOfString:@"ICLOUD_SERVICE/" withString:&stru_11B690];

    v10 = objc_opt_new();
    [v10 setValue:v9 forKey:@"path"];
    v11 = _MSLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v6 queryItems];
      *buf = 138412290;
      v29 = v12;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "NSURLComponents: %@", buf, 0xCu);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = [v6 queryItems];
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v23 + 1) + 8 * i);
          v19 = [v18 value];
          v20 = [v18 name];
          [v10 setValue:v19 forKey:v20];
        }

        v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v15);
    }

    v21 = _MSLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v10;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "Handle deeplink: %@", buf, 0xCu);
    }

    [(PreferencesViewController *)v22 handleURL:v10 withCompletion:0];
  }
}

- (BOOL)_hasIcloudMailConfigured
{
  if (![(ACAccount *)self->_appleAccount isProvisionedForDataclass:ACAccountDataclassMail])
  {
    return 0;
  }

  v3 = [(ACAccount *)self->_appleAccount aa_childMailAccount];
  v4 = v3 != 0;

  return v4;
}

- (void)_onCustomEmailDomainLoadComplete:(id)a3
{
  v9 = a3;
  v4 = [NSNumber numberWithBool:0];
  v5 = [v9 userInfo];
  v6 = [v5 valueForKey:@"active"];

  if (v6)
  {
    v7 = [v9 userInfo];
    v8 = [v7 valueForKey:@"active"];

    v4 = v8;
  }

  -[MAPreferencesControllerDelegate onCustomEmailDomainEntryPointChangeWithSpinning:](self->swiftUIController, "onCustomEmailDomainEntryPointChangeWithSpinning:", [v4 BOOLValue]);
}

- (void)_onMailCleanupDeeplinkNotificationHandler:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_4470;
  v5[3] = &unk_113078;
  v6 = a3;
  v7 = self;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)mailboxBehaviorWasTapped
{
  v3 = _MSLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_D4B04();
  }

  [(PreferencesViewController *)self openMailboxBehaviors];
}

- (void)customEmailDomainWasTapped
{
  v3 = _MSLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[PreferencesViewController] Custom Email Domain was tapped", buf, 2u);
  }

  v4 = [(PreferencesViewController *)self customEmailSpecifierProvider];
  v5 = [v4 specifiers];
  v6 = [v5 firstObject];

  if (v6)
  {
    [v6 performControllerLoadAction];
  }

  else
  {
    v7 = _MSLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Custom Email Specifier is nil", v8, 2u);
    }
  }
}

- (void)sMimeTapped
{
  v3 = _MSLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_D4B40();
  }

  [(PreferencesViewController *)self openSMIME];
}

- (void)openMailboxBehaviors
{
  v2 = [(PreferencesViewController *)self mailboxSpecifierProvider];
  v3 = [v2 specifiers];
  v4 = [v3 ac_filter:&stru_1130F8];
  v5 = [v4 firstObject];

  if (v5)
  {
    [v5 performControllerLoadAction];
  }

  else
  {
    v6 = _MSLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_D4B7C();
    }
  }
}

- (void)openSMIME
{
  v2 = [(PreferencesViewController *)self mailboxSpecifierProvider];
  v3 = [v2 specifiers];
  v4 = [v3 ac_filter:&stru_113118];
  v5 = [v4 firstObject];

  if (v5)
  {
    [v5 performControllerLoadAction];
  }

  else
  {
    v6 = _MSLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_D4BBC();
    }
  }
}

- (id)mailboxSpecifierProvider
{
  mailboxSpecifierProvider = self->_mailboxSpecifierProvider;
  if (!mailboxSpecifierProvider)
  {
    v4 = [(PreferencesViewController *)self specifierProviderWithName:@"iCloudMailboxSpecifierProvider"];
    v5 = self->_mailboxSpecifierProvider;
    self->_mailboxSpecifierProvider = v4;

    mailboxSpecifierProvider = self->_mailboxSpecifierProvider;
  }

  return mailboxSpecifierProvider;
}

- (id)customEmailSpecifierProvider
{
  customEmailSpecifierProvider = self->_customEmailSpecifierProvider;
  if (!customEmailSpecifierProvider)
  {
    v4 = [(PreferencesViewController *)self specifierProviderWithName:@"BYODSpecifierProvider"];
    v5 = self->_customEmailSpecifierProvider;
    self->_customEmailSpecifierProvider = v4;

    customEmailSpecifierProvider = self->_customEmailSpecifierProvider;
  }

  return customEmailSpecifierProvider;
}

- (id)specifierProviderWithName:(id)a3
{
  v4 = a3;
  [(PreferencesViewController *)self _loadMailSettingsBundleIfNeeded];
  v5 = NSClassFromString(v4);
  v6 = [(objc_class *)v5 conformsToProtocol:&OBJC_PROTOCOL___AAUISpecifierProvider];
  v7 = _MSLogSystem();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      accountManager = self->_accountManager;
      *buf = 138412290;
      v23 = accountManager;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "AccountManager: %@", buf, 0xCu);
    }

    if (!self->_accountManager)
    {
      v10 = _MSLogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        sub_D4C70();
      }

      v11 = [AIDAAccountManager alloc];
      v12 = +[ACAccountStore defaultStore];
      v13 = [v11 initWithAccountStore:v12];
      v14 = self->_accountManager;
      self->_accountManager = v13;

      v15 = +[ACAccountStore defaultStore];
      v16 = [v15 aa_primaryAppleAccount];
      v21 = v16;
      v17 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];

      [(AIDAAccountManager *)self->_accountManager setAccounts:v17];
    }

    v18 = [[v5 alloc] initWithAccountManager:self->_accountManager presenter:self];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_D4BFC();
    }

    v18 = 0;
  }

  return v18;
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
      sub_D4CB0();
    }

    [v7 load];
  }
}

@end