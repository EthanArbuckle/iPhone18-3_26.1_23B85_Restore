@interface ACUIUtils
+ (id)_accountGroupIdentifier:(id)a3 ignoringGroups:(id)a4;
+ (id)sortedAccountsFromAccounts:(id)a3;
+ (id)sortedDataclassesFrom:(id)a3;
+ (void)emitNavigationEventForSubPane:(id)a3 subPath:(id)a4 account:(id)a5 inHostAppBundleID:(id)a6;
+ (void)filterAccounts:(id)a3 toTopLevel:(id)a4 grouped:(id)a5 ignoringGroups:(id)a6;
@end

@implementation ACUIUtils

+ (void)filterAccounts:(id)a3 toTopLevel:(id)a4 grouped:(id)a5 ignoringGroups:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v28 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = 0;
  objc_storeStrong(&v26, a4);
  v25 = 0;
  objc_storeStrong(&v25, a5);
  v24 = 0;
  objc_storeStrong(&v24, a6);
  memset(__b, 0, sizeof(__b));
  v18 = MEMORY[0x277D82BE0](location[0]);
  v19 = [v18 countByEnumeratingWithState:__b objects:v29 count:16];
  if (v19)
  {
    v12 = *__b[2];
    v13 = 0;
    v14 = v19;
    while (1)
    {
      v11 = v13;
      if (*__b[2] != v12)
      {
        objc_enumerationMutation(v18);
      }

      v23 = *(__b[1] + 8 * v13);
      v21 = [v28 _accountGroupIdentifier:v23 ignoringGroups:v24];
      if (v21)
      {
        v10 = [v25 objectForKey:v21];
        v20 = [v10 mutableCopy];
        MEMORY[0x277D82BD8](v10);
        if (!v20)
        {
          v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v7 = v20;
          v20 = v6;
          MEMORY[0x277D82BD8](v7);
        }

        [v20 addObject:v23];
        v8 = v25;
        v9 = [v20 copy];
        [v8 setObject:? forKey:?];
        MEMORY[0x277D82BD8](v9);
        objc_storeStrong(&v20, 0);
      }

      else
      {
        [v26 addObject:v23];
      }

      objc_storeStrong(&v21, 0);
      ++v13;
      if (v11 + 1 >= v14)
      {
        v13 = 0;
        v14 = [v18 countByEnumeratingWithState:__b objects:v29 count:16];
        if (!v14)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v18);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

+ (id)_accountGroupIdentifier:(id)a3 ignoringGroups:(id)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v8 = [location[0] accountType];
  v7 = [v8 identifier];
  v9 = [v7 isEqualToString:*MEMORY[0x277CB8D10]];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  if (v9 & 1) == 0 || ([v10 containsObject:*MEMORY[0x277CB8D10]])
  {
    v12 = 0;
  }

  else
  {
    v12 = MEMORY[0x277D82BE0](*MEMORY[0x277CB8D10]);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  v4 = v12;

  return v4;
}

+ (id)sortedAccountsFromAccounts:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = ACUISortedAccountTypes();
  v4 = location[0];
  v6 = MEMORY[0x277D82BE0](v8);
  v7 = [v4 sortedArrayUsingComparator:?];
  v5 = MEMORY[0x277D82BE0](v7);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v5;
}

uint64_t __40__ACUIUtils_sortedAccountsFromAccounts___block_invoke(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = 0;
  objc_storeStrong(&v14, a3);
  v13[1] = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = [location[0] accountType];
    v13[0] = [v4 identifier];
    MEMORY[0x277D82BD8](v4);
    v5 = [v14 accountType];
    v12 = [v5 identifier];
    MEMORY[0x277D82BD8](v5);
    v11 = [a1[4] indexOfObject:v13[0]];
    v10 = [a1[4] indexOfObject:v12];
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
    v16 = [v7 compare:?];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(v13, 0);
  }

  else
  {
    v16 = 0;
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  return v16;
}

+ (id)sortedDataclassesFrom:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([location[0] containsObject:*MEMORY[0x277CB91D8]])
  {
    [v5 addObject:*MEMORY[0x277CB91D8]];
  }

  if ([location[0] containsObject:*MEMORY[0x277CB9158]])
  {
    [v5 addObject:*MEMORY[0x277CB9158]];
  }

  if ([location[0] containsObject:*MEMORY[0x277CB9150]])
  {
    [v5 addObject:*MEMORY[0x277CB9150]];
  }

  if ([location[0] containsObject:*MEMORY[0x277CB9108]])
  {
    [v5 addObject:*MEMORY[0x277CB9108]];
  }

  if ([location[0] containsObject:*MEMORY[0x277CB90F0]])
  {
    [v5 addObject:*MEMORY[0x277CB90F0]];
  }

  if ([location[0] containsObject:*MEMORY[0x277CB9190]])
  {
    [v5 addObject:*MEMORY[0x277CB9190]];
  }

  if ([location[0] containsObject:*MEMORY[0x277CB90D0]])
  {
    [v5 addObject:*MEMORY[0x277CB90D0]];
  }

  if ([location[0] containsObject:*MEMORY[0x277CB9138]])
  {
    [v5 addObject:*MEMORY[0x277CB9138]];
  }

  if ([location[0] containsObject:*MEMORY[0x277CB9178]])
  {
    [v5 addObject:*MEMORY[0x277CB9178]];
  }

  if ([location[0] containsObject:*MEMORY[0x277CB9170]])
  {
    [v5 addObject:*MEMORY[0x277CB9170]];
  }

  if ([location[0] containsObject:*MEMORY[0x277CB9130]])
  {
    [v5 addObject:*MEMORY[0x277CB9130]];
  }

  if ([location[0] containsObject:*MEMORY[0x277CB91B8]])
  {
    [v5 addObject:*MEMORY[0x277CB91B8]];
  }

  if ([location[0] containsObject:*MEMORY[0x277CB9140]])
  {
    [v5 addObject:*MEMORY[0x277CB9140]];
  }

  if ([location[0] containsObject:*MEMORY[0x277CB9148]])
  {
    [v5 addObject:*MEMORY[0x277CB9148]];
  }

  if ([location[0] containsObject:*MEMORY[0x277CB90C8]])
  {
    [v5 addObject:*MEMORY[0x277CB90C8]];
  }

  if ([location[0] containsObject:*MEMORY[0x277CB9128]])
  {
    [v5 addObject:*MEMORY[0x277CB9128]];
  }

  if ([location[0] containsObject:*MEMORY[0x277CB9168]])
  {
    [v5 addObject:*MEMORY[0x277CB9168]];
  }

  v4 = MEMORY[0x277D82BE0](v5);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);

  return v4;
}

+ (void)emitNavigationEventForSubPane:(id)a3 subPath:(id)a4 account:(id)a5 inHostAppBundleID:(id)a6
{
  v82[3] = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v80 = 0;
  objc_storeStrong(&v80, a4);
  v79 = 0;
  objc_storeStrong(&v79, a5);
  v78 = 0;
  objc_storeStrong(&v78, a6);
  PreferencesExtendedLibrary();
  v77 = 0;
  if (v78)
  {
    v64 = MEMORY[0x277CBEBC0];
    v65 = [MEMORY[0x277CCACA8] stringWithFormat:@"settings-navigation://com.apple.Settings.InternetAccounts/%@?internetAccountsApplicationTarget=%@", v80, v78];
    v6 = [v64 URLWithString:?];
    v7 = v77;
    v77 = v6;
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v65);
  }

  else
  {
    v62 = MEMORY[0x277CBEBC0];
    v63 = [MEMORY[0x277CCACA8] stringWithFormat:@"settings-navigation://com.apple.Settings.InternetAccounts/%@", v80];
    v8 = [v62 URLWithString:?];
    v9 = v77;
    v77 = v8;
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v63);
  }

  v54 = objc_alloc(MEMORY[0x277CCAEB8]);
  v57 = [MEMORY[0x277CBEAF8] currentLocale];
  v56 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v55 = [v56 bundleURL];
  v76 = [v54 initWithKey:@"ACCOUNTS" table:? locale:? bundleURL:?];
  MEMORY[0x277D82BD8](v55);
  MEMORY[0x277D82BD8](v56);
  MEMORY[0x277D82BD8](v57);
  v58 = objc_alloc(MEMORY[0x277CCAEB8]);
  v61 = [MEMORY[0x277CBEAF8] currentLocale];
  v60 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v59 = [v60 bundleURL];
  v75 = [v58 initWithKey:@"APPS_NAVIGATION_PATH" table:0 locale:v61 bundleURL:?];
  MEMORY[0x277D82BD8](v59);
  MEMORY[0x277D82BD8](v60);
  MEMORY[0x277D82BD8](v61);
  v74 = 0;
  v73 = 0;
  v72 = [ACUILocalization localizedNameForApplicationBundleID:v78];
  if (v72)
  {
    v42 = objc_alloc(MEMORY[0x277CCAEB8]);
    v45 = [MEMORY[0x277CBEAF8] currentLocale];
    v44 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v43 = [v44 bundleURL];
    v10 = [v42 initWithKey:@"DO_NOT_LOCALIZE_HOST_APP_IN_DEFAULT_VALUE" defaultValue:v72 table:? locale:? bundleURL:?];
    v11 = v74;
    v74 = v10;
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](v45);
    v47 = objc_alloc(MEMORY[0x277CCAEB8]);
    v46 = MEMORY[0x277CCACA8];
    v53 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v52 = [v53 localizedStringForKey:@"HOST_APP_ACCOUNTS_PATH_FORMAT" value:&stru_2850054A0 table:@"Localizable"];
    v51 = [v46 localizedStringWithFormat:v72];
    v50 = [MEMORY[0x277CBEAF8] currentLocale];
    v49 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v48 = [v49 bundleURL];
    v12 = [v47 initWithKey:@"DO_NOT_LOCALIZE_HOST_APP_ACCOUNTS_FORMAT_IN_DEFAULT_VALUE" defaultValue:v51 table:0 locale:v50 bundleURL:?];
    v13 = v73;
    v73 = v12;
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](v52);
    MEMORY[0x277D82BD8](v53);
  }

  else
  {
    v34 = objc_alloc(MEMORY[0x277CCAEB8]);
    v37 = [MEMORY[0x277CBEAF8] currentLocale];
    v36 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v35 = [v36 bundleURL];
    v14 = [v34 initWithKey:@"CONTACTS_APP_PATH" table:? locale:? bundleURL:?];
    v15 = v74;
    v74 = v14;
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v37);
    v38 = objc_alloc(MEMORY[0x277CCAEB8]);
    v41 = [MEMORY[0x277CBEAF8] currentLocale];
    v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v39 = [v40 bundleURL];
    v16 = [v38 initWithKey:@"CONTACTS_ACCOUNTS_PATH" table:0 locale:v41 bundleURL:?];
    v17 = v73;
    v73 = v16;
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](v41);
  }

  v82[0] = v75;
  v82[1] = v74;
  v82[2] = v73;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:3];
  v71 = [v33 mutableCopy];
  MEMORY[0x277D82BD8](v33);
  if (([v80 isEqualToString:@"root"] & 1) == 0)
  {
    if ([v80 hasPrefix:@"ADD_ACCOUNT"])
    {
      v29 = objc_alloc(MEMORY[0x277CCAEB8]);
      v32 = [MEMORY[0x277CBEAF8] currentLocale];
      v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v30 = [v31 bundleURL];
      v18 = [v29 initWithKey:@"ADD_ACCOUNT" table:0 locale:v32 bundleURL:?];
      v19 = v76;
      v76 = v18;
      MEMORY[0x277D82BD8](v19);
      MEMORY[0x277D82BD8](v30);
      MEMORY[0x277D82BD8](v31);
      MEMORY[0x277D82BD8](v32);
      [v71 addObject:v76];
    }

    else
    {
      v69 = 0;
      v28 = 0;
      if (v79)
      {
        v27 = v80;
        v70 = [v79 identifier];
        v69 = 1;
        v28 = [v27 hasPrefix:?];
      }

      if (v69)
      {
        MEMORY[0x277D82BD8](v70);
      }

      if (v28)
      {
        v22 = objc_alloc(MEMORY[0x277CCAEB8]);
        v26 = [v79 accountDescription];
        v25 = [MEMORY[0x277CBEAF8] currentLocale];
        v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v23 = [v24 bundleURL];
        v20 = [v22 initWithKey:@"DO_NOT_LOCALIZE_ACCOUNT_DESCIRPTION_IN_DEFAULT_VALUE" defaultValue:v26 table:0 locale:v25 bundleURL:?];
        v21 = v76;
        v76 = v20;
        MEMORY[0x277D82BD8](v21);
        MEMORY[0x277D82BD8](v23);
        MEMORY[0x277D82BD8](v24);
        MEMORY[0x277D82BD8](v25);
        MEMORY[0x277D82BD8](v26);
        [v71 addObject:v76];
      }
    }
  }

  [location[0] pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.accounts.generic-account" title:v76 localizedNavigationComponents:v71 deepLink:v77];
  objc_storeStrong(&v71, 0);
  objc_storeStrong(&v72, 0);
  objc_storeStrong(&v73, 0);
  objc_storeStrong(&v74, 0);
  objc_storeStrong(&v75, 0);
  objc_storeStrong(&v76, 0);
  objc_storeStrong(&v77, 0);
  objc_storeStrong(&v78, 0);
  objc_storeStrong(&v79, 0);
  objc_storeStrong(&v80, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

@end