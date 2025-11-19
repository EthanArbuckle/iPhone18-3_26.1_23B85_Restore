@interface ACUIAddAccountViewController
+ (id)_debugStringForAction:(int64_t)a3;
- (ACUIAddAccountDataSource)addAccountDataSource;
- (ACUIAddAccountViewController)init;
- (BOOL)_viewControllerIsNotAddOrAddOther:(id)a3;
- (BOOL)isStolenDeviceProtectionFeatureAvailableAndEnabled;
- (BOOL)shouldAddSpecifierForAccountTypeID:(id)a3;
- (BOOL)shouldAddSpecifierForOtherAccountTypes;
- (id)_specifierForAOLAccount;
- (id)_specifierForCustomControlledAccountWithName:(id)a3 accountTypeID:(id)a4;
- (id)_specifierForExchangeAccount;
- (id)_specifierForGmailAccount;
- (id)_specifierForOutlookAccount;
- (id)_specifierForPrimaryiCloudAccount;
- (id)_specifierForRegionalAccountType:(id)a3;
- (id)_specifierForYahooAccount;
- (id)_specifierForiCloudAccount;
- (id)_specifiersForRegionalMailAccounts;
- (id)giantSpecifierWithName:(id)a3 forAccountTypeID:(id)a4;
- (id)specifierForOtherAccounts;
- (id)specifiers;
- (void)_addAccountSpecifierWasTapped:(id)a3;
- (void)_alertIfAccountTypePreventsMultiples:(id)a3 withCompletion:(id)a4;
- (void)_allowedToAddAccountTypeID:(id)a3 fromSpecifier:(id)a4;
- (void)_createCustomControlledAccountTapped:(id)a3;
- (void)_dismissAndBecomeFirstResponder;
- (void)_popToLayerAboveAddAccountFlow;
- (void)_presentPrimaryAppleIDSignInController:(id)a3;
- (void)dealloc;
- (void)setSpecifier:(id)a3;
- (void)setupViewControllerDidDismiss:(id)a3;
- (void)signInControllerDidCompleteWithSuccess:(BOOL)a3 error:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ACUIAddAccountViewController

- (ACUIAddAccountViewController)init
{
  v10 = a2;
  v11 = 0;
  v9.receiver = self;
  v9.super_class = ACUIAddAccountViewController;
  v8 = [(ACUIAddAccountViewController *)&v9 init];
  v11 = v8;
  objc_storeStrong(&v11, v8);
  if (v8)
  {
    v2 = SBSSpringBoardServerPort();
    MEMORY[0x23EEFC420](v2, &v11->_originalCellFlag, &v11->_originalWifiFlag);
    v3 = SBSSpringBoardServerPort();
    MEMORY[0x23EEFC450](v3, 1);
    v4 = objc_alloc_init(MEMORY[0x277CB8F48]);
    accountStore = v11->_accountStore;
    v11->_accountStore = v4;
    MEMORY[0x277D82BD8](accountStore);
  }

  v7 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(&v11, 0);
  return v7;
}

- (ACUIAddAccountDataSource)addAccountDataSource
{
  if (!self->_addAccountDataSource)
  {
    v4 = [(ACUIAddAccountViewController *)self specifier];
    v5 = [v4 propertyForKey:@"ACUIAddAccountDataSourceKey"];
    v6 = 0;
    if (v5)
    {
      objc_storeStrong(&self->_addAccountDataSource, v5);
    }

    else
    {
      v7 = objc_alloc_init(ACUIDefaultAddAccountDataSource);
      v6 = 1;
      objc_storeStrong(&self->_addAccountDataSource, v7);
    }

    if (v6)
    {
      MEMORY[0x277D82BD8](v7);
    }

    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v4);
  }

  addAccountDataSource = self->_addAccountDataSource;

  return addAccountDataSource;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  v2 = SBSSpringBoardServerPort();
  MEMORY[0x23EEFC450](v2, v5->_originalCellFlag, v5->_originalWifiFlag);
  v3.receiver = v5;
  v3.super_class = ACUIAddAccountViewController;
  [(ACUIAddAccountViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v36[4] = *MEMORY[0x277D85DE8];
  v35 = self;
  v34 = a2;
  v33.receiver = self;
  v33.super_class = ACUIAddAccountViewController;
  [(ACUIAddAccountViewController *)&v33 viewDidLoad];
  v31 = [(ACUIAddAccountViewController *)v35 addAccountDataSource];
  objc_opt_class();
  v32 = 0;
  if (objc_opt_isKindOfClass())
  {
    v32 = _os_feature_enabled_impl();
  }

  MEMORY[0x277D82BD8](v31);
  if ((v32 & 1) != 0 && !v35->_modernAddFlow)
  {
    if (*(&v35->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]))
    {
      v30 = MEMORY[0x277D3FC60];
      [*(&v35->super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) removeFromSuperview];
      objc_storeStrong((&v35->super.super.super.super.super.isa + *v30), 0);
    }

    v2 = [getACUISAddAccountControllerSwapClass() modernAddFlowWrappedForViewController:v35];
    modernAddFlow = v35->_modernAddFlow;
    v35->_modernAddFlow = v2;
    MEMORY[0x277D82BD8](modernAddFlow);
    v4 = [(UIViewController *)v35->_modernAddFlow view];
    [(UIView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    MEMORY[0x277D82BD8](v4);
    [(ACUIAddAccountViewController *)v35 addChildViewController:v35->_modernAddFlow];
    v6 = [(ACUIAddAccountViewController *)v35 view];
    v5 = [(UIViewController *)v35->_modernAddFlow view];
    [v6 addSubview:?];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    [(UIViewController *)v35->_modernAddFlow didMoveToParentViewController:v35];
    v7 = MEMORY[0x277CCAAD0];
    v28 = [(UIViewController *)v35->_modernAddFlow view];
    v27 = [(UIView *)v28 topAnchor];
    v26 = [(ACUIAddAccountViewController *)v35 view];
    v25 = [v26 topAnchor];
    v24 = [(NSLayoutYAxisAnchor *)v27 constraintEqualToAnchor:?];
    v36[0] = v24;
    v23 = [(UIViewController *)v35->_modernAddFlow view];
    v22 = [(UIView *)v23 bottomAnchor];
    v21 = [(ACUIAddAccountViewController *)v35 view];
    v20 = [v21 bottomAnchor];
    v19 = [(NSLayoutYAxisAnchor *)v22 constraintEqualToAnchor:?];
    v36[1] = v19;
    v18 = [(UIViewController *)v35->_modernAddFlow view];
    v17 = [(UIView *)v18 leadingAnchor];
    v16 = [(ACUIAddAccountViewController *)v35 view];
    v15 = [v16 leadingAnchor];
    v14 = [(NSLayoutXAxisAnchor *)v17 constraintEqualToAnchor:?];
    v36[2] = v14;
    v13 = [(UIViewController *)v35->_modernAddFlow view];
    v12 = [(UIView *)v13 trailingAnchor];
    v11 = [(ACUIAddAccountViewController *)v35 view];
    v10 = [v11 trailingAnchor];
    v9 = [(NSLayoutXAxisAnchor *)v12 constraintEqualToAnchor:?];
    v36[3] = v9;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:4];
    [v7 activateConstraints:?];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v28);
    v29 = [(UIViewController *)v35->_modernAddFlow view];
    [(UIView *)v29 layoutIfNeeded];
    MEMORY[0x277D82BD8](v29);
  }

  *MEMORY[0x277D85DE8];
}

- (void)viewWillAppear:(BOOL)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v6.receiver = self;
  v6.super_class = ACUIAddAccountViewController;
  [(ACUIAddAccountViewController *)&v6 viewWillAppear:a3];
  if (([MEMORY[0x277D75128] shouldMakeUIForDefaultPNG] & 1) == 0)
  {
    v4 = [(ACUIAddAccountViewController *)v9 addAccountDataSource];
    objc_opt_class();
    v5 = 0;
    if (objc_opt_isKindOfClass())
    {
      v5 = _os_feature_enabled_impl();
    }

    MEMORY[0x277D82BD8](v4);
    if (v5)
    {
      v3 = [(ACUIAddAccountViewController *)v9 navigationItem];
      [v3 setTitle:0];
      MEMORY[0x277D82BD8](v3);
    }
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v5.receiver = self;
  v5.super_class = ACUIAddAccountViewController;
  [(ACUIAddAccountViewController *)&v5 viewDidAppear:a3];
  v3 = [(ACUIAddAccountViewController *)v8 specifier];
  v4 = [v3 propertyForKey:*MEMORY[0x277D3FD90]];
  MEMORY[0x277D82BD8](v3);
  [ACUIUtils emitNavigationEventForSubPane:"emitNavigationEventForSubPane:subPath:account:inHostAppBundleID:" subPath:v8 account:@"ADD_ACCOUNT" inHostAppBundleID:?];
  objc_storeStrong(&v4, 0);
}

- (void)setSpecifier:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5.receiver = v7;
  v5.super_class = ACUIAddAccountViewController;
  [(ACUIAddAccountViewController *)&v5 setSpecifier:location[0]];
  v3 = [location[0] propertyForKey:*MEMORY[0x277D3FD70]];
  [(ACUIAddAccountViewController *)v7 setFilteredDataclass:?];
  MEMORY[0x277D82BD8](v3);
  obj = [location[0] propertyForKey:@"ACUIAddAccountDataSourceKey"];
  if (obj)
  {
    objc_storeStrong(&v7->_addAccountDataSource, obj);
    [(ACUIAddAccountViewController *)v7 reloadSpecifiers];
  }

  objc_storeStrong(&obj, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)shouldAddSpecifierForAccountTypeID:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [(ACUIAddAccountViewController *)v15 addAccountDataSource];
  v8 = [(ACUIAddAccountDataSource *)v7 shouldAddSpecifierForAccountTypeID:location[0]];
  MEMORY[0x277D82BD8](v7);
  v13 = v8;
  v11 = 0;
  v9 = 0;
  if (v8)
  {
    v12 = [(ACUIAddAccountViewController *)v15 filteredDataclass];
    v11 = 1;
    v9 = v12 != 0;
  }

  if (v11)
  {
    MEMORY[0x277D82BD8](v12);
  }

  if (v9)
  {
    v10 = [(ACAccountStore *)v15->_accountStore accountTypeWithAccountTypeIdentifier:location[0]];
    v6 = [(ACAccountType *)v10 supportedDataclasses];
    v5 = [(ACUIAddAccountViewController *)v15 filteredDataclass];
    v13 = [v6 containsObject:?];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    objc_storeStrong(&v10, 0);
  }

  v4 = v13;
  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (BOOL)shouldAddSpecifierForOtherAccountTypes
{
  v16[5] = *MEMORY[0x277D85DE8];
  v13 = self;
  location[1] = a2;
  v16[0] = *MEMORY[0x277CB8C60];
  v16[1] = *MEMORY[0x277CB8BD8];
  v16[2] = *MEMORY[0x277CB8C98];
  v16[3] = *MEMORY[0x277CB8BC8];
  v16[4] = *MEMORY[0x277CB8D10];
  location[0] = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:5];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
  v8 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
  if (v8)
  {
    v4 = *__b[2];
    v5 = 0;
    v6 = v8;
    while (1)
    {
      v3 = v5;
      if (*__b[2] != v4)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(__b[1] + 8 * v5);
      if ([(ACUIAddAccountViewController *)v13 shouldAddSpecifierForAccountTypeID:v11])
      {
        break;
      }

      ++v5;
      if (v3 + 1 >= v6)
      {
        v5 = 0;
        v6 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
        if (!v6)
        {
          goto LABEL_9;
        }
      }
    }

    v14 = 1;
    v9 = 1;
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  MEMORY[0x277D82BD8](obj);
  if (!v9)
  {
    v14 = 0;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v14 & 1;
}

- (id)specifiers
{
  v22 = self;
  v21[1] = a2;
  v18 = [(ACUIAddAccountViewController *)self addAccountDataSource];
  objc_opt_class();
  v19 = 0;
  if (objc_opt_isKindOfClass())
  {
    v19 = _os_feature_enabled_impl();
  }

  MEMORY[0x277D82BD8](v18);
  if (v19)
  {
    objc_storeStrong((&v22->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]), 0);
    v23 = 0;
  }

  else
  {
    if (!*(&v22->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]))
    {
      v17 = [(ACUIAddAccountViewController *)v22 table];
      [v17 _setMarginWidth:50.0];
      MEMORY[0x277D82BD8](v17);
      v21[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
      if (([MEMORY[0x277D75128] shouldMakeUIForDefaultPNG] & 1) == 0)
      {
        v16 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
        [v21[0] addObject:?];
        MEMORY[0x277D82BD8](v16);
        if ([(ACUIAddAccountViewController *)v22 shouldAddSpecifierForAccountTypeID:*MEMORY[0x277CB8BA0]])
        {
          v15 = [(ACUIAddAccountViewController *)v22 _specifierForiCloudAccount];
          [v21[0] addObject:?];
          MEMORY[0x277D82BD8](v15);
        }

        if ([(ACUIAddAccountViewController *)v22 shouldAddSpecifierForAccountTypeID:*MEMORY[0x277CB8C00]])
        {
          v14 = [(ACUIAddAccountViewController *)v22 _specifierForExchangeAccount];
          [v21[0] addObject:?];
          MEMORY[0x277D82BD8](v14);
        }

        if ([(ACUIAddAccountViewController *)v22 shouldAddSpecifierForAccountTypeID:*MEMORY[0x277CB8C60]])
        {
          location = [(ACUIAddAccountViewController *)v22 _specifiersForRegionalMailAccounts];
          if ([location count])
          {
            [v21[0] addObjectsFromArray:location];
          }

          objc_storeStrong(&location, 0);
        }

        if ([(ACUIAddAccountViewController *)v22 shouldAddSpecifierForAccountTypeID:*MEMORY[0x277CB8C40]])
        {
          v12 = v21[0];
          v13 = [(ACUIAddAccountViewController *)v22 _specifierForGmailAccount];
          [v12 addObject:?];
          MEMORY[0x277D82BD8](v13);
        }

        if ([(ACUIAddAccountViewController *)v22 shouldAddSpecifierForAccountTypeID:*MEMORY[0x277CB8D38]])
        {
          v10 = v21[0];
          v11 = [(ACUIAddAccountViewController *)v22 _specifierForYahooAccount];
          [v10 addObject:?];
          MEMORY[0x277D82BD8](v11);
        }

        if ([(ACUIAddAccountViewController *)v22 shouldAddSpecifierForAccountTypeID:*MEMORY[0x277CB8B98]])
        {
          v8 = v21[0];
          v9 = [(ACUIAddAccountViewController *)v22 _specifierForAOLAccount];
          [v8 addObject:?];
          MEMORY[0x277D82BD8](v9);
        }

        if ([(ACUIAddAccountViewController *)v22 shouldAddSpecifierForAccountTypeID:*MEMORY[0x277CB8C50]])
        {
          v6 = v21[0];
          v7 = [(ACUIAddAccountViewController *)v22 _specifierForOutlookAccount];
          [v6 addObject:?];
          MEMORY[0x277D82BD8](v7);
        }

        if ([(ACUIAddAccountViewController *)v22 shouldAddSpecifierForOtherAccountTypes])
        {
          v4 = v21[0];
          v5 = [(ACUIAddAccountViewController *)v22 specifierForOtherAccounts];
          [v4 addObject:?];
          MEMORY[0x277D82BD8](v5);
        }
      }

      objc_storeStrong((&v22->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]), v21[0]);
      objc_storeStrong(v21, 0);
    }

    v23 = MEMORY[0x277D82BE0](*(&v22->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]));
  }

  v2 = v23;

  return v2;
}

- (id)_specifierForiCloudAccount
{
  v17 = self;
  v16[1] = a2;
  v16[0] = 0;
  v11 = [(ACUIAddAccountViewController *)self viewProvidersManager];
  location = [(ACUIAccountViewProvidersManager *)v11 configurationInfoForCreatingAccountWithType:*MEMORY[0x277CB8BA0]];
  MEMORY[0x277D82BD8](v11);
  v13 = 0;
  v12 = 0;
  if (location)
  {
    v14 = [location objectForKeyedSubscript:@"ACUISpecifierAccountIdentifier"];
    v13 = 1;
    v12 = [v14 isEqualToString:@"primary"];
  }

  if (v13)
  {
    MEMORY[0x277D82BD8](v14);
  }

  if (v12)
  {
    v2 = [(ACUIAddAccountViewController *)v17 _specifierForPrimaryiCloudAccount];
  }

  else
  {
    v2 = [(ACUIAddAccountViewController *)v17 giantSpecifierWithName:@"iCloud" forAccountTypeID:*MEMORY[0x277CB8BA0]];
  }

  v3 = v16[0];
  v16[0] = v2;
  MEMORY[0x277D82BD8](v3);
  v7 = v16[0];
  v6 = MEMORY[0x277D755B8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v6 imageNamed:@"iCloud" inBundle:?];
  v4 = *MEMORY[0x277D3FFC0];
  [v7 setProperty:? forKey:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  [v16[0] accessibilitySetIdentification:@"appleid"];
  v10 = MEMORY[0x277D82BE0](v16[0]);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v16, 0);

  return v10;
}

- (id)_specifierForPrimaryiCloudAccount
{
  v8 = self;
  v7[1] = a2;
  v7[0] = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"iCloud" target:self set:0 get:0 detail:0 cell:10 edit:0];
  [v7[0] setButtonAction:sel__presentPrimaryAppleIDSignInController_];
  v5 = [(ACUIAddAccountViewController *)v8 viewProvidersManager];
  v4 = [(ACUIAccountViewProvidersManager *)v5 configurationInfoForCreatingAccountWithType:*MEMORY[0x277CB8BA0]];
  location = [v4 mutableCopy];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  if ([location count])
  {
    [v7[0] setUserInfo:location];
  }

  v3 = MEMORY[0x277D82BE0](v7[0]);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v7, 0);

  return v3;
}

- (void)_presentPrimaryAppleIDSignInController:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(ACUIAddAccountViewController *)v14 addAccountDataSource];
  v6 = MEMORY[0x277CB8BA0];
  v3 = *MEMORY[0x277CB8BA0];
  v4 = [(ACUIAddAccountViewController *)v14 viewProvidersManager];
  v12 = [(ACUIAddAccountDataSource *)v5 viewControllerClassForCreatingAccountWithType:v3 withViewProviderManager:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  v11 = objc_alloc_init(v12);
  v7 = [(ACUIAddAccountViewController *)v14 viewProvidersManager];
  [(ACUIAccountViewProvidersManager *)v7 setDelegate:v14 forSignInController:v11 forAccountWithType:*v6];
  MEMORY[0x277D82BD8](v7);
  v8 = [MEMORY[0x277D75418] currentDevice];
  v9 = [v8 userInterfaceIdiom];
  MEMORY[0x277D82BD8](v8);
  v15 = v9;
  v10 = 1;
  if (v9 != 1)
  {
    v10 = v15 == 5;
  }

  if (v10)
  {
    [v11 setModalPresentationStyle:2];
    [v11 setModalTransitionStyle:0];
  }

  [(ACUIAddAccountViewController *)v14 presentViewController:v11 animated:1 completion:?];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)signInControllerDidCompleteWithSuccess:(BOOL)a3 error:(id)a4
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  [(ACUIAddAccountViewController *)v8 _dismissAndBecomeFirstResponder];
  if (v6)
  {
    [(ACUIAddAccountViewController *)v8 setupViewControllerDidDismiss:?];
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 postNotificationName:@"ACUIAccountSetupDidFinish" object:0];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&location, 0);
}

- (void)_dismissAndBecomeFirstResponder
{
  v8[2] = self;
  v8[1] = a2;
  v3 = MEMORY[0x277D85DD0];
  v4 = -1073741824;
  v5 = 0;
  v6 = __63__ACUIAddAccountViewController__dismissAndBecomeFirstResponder__block_invoke;
  v7 = &unk_278BFA730;
  v8[0] = MEMORY[0x277D82BE0](self);
  [(ACUIAddAccountViewController *)self dismissViewControllerAnimated:1 completion:?];
  objc_storeStrong(v8, 0);
}

uint64_t __63__ACUIAddAccountViewController__dismissAndBecomeFirstResponder__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isFirstResponder];
  if ((result & 1) == 0)
  {
    return [*(a1 + 32) becomeFirstResponder];
  }

  return result;
}

- (id)_specifierForExchangeAccount
{
  v9[2] = self;
  v9[1] = a2;
  v9[0] = [(ACUIAddAccountViewController *)self giantSpecifierWithName:@"Exchange ActiveSync" forAccountTypeID:*MEMORY[0x277CB8C00]];
  v5 = v9[0];
  v4 = MEMORY[0x277D755B8];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v4 imageNamed:@"Exchange" inBundle:?];
  v2 = *MEMORY[0x277D3FFC0];
  [v5 setProperty:? forKey:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  [v9[0] accessibilitySetIdentification:@"mail-exchange"];
  v8 = MEMORY[0x277D82BE0](v9[0]);
  objc_storeStrong(v9, 0);

  return v8;
}

- (id)_specifierForGmailAccount
{
  v15 = self;
  v14[1] = a2;
  if (__UseGoogleMail())
  {
    v2 = @"Google Mail";
  }

  else
  {
    v2 = @"Gmail";
  }

  v14[0] = MEMORY[0x277D82BE0](v2);
  if (__UseGoogleMail())
  {
    v3 = @"googlemail.png";
  }

  else
  {
    v3 = @"Gmail";
  }

  v13 = MEMORY[0x277D82BE0](v3);
  v12 = [(ACUIAddAccountViewController *)v15 _specifierForCustomControlledAccountWithName:v14[0] accountTypeID:*MEMORY[0x277CB8C40]];
  v8 = v12;
  v7 = MEMORY[0x277D755B8];
  v6 = v13;
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v7 imageNamed:v6 inBundle:?];
  v4 = *MEMORY[0x277D3FFC0];
  [v8 setProperty:? forKey:?];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  [v12 accessibilitySetIdentification:@"mail-gmail"];
  v11 = MEMORY[0x277D82BE0](v12);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(v14, 0);

  return v11;
}

- (id)_specifierForCustomControlledAccountWithName:(id)a3 accountTypeID:(id)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = [(ACUIAddAccountViewController *)v14 giantSpecifierWithName:location[0] forAccountTypeID:v12];
  v9 = [(ACUIAddAccountViewController *)v14 addAccountDataSource];
  v7 = v12;
  v8 = [(ACUIAddAccountViewController *)v14 viewProvidersManager];
  v10 = [(ACUIAddAccountDataSource *)v9 controllerClassForCreatingAccountWithType:v7 withViewProviderManager:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  if (v10)
  {
    [v11 setDetailControllerClass:0];
    [v11 setTarget:v14];
    [v11 setButtonAction:sel__createCustomControlledAccountTapped_];
  }

  v5 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (void)_addAccountSpecifierWasTapped:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v41 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v39 = [location[0] propertyForKey:@"ACUIAccountType"];
  v38 = _ACUILogSystem();
  v37 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_3_8_32_4_0_8_64(v44, "[ACUIAddAccountViewController _addAccountSpecifierWasTapped:]", 449, v39);
    _os_log_impl(&dword_23DC86000, v38, v37, "%s (%d) Add account tapped for '%@'", v44, 0x1Cu);
  }

  objc_storeStrong(&v38, 0);
  v36 = 0;
  v18 = 0;
  if ([v39 isEqualToString:*MEMORY[0x277CB8C00]])
  {
    v18 = [(ACUIAddAccountViewController *)v41 isStolenDeviceProtectionFeatureAvailableAndEnabled];
  }

  v36 = v18;
  if (v18)
  {
    v35 = [objc_alloc(MEMORY[0x277CD47A8]) initWithIdentifier:@"com.apple.account.Exchange.add"];
    v5 = v35;
    v42[0] = &unk_28500B3C0;
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v17 localizedStringForKey:@"EXCHANGE_DTO_RATCHET_TITLE" value:? table:?];
    v43[0] = v16;
    v42[1] = &unk_28500B3D8;
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v15 localizedStringForKey:@"EXCHANGE_DTO_RATCHET_TEXT" value:&stru_2850054A0 table:@"Localizable"];
    v43[1] = v14;
    v42[2] = &unk_28500B3F0;
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v13 localizedStringForKey:@"EXCHANGE_DTO_RATCHET_COUNTDOWN_TEXT" value:&stru_2850054A0 table:@"Localizable"];
    v43[2] = v12;
    v42[3] = &unk_28500B408;
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v11 localizedStringForKey:@"EXCHANGE_DTO_LOCALIZED_REASON" value:&stru_2850054A0 table:@"Localizable"];
    v43[3] = v10;
    v42[4] = &unk_28500B420;
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v9 localizedStringForKey:@"EXCHANGE_DTO_LOCALIZED_CALLOUT" value:&stru_2850054A0 table:@"Localizable"];
    v43[4] = v8;
    v42[5] = &unk_28500B438;
    v7 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=ACCOUNTS_AND_PASSWORDS&path=ADD_ACCOUNT"];
    v43[5] = v7;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:6];
    v27 = MEMORY[0x277D85DD0];
    v28 = -1073741824;
    v29 = 0;
    v30 = __62__ACUIAddAccountViewController__addAccountSpecifierWasTapped___block_invoke;
    v31 = &unk_278BFA780;
    v32 = MEMORY[0x277D82BE0](v41);
    v33 = MEMORY[0x277D82BE0](v39);
    v34 = MEMORY[0x277D82BE0](location[0]);
    [v5 armWithOptions:v6 completion:&v27];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v33, 0);
    objc_storeStrong(&v32, 0);
    objc_storeStrong(&v35, 0);
  }

  else
  {
    v4 = v41;
    v3 = v39;
    v19 = MEMORY[0x277D85DD0];
    v20 = -1073741824;
    v21 = 0;
    v22 = __62__ACUIAddAccountViewController__addAccountSpecifierWasTapped___block_invoke_142;
    v23 = &unk_278BFA7A8;
    v24 = MEMORY[0x277D82BE0](v41);
    v25 = MEMORY[0x277D82BE0](v39);
    v26 = MEMORY[0x277D82BE0](location[0]);
    [(ACUIAddAccountViewController *)v4 _alertIfAccountTypePreventsMultiples:v3 withCompletion:&v19];
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v24, 0);
  }

  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __62__ACUIAddAccountViewController__addAccountSpecifierWasTapped___block_invoke(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v26 = 0;
  objc_storeStrong(&v26, a3);
  v25[1] = a1;
  v12 = 1;
  if (!location[0])
  {
    v12 = v26 != 0;
  }

  if (!v12)
  {
    __assert_rtn("[ACUIAddAccountViewController _addAccountSpecifierWasTapped:]_block_invoke", "ACUIAddAccountViewController.m", 470, "result != nil || error != nil");
  }

  v9 = [location[0] objectForKeyedSubscript:&unk_28500B420];
  MEMORY[0x277D82BD8](v9);
  if (v9)
  {
    v25[0] = _ACLogSystem();
    v24 = 2;
    if (os_log_type_enabled(v25[0], OS_LOG_TYPE_DEBUG))
    {
      log = v25[0];
      type = v24;
      __os_log_helper_16_0_0(v23);
      _os_log_debug_impl(&dword_23DC86000, log, type, "@Ratchet armed! Showing the exchange account login flow", v23, 2u);
    }

    objc_storeStrong(v25, 0);
    v5 = MEMORY[0x277D85CD0];
    v3 = MEMORY[0x277D85CD0];
    queue = v5;
    v15 = MEMORY[0x277D85DD0];
    v16 = -1073741824;
    v17 = 0;
    v18 = __62__ACUIAddAccountViewController__addAccountSpecifierWasTapped___block_invoke_140;
    v19 = &unk_278BFA758;
    v20 = MEMORY[0x277D82BE0](a1[4]);
    v21 = MEMORY[0x277D82BE0](a1[5]);
    v22 = MEMORY[0x277D82BE0](a1[6]);
    dispatch_async(queue, &v15);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v20, 0);
  }

  else
  {
    v4 = [v26 userInfo];
    v14 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD4788]];
    MEMORY[0x277D82BD8](v4);
    if ([v26 code] || !v14)
    {
      oslog = _ACLogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_64(v28, v26);
        _os_log_debug_impl(&dword_23DC86000, oslog, OS_LOG_TYPE_DEBUG, "@Ratchet not armed. Reason: %@", v28, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }

    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

uint64_t __62__ACUIAddAccountViewController__addAccountSpecifierWasTapped___block_invoke_142(uint64_t result, char a2)
{
  if (a2)
  {
    return [*(result + 32) _allowedToAddAccountTypeID:*(result + 40) fromSpecifier:*(result + 48)];
  }

  return result;
}

- (void)_allowedToAddAccountTypeID:(id)a3 fromSpecifier:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v19 = _ACUILogSystem();
  v18 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_3_8_32_4_0_8_64(v23, "[ACUIAddAccountViewController _allowedToAddAccountTypeID:fromSpecifier:]", 496, location[0]);
    _os_log_impl(&dword_23DC86000, v19, v18, "%s (%d) Allowed to add accounts for '%@'", v23, 0x1Cu);
  }

  objc_storeStrong(&v19, 0);
  v17 = [(ACUIAddAccountViewController *)v22 viewProvidersManager];
  v11 = [(ACUIAddAccountViewController *)v22 addAccountDataSource];
  v16 = [(ACUIAddAccountDataSource *)v11 viewControllerClassForCreatingAccountWithType:location[0] withViewProviderManager:v17];
  MEMORY[0x277D82BD8](v11);
  v12 = [v20 userInfo];
  MEMORY[0x277D82BD8](v12);
  if (!v12)
  {
    v10 = [v17 configurationInfoForCreatingAccountWithType:location[0]];
    v15 = [v10 mutableCopy];
    MEMORY[0x277D82BD8](v10);
    if ([v15 count])
    {
      [v20 setUserInfo:v15];
    }

    objc_storeStrong(&v15, 0);
  }

  v6 = v20;
  v7 = NSStringFromClass(v16);
  v4 = *MEMORY[0x277D400B8];
  [v6 setProperty:? forKey:?];
  MEMORY[0x277D82BD8](v7);
  v5 = *(v20 + *MEMORY[0x277D3FC98]);
  v14 = objc_opt_new();
  [v14 setSpecifier:v20];
  [v14 setParentController:v22];
  v8 = v14;
  v9 = [(ACUIAddAccountViewController *)v22 rootController];
  [v8 setRootController:?];
  MEMORY[0x277D82BD8](v9);
  [(ACUIAddAccountViewController *)v22 showController:v14];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_createCustomControlledAccountTapped:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = [location[0] propertyForKey:@"ACUIAccountType"];
  v4 = v15;
  v3 = v13;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __69__ACUIAddAccountViewController__createCustomControlledAccountTapped___block_invoke;
  v9 = &unk_278BFA7A8;
  v10 = MEMORY[0x277D82BE0](v15);
  v11 = MEMORY[0x277D82BE0](v13);
  v12 = MEMORY[0x277D82BE0](location[0]);
  [(ACUIAddAccountViewController *)v4 _alertIfAccountTypePreventsMultiples:v3 withCompletion:?];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void __69__ACUIAddAccountViewController__createCustomControlledAccountTapped___block_invoke(uint64_t a1, char a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v34 = a1;
  v33 = a2;
  v32 = a1;
  if (a2)
  {
    v10 = [*(a1 + 32) addAccountDataSource];
    v11 = *(a1 + 40);
    v9 = [*(a1 + 32) viewProvidersManager];
    v31 = [v10 controllerClassForCreatingAccountWithType:v11 withViewProviderManager:?];
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    v8 = [*(a1 + 48) userInfo];
    MEMORY[0x277D82BD8](v8);
    if (!v8)
    {
      v7 = [*(a1 + 32) viewProvidersManager];
      v6 = [v7 configurationInfoForCreatingAccountWithType:*(a1 + 40)];
      location = [v6 copy];
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v7);
      if ([location count])
      {
        [*(a1 + 48) setUserInfo:location];
      }

      objc_storeStrong(&location, 0);
    }

    if (([(objc_class *)v31 conformsToProtocol:&unk_2850358E0]& 1) != 0)
    {
      v23 = 0;
      v24 = &v23;
      v25 = 838860800;
      v26 = 48;
      v27 = __Block_byref_object_copy__0;
      v28 = __Block_byref_object_dispose__0;
      v29 = objc_alloc_init(v31);
      v22 = _ACUILogSystem();
      v21 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_3_8_32_4_0_8_66(v35, "[ACUIAddAccountViewController _createCustomControlledAccountTapped:]_block_invoke", 532, v24[5]);
        _os_log_impl(&dword_23DC86000, v22, v21, "%s (%d) Begining account creation controller %{public}@", v35, 0x1Cu);
      }

      objc_storeStrong(&v22, 0);
      v5 = [*(a1 + 32) addAccountDataSource];
      [v5 configureAccountCreationController:v24[5]];
      MEMORY[0x277D82BD8](v5);
      objc_initWeak(&from, *(a1 + 32));
      v2 = v24[5];
      v3 = *(a1 + 48);
      v4 = *(a1 + 32);
      v13 = MEMORY[0x277D85DD0];
      v14 = -1073741824;
      v15 = 0;
      v16 = __69__ACUIAddAccountViewController__createCustomControlledAccountTapped___block_invoke_188;
      v17 = &unk_278BFA820;
      v18[1] = &v23;
      objc_copyWeak(&v19, &from);
      v18[0] = MEMORY[0x277D82BE0](*(a1 + 48));
      [v2 beginAccountCreationWithSpecifier:v3 fromViewController:v4 completion:&v13];
      objc_storeStrong(v18, 0);
      objc_destroyWeak(&v19);
      objc_destroyWeak(&from);
      _Block_object_dispose(&v23, 8);
      objc_storeStrong(&v29, 0);
    }
  }

  *MEMORY[0x277D85DE8];
}

void __69__ACUIAddAccountViewController__createCustomControlledAccountTapped___block_invoke_188(uint64_t a1, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v26 = a3;
  v25 = 0;
  objc_storeStrong(&v25, a4);
  v24[1] = a1;
  v24[0] = _ACUILogSystem();
  v23 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v24[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v24[0];
    type = v23;
    v9 = [ACUIAddAccountViewController _debugStringForAction:v26];
    v22 = MEMORY[0x277D82BE0](v9);
    __os_log_helper_16_2_3_8_32_4_0_8_66(v28, "[ACUIAddAccountViewController _createCustomControlledAccountTapped:]_block_invoke", 538, v22);
    _os_log_impl(&dword_23DC86000, log, type, "%s (%d) Account Creation Controller completed with action: %{public}@", v28, 0x1Cu);
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v22, 0);
  }

  objc_storeStrong(v24, 0);
  v5 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v5;
  v13 = MEMORY[0x277D85DD0];
  v14 = -1073741824;
  v15 = 0;
  v16 = __69__ACUIAddAccountViewController__createCustomControlledAccountTapped___block_invoke_189;
  v17 = &unk_278BFA7F8;
  v20[1] = *(a1 + 40);
  objc_copyWeak(v21, (a1 + 48));
  v18 = MEMORY[0x277D82BE0](location[0]);
  v21[1] = v26;
  v19 = MEMORY[0x277D82BE0](v25);
  v20[0] = MEMORY[0x277D82BE0](*(a1 + 32));
  dispatch_async(queue, &v13);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_destroyWeak(v21);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __69__ACUIAddAccountViewController__createCustomControlledAccountTapped___block_invoke_189(uint64_t a1)
{
  v14[2] = a1;
  v14[1] = a1;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), 0);
  v14[0] = objc_loadWeakRetained((a1 + 64));
  if (v14[0])
  {
    v6 = [v14[0] addAccountDataSource];
    v1 = *(a1 + 32);
    v2 = *(a1 + 72);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = v14[0];
    v8 = MEMORY[0x277D85DD0];
    v9 = -1073741824;
    v10 = 0;
    v11 = __69__ACUIAddAccountViewController__createCustomControlledAccountTapped___block_invoke_2;
    v12 = &unk_278BFA7D0;
    v13 = MEMORY[0x277D82BE0](v14[0]);
    [v6 accountControllerCompletedWithAccount:v1 action:v2 data:v3 specifier:v4 viewController:v5 completion:&v8];
    MEMORY[0x277D82BD8](v6);
    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(v14, 0);
}

+ (id)_debugStringForAction:(int64_t)a3
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  location = MEMORY[0x277D82BE0](@"unknown");
  if (v6)
  {
    if (v6 == 1)
    {
      objc_storeStrong(&location, @"dataclass configuration");
    }

    else if (v6 == 2)
    {
      objc_storeStrong(&location, @"alternate configuration");
    }
  }

  else
  {
    objc_storeStrong(&location, @"none");
  }

  v4 = MEMORY[0x277D82BE0](location);
  objc_storeStrong(&location, 0);

  return v4;
}

- (id)_specifierForYahooAccount
{
  v9[2] = self;
  v9[1] = a2;
  v9[0] = [(ACUIAddAccountViewController *)self _specifierForCustomControlledAccountWithName:@"Yahoo!\u200E" accountTypeID:*MEMORY[0x277CB8D38]];
  v5 = v9[0];
  v4 = MEMORY[0x277D755B8];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v4 imageNamed:@"Yahoo" inBundle:?];
  v2 = *MEMORY[0x277D3FFC0];
  [v5 setProperty:? forKey:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  [v9[0] accessibilitySetIdentification:@"mail-yahoo"];
  v8 = MEMORY[0x277D82BE0](v9[0]);
  objc_storeStrong(v9, 0);

  return v8;
}

- (id)_specifierForAOLAccount
{
  v10[2] = self;
  v10[1] = a2;
  v2 = *MEMORY[0x277CB8B98];
  v10[0] = [ACUIAddAccountViewController _specifierForCustomControlledAccountWithName:"_specifierForCustomControlledAccountWithName:accountTypeID:" accountTypeID:?];
  v6 = v10[0];
  v5 = MEMORY[0x277D755B8];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v5 imageNamed:@"AOL" inBundle:?];
  v3 = *MEMORY[0x277D3FFC0];
  [v6 setProperty:? forKey:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  [v10[0] accessibilitySetIdentification:@"mail-aol"];
  v9 = MEMORY[0x277D82BE0](v10[0]);
  objc_storeStrong(v10, 0);

  return v9;
}

- (id)_specifierForOutlookAccount
{
  v10[2] = self;
  v10[1] = a2;
  v2 = *MEMORY[0x277CB8C50];
  v10[0] = [ACUIAddAccountViewController _specifierForCustomControlledAccountWithName:"_specifierForCustomControlledAccountWithName:accountTypeID:" accountTypeID:?];
  v6 = v10[0];
  v5 = MEMORY[0x277D755B8];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v5 imageNamed:@"Outlook" inBundle:?];
  v3 = *MEMORY[0x277D3FFC0];
  [v6 setProperty:? forKey:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  [v10[0] setProperty:MEMORY[0x277CBEC38] forKey:@"isHotmail"];
  [v10[0] accessibilitySetIdentification:@"mail-hotmail"];
  v9 = MEMORY[0x277D82BE0](v10[0]);
  objc_storeStrong(v10, 0);

  return v9;
}

- (id)_specifiersForRegionalMailAccounts
{
  v37 = *MEMORY[0x277D85DE8];
  v32 = self;
  v31[1] = a2;
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v31[0] = [v13 URLForResource:@"RegionalMailAccountTypes" withExtension:@"plist"];
  MEMORY[0x277D82BD8](v13);
  if (v31[0])
  {
    v27 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:v31[0]];
    if (v27)
    {
      v11 = [(ACUIAddAccountViewController *)v32 filteredDataclass];
      v23 = 0;
      v21 = 0;
      v12 = 0;
      if (v11)
      {
        v24 = [(ACUIAddAccountViewController *)v32 filteredDataclass];
        v23 = 1;
        v10 = 1;
        if (![(NSString *)v24 isEqualToString:*MEMORY[0x277CB9150]])
        {
          v22 = [(ACUIAddAccountViewController *)v32 filteredDataclass];
          v21 = 1;
          v10 = [(NSString *)v22 isEqualToString:*MEMORY[0x277CB9178]];
        }

        v12 = v10 ^ 1;
      }

      if (v21)
      {
        MEMORY[0x277D82BD8](v22);
      }

      if (v23)
      {
        MEMORY[0x277D82BD8](v24);
      }

      MEMORY[0x277D82BD8](v11);
      if (v12)
      {
        v33 = 0;
        v28 = 1;
      }

      else
      {
        v20 = __MailRegionCode();
        v19 = [v27 objectForKeyedSubscript:@"AccountTypes"];
        v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
        memset(__b, 0, sizeof(__b));
        obj = MEMORY[0x277D82BE0](v19);
        v9 = [obj countByEnumeratingWithState:__b objects:v34 count:16];
        if (v9)
        {
          v5 = *__b[2];
          v6 = 0;
          v7 = v9;
          while (1)
          {
            v4 = v6;
            if (*__b[2] != v5)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(__b[1] + 8 * v6);
            v15 = [v17 objectForKeyedSubscript:@"Regions"];
            if ([v15 containsObject:v20])
            {
              v14 = [(ACUIAddAccountViewController *)v32 _specifierForRegionalAccountType:v17];
              if (v14)
              {
                [v18 addObject:v14];
              }

              objc_storeStrong(&v14, 0);
              v28 = 0;
            }

            else
            {
              v28 = 3;
            }

            objc_storeStrong(&v15, 0);
            ++v6;
            if (v4 + 1 >= v7)
            {
              v6 = 0;
              v7 = [obj countByEnumeratingWithState:__b objects:v34 count:16];
              if (!v7)
              {
                break;
              }
            }
          }
        }

        MEMORY[0x277D82BD8](obj);
        v33 = MEMORY[0x277D82BE0](v18);
        v28 = 1;
        objc_storeStrong(&v18, 0);
        objc_storeStrong(&v19, 0);
        objc_storeStrong(&v20, 0);
      }
    }

    else
    {
      oslog = _ACUILogSystem();
      v25 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_4_0(v35, "[ACUIAddAccountViewController _specifiersForRegionalMailAccounts]", 603);
        _os_log_error_impl(&dword_23DC86000, oslog, v25, "%s (%d) Failed to parse contents of RegionalMailAccountTypes.plist!", v35, 0x12u);
      }

      objc_storeStrong(&oslog, 0);
      v33 = 0;
      v28 = 1;
    }

    objc_storeStrong(&v27, 0);
  }

  else
  {
    location = _ACUILogSystem();
    v29 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_4_0(v36, "[ACUIAddAccountViewController _specifiersForRegionalMailAccounts]", 597);
      _os_log_error_impl(&dword_23DC86000, location, v29, "%s (%d) Could not find RegionalMailAccountTypes.plist.", v36, 0x12u);
    }

    objc_storeStrong(&location, 0);
    v33 = 0;
    v28 = 1;
  }

  objc_storeStrong(v31, 0);
  *MEMORY[0x277D85DE8];
  v2 = v33;

  return v2;
}

- (id)_specifierForRegionalAccountType:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = [location[0] objectForKeyedSubscript:@"RegionalDisplayName"];
  v13 = [location[0] objectForKeyedSubscript:@"LargeIcon"];
  v12 = [location[0] objectForKeyedSubscript:@"AccessibilityLabel"];
  v11 = 0;
  if (v13)
  {
    v8 = MEMORY[0x277D755B8];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v3 = [v8 imageNamed:v13 inBundle:?];
    v4 = v11;
    v11 = v3;
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v9);
  }

  v5 = 11;
  if (v11)
  {
    v5 = 10;
  }

  v10[1] = v5;
  v10[0] = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v14 target:v16 set:0 get:0 detail:objc_opt_class() cell:v5 edit:0];
  [v10[0] setButtonAction:sel__addAccountSpecifierWasTapped_];
  [v10[0] setProperty:*MEMORY[0x277CB8C60] forKey:@"ACUIAccountType"];
  [v10[0] setUserInfo:location[0]];
  if (v11)
  {
    [v10[0] setProperty:v11 forKey:*MEMORY[0x277D3FFC0]];
  }

  if (v12)
  {
    [v10[0] accessibilitySetIdentification:v12];
  }

  v7 = MEMORY[0x277D82BE0](v10[0]);
  objc_storeStrong(v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);

  return v7;
}

- (id)specifierForOtherAccounts
{
  v19 = self;
  v18[1] = a2;
  v11 = MEMORY[0x277D3FAD8];
  v9 = MEMORY[0x277CCA8D8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = @"OTHER";
  v12 = [v13 localizedStringForKey:? value:? table:?];
  v10 = v19;
  v18[0] = [v11 preferenceSpecifierNamed:v12 target:v19 set:0 get:0 detail:objc_opt_class() cell:11 edit:0];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  [v18[0] setProperty:v14 forKey:*MEMORY[0x277D3FFB8]];
  v15 = v18[0];
  v16 = [(ACUIAddAccountViewController *)v19 addAccountDataSource];
  [v15 setProperty:? forKey:?];
  MEMORY[0x277D82BD8](v16);
  v17 = [(ACUIAddAccountViewController *)v19 filteredDataclass];
  MEMORY[0x277D82BD8](v17);
  if (v17)
  {
    v7 = v18[0];
    v8 = [(ACUIAddAccountViewController *)v19 filteredDataclass];
    v2 = *MEMORY[0x277D3FD70];
    [v7 setProperty:? forKey:?];
    MEMORY[0x277D82BD8](v8);
  }

  location = v18;
  v6 = MEMORY[0x277D82BE0](v18[0]);
  objc_storeStrong(location, 0);
  v3 = v6;

  return v3;
}

- (id)giantSpecifierWithName:(id)a3 forAccountTypeID:(id)a4
{
  obj = a4;
  v19 = self;
  location[1] = a2;
  v13 = location;
  v14 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = &v17;
  v17 = 0;
  objc_storeStrong(&v17, obj);
  v10 = MEMORY[0x277D3FAD8];
  v8 = location[0];
  v9 = v19;
  v4 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:location[0] target:v19 set:0 get:0 detail:objc_opt_class() cell:10 edit:0];
  v11 = &v16;
  v16 = v4;
  [v4 setButtonAction:sel__addAccountSpecifierWasTapped_];
  [v16 setProperty:v17 forKey:@"ACUIAccountType"];
  v15 = MEMORY[0x277D82BE0](v16);
  objc_storeStrong(v11, v14);
  objc_storeStrong(v12, v14);
  objc_storeStrong(v13, v14);
  v5 = v15;

  return v5;
}

- (void)setupViewControllerDidDismiss:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(ACUIAddAccountViewController *)v4 _popToLayerAboveAddAccountFlow];
  objc_storeStrong(location, 0);
}

- (void)_popToLayerAboveAddAccountFlow
{
  v36 = *MEMORY[0x277D85DE8];
  v32 = self;
  location[1] = a2;
  location[0] = 0;
  v21 = [(ACUIAddAccountViewController *)self navigationController];
  v30 = [v21 viewControllers];
  MEMORY[0x277D82BD8](v21);
  v27 = 0;
  v22 = 0;
  if (([v30 containsObject:v32] & 1) == 0)
  {
    v28 = [(ACUIAddAccountViewController *)v32 parentViewController];
    v27 = 1;
    v22 = [v30 containsObject:?];
  }

  if (v27)
  {
    MEMORY[0x277D82BD8](v28);
  }

  v29 = v22 & 1;
  memset(__b, 0, sizeof(__b));
  obj = [v30 reverseObjectEnumerator];
  v20 = [obj countByEnumeratingWithState:__b objects:v35 count:16];
  if (v20)
  {
    v16 = *__b[2];
    v17 = 0;
    v18 = v20;
    while (1)
    {
      v15 = v17;
      if (*__b[2] != v16)
      {
        objc_enumerationMutation(obj);
      }

      v26 = *(__b[1] + 8 * v17);
      if (v29)
      {
        memset(v23, 0, sizeof(v23));
        v13 = [v26 childViewControllers];
        v14 = [v13 countByEnumeratingWithState:v23 objects:v34 count:16];
        if (v14)
        {
          v10 = *v23[2];
          v11 = 0;
          v12 = v14;
          while (1)
          {
            v9 = v11;
            if (*v23[2] != v10)
            {
              objc_enumerationMutation(v13);
            }

            v24 = *(v23[1] + 8 * v11);
            if ([(ACUIAddAccountViewController *)v32 _viewControllerIsNotAddOrAddOther:v24])
            {
              break;
            }

            ++v11;
            if (v9 + 1 >= v12)
            {
              v11 = 0;
              v12 = [v13 countByEnumeratingWithState:v23 objects:v34 count:16];
              if (!v12)
              {
                goto LABEL_18;
              }
            }
          }

          objc_storeStrong(location, v26);
        }

LABEL_18:
        MEMORY[0x277D82BD8](v13);
        if (location[0])
        {
          break;
        }
      }

      else if ([(ACUIAddAccountViewController *)v32 _viewControllerIsNotAddOrAddOther:v26])
      {
        objc_storeStrong(location, v26);
        break;
      }

      ++v17;
      if (v15 + 1 >= v18)
      {
        v17 = 0;
        v18 = [obj countByEnumeratingWithState:__b objects:v35 count:16];
        if (!v18)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v6 = [MEMORY[0x277D75418] currentDevice];
  v7 = [v6 userInterfaceIdiom];
  MEMORY[0x277D82BD8](v6);
  v33 = v7;
  v8 = 1;
  if (v7 != 1)
  {
    v8 = v33 == 5;
  }

  if (location[0])
  {
    v5 = [(ACUIAddAccountViewController *)v32 navigationController];
    v2 = [v5 popToViewController:location[0] animated:v8];
    MEMORY[0x277D82BD8](v5);
  }

  else
  {
    v4 = [(ACUIAddAccountViewController *)v32 navigationController];
    v3 = [v4 popToRootViewControllerAnimated:v8];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (BOOL)_viewControllerIsNotAddOrAddOther:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_opt_class();
  v4 = 0;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    v4 = 0;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      v4 = (objc_opt_isKindOfClass() & 1) == 0;
    }
  }

  objc_storeStrong(location, 0);
  return v4;
}

- (void)_alertIfAccountTypePreventsMultiples:(id)a3 withCompletion:(id)a4
{
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v23 = 0;
  objc_storeStrong(&v23, a4);
  v16 = MEMORY[0x277D85DD0];
  v17 = -1073741824;
  v18 = 0;
  v19 = __84__ACUIAddAccountViewController__alertIfAccountTypePreventsMultiples_withCompletion___block_invoke;
  v20 = &unk_278BFA870;
  v21 = MEMORY[0x277D82BE0](v23);
  v22 = MEMORY[0x23EEFC830](&v16);
  objc_initWeak(&v15, v25);
  accountStore = v25->_accountStore;
  v5 = location[0];
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __84__ACUIAddAccountViewController__alertIfAccountTypePreventsMultiples_withCompletion___block_invoke_3;
  v11 = &unk_278BFA8C0;
  objc_copyWeak(&v14, &v15);
  v12 = MEMORY[0x277D82BE0](v25);
  v13 = MEMORY[0x277D82BE0](v22);
  [(ACAccountStore *)accountStore accountTypeWithIdentifier:v5 completion:&v7];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v15);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
}

void __84__ACUIAddAccountViewController__alertIfAccountTypePreventsMultiples_withCompletion___block_invoke(uint64_t a1, char a2)
{
  v15 = a1;
  v14 = a2;
  v13 = a1;
  v3 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  queue = v3;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __84__ACUIAddAccountViewController__alertIfAccountTypePreventsMultiples_withCompletion___block_invoke_2;
  v10 = &unk_278BFA848;
  v11 = MEMORY[0x277D82BE0](*(a1 + 32));
  v12 = v14 & 1;
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v11, 0);
}

void __84__ACUIAddAccountViewController__alertIfAccountTypePreventsMultiples_withCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17 = 0;
  objc_storeStrong(&v17, a3);
  v16[1] = a1;
  v16[0] = objc_loadWeakRetained((a1 + 48));
  if ([location[0] supportsMultipleAccounts])
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = [v16[0] addAccountDataSource];
    v3 = location[0];
    v4 = *(*(a1 + 32) + 1488);
    v8 = MEMORY[0x277D85DD0];
    v9 = -1073741824;
    v10 = 0;
    v11 = __84__ACUIAddAccountViewController__alertIfAccountTypePreventsMultiples_withCompletion___block_invoke_4;
    v12 = &unk_278BFA898;
    v13 = MEMORY[0x277D82BE0](location[0]);
    v14 = MEMORY[0x277D82BE0](v16[0]);
    v15 = MEMORY[0x277D82BE0](*(a1 + 40));
    [v5 hasAccountWithType:v3 accountStore:v4 completion:&v8];
    MEMORY[0x277D82BD8](v5);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

void __84__ACUIAddAccountViewController__alertIfAccountTypePreventsMultiples_withCompletion___block_invoke_4(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13[1] = a1;
  if (location[0])
  {
    v3 = MEMORY[0x277D85CD0];
    v2 = MEMORY[0x277D85CD0];
    queue = v3;
    v6 = MEMORY[0x277D85DD0];
    v7 = -1073741824;
    v8 = 0;
    v9 = __84__ACUIAddAccountViewController__alertIfAccountTypePreventsMultiples_withCompletion___block_invoke_5;
    v10 = &unk_278BFA758;
    v11 = MEMORY[0x277D82BE0](a1[4]);
    v12 = MEMORY[0x277D82BE0](location[0]);
    v13[0] = MEMORY[0x277D82BE0](a1[5]);
    dispatch_async(queue, &v6);
    MEMORY[0x277D82BD8](queue);
    (*(a1[6] + 16))();
    objc_storeStrong(v13, 0);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v11, 0);
  }

  else
  {
    (*(a1[6] + 16))();
  }

  objc_storeStrong(location, 0);
}

void __84__ACUIAddAccountViewController__alertIfAccountTypePreventsMultiples_withCompletion___block_invoke_5(id *a1)
{
  v18[2] = a1;
  v18[1] = a1;
  v1 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v4 localizedStringForKey:@"SINGLETON_ACCOUNT_ERROR_TITLE" value:? table:?];
  v2 = [a1[4] accountTypeDescription];
  v18[0] = [v1 stringWithFormat:v3, v2];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  v5 = MEMORY[0x277CCACA8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v9 localizedStringForKey:@"SINGLETON_ACCOUNT_ERROR_MESSAGE" value:&stru_2850054A0 table:@"Localizable"];
  v7 = [a1[4] accountTypeDescription];
  v6 = [a1[5] username];
  v17 = [v5 stringWithFormat:v8, v7, v6];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  v16 = [MEMORY[0x277D75110] alertControllerWithTitle:v18[0] message:v17 preferredStyle:1];
  v11 = v16;
  v10 = MEMORY[0x277D750F8];
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v14 localizedStringForKey:@"OK" value:&stru_2850054A0 table:@"Localizable"];
  v12 = [v10 actionWithTitle:? style:? handler:?];
  [v11 addAction:?];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  [a1[6] presentViewController:v16 animated:1 completion:0];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(v18, 0);
}

- (BOOL)isStolenDeviceProtectionFeatureAvailableAndEnabled
{
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    return 0;
  }

  v6 = [MEMORY[0x277CD47B0] sharedInstance];
  v7 = [v6 isFeatureSupported];
  MEMORY[0x277D82BD8](v6);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v4 = [MEMORY[0x277CD47B0] sharedInstance];
  v5 = [v4 isFeatureAvailable];
  MEMORY[0x277D82BD8](v4);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v3 = [MEMORY[0x277CD47B0] sharedInstance];
  v8 = [v3 isFeatureEnabled] & 1;
  MEMORY[0x277D82BD8](v3);
  return v8;
}

@end