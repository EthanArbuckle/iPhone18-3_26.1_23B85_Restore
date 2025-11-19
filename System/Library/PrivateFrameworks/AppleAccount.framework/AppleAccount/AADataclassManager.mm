@interface AADataclassManager
+ (AADataclassManager)sharedManager;
+ (id)dataclassBundleMap;
- (AADataclassManager)init;
- (AADataclassManager)initWithAccountStore:(id)a3;
- (BOOL)_appStatusRestrictsProvisioningForDataclass:(id)a3;
- (BOOL)_isRestrictedForDataclass:(id)a3 account:(id)a4;
- (BOOL)_shouldProvisionNotesForAccount:(id)a3;
- (BOOL)_shouldProvisionRemindersForAccount:(id)a3;
- (BOOL)_shouldShowDataclassWhenAppIsRemoved:(id)a3;
- (BOOL)_shouldVerifyAccountSave;
- (BOOL)canAutoEnableDataclass:(id)a3 forAccount:(id)a4;
- (BOOL)isSystemAppMCRestrictedOrRemovedForDataclass:(id)a3 forAccount:(id)a4;
- (BOOL)shouldProvisionDataclass:(id)a3 forAccount:(id)a4;
- (id)_filteredDataclassesForAccountClass:(id)a3;
- (id)_nonVisibleServiceDataclass;
- (id)_userVisibleDataclasses;
- (id)allowListedDataclassesForAppleAccountClassBasic;
- (id)allowListedDataclassesForAppleAccountClassFull;
- (id)appBundleIdentifierForDataclass:(id)a3;
- (id)denyListedMacOSDataclasses;
- (id)filterDataclassesForPossibleAutoEnablementForAccount:(id)a3;
- (id)filteredServerProvidedFeatures:(id)a3 forAccount:(id)a4;
- (id)userDefaultsDisabledDataclasses;
- (void)_buildAutoEnableableDataclassesAndActionsForAccount:(id)a3 dataclassesForEnablement:(id)a4 completion:(id)a5;
- (void)enableDataclassesWithoutLocalDataDataclassActionsForAccount:(id)a3 completion:(id)a4;
- (void)enableDataclassesWithoutLocalDataDataclassActionsForDataclasses:(id)a3 fromAccount:(id)a4 completion:(id)a5;
- (void)userDefaultsDisabledDataclasses;
@end

@implementation AADataclassManager

- (id)allowListedDataclassesForAppleAccountClassBasic
{
  v9[5] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = *MEMORY[0x1E6959640];
  v9[0] = *MEMORY[0x1E6959630];
  v9[1] = v3;
  v4 = *MEMORY[0x1E69596C0];
  v9[2] = *MEMORY[0x1E6959698];
  v9[3] = v4;
  v9[4] = *MEMORY[0x1E69596E0];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:5];
  v6 = [v2 setWithArray:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)allowListedDataclassesForAppleAccountClassFull
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = [(AADataclassManager *)self allowListedDataclassesForAppleAccountClassBasic];
  v3 = *MEMORY[0x1E6959618];
  v10[0] = *MEMORY[0x1E6959600];
  v10[1] = v3;
  v4 = *MEMORY[0x1E6959628];
  v10[2] = *MEMORY[0x1E6959620];
  v10[3] = v4;
  v5 = *MEMORY[0x1E6959718];
  v10[4] = *MEMORY[0x1E69596D8];
  v10[5] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:6];
  v7 = [v2 setByAddingObjectsFromArray:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_userVisibleDataclasses
{
  v20[22] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = *MEMORY[0x1E6959600];
  v20[0] = *MEMORY[0x1E6959670];
  v20[1] = v3;
  v4 = *MEMORY[0x1E6959700];
  v20[2] = *MEMORY[0x1E69596A8];
  v20[3] = v4;
  v5 = *MEMORY[0x1E6959630];
  v20[4] = *MEMORY[0x1E6959608];
  v20[5] = v5;
  v6 = *MEMORY[0x1E6959658];
  v20[6] = *MEMORY[0x1E6959640];
  v20[7] = v6;
  v7 = *MEMORY[0x1E6959668];
  v20[8] = *MEMORY[0x1E6959678];
  v20[9] = v7;
  v8 = *MEMORY[0x1E6959690];
  v20[10] = *MEMORY[0x1E6959660];
  v20[11] = v8;
  v9 = *MEMORY[0x1E69596B8];
  v20[12] = *MEMORY[0x1E6959698];
  v20[13] = v9;
  v10 = *MEMORY[0x1E69596D0];
  v20[14] = *MEMORY[0x1E69596C0];
  v20[15] = v10;
  v11 = *MEMORY[0x1E6959708];
  v20[16] = *MEMORY[0x1E69596E0];
  v20[17] = v11;
  v12 = *MEMORY[0x1E6959718];
  v20[18] = *MEMORY[0x1E6959710];
  v20[19] = v12;
  v13 = *MEMORY[0x1E6959680];
  v20[20] = *MEMORY[0x1E69596C8];
  v20[21] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:22];
  v15 = [v2 setWithArray:v14];

  if (+[AAPreferences isMomentsDataclassEnabled])
  {
    v16 = [v15 setByAddingObject:*MEMORY[0x1E69596B0]];

    v15 = v16;
  }

  if (_os_feature_enabled_impl())
  {
    v17 = [v15 setByAddingObject:*MEMORY[0x1E6959650]];

    v15 = v17;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)_nonVisibleServiceDataclass
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v7[0] = *MEMORY[0x1E6959688];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)denyListedMacOSDataclasses
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = *MEMORY[0x1E6959670];
  v9[0] = *MEMORY[0x1E6959600];
  v9[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v5 = [v2 setWithArray:v4];

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v6 = [v5 setByAddingObject:*MEMORY[0x1E69596A8]];

    v5 = v6;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_filteredDataclassesForAccountClass:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"primary"])
  {
    [AADataclassManager _filteredDataclassesForAccountClass:];
  }

  if ([v4 isEqualToString:@"basic"])
  {
    v5 = [(AADataclassManager *)self allowListedDataclassesForAppleAccountClassBasic];
LABEL_7:
    v6 = v5;
    goto LABEL_9;
  }

  if ([v4 isEqualToString:@"full"])
  {
    v5 = [(AADataclassManager *)self allowListedDataclassesForAppleAccountClassFull];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (id)filteredServerProvidedFeatures:(id)a3 forAccount:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [AADataclassManager filteredServerProvidedFeatures:forAccount:];
    if (v6)
    {
      goto LABEL_3;
    }
  }

  [AADataclassManager filteredServerProvidedFeatures:forAccount:];
LABEL_3:
  v8 = [MEMORY[0x1E695DFD8] setWithSet:v6];
  v9 = [v8 mutableCopy];

  if (!+[AAPreferences isMomentsDataclassEnabled])
  {
    [v9 removeObject:*MEMORY[0x1E69596B0]];
  }

  v10 = *MEMORY[0x1E6959700];
  if (([v9 containsObject:*MEMORY[0x1E6959700]] & 1) == 0 && objc_msgSend(v9, "containsObject:", *MEMORY[0x1E6959718]) && (objc_msgSend(v7, "aa_isManagedAppleID") & 1) == 0)
  {
    [v9 addObject:v10];
  }

  v11 = [v7 aa_accountClass];
  v12 = [v11 isEqualToString:@"basic"];

  if ((v12 & 1) == 0)
  {
    v13 = *MEMORY[0x1E69596D8];
    if (([v9 containsObject:*MEMORY[0x1E69596D8]] & 1) == 0)
    {
      if ([v9 containsObject:*MEMORY[0x1E6959718]])
      {
        [v9 addObject:v13];
      }
    }
  }

  v14 = [MEMORY[0x1E695DFA8] setWithArray:MEMORY[0x1E695E0F0]];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = v9;
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v23 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [AADataclassManager filteredServerProvidedFeatures:forAccount:];
        }

        if ([(AADataclassManager *)self shouldProvisionDataclass:v20 forAccount:v7, v23])
        {
          [v14 addObject:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v17);
  }

  v21 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (AADataclassManager)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[AADataclassManager sharedManager];
  }

  v3 = sharedManager_sharedManager;

  return v3;
}

uint64_t __35__AADataclassManager_sharedManager__block_invoke()
{
  sharedManager_sharedManager = objc_alloc_init(AADataclassManager);

  return MEMORY[0x1EEE66BB8]();
}

- (AADataclassManager)init
{
  v3 = [MEMORY[0x1E6959A48] defaultStore];
  v4 = [(AADataclassManager *)self initWithAccountStore:v3];

  return v4;
}

- (AADataclassManager)initWithAccountStore:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = AADataclassManager;
  v6 = [(AADataclassManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
    v8 = objc_alloc_init(AAAccountStoreProxy);
    storeProxy = v7->_storeProxy;
    v7->_storeProxy = v8;
  }

  return v7;
}

+ (id)dataclassBundleMap
{
  if (dataclassBundleMap_onceToken != -1)
  {
    +[AADataclassManager dataclassBundleMap];
  }

  v3 = dataclassBundleMap_bundleIdentifierDictionary;

  return v3;
}

void __40__AADataclassManager_dataclassBundleMap__block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v2 setObject:@"com.apple.mobilesafari" forKeyedSubscript:*MEMORY[0x1E6959608]];
  [v2 setObject:@"com.apple.mobilecal" forKeyedSubscript:*MEMORY[0x1E6959630]];
  [v2 setObject:@"com.apple.MobileAddressBook" forKeyedSubscript:*MEMORY[0x1E6959640]];
  [v2 setObject:@"com.apple.freeform" forKeyedSubscript:*MEMORY[0x1E6959668]];
  [v2 setObject:@"com.apple.Home" forKeyedSubscript:*MEMORY[0x1E6959678]];
  [v2 setObject:@"com.apple.mobilemail" forKeyedSubscript:*MEMORY[0x1E6959698]];
  [v2 setObject:@"com.apple.news" forKeyedSubscript:*MEMORY[0x1E69596B8]];
  [v2 setObject:@"com.apple.mobilenotes" forKeyedSubscript:*MEMORY[0x1E69596C0]];
  [v2 setObject:@"com.apple.reminders" forKeyedSubscript:*MEMORY[0x1E69596E0]];
  [v2 setObject:@"com.apple.stocks" forKeyedSubscript:*MEMORY[0x1E6959710]];
  [v2 setObject:@"com.apple.MobileSMS" forKeyedSubscript:*MEMORY[0x1E69596A8]];
  [v2 setObject:@"com.apple.Health" forKeyedSubscript:*MEMORY[0x1E6959670]];
  [v2 setObject:@"com.apple.DocumentsApp" forKeyedSubscript:*MEMORY[0x1E6959718]];
  [v2 setObject:@"com.apple.GenerativePlaygroundApp" forKeyedSubscript:*MEMORY[0x1E6959680]];
  [v2 setObject:@"com.apple.journal" forKeyedSubscript:*MEMORY[0x1E69596B0]];
  v0 = [v2 copy];
  v1 = dataclassBundleMap_bundleIdentifierDictionary;
  dataclassBundleMap_bundleIdentifierDictionary = v0;
}

- (id)appBundleIdentifierForDataclass:(id)a3
{
  v3 = a3;
  v4 = +[AADataclassManager dataclassBundleMap];
  v5 = [v4 objectForKey:v3];

  return v5;
}

- (BOOL)_isRestrictedForDataclass:(id)a3 account:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 isEqualToString:*MEMORY[0x1E6959600]];
  if (v6 && v7 && ![v6 aa_isAccountClass:@"primary"])
  {
    v10 = 0;
  }

  else
  {
    if (_isRestrictedForDataclass_account__onceToken != -1)
    {
      [AADataclassManager _isRestrictedForDataclass:account:];
    }

    v8 = [_isRestrictedForDataclass_account__dataclassToFeatureDictionary objectForKeyedSubscript:v5];
    if (v8)
    {
      v9 = [MEMORY[0x1E69ADFB8] sharedConnection];
      v10 = [v9 BOOLRestrictionForFeature:v8] == 2;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

void __56__AADataclassManager__isRestrictedForDataclass_account___block_invoke()
{
  v17[11] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69ADE28];
  v1 = *MEMORY[0x1E69596A0];
  v16[0] = *MEMORY[0x1E6959688];
  v16[1] = v1;
  v2 = *MEMORY[0x1E69ADF18];
  v17[0] = v0;
  v17[1] = v2;
  v3 = *MEMORY[0x1E69ADF60];
  v4 = *MEMORY[0x1E6959700];
  v16[2] = *MEMORY[0x1E69596F0];
  v16[3] = v4;
  v5 = *MEMORY[0x1E69ADE08];
  v17[2] = v3;
  v17[3] = v5;
  v6 = *MEMORY[0x1E69ADE20];
  v7 = *MEMORY[0x1E6959658];
  v16[4] = *MEMORY[0x1E6959600];
  v16[5] = v7;
  v8 = *MEMORY[0x1E69ADE78];
  v17[4] = v6;
  v17[5] = v8;
  v9 = *MEMORY[0x1E69ADE98];
  v10 = *MEMORY[0x1E6959678];
  v16[6] = *MEMORY[0x1E6959670];
  v16[7] = v10;
  v11 = *MEMORY[0x1E69ADEA0];
  v17[6] = v9;
  v17[7] = v11;
  v12 = *MEMORY[0x1E6959718];
  v16[8] = *MEMORY[0x1E69596B8];
  v16[9] = v12;
  v17[8] = *MEMORY[0x1E69ADF08];
  v17[9] = v0;
  v16[10] = *MEMORY[0x1E6959680];
  v17[10] = *MEMORY[0x1E69ADEC0];
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:11];
  v14 = _isRestrictedForDataclass_account__dataclassToFeatureDictionary;
  _isRestrictedForDataclass_account__dataclassToFeatureDictionary = v13;

  v15 = *MEMORY[0x1E69E9840];
}

- (id)userDefaultsDisabledDataclasses
{
  v2 = [(AADataclassManager *)self userDefaults];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.appleaccount"];
  }

  v5 = v4;

  v6 = [v5 valueForKey:@"DisabledDataclasses"];
  v7 = _AALogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [AADataclassManager userDefaultsDisabledDataclasses];
  }

  v8 = [MEMORY[0x1E695DFD8] setWithArray:v6];

  return v8;
}

- (BOOL)isSystemAppMCRestrictedOrRemovedForDataclass:(id)a3 forAccount:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([(AADataclassManager *)self _isRestrictedForDataclass:v6 account:a4])
  {
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "%@ is not available due to restrictions.", &v11, 0xCu);
    }

    v8 = 1;
  }

  else
  {
    v8 = [(AADataclassManager *)self _appStatusRestrictsProvisioningForDataclass:v6];
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)_appStatusRestrictsProvisioningForDataclass:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AADataclassManager *)self appBundleIdentifierForDataclass:v4];
  if (!v5)
  {
    v6 = _AALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [AADataclassManager _appStatusRestrictsProvisioningForDataclass:];
    }

    goto LABEL_13;
  }

  v6 = [AAAppStateProvider appStateForBundleID:v5];
  if (([v6 isInstalled]& 1) != 0)
  {
    if ([v6 isRestricted])
    {
      v7 = _AALogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v4;
        v8 = "%@ is not available with a restricted app.";
LABEL_11:
        _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, v8, &v12, 0xCu);
        goto LABEL_12;
      }

      goto LABEL_12;
    }

LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  if (![(AADataclassManager *)self _hideDataclassWhenAppRemoved:v4])
  {
    goto LABEL_13;
  }

  v7 = _AALogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v4;
    v8 = "%@ is not available when its app is removed.";
    goto LABEL_11;
  }

LABEL_12:

  v9 = 1;
LABEL_14:

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)_shouldShowDataclassWhenAppIsRemoved:(id)a3
{
  v3 = _shouldShowDataclassWhenAppIsRemoved__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    [AADataclassManager _shouldShowDataclassWhenAppIsRemoved:];
  }

  v5 = [_shouldShowDataclassWhenAppIsRemoved__dataclassesToKeep containsObject:v4];

  return v5;
}

void __59__AADataclassManager__shouldShowDataclassWhenAppIsRemoved___block_invoke()
{
  v6[6] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6959640];
  v6[0] = *MEMORY[0x1E6959630];
  v6[1] = v0;
  v1 = *MEMORY[0x1E6959678];
  v6[2] = *MEMORY[0x1E6959670];
  v6[3] = v1;
  v2 = *MEMORY[0x1E6959718];
  v6[4] = *MEMORY[0x1E69596E0];
  v6[5] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:6];
  v4 = _shouldShowDataclassWhenAppIsRemoved__dataclassesToKeep;
  _shouldShowDataclassWhenAppIsRemoved__dataclassesToKeep = v3;

  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)canAutoEnableDataclass:(id)a3 forAccount:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [AADataclassManager canAutoEnableDataclass:forAccount:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [AADataclassManager canAutoEnableDataclass:forAccount:];
LABEL_3:
  v9 = _AALogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    v23 = v6;
    _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "Checking if we need to auto-enable: %@", &v22, 0xCu);
  }

  if (![v8 aa_isPrimaryEmailVerified])
  {
    goto LABEL_17;
  }

  v10 = [(AADataclassManager *)self _userVisibleDataclasses];
  if ([v10 containsObject:v6])
  {
  }

  else
  {
    v11 = [(AADataclassManager *)self _nonVisibleServiceDataclass];
    v12 = [v11 containsObject:v6];

    if (!v12)
    {
LABEL_17:
      v13 = 1;
      goto LABEL_18;
    }
  }

  if (-[AADataclassManager _isRestrictedForDataclass:account:](self, "_isRestrictedForDataclass:account:", v6, v8) || [v6 isEqualToString:*MEMORY[0x1E6959600]] && +[AAPreferences isRunningInStoreDemoMode](AAPreferences, "isRunningInStoreDemoMode") || (objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E6959658]) & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E69596D0]) & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E69596A0]) & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E69596F0]) & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E69596A8]) & 1) != 0)
  {
    goto LABEL_17;
  }

  v18 = *MEMORY[0x1E6959698];
  if ([v6 isEqualToString:*MEMORY[0x1E6959698]])
  {
    v19 = +[AADataclassManager sharedManager];
    v20 = [v19 isSystemAppMCRestrictedOrRemovedForDataclass:v18 forAccount:v8];

    v13 = [v8 aa_needsEmailConfiguration] | v20;
  }

  else
  {
    if ([v6 isEqualToString:*MEMORY[0x1E6959670]] && +[AADeviceModelHelper isDeviceiPad](AADeviceModelHelper, "isDeviceiPad"))
    {
      v21 = _AALogSystem();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_1B6F6A000, v21, OS_LOG_TYPE_DEFAULT, "Health Dataclass. Setting auto-enable for iPad to false.", &v22, 2u);
      }

      goto LABEL_17;
    }

    v13 = 0;
  }

LABEL_18:
  if ([v8 aa_isManagedAppleID])
  {
    if ((([v8 aa_serverDisabledDataclass:v6] | v13) & 1) == 0)
    {
LABEL_20:
      v14 = _AALogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412290;
        v23 = v6;
        _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "Auto-enabling dataclass: %@", &v22, 0xCu);
      }

      v15 = 1;
      goto LABEL_27;
    }
  }

  else if ((v13 & 1) == 0)
  {
    goto LABEL_20;
  }

  v14 = _AALogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    v23 = v6;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "Skipping auto-enable for %@", &v22, 0xCu);
  }

  v15 = 0;
LABEL_27:

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)shouldProvisionDataclass:(id)a3 forAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    [AADataclassManager shouldProvisionDataclass:forAccount:];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_21:
    [AADataclassManager shouldProvisionDataclass:forAccount:];
    goto LABEL_3;
  }

  if (!v7)
  {
    goto LABEL_21;
  }

LABEL_3:
  if (!-[AADataclassManager isSystemAppMCRestrictedOrRemovedForDataclass:forAccount:](self, "isSystemAppMCRestrictedOrRemovedForDataclass:forAccount:", v6, v8) && (![v6 isEqualToString:*MEMORY[0x1E69596B0]] || +[AAPreferences isMomentsDataclassEnabled](AAPreferences, "isMomentsDataclassEnabled")))
  {
    v10 = [v8 aa_accountClass];
    if ([v10 isEqualToString:@"primary"])
    {
      v9 = 1;
LABEL_18:

      goto LABEL_19;
    }

    v11 = [(AADataclassManager *)self _filteredDataclassesForAccountClass:v10];
    if ([v11 containsObject:v6])
    {
      if ([v6 isEqualToString:*MEMORY[0x1E69596C0]])
      {
        v12 = [(AADataclassManager *)self _shouldProvisionNotesForAccount:v8];
      }

      else
      {
        if (![v6 isEqualToString:*MEMORY[0x1E69596E0]])
        {
          v9 = 1;
          goto LABEL_17;
        }

        v12 = [(AADataclassManager *)self _shouldProvisionRemindersForAccount:v8];
      }

      v9 = v12;
    }

    else
    {
      v9 = 0;
    }

LABEL_17:

    goto LABEL_18;
  }

  v9 = 0;
LABEL_19:

  return v9;
}

- (BOOL)_shouldProvisionNotesForAccount:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    [AADataclassManager _shouldProvisionNotesForAccount:];
  }

  v4 = [v3 aa_accountClass];
  if ([v4 isEqualToString:@"primary"])
  {

LABEL_10:
    v8 = 1;
    goto LABEL_11;
  }

  v5 = [v3 aa_accountClass];
  v6 = [v5 isEqualToString:@"full"];

  if ((v6 & 1) != 0 || ![v3 aa_isNotesMigrated])
  {
    goto LABEL_10;
  }

  v7 = _AALogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [AADataclassManager _shouldProvisionNotesForAccount:];
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (BOOL)_shouldProvisionRemindersForAccount:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    [AADataclassManager _shouldProvisionRemindersForAccount:];
  }

  v4 = [v3 aa_accountClass];
  if ([v4 isEqualToString:@"primary"])
  {

LABEL_10:
    v8 = 1;
    goto LABEL_11;
  }

  v5 = [v3 aa_accountClass];
  v6 = [v5 isEqualToString:@"full"];

  if ((v6 & 1) != 0 || ![v3 aa_isRemindersMigrated])
  {
    goto LABEL_10;
  }

  v7 = _AALogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [AADataclassManager _shouldProvisionRemindersForAccount:];
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (void)enableDataclassesWithoutLocalDataDataclassActionsForAccount:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(AADataclassManager *)self filterDataclassesForPossibleAutoEnablementForAccount:v6];
  if ([v8 count])
  {
    [(AADataclassManager *)self enableDataclassesWithoutLocalDataDataclassActionsForDataclasses:v8 fromAccount:v6 completion:v7];
  }

  else
  {
    v9 = _AALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[AADataclassManager enableDataclassesWithoutLocalDataDataclassActionsForAccount:completion:]";
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "%s - There are no auto-enableable dataclasses for account %@. Proceeding with save.", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v19 = __Block_byref_object_copy__5;
    v20 = __Block_byref_object_dispose__5;
    v21 = os_transaction_create();
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __93__AADataclassManager_enableDataclassesWithoutLocalDataDataclassActionsForAccount_completion___block_invoke;
    v15 = &unk_1E7C9BB20;
    v16 = v7;
    v17 = buf;
    v10 = _Block_copy(&v12);
    [(AAAccountStoreProxyProtocol *)self->_storeProxy saveAccount:v6 onAccountStore:self->_store withCompletionHandler:v10, v12, v13, v14, v15];

    _Block_object_dispose(buf, 8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __93__AADataclassManager_enableDataclassesWithoutLocalDataDataclassActionsForAccount_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = _AALogSystem();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __93__AADataclassManager_enableDataclassesWithoutLocalDataDataclassActionsForAccount_completion___block_invoke_cold_1();
    }

    v7 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "Save without auto-enableable dataclasses successful completed.", v10, 2u);
    }

    v7 = *(*(a1 + 32) + 16);
  }

  v7();
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
}

- (void)enableDataclassesWithoutLocalDataDataclassActionsForDataclasses:(id)a3 fromAccount:(id)a4 completion:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    [AADataclassManager enableDataclassesWithoutLocalDataDataclassActionsForDataclasses:fromAccount:completion:];
  }

  if (!v9)
  {
    [AADataclassManager enableDataclassesWithoutLocalDataDataclassActionsForDataclasses:fromAccount:completion:];
  }

  if (!v10)
  {
    [AADataclassManager enableDataclassesWithoutLocalDataDataclassActionsForDataclasses:fromAccount:completion:];
  }

  v11 = _AALogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = v9;
    v21 = 2114;
    v22 = v8;
    _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "Attempting to auto-enable dataclasses for account (%@): %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __109__AADataclassManager_enableDataclassesWithoutLocalDataDataclassActionsForDataclasses_fromAccount_completion___block_invoke;
  v15[3] = &unk_1E7C9BB70;
  objc_copyWeak(&v18, buf);
  v12 = v10;
  v17 = v12;
  v15[4] = self;
  v13 = v9;
  v16 = v13;
  [(AADataclassManager *)self _buildAutoEnableableDataclassesAndActionsForAccount:v13 dataclassesForEnablement:v8 completion:v15];

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);

  v14 = *MEMORY[0x1E69E9840];
}

void __109__AADataclassManager_enableDataclassesWithoutLocalDataDataclassActionsForDataclasses_fromAccount_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:@"dataclasses"];
    v8 = [v5 objectForKeyedSubscript:@"dataclassActions"];
    v9 = _AALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v7;
      _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "Filtered dataclasses: %@", &buf, 0xCu);
    }

    v10 = _AALogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v8;
      _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "Filtered dataclass actions: %@", &buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    if (WeakRetained)
    {
      v12 = [*(a1 + 32) _shouldVerifyAccountSave];
      *&buf = 0;
      *(&buf + 1) = &buf;
      v31 = 0x3032000000;
      v32 = __Block_byref_object_copy__5;
      v33 = __Block_byref_object_dispose__5;
      v34 = os_transaction_create();
      v22 = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __109__AADataclassManager_enableDataclassesWithoutLocalDataDataclassActionsForDataclasses_fromAccount_completion___block_invoke_144;
      v25 = &unk_1E7C9BB48;
      v14 = *(a1 + 40);
      v13 = a1 + 40;
      v26 = v14;
      v15 = v8;
      v27 = v15;
      v28 = *(v13 + 8);
      p_buf = &buf;
      v16 = _Block_copy(&v22);
      [WeakRetained[2] saveAccount:*v13 onAccountStore:WeakRetained[1] withDataclassActions:v15 doVerify:v12 completion:{v16, v22, v23, v24, v25}];

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v18 = _AALogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __109__AADataclassManager_enableDataclassesWithoutLocalDataDataclassActionsForDataclasses_fromAccount_completion___block_invoke_cold_1(v18);
      }

      v19 = *(a1 + 48);
      v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AASignInErrors" code:-8015 userInfo:0];
      (*(v19 + 16))(v19, 0, v20);
    }
  }

  else
  {
    v17 = _AALogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __109__AADataclassManager_enableDataclassesWithoutLocalDataDataclassActionsForDataclasses_fromAccount_completion___block_invoke_cold_2();
    }

    (*(*(a1 + 48) + 16))();
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __109__AADataclassManager_enableDataclassesWithoutLocalDataDataclassActionsForDataclasses_fromAccount_completion___block_invoke_144(void *a1, int a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _AALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    v8 = a1[4];
    v9 = a1[5];
    if (a2)
    {
      v7 = @"YES";
    }

    v14 = 138412802;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "Account save with dataclass actions had success (%@) for account (%@) with dataclass actions: %@", &v14, 0x20u);
  }

  if (v5)
  {
    v10 = _AALogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __109__AADataclassManager_enableDataclassesWithoutLocalDataDataclassActionsForDataclasses_fromAccount_completion___block_invoke_144_cold_1();
    }
  }

  (*(a1[6] + 16))();
  v11 = *(a1[7] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = 0;

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_buildAutoEnableableDataclassesAndActionsForAccount:(id)a3 dataclassesForEnablement:(id)a4 completion:(id)a5
{
  v47 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v30 = [v9 mutableCopy];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v41;
    do
    {
      v15 = 0;
      do
      {
        if (*v41 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [v8 setEnabled:1 forDataclass:{*(*(&v40 + 1) + 8 * v15++), v30}];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v13);
  }

  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17 = [v8 aa_isPrimaryEmailVerified];
  store = self->_store;
  v39 = 0;
  v19 = [(ACAccountStore *)store dataclassActionsForAccountSave:v8 error:&v39];
  v20 = v39;
  v21 = v20;
  if (v19)
  {
    v22 = _AALogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v45 = v19;
      _os_log_impl(&dword_1B6F6A000, v22, OS_LOG_TYPE_DEFAULT, "We have potential dataclass actions: %@", buf, 0xCu);
    }

    v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v31 = MEMORY[0x1E69E9820];
    v32 = 3221225472;
    v33 = __110__AADataclassManager__buildAutoEnableableDataclassesAndActionsForAccount_dataclassesForEnablement_completion___block_invoke;
    v34 = &unk_1E7C9BB98;
    v35 = self;
    v36 = v23;
    v24 = v30;
    v37 = v30;
    v38 = v8;
    v25 = v23;
    [v19 enumerateKeysAndObjectsUsingBlock:&v31];
    v26 = [v25 copy];
    [v16 setObject:v26 forKeyedSubscript:@"dataclassActions"];

    goto LABEL_12;
  }

  v24 = v30;
  if (!v20)
  {
LABEL_12:
    if (v17 != [v8 aa_isPrimaryEmailVerified])
    {
      [v8 aa_setPrimaryEmailVerified:1];
    }

    v27 = [v24 copy];
    [v16 setObject:v27 forKeyedSubscript:@"dataclasses"];

    v10[2](v10, v16, 0);
    goto LABEL_19;
  }

  v28 = _AALogSystem();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    [AADataclassManager _buildAutoEnableableDataclassesAndActionsForAccount:dataclassesForEnablement:completion:];
  }

  (v10)[2](v10, 0, v21);
LABEL_19:

  v29 = *MEMORY[0x1E69E9840];
}

void __110__AADataclassManager__buildAutoEnableableDataclassesAndActionsForAccount_dataclassesForEnablement_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v6 count])
  {
    v7 = [v6 count];
    v8 = _AALogSystem();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7 == 1)
    {
      if (v9)
      {
        v10 = [v6 objectAtIndexedSubscript:0];
        v15 = 134218242;
        v16 = [v10 type];
        v17 = 2112;
        v18 = v5;
        _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "Action %lu available for %@", &v15, 0x16u);
      }

      v11 = [v6 firstObject];
      if ([a1[4] isDataclassActionSafeForAutoEnablement:v11])
      {
        [a1[5] setObject:v11 forKey:v5];
      }

      else
      {
        v12 = _ACLogSystem();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v11 type];
          v15 = 138412546;
          v16 = v5;
          v17 = 2048;
          v18 = v13;
          _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "Not enabling dataclass %@ as only action %lu is not safe for auto enablement.", &v15, 0x16u);
        }

        [a1[6] removeObject:v5];
        [a1[7] setEnabled:0 forDataclass:v5];
      }
    }

    else
    {
      if (v9)
      {
        v15 = 138412290;
        v16 = v5;
        _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "Unable to auto-enable dataclass %@ as enablement requires a user decision.", &v15, 0xCu);
      }

      [a1[6] removeObject:v5];
      [a1[7] setEnabled:0 forDataclass:v5];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)filterDataclassesForPossibleAutoEnablementForAccount:(id)a3
{
  v4 = a3;
  v5 = [(AADataclassManager *)self userDefaultsDisabledDataclasses];
  v6 = [v4 provisionedDataclasses];
  v7 = [v6 allObjects];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__AADataclassManager_filterDataclassesForPossibleAutoEnablementForAccount___block_invoke;
  v12[3] = &unk_1E7C9BBC0;
  v13 = v4;
  v14 = v5;
  v8 = v5;
  v9 = v4;
  v10 = [v7 aaf_filter:v12];

  return v10;
}

uint64_t __75__AADataclassManager_filterDataclassesForPossibleAutoEnablementForAccount___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![*(a1 + 32) isProvisionedForDataclass:v3] || (objc_msgSend(*(a1 + 32), "isEnabledForDataclass:", v3) & 1) != 0)
  {
    goto LABEL_6;
  }

  v4 = _AALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __75__AADataclassManager_filterDataclassesForPossibleAutoEnablementForAccount___block_invoke_cold_1();
  }

  if ([*(a1 + 40) containsObject:v3])
  {
LABEL_6:
    v5 = 0;
  }

  else
  {
    v7 = +[AADataclassManager sharedManager];
    v5 = [v7 canAutoEnableDataclass:v3 forAccount:*(a1 + 32)];
  }

  return v5;
}

- (BOOL)_shouldVerifyAccountSave
{
  if (![MEMORY[0x1E6985DD8] deviceIsAudioAccessory])
  {
    return 1;
  }

  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.HPSetup"];

  if (!v4)
  {
    return 1;
  }

  v5 = _AALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AADataclassManager _shouldVerifyAccountSave];
  }

  return 0;
}

- (void)_filteredDataclassesForAccountClass:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)filteredServerProvidedFeatures:forAccount:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"account" object:? file:? lineNumber:? description:?];
}

- (void)filteredServerProvidedFeatures:forAccount:.cold.2()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"serverProvidedFeatures" object:? file:? lineNumber:? description:?];
}

- (void)userDefaultsDisabledDataclasses
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_appStatusRestrictsProvisioningForDataclass:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)canAutoEnableDataclass:forAccount:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"dataclass" object:? file:? lineNumber:? description:?];
}

- (void)canAutoEnableDataclass:forAccount:.cold.2()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"account" object:? file:? lineNumber:? description:?];
}

- (void)shouldProvisionDataclass:forAccount:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"dataclass" object:? file:? lineNumber:? description:?];
}

- (void)shouldProvisionDataclass:forAccount:.cold.2()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"account" object:? file:? lineNumber:? description:?];
}

- (void)_shouldProvisionNotesForAccount:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"account" object:? file:? lineNumber:? description:?];
}

- (void)_shouldProvisionNotesForAccount:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_shouldProvisionRemindersForAccount:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"account" object:? file:? lineNumber:? description:?];
}

- (void)_shouldProvisionRemindersForAccount:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __93__AADataclassManager_enableDataclassesWithoutLocalDataDataclassActionsForAccount_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "Failed to save account without auto-enableable dataclasses with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)enableDataclassesWithoutLocalDataDataclassActionsForDataclasses:fromAccount:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"dataclasses" object:? file:? lineNumber:? description:?];
}

- (void)enableDataclassesWithoutLocalDataDataclassActionsForDataclasses:fromAccount:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"account" object:? file:? lineNumber:? description:?];
}

- (void)enableDataclassesWithoutLocalDataDataclassActionsForDataclasses:fromAccount:completion:.cold.3()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void __109__AADataclassManager_enableDataclassesWithoutLocalDataDataclassActionsForDataclasses_fromAccount_completion___block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "Unable to build list of dataclasses and actions for enablement %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __109__AADataclassManager_enableDataclassesWithoutLocalDataDataclassActionsForDataclasses_fromAccount_completion___block_invoke_144_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "Encountered error when saving with dataclass actions: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_buildAutoEnableableDataclassesAndActionsForAccount:dataclassesForEnablement:completion:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, v0, v1, "Failed to get dataclass actions for account, error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end