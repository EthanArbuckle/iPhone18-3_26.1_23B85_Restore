@interface ACUIAddOtherAccountsViewController
- (id)_specifiersForOtherCalendarAccounts;
- (id)_specifiersForOtherContactsAccounts;
- (id)_specifiersForOtherMailAccounts;
- (id)specifiers;
@end

@implementation ACUIAddOtherAccountsViewController

- (id)specifiers
{
  selfCopy = self;
  v10[1] = a2;
  if (!*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]))
  {
    v10[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = v10[0];
    _specifiersForOtherMailAccounts = [(ACUIAddOtherAccountsViewController *)selfCopy _specifiersForOtherMailAccounts];
    [v4 addObjectsFromArray:?];
    MEMORY[0x277D82BD8](_specifiersForOtherMailAccounts);
    v6 = v10[0];
    _specifiersForOtherContactsAccounts = [(ACUIAddOtherAccountsViewController *)selfCopy _specifiersForOtherContactsAccounts];
    [v6 addObjectsFromArray:?];
    MEMORY[0x277D82BD8](_specifiersForOtherContactsAccounts);
    v8 = v10[0];
    _specifiersForOtherCalendarAccounts = [(ACUIAddOtherAccountsViewController *)selfCopy _specifiersForOtherCalendarAccounts];
    [v8 addObjectsFromArray:?];
    MEMORY[0x277D82BD8](_specifiersForOtherCalendarAccounts);
    objc_storeStrong((&selfCopy->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]), v10[0]);
    objc_storeStrong(v10, 0);
  }

  v2 = *(&selfCopy->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);

  return v2;
}

- (id)_specifiersForOtherMailAccounts
{
  selfCopy = self;
  v25[1] = a2;
  v25[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 1;
  filteredDataclass = [(ACUIAddAccountViewController *)selfCopy filteredDataclass];
  MEMORY[0x277D82BD8](filteredDataclass);
  if (filteredDataclass)
  {
    filteredDataclass2 = [(ACUIAddAccountViewController *)selfCopy filteredDataclass];
    v2 = [(NSString *)filteredDataclass2 isEqualToString:*MEMORY[0x277CB9150]];
    v22 = 0;
    v19 = 1;
    if (!v2)
    {
      filteredDataclass3 = [(ACUIAddAccountViewController *)selfCopy filteredDataclass];
      v22 = 1;
      v19 = [(NSString *)filteredDataclass3 isEqualToString:*MEMORY[0x277CB9178]];
    }

    v24 = v19 & 1;
    if (v22)
    {
      MEMORY[0x277D82BD8](filteredDataclass3);
    }

    MEMORY[0x277D82BD8](filteredDataclass2);
  }

  if (v24)
  {
    addAccountDataSource = [(ACUIAddAccountViewController *)selfCopy addAccountDataSource];
    v14 = *MEMORY[0x277CB8C60];
    viewProvidersManager = [(ACUIAddAccountViewController *)selfCopy viewProvidersManager];
    v17 = [(ACUIAddAccountDataSource *)addAccountDataSource viewControllerClassForCreatingAccountWithType:v14 withViewProviderManager:?];
    MEMORY[0x277D82BD8](viewProvidersManager);
    MEMORY[0x277D82BD8](addAccountDataSource);
    if (v17)
    {
      v5 = MEMORY[0x277D3FAD8];
      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = [v8 localizedStringForKey:@"MAIL_LABEL" value:? table:?];
      v6 = [v5 groupSpecifierWithName:?];
      [v25[0] addObject:?];
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v8);
      v9 = MEMORY[0x277D3FAD8];
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v11 = [v12 localizedStringForKey:@"ADD_OTHER_MAIL_ACCOUNT" value:&stru_2850054A0 table:@"Localizable"];
      addAccountDataSource2 = [(ACUIAddAccountViewController *)selfCopy addAccountDataSource];
      v21 = [v9 preferenceSpecifierNamed:v11 target:selfCopy set:0 get:0 detail:-[ACUIAddAccountDataSource viewControllerClassForCreatingOtherAccountTypes](addAccountDataSource2 cell:"viewControllerClassForCreatingOtherAccountTypes") edit:{1, 0}];
      MEMORY[0x277D82BD8](addAccountDataSource2);
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v12);
      [v21 setButtonAction:sel__addAccountSpecifierWasTapped_];
      [v21 setProperty:*MEMORY[0x277CB8C60] forKey:@"ACUIAccountType"];
      addAccountDataSource3 = [(ACUIAddAccountViewController *)selfCopy addAccountDataSource];
      [(ACUIAddAccountDataSource *)addAccountDataSource3 configureSpecifierForOtherAccountSpecifier:v21];
      MEMORY[0x277D82BD8](addAccountDataSource3);
      [v25[0] addObject:v21];
      objc_storeStrong(&v21, 0);
    }
  }

  v4 = MEMORY[0x277D82BE0](v25[0]);
  objc_storeStrong(v25, 0);

  return v4;
}

- (id)_specifiersForOtherContactsAccounts
{
  selfCopy = self;
  v34[1] = a2;
  v34[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  v33 = 1;
  filteredDataclass = [(ACUIAddAccountViewController *)selfCopy filteredDataclass];
  MEMORY[0x277D82BD8](filteredDataclass);
  if (filteredDataclass)
  {
    filteredDataclass2 = [(ACUIAddAccountViewController *)selfCopy filteredDataclass];
    v33 = [(NSString *)filteredDataclass2 isEqualToString:*MEMORY[0x277CB9108]];
    MEMORY[0x277D82BD8](filteredDataclass2);
  }

  if (v33)
  {
    addAccountDataSource = [(ACUIAddAccountViewController *)selfCopy addAccountDataSource];
    v19 = *MEMORY[0x277CB8C98];
    viewProvidersManager = [(ACUIAddAccountViewController *)selfCopy viewProvidersManager];
    v22 = [(ACUIAddAccountDataSource *)addAccountDataSource viewControllerClassForCreatingAccountWithType:v19 withViewProviderManager:?]!= 0;
    MEMORY[0x277D82BD8](viewProvidersManager);
    MEMORY[0x277D82BD8](addAccountDataSource);
    v32 = v22;
    addAccountDataSource2 = [(ACUIAddAccountViewController *)selfCopy addAccountDataSource];
    v23 = *MEMORY[0x277CB8BD8];
    viewProvidersManager2 = [(ACUIAddAccountViewController *)selfCopy viewProvidersManager];
    v26 = [(ACUIAddAccountDataSource *)addAccountDataSource2 viewControllerClassForCreatingAccountWithType:v23 withViewProviderManager:?]!= 0;
    MEMORY[0x277D82BD8](viewProvidersManager2);
    MEMORY[0x277D82BD8](addAccountDataSource2);
    v31 = v26;
    if (v22 || v31)
    {
      v15 = MEMORY[0x277D3FAD8];
      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v17 = [v18 localizedStringForKey:@"CONTACTS_LABEL" value:&stru_2850054A0 table:@"Localizable"];
      v16 = [v15 groupSpecifierWithName:?];
      [v34[0] addObject:?];
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](v17);
      MEMORY[0x277D82BD8](v18);
      if (v32)
      {
        v10 = MEMORY[0x277D3FAD8];
        v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v12 = [v13 localizedStringForKey:@"ADD_LDAP_ACCOUNT" value:&stru_2850054A0 table:@"Localizable"];
        addAccountDataSource3 = [(ACUIAddAccountViewController *)selfCopy addAccountDataSource];
        v30 = [v10 preferenceSpecifierNamed:v12 target:selfCopy set:0 get:0 detail:-[ACUIAddAccountDataSource viewControllerClassForCreatingOtherAccountTypes](addAccountDataSource3 cell:"viewControllerClassForCreatingOtherAccountTypes") edit:{1, 0}];
        MEMORY[0x277D82BD8](addAccountDataSource3);
        MEMORY[0x277D82BD8](v12);
        MEMORY[0x277D82BD8](v13);
        [v30 setButtonAction:sel__addAccountSpecifierWasTapped_];
        [v30 setProperty:*MEMORY[0x277CB8C98] forKey:@"ACUIAccountType"];
        addAccountDataSource4 = [(ACUIAddAccountViewController *)selfCopy addAccountDataSource];
        [(ACUIAddAccountDataSource *)addAccountDataSource4 configureSpecifierForOtherAccountSpecifier:v30];
        MEMORY[0x277D82BD8](addAccountDataSource4);
        [v34[0] addObject:v30];
        objc_storeStrong(&v30, 0);
      }

      if (v31)
      {
        v5 = MEMORY[0x277D3FAD8];
        v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v7 = [v8 localizedStringForKey:@"ADD_CARDDAV_ACCOUNT" value:&stru_2850054A0 table:@"Localizable"];
        v4 = selfCopy;
        addAccountDataSource5 = [(ACUIAddAccountViewController *)selfCopy addAccountDataSource];
        v29 = [v5 preferenceSpecifierNamed:v7 target:v4 set:0 get:0 detail:-[ACUIAddAccountDataSource viewControllerClassForCreatingOtherAccountTypes](addAccountDataSource5 cell:"viewControllerClassForCreatingOtherAccountTypes") edit:{1, 0}];
        MEMORY[0x277D82BD8](addAccountDataSource5);
        MEMORY[0x277D82BD8](v7);
        MEMORY[0x277D82BD8](v8);
        [v29 setButtonAction:sel__addAccountSpecifierWasTapped_];
        [v29 setProperty:*MEMORY[0x277CB8BD8] forKey:@"ACUIAccountType"];
        addAccountDataSource6 = [(ACUIAddAccountViewController *)selfCopy addAccountDataSource];
        [(ACUIAddAccountDataSource *)addAccountDataSource6 configureSpecifierForOtherAccountSpecifier:v29];
        MEMORY[0x277D82BD8](addAccountDataSource6);
        [v34[0] addObject:v29];
        objc_storeStrong(&v29, 0);
      }
    }
  }

  v3 = MEMORY[0x277D82BE0](v34[0]);
  objc_storeStrong(v34, 0);

  return v3;
}

- (id)_specifiersForOtherCalendarAccounts
{
  selfCopy = self;
  v38[1] = a2;
  v38[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  v37 = 1;
  filteredDataclass = [(ACUIAddAccountViewController *)selfCopy filteredDataclass];
  MEMORY[0x277D82BD8](filteredDataclass);
  if (filteredDataclass)
  {
    filteredDataclass2 = [(ACUIAddAccountViewController *)selfCopy filteredDataclass];
    v2 = [(NSString *)filteredDataclass2 isEqualToString:*MEMORY[0x277CB90F0]];
    v35 = 0;
    v29 = 1;
    if (!v2)
    {
      filteredDataclass3 = [(ACUIAddAccountViewController *)selfCopy filteredDataclass];
      v35 = 1;
      v29 = [(NSString *)filteredDataclass3 isEqualToString:*MEMORY[0x277CB9190]];
    }

    v37 = v29 & 1;
    if (v35)
    {
      MEMORY[0x277D82BD8](filteredDataclass3);
    }

    MEMORY[0x277D82BD8](filteredDataclass2);
  }

  if (v37)
  {
    addAccountDataSource = [(ACUIAddAccountViewController *)selfCopy addAccountDataSource];
    v20 = *MEMORY[0x277CB8BC8];
    viewProvidersManager = [(ACUIAddAccountViewController *)selfCopy viewProvidersManager];
    v23 = [(ACUIAddAccountDataSource *)addAccountDataSource viewControllerClassForCreatingAccountWithType:v20 withViewProviderManager:?]!= 0;
    MEMORY[0x277D82BD8](viewProvidersManager);
    MEMORY[0x277D82BD8](addAccountDataSource);
    v34 = v23;
    addAccountDataSource2 = [(ACUIAddAccountViewController *)selfCopy addAccountDataSource];
    v24 = *MEMORY[0x277CB8D10];
    viewProvidersManager2 = [(ACUIAddAccountViewController *)selfCopy viewProvidersManager];
    v27 = [(ACUIAddAccountDataSource *)addAccountDataSource2 viewControllerClassForCreatingAccountWithType:v24 withViewProviderManager:?]!= 0;
    MEMORY[0x277D82BD8](viewProvidersManager2);
    MEMORY[0x277D82BD8](addAccountDataSource2);
    v33 = v27;
    if (v23 || v33)
    {
      v16 = MEMORY[0x277D3FAD8];
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v18 = [v19 localizedStringForKey:@"CALENDARS_LABEL" value:&stru_2850054A0 table:@"Localizable"];
      v17 = [v16 groupSpecifierWithName:?];
      [v38[0] addObject:?];
      MEMORY[0x277D82BD8](v17);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v19);
      if (v34)
      {
        v11 = MEMORY[0x277D3FAD8];
        v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v13 = [v14 localizedStringForKey:@"ADD_CALDAV_ACCOUNT" value:&stru_2850054A0 table:@"Localizable"];
        addAccountDataSource3 = [(ACUIAddAccountViewController *)selfCopy addAccountDataSource];
        v32 = [v11 preferenceSpecifierNamed:v13 target:selfCopy set:0 get:0 detail:-[ACUIAddAccountDataSource viewControllerClassForCreatingOtherAccountTypes](addAccountDataSource3 cell:"viewControllerClassForCreatingOtherAccountTypes") edit:{1, 0}];
        MEMORY[0x277D82BD8](addAccountDataSource3);
        MEMORY[0x277D82BD8](v13);
        MEMORY[0x277D82BD8](v14);
        [v32 setButtonAction:sel__addAccountSpecifierWasTapped_];
        [v32 setProperty:*MEMORY[0x277CB8BC8] forKey:@"ACUIAccountType"];
        addAccountDataSource4 = [(ACUIAddAccountViewController *)selfCopy addAccountDataSource];
        [(ACUIAddAccountDataSource *)addAccountDataSource4 configureSpecifierForOtherAccountSpecifier:v32];
        MEMORY[0x277D82BD8](addAccountDataSource4);
        [v38[0] addObject:v32];
        objc_storeStrong(&v32, 0);
      }

      if (v33)
      {
        v6 = MEMORY[0x277D3FAD8];
        v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v8 = [v9 localizedStringForKey:@"ADD_SUBCAL_ACCOUNT" value:&stru_2850054A0 table:@"Localizable"];
        v5 = selfCopy;
        addAccountDataSource5 = [(ACUIAddAccountViewController *)selfCopy addAccountDataSource];
        v31 = [v6 preferenceSpecifierNamed:v8 target:v5 set:0 get:0 detail:-[ACUIAddAccountDataSource viewControllerClassForCreatingOtherAccountTypes](addAccountDataSource5 cell:"viewControllerClassForCreatingOtherAccountTypes") edit:{1, 0}];
        MEMORY[0x277D82BD8](addAccountDataSource5);
        MEMORY[0x277D82BD8](v8);
        MEMORY[0x277D82BD8](v9);
        [v31 setButtonAction:sel__addAccountSpecifierWasTapped_];
        [v31 setProperty:*MEMORY[0x277CB8D10] forKey:@"ACUIAccountType"];
        addAccountDataSource6 = [(ACUIAddAccountViewController *)selfCopy addAccountDataSource];
        [(ACUIAddAccountDataSource *)addAccountDataSource6 configureSpecifierForOtherAccountSpecifier:v31];
        MEMORY[0x277D82BD8](addAccountDataSource6);
        [v38[0] addObject:v31];
        objc_storeStrong(&v31, 0);
      }
    }
  }

  v4 = MEMORY[0x277D82BE0](v38[0]);
  objc_storeStrong(v38, 0);

  return v4;
}

@end