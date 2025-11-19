@interface ACUIAddOtherAccountsViewController
- (id)_specifiersForOtherCalendarAccounts;
- (id)_specifiersForOtherContactsAccounts;
- (id)_specifiersForOtherMailAccounts;
- (id)specifiers;
@end

@implementation ACUIAddOtherAccountsViewController

- (id)specifiers
{
  v11 = self;
  v10[1] = a2;
  if (!*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]))
  {
    v10[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = v10[0];
    v5 = [(ACUIAddOtherAccountsViewController *)v11 _specifiersForOtherMailAccounts];
    [v4 addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v5);
    v6 = v10[0];
    v7 = [(ACUIAddOtherAccountsViewController *)v11 _specifiersForOtherContactsAccounts];
    [v6 addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v7);
    v8 = v10[0];
    v9 = [(ACUIAddOtherAccountsViewController *)v11 _specifiersForOtherCalendarAccounts];
    [v8 addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong((&v11->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]), v10[0]);
    objc_storeStrong(v10, 0);
  }

  v2 = *(&v11->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);

  return v2;
}

- (id)_specifiersForOtherMailAccounts
{
  v26 = self;
  v25[1] = a2;
  v25[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 1;
  v20 = [(ACUIAddAccountViewController *)v26 filteredDataclass];
  MEMORY[0x277D82BD8](v20);
  if (v20)
  {
    v18 = [(ACUIAddAccountViewController *)v26 filteredDataclass];
    v2 = [(NSString *)v18 isEqualToString:*MEMORY[0x277CB9150]];
    v22 = 0;
    v19 = 1;
    if (!v2)
    {
      v23 = [(ACUIAddAccountViewController *)v26 filteredDataclass];
      v22 = 1;
      v19 = [(NSString *)v23 isEqualToString:*MEMORY[0x277CB9178]];
    }

    v24 = v19 & 1;
    if (v22)
    {
      MEMORY[0x277D82BD8](v23);
    }

    MEMORY[0x277D82BD8](v18);
  }

  if (v24)
  {
    v16 = [(ACUIAddAccountViewController *)v26 addAccountDataSource];
    v14 = *MEMORY[0x277CB8C60];
    v15 = [(ACUIAddAccountViewController *)v26 viewProvidersManager];
    v17 = [(ACUIAddAccountDataSource *)v16 viewControllerClassForCreatingAccountWithType:v14 withViewProviderManager:?];
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
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
      v10 = [(ACUIAddAccountViewController *)v26 addAccountDataSource];
      v21 = [v9 preferenceSpecifierNamed:v11 target:v26 set:0 get:0 detail:-[ACUIAddAccountDataSource viewControllerClassForCreatingOtherAccountTypes](v10 cell:"viewControllerClassForCreatingOtherAccountTypes") edit:{1, 0}];
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v12);
      [v21 setButtonAction:sel__addAccountSpecifierWasTapped_];
      [v21 setProperty:*MEMORY[0x277CB8C60] forKey:@"ACUIAccountType"];
      v13 = [(ACUIAddAccountViewController *)v26 addAccountDataSource];
      [(ACUIAddAccountDataSource *)v13 configureSpecifierForOtherAccountSpecifier:v21];
      MEMORY[0x277D82BD8](v13);
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
  v35 = self;
  v34[1] = a2;
  v34[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  v33 = 1;
  v28 = [(ACUIAddAccountViewController *)v35 filteredDataclass];
  MEMORY[0x277D82BD8](v28);
  if (v28)
  {
    v27 = [(ACUIAddAccountViewController *)v35 filteredDataclass];
    v33 = [(NSString *)v27 isEqualToString:*MEMORY[0x277CB9108]];
    MEMORY[0x277D82BD8](v27);
  }

  if (v33)
  {
    v21 = [(ACUIAddAccountViewController *)v35 addAccountDataSource];
    v19 = *MEMORY[0x277CB8C98];
    v20 = [(ACUIAddAccountViewController *)v35 viewProvidersManager];
    v22 = [(ACUIAddAccountDataSource *)v21 viewControllerClassForCreatingAccountWithType:v19 withViewProviderManager:?]!= 0;
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    v32 = v22;
    v25 = [(ACUIAddAccountViewController *)v35 addAccountDataSource];
    v23 = *MEMORY[0x277CB8BD8];
    v24 = [(ACUIAddAccountViewController *)v35 viewProvidersManager];
    v26 = [(ACUIAddAccountDataSource *)v25 viewControllerClassForCreatingAccountWithType:v23 withViewProviderManager:?]!= 0;
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
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
        v11 = [(ACUIAddAccountViewController *)v35 addAccountDataSource];
        v30 = [v10 preferenceSpecifierNamed:v12 target:v35 set:0 get:0 detail:-[ACUIAddAccountDataSource viewControllerClassForCreatingOtherAccountTypes](v11 cell:"viewControllerClassForCreatingOtherAccountTypes") edit:{1, 0}];
        MEMORY[0x277D82BD8](v11);
        MEMORY[0x277D82BD8](v12);
        MEMORY[0x277D82BD8](v13);
        [v30 setButtonAction:sel__addAccountSpecifierWasTapped_];
        [v30 setProperty:*MEMORY[0x277CB8C98] forKey:@"ACUIAccountType"];
        v14 = [(ACUIAddAccountViewController *)v35 addAccountDataSource];
        [(ACUIAddAccountDataSource *)v14 configureSpecifierForOtherAccountSpecifier:v30];
        MEMORY[0x277D82BD8](v14);
        [v34[0] addObject:v30];
        objc_storeStrong(&v30, 0);
      }

      if (v31)
      {
        v5 = MEMORY[0x277D3FAD8];
        v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v7 = [v8 localizedStringForKey:@"ADD_CARDDAV_ACCOUNT" value:&stru_2850054A0 table:@"Localizable"];
        v4 = v35;
        v6 = [(ACUIAddAccountViewController *)v35 addAccountDataSource];
        v29 = [v5 preferenceSpecifierNamed:v7 target:v4 set:0 get:0 detail:-[ACUIAddAccountDataSource viewControllerClassForCreatingOtherAccountTypes](v6 cell:"viewControllerClassForCreatingOtherAccountTypes") edit:{1, 0}];
        MEMORY[0x277D82BD8](v6);
        MEMORY[0x277D82BD8](v7);
        MEMORY[0x277D82BD8](v8);
        [v29 setButtonAction:sel__addAccountSpecifierWasTapped_];
        [v29 setProperty:*MEMORY[0x277CB8BD8] forKey:@"ACUIAccountType"];
        v9 = [(ACUIAddAccountViewController *)v35 addAccountDataSource];
        [(ACUIAddAccountDataSource *)v9 configureSpecifierForOtherAccountSpecifier:v29];
        MEMORY[0x277D82BD8](v9);
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
  v39 = self;
  v38[1] = a2;
  v38[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  v37 = 1;
  v30 = [(ACUIAddAccountViewController *)v39 filteredDataclass];
  MEMORY[0x277D82BD8](v30);
  if (v30)
  {
    v28 = [(ACUIAddAccountViewController *)v39 filteredDataclass];
    v2 = [(NSString *)v28 isEqualToString:*MEMORY[0x277CB90F0]];
    v35 = 0;
    v29 = 1;
    if (!v2)
    {
      v36 = [(ACUIAddAccountViewController *)v39 filteredDataclass];
      v35 = 1;
      v29 = [(NSString *)v36 isEqualToString:*MEMORY[0x277CB9190]];
    }

    v37 = v29 & 1;
    if (v35)
    {
      MEMORY[0x277D82BD8](v36);
    }

    MEMORY[0x277D82BD8](v28);
  }

  if (v37)
  {
    v22 = [(ACUIAddAccountViewController *)v39 addAccountDataSource];
    v20 = *MEMORY[0x277CB8BC8];
    v21 = [(ACUIAddAccountViewController *)v39 viewProvidersManager];
    v23 = [(ACUIAddAccountDataSource *)v22 viewControllerClassForCreatingAccountWithType:v20 withViewProviderManager:?]!= 0;
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
    v34 = v23;
    v26 = [(ACUIAddAccountViewController *)v39 addAccountDataSource];
    v24 = *MEMORY[0x277CB8D10];
    v25 = [(ACUIAddAccountViewController *)v39 viewProvidersManager];
    v27 = [(ACUIAddAccountDataSource *)v26 viewControllerClassForCreatingAccountWithType:v24 withViewProviderManager:?]!= 0;
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
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
        v12 = [(ACUIAddAccountViewController *)v39 addAccountDataSource];
        v32 = [v11 preferenceSpecifierNamed:v13 target:v39 set:0 get:0 detail:-[ACUIAddAccountDataSource viewControllerClassForCreatingOtherAccountTypes](v12 cell:"viewControllerClassForCreatingOtherAccountTypes") edit:{1, 0}];
        MEMORY[0x277D82BD8](v12);
        MEMORY[0x277D82BD8](v13);
        MEMORY[0x277D82BD8](v14);
        [v32 setButtonAction:sel__addAccountSpecifierWasTapped_];
        [v32 setProperty:*MEMORY[0x277CB8BC8] forKey:@"ACUIAccountType"];
        v15 = [(ACUIAddAccountViewController *)v39 addAccountDataSource];
        [(ACUIAddAccountDataSource *)v15 configureSpecifierForOtherAccountSpecifier:v32];
        MEMORY[0x277D82BD8](v15);
        [v38[0] addObject:v32];
        objc_storeStrong(&v32, 0);
      }

      if (v33)
      {
        v6 = MEMORY[0x277D3FAD8];
        v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v8 = [v9 localizedStringForKey:@"ADD_SUBCAL_ACCOUNT" value:&stru_2850054A0 table:@"Localizable"];
        v5 = v39;
        v7 = [(ACUIAddAccountViewController *)v39 addAccountDataSource];
        v31 = [v6 preferenceSpecifierNamed:v8 target:v5 set:0 get:0 detail:-[ACUIAddAccountDataSource viewControllerClassForCreatingOtherAccountTypes](v7 cell:"viewControllerClassForCreatingOtherAccountTypes") edit:{1, 0}];
        MEMORY[0x277D82BD8](v7);
        MEMORY[0x277D82BD8](v8);
        MEMORY[0x277D82BD8](v9);
        [v31 setButtonAction:sel__addAccountSpecifierWasTapped_];
        [v31 setProperty:*MEMORY[0x277CB8D10] forKey:@"ACUIAccountType"];
        v10 = [(ACUIAddAccountViewController *)v39 addAccountDataSource];
        [(ACUIAddAccountDataSource *)v10 configureSpecifierForOtherAccountSpecifier:v31];
        MEMORY[0x277D82BD8](v10);
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