@interface BYODSpecifierProvider
+ (id)log;
- (AAUISpecifierProviderDelegate)delegate;
- (BYODSpecifierProvider)initWithAccountManager:(id)manager presenter:(id)presenter;
- (NSArray)specifiers;
- (void)_customDomainSpecifierWasTapped:(id)tapped;
- (void)_getCustomEmailDomain:(id)domain account:(id)account callback:(id)callback;
- (void)_loadDomainInfo:(id)info notification:(BOOL)notification targetDomain:(id)domain domainState:(id)state;
- (void)_performHSAUpgradeWithAttributes:(id)attributes completion:(id)completion;
- (void)_upgradeAccountIfNeeded:(id)needed withCompletion:(id)completion;
- (void)dealloc;
- (void)handleURLNotification:(id)notification;
- (void)loadDomain:(id)domain withState:(id)state completion:(id)completion;
- (void)onByodSpinnerChange:(BOOL)change;
- (void)showViewController:(id)controller;
@end

@implementation BYODSpecifierProvider

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_61760;
  block[3] = &unk_B8D78;
  block[4] = self;
  if (qword_D65B0 != -1)
  {
    dispatch_once(&qword_D65B0, block);
  }

  v2 = qword_D65A8;

  return v2;
}

- (BYODSpecifierProvider)initWithAccountManager:(id)manager presenter:(id)presenter
{
  managerCopy = manager;
  presenterCopy = presenter;
  v13.receiver = self;
  v13.super_class = BYODSpecifierProvider;
  v9 = [(BYODSpecifierProvider *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountManager, manager);
    objc_storeWeak(&v10->_presenter, presenterCopy);
    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v10 selector:"handleURLNotification:" name:@"BYOD_HANDLE_URL_NOTIFICATION" object:0];
  }

  return v10;
}

- (NSArray)specifiers
{
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v4 = [accounts objectForKeyedSubscript:AIDAServiceTypeCloud];

  if (([v4 aa_needsEmailConfiguration] & 1) != 0 || (objc_msgSend(v4, "propertiesForDataclass:", @"com.apple.Dataclass.PremiumMailSettings"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "objectForKeyedSubscript:", @"customDomainEnabled"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "BOOLValue"), v6, v5, (v7 & 1) == 0))
  {
    v18 = 0;
  }

  else
  {
    specifiers = self->_specifiers;
    if (!specifiers)
    {
      v9 = objc_alloc_init(NSMutableArray);
      v10 = [NSBundle bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"CUSTOM_EMAIL_DOMAIN" value:&stru_B9FC8 table:@"AccountPreferences"];
      v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:1 edit:0];
      customDomainSpecifier = self->_customDomainSpecifier;
      self->_customDomainSpecifier = v12;

      [(PSSpecifier *)self->_customDomainSpecifier setIdentifier:@"BYOD_SETTING_SPECIFIER_ID"];
      [(PSSpecifier *)self->_customDomainSpecifier setControllerLoadAction:"_customDomainSpecifierWasTapped:"];
      v14 = [NSBundle bundleForClass:objc_opt_class()];
      v15 = [UIImage imageNamed:@"CustomDomainRowIcon.png" inBundle:v14];

      [(PSSpecifier *)self->_customDomainSpecifier setProperty:v15 forKey:PSIconImageKey];
      [v9 addObject:self->_customDomainSpecifier];
      v16 = [v9 copy];
      v17 = self->_specifiers;
      self->_specifiers = v16;

      specifiers = self->_specifiers;
    }

    v18 = specifiers;
  }

  return v18;
}

- (void)loadDomain:(id)domain withState:(id)state completion:(id)completion
{
  domainCopy = domain;
  stateCopy = state;
  completionCopy = completion;
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v12 = [accounts objectForKeyedSubscript:AIDAServiceTypeCloud];

  objc_initWeak(&location, self);
  aa_altDSID = [v12 aa_altDSID];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_61D54;
  v17[3] = &unk_B98A0;
  objc_copyWeak(&v21, &location);
  v14 = domainCopy;
  v18 = v14;
  v15 = stateCopy;
  v19 = v15;
  v16 = completionCopy;
  v20 = v16;
  [(BYODSpecifierProvider *)self _upgradeAccountIfNeeded:aa_altDSID withCompletion:v17];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

- (void)_customDomainSpecifierWasTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = +[BYODSpecifierProvider log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "custom domain specifier tapped", buf, 2u);
  }

  accountManager = self->_accountManager;
  if (!accountManager)
  {
    v7 = +[BYODSpecifierProvider log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "account manager is nil", buf, 2u);
    }

    accountManager = self->_accountManager;
  }

  accounts = [(AIDAAccountManager *)accountManager accounts];
  v9 = [accounts objectForKeyedSubscript:AIDAServiceTypeCloud];

  aa_altDSID = [v9 aa_altDSID];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_62180;
  v12[3] = &unk_B98C8;
  v12[4] = self;
  v11 = tappedCopy;
  v13 = v11;
  [(BYODSpecifierProvider *)self _upgradeAccountIfNeeded:aa_altDSID withCompletion:v12];
}

- (void)_loadDomainInfo:(id)info notification:(BOOL)notification targetDomain:(id)domain domainState:(id)state
{
  notificationCopy = notification;
  infoCopy = info;
  domainCopy = domain;
  stateCopy = state;
  if (!notificationCopy || (-[BYODListDomain domains](self->_domainList, "domains"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 count], v13, !v14))
  {
    [infoCopy byod_startSpinner];
    [(BYODSpecifierProvider *)self onByodSpinnerChange:1];
    accounts = [(AIDAAccountManager *)self->_accountManager accounts];
    v16 = [accounts objectForKeyedSubscript:AIDAServiceTypeCloud];

    v17 = [BYODListDomainRequest alloc];
    accountStore = [v16 accountStore];
    v19 = [(BYODListDomainRequest *)v17 initWithAccount:v16 accountStore:accountStore];

    objc_initWeak(&location, self);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_6256C;
    v21[3] = &unk_B9A08;
    objc_copyWeak(&v26, &location);
    v22 = infoCopy;
    v20 = v16;
    v23 = v20;
    v24 = domainCopy;
    v25 = stateCopy;
    [(BYODListDomainRequest *)v19 performRequestWithCallback:v21];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }
}

- (void)showViewController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_loadWeakRetained(&self->_presenter);
  if (WeakRetained)
  {
    [WeakRetained specifierProvider:self showViewController:controllerCopy];
  }

  else
  {
    if (pthread_main_np() != 1)
    {
      v9 = +[NSAssertionHandler currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"BYODSpecifierProvider.m" lineNumber:235 description:@"Current thread must be main"];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [v7 presentViewController:controllerCopy animated:1 completion:0];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v7 showController:controllerCopy animate:1];
      }

      else
      {
        v8 = +[BYODSpecifierProvider log];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_798DC(v8);
        }

        [v7 showViewController:controllerCopy sender:self];
      }
    }
  }
}

- (void)_getCustomEmailDomain:(id)domain account:(id)account callback:(id)callback
{
  domainCopy = domain;
  callbackCopy = callback;
  v9 = objc_alloc_init(MatterhornUpsellManager);
  upsellManager = self->_upsellManager;
  self->_upsellManager = v9;

  v11 = self->_upsellManager;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_63A74;
  v14[3] = &unk_B9A58;
  v12 = domainCopy;
  v15 = v12;
  selfCopy = self;
  v13 = callbackCopy;
  v17 = v13;
  [(MatterhornUpsellManager *)v11 matterhornUpsell:@"settingsCustomDomain" forFeatureId:@"mail.custom-domains.transfer" withCompletion:v14];
}

- (void)_upgradeAccountIfNeeded:(id)needed withCompletion:(id)completion
{
  neededCopy = needed;
  completionCopy = completion;
  v8 = +[AKAccountManager sharedInstance];
  primaryAuthKitAccount = [v8 primaryAuthKitAccount];
  v10 = [v8 securityLevelForAccount:primaryAuthKitAccount];

  v11 = +[BYODSpecifierProvider log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v15 = v10 == &dword_4;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "The account is HSA: %{BOOL}d.", buf, 8u);
  }

  if (v10 == &dword_4)
  {
    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_63DD0;
    v12[3] = &unk_B8ED8;
    v13 = completionCopy;
    [(BYODSpecifierProvider *)self _performHSAUpgradeWithAttributes:neededCopy completion:v12];
  }
}

- (void)_performHSAUpgradeWithAttributes:(id)attributes completion:(id)completion
{
  attributesCopy = attributes;
  completionCopy = completion;
  v7 = [[CDPUIDeviceToDeviceEncryptionFlowContext alloc] initWithAltDSID:attributesCopy];
  [v7 setDeviceToDeviceEncryptionUpgradeUIStyle:0];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"CUSTOM_EMAIL_DOMAIN_2FA_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v7 setFeatureName:v9];

  [v7 setDeviceToDeviceEncryptionUpgradeType:1];
  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  [v7 setPresentingViewController:WeakRetained];

  v11 = [[CDPUIDeviceToDeviceEncryptionHelper alloc] initWithContext:v7];
  [v11 performDeviceToDeviceEncryptionStateRepairWithCompletion:completionCopy];
}

- (void)handleURLNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v5 = [userInfo objectForKey:@"domain"];

  userInfo2 = [notificationCopy userInfo];
  v7 = [userInfo2 objectForKey:@"domainState"];

  [(BYODSpecifierProvider *)self loadDomain:v5 withState:v7 completion:&stru_B9A98];
}

- (void)onByodSpinnerChange:(BOOL)change
{
  changeCopy = change;
  v4 = +[NSNotificationCenter defaultCenter];
  v7 = @"active";
  v5 = [NSNumber numberWithBool:changeCopy];
  v8 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [v4 postNotificationName:@"BYOD_SPINNER_CHANGE_NOTIFICATION" object:0 userInfo:v6];
}

- (void)dealloc
{
  v3 = +[BYODSpecifierProvider log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_79998(v3);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = BYODSpecifierProvider;
  [(BYODSpecifierProvider *)&v5 dealloc];
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end