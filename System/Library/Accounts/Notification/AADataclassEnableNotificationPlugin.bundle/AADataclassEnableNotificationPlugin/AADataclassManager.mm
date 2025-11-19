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
@end

@implementation AADataclassManager

- (id)allowListedDataclassesForAppleAccountClassBasic
{
  v10[5] = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29EDB8E50];
  v3 = *MEMORY[0x29EDB80C0];
  v10[0] = *MEMORY[0x29EDB80B0];
  v10[1] = v3;
  v4 = *MEMORY[0x29EDB8138];
  v10[2] = *MEMORY[0x29EDB8110];
  v10[3] = v4;
  v10[4] = *MEMORY[0x29EDB8158];
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], a2, v10, 5);
  v7 = objc_msgSend_setWithArray_(v2, v6, v5);

  v8 = *MEMORY[0x29EDCA608];

  return v7;
}

- (id)allowListedDataclassesForAppleAccountClassFull
{
  v13[6] = *MEMORY[0x29EDCA608];
  v3 = objc_msgSend_allowListedDataclassesForAppleAccountClassBasic(self, a2, v2);
  v4 = *MEMORY[0x29EDB8098];
  v13[0] = *MEMORY[0x29EDB8080];
  v13[1] = v4;
  v5 = *MEMORY[0x29EDB80A8];
  v13[2] = *MEMORY[0x29EDB80A0];
  v13[3] = v5;
  v6 = *MEMORY[0x29EDB8180];
  v13[4] = *MEMORY[0x29EDB8150];
  v13[5] = v6;
  v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v7, v13, 6);
  v10 = objc_msgSend_setByAddingObjectsFromArray_(v3, v9, v8);

  v11 = *MEMORY[0x29EDCA608];

  return v10;
}

- (id)_userVisibleDataclasses
{
  v25[22] = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29EDB8E50];
  v3 = *MEMORY[0x29EDB8080];
  v25[0] = *MEMORY[0x29EDB80E8];
  v25[1] = v3;
  v4 = *MEMORY[0x29EDB8168];
  v25[2] = *MEMORY[0x29EDB8120];
  v25[3] = v4;
  v5 = *MEMORY[0x29EDB80B0];
  v25[4] = *MEMORY[0x29EDB8088];
  v25[5] = v5;
  v6 = *MEMORY[0x29EDB80D0];
  v25[6] = *MEMORY[0x29EDB80C0];
  v25[7] = v6;
  v7 = *MEMORY[0x29EDB80E0];
  v25[8] = *MEMORY[0x29EDB80F0];
  v25[9] = v7;
  v8 = *MEMORY[0x29EDB8108];
  v25[10] = *MEMORY[0x29EDB80D8];
  v25[11] = v8;
  v9 = *MEMORY[0x29EDB8130];
  v25[12] = *MEMORY[0x29EDB8110];
  v25[13] = v9;
  v10 = *MEMORY[0x29EDB8148];
  v25[14] = *MEMORY[0x29EDB8138];
  v25[15] = v10;
  v11 = *MEMORY[0x29EDB8170];
  v25[16] = *MEMORY[0x29EDB8158];
  v25[17] = v11;
  v12 = *MEMORY[0x29EDB8180];
  v25[18] = *MEMORY[0x29EDB8178];
  v25[19] = v12;
  v13 = *MEMORY[0x29EDB80F8];
  v25[20] = *MEMORY[0x29EDB8140];
  v25[21] = v13;
  v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], a2, v25, 22);
  v16 = objc_msgSend_setWithArray_(v2, v15, v14);

  if (objc_msgSend_isMomentsDataclassEnabled(MEMORY[0x29EDBE378], v17, v18))
  {
    v20 = objc_msgSend_setByAddingObject_(v16, v19, *MEMORY[0x29EDB8128]);

    v16 = v20;
  }

  if (_os_feature_enabled_impl())
  {
    v22 = objc_msgSend_setByAddingObject_(v16, v21, *MEMORY[0x29EDB80C8]);

    v16 = v22;
  }

  v23 = *MEMORY[0x29EDCA608];

  return v16;
}

- (id)_nonVisibleServiceDataclass
{
  v8[1] = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29EDB8E50];
  v8[0] = *MEMORY[0x29EDB8100];
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], a2, v8, 1);
  v5 = objc_msgSend_setWithArray_(v2, v4, v3);

  v6 = *MEMORY[0x29EDCA608];

  return v5;
}

- (id)denyListedMacOSDataclasses
{
  v11[2] = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29EDB8E50];
  v3 = *MEMORY[0x29EDB80E8];
  v11[0] = *MEMORY[0x29EDB8080];
  v11[1] = v3;
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], a2, v11, 2);
  v6 = objc_msgSend_setWithArray_(v2, v5, v4);

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v8 = objc_msgSend_setByAddingObject_(v6, v7, *MEMORY[0x29EDB8120]);

    v6 = v8;
  }

  v9 = *MEMORY[0x29EDCA608];

  return v6;
}

- (id)_filteredDataclassesForAccountClass:(id)a3
{
  v4 = a3;
  if (objc_msgSend_isEqualToString_(v4, v5, *MEMORY[0x29EDBE2C0]))
  {
    sub_29C85C760();
  }

  if (objc_msgSend_isEqualToString_(v4, v6, *MEMORY[0x29EDBE2B0]))
  {
    v9 = objc_msgSend_allowListedDataclassesForAppleAccountClassBasic(self, v7, v8);
LABEL_7:
    v12 = v9;
    goto LABEL_9;
  }

  if (objc_msgSend_isEqualToString_(v4, v7, *MEMORY[0x29EDBE2B8]))
  {
    v9 = objc_msgSend_allowListedDataclassesForAppleAccountClassFull(self, v10, v11);
    goto LABEL_7;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (id)filteredServerProvidedFeatures:(id)a3 forAccount:(id)a4
{
  v41 = *MEMORY[0x29EDCA608];
  v6 = a3;
  v8 = a4;
  if (v8)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_29C85C7CC();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  sub_29C85C840();
LABEL_3:
  v9 = objc_msgSend_setWithSet_(MEMORY[0x29EDB8E50], v7, v6);
  v12 = objc_msgSend_mutableCopy(v9, v10, v11);

  if ((objc_msgSend_isMomentsDataclassEnabled(MEMORY[0x29EDBE378], v13, v14) & 1) == 0)
  {
    objc_msgSend_removeObject_(v12, v15, *MEMORY[0x29EDB8128]);
  }

  v16 = *MEMORY[0x29EDB8168];
  if ((objc_msgSend_containsObject_(v12, v15, *MEMORY[0x29EDB8168]) & 1) == 0 && objc_msgSend_containsObject_(v12, v17, *MEMORY[0x29EDB8180]) && (objc_msgSend_aa_isManagedAppleID(v8, v17, v18) & 1) == 0)
  {
    objc_msgSend_addObject_(v12, v17, v16);
  }

  v19 = objc_msgSend_aa_accountClass(v8, v17, v18);
  isEqualToString = objc_msgSend_isEqualToString_(v19, v20, *MEMORY[0x29EDBE2B0]);

  if ((isEqualToString & 1) == 0)
  {
    v23 = *MEMORY[0x29EDB8150];
    if ((objc_msgSend_containsObject_(v12, v22, *MEMORY[0x29EDB8150]) & 1) == 0)
    {
      if (objc_msgSend_containsObject_(v12, v22, *MEMORY[0x29EDB8180]))
      {
        objc_msgSend_addObject_(v12, v22, v23);
      }
    }
  }

  v24 = objc_msgSend_setWithArray_(MEMORY[0x29EDB8E20], v22, MEMORY[0x29EDB8E90]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v25 = v12;
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v36, v40, 16);
  if (v27)
  {
    v28 = v27;
    v29 = *v37;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v37 != v29)
        {
          objc_enumerationMutation(v25);
        }

        v31 = *(*(&v36 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_29C85C8B4();
        }

        if (objc_msgSend_shouldProvisionDataclass_forAccount_(self, v32, v31, v8, v36))
        {
          objc_msgSend_addObject_(v24, v33, v31);
        }
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v33, &v36, v40, 16);
    }

    while (v28);
  }

  v34 = *MEMORY[0x29EDCA608];

  return v24;
}

+ (AADataclassManager)sharedManager
{
  if (qword_2A1A10CE0 != -1)
  {
    sub_29C85C8E0();
  }

  v3 = qword_2A1A10CD8;

  return v3;
}

- (AADataclassManager)init
{
  v4 = objc_msgSend_defaultStore(MEMORY[0x29EDB83C8], a2, v2);
  v6 = objc_msgSend_initWithAccountStore_(self, v5, v4);

  return v6;
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
    v8 = objc_alloc_init(MEMORY[0x29EDBE2F8]);
    storeProxy = v7->_storeProxy;
    v7->_storeProxy = v8;
  }

  return v7;
}

+ (id)dataclassBundleMap
{
  if (qword_2A17951B0 != -1)
  {
    sub_29C85C8F4();
  }

  v3 = qword_2A17951A8;

  return v3;
}

- (id)appBundleIdentifierForDataclass:(id)a3
{
  v3 = a3;
  v6 = objc_msgSend_dataclassBundleMap(AADataclassManager, v4, v5);
  v8 = objc_msgSend_objectForKey_(v6, v7, v3);

  return v8;
}

- (BOOL)_isRestrictedForDataclass:(id)a3 account:(id)a4
{
  v5 = a3;
  v6 = a4;
  isEqualToString = objc_msgSend_isEqualToString_(v5, v7, *MEMORY[0x29EDB8080]);
  if (v6 && isEqualToString && !objc_msgSend_aa_isAccountClass_(v6, v9, *MEMORY[0x29EDBE2C0]))
  {
    v15 = 0;
  }

  else
  {
    if (qword_2A1A10CF0 != -1)
    {
      sub_29C85C908();
    }

    v12 = objc_msgSend_objectForKeyedSubscript_(qword_2A1A10CE8, v9, v5);
    if (v12)
    {
      v13 = objc_msgSend_sharedConnection(MEMORY[0x29EDC58E0], v10, v11);
      v15 = objc_msgSend_BOOLRestrictionForFeature_(v13, v14, v12) == 2;
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (id)userDefaultsDisabledDataclasses
{
  v3 = objc_msgSend_userDefaults(self, a2, v2);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x29EDB8E78]);
    v5 = objc_msgSend_initWithSuiteName_(v6, v7, @"com.apple.appleaccount");
  }

  v8 = v5;

  v10 = objc_msgSend_valueForKey_(v8, v9, @"DisabledDataclasses");
  v11 = _AALogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_29C85C91C();
  }

  v13 = objc_msgSend_setWithArray_(MEMORY[0x29EDB8E50], v12, v10);

  return v13;
}

- (BOOL)isSystemAppMCRestrictedOrRemovedForDataclass:(id)a3 forAccount:(id)a4
{
  v15 = *MEMORY[0x29EDCA608];
  v6 = a3;
  if (objc_msgSend__isRestrictedForDataclass_account_(self, v7, v6, a4))
  {
    v9 = _AALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_29C856000, v9, OS_LOG_TYPE_DEFAULT, "%@ is not available due to restrictions.", &v13, 0xCu);
    }

    v10 = 1;
  }

  else
  {
    v10 = objc_msgSend__appStatusRestrictsProvisioningForDataclass_(self, v8, v6);
  }

  v11 = *MEMORY[0x29EDCA608];
  return v10;
}

- (BOOL)_appStatusRestrictsProvisioningForDataclass:(id)a3
{
  v20 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v7 = objc_msgSend_appBundleIdentifierForDataclass_(self, v5, v4);
  if (!v7)
  {
    v8 = _AALogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_29C85C98C();
    }

    goto LABEL_13;
  }

  v8 = objc_msgSend_appStateForBundleID_(AAAppStateProvider, v6, v7);
  if (objc_msgSend_isInstalled(v8, v9, v10))
  {
    if (objc_msgSend_isRestricted(v8, v11, v12))
    {
      v13 = _AALogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = v4;
        v14 = "%@ is not available with a restricted app.";
LABEL_11:
        _os_log_impl(&dword_29C856000, v13, OS_LOG_TYPE_DEFAULT, v14, &v18, 0xCu);
        goto LABEL_12;
      }

      goto LABEL_12;
    }

LABEL_13:
    v15 = 0;
    goto LABEL_14;
  }

  if (!objc_msgSend__hideDataclassWhenAppRemoved_(self, v11, v4))
  {
    goto LABEL_13;
  }

  v13 = _AALogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v4;
    v14 = "%@ is not available when its app is removed.";
    goto LABEL_11;
  }

LABEL_12:

  v15 = 1;
LABEL_14:

  v16 = *MEMORY[0x29EDCA608];
  return v15;
}

- (BOOL)_shouldShowDataclassWhenAppIsRemoved:(id)a3
{
  v3 = qword_2A17951C0;
  v5 = a3;
  if (v3 != -1)
  {
    sub_29C85C9FC();
  }

  v6 = objc_msgSend_containsObject_(qword_2A17951B8, v4, v5);

  return v6;
}

- (BOOL)canAutoEnableDataclass:(id)a3 forAccount:(id)a4
{
  v39 = *MEMORY[0x29EDCA608];
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
    sub_29C85CA10();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  sub_29C85CA84();
LABEL_3:
  v9 = _AALogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v37 = 138412290;
    v38 = v6;
    _os_log_impl(&dword_29C856000, v9, OS_LOG_TYPE_DEFAULT, "Checking if we need to auto-enable: %@", &v37, 0xCu);
  }

  if (!objc_msgSend_aa_isPrimaryEmailVerified(v8, v10, v11))
  {
    goto LABEL_17;
  }

  v14 = objc_msgSend__userVisibleDataclasses(self, v12, v13);
  if (objc_msgSend_containsObject_(v14, v15, v6))
  {
  }

  else
  {
    v18 = objc_msgSend__nonVisibleServiceDataclass(self, v16, v17);
    v20 = objc_msgSend_containsObject_(v18, v19, v6);

    if (!v20)
    {
LABEL_17:
      v22 = 1;
      goto LABEL_18;
    }
  }

  if (objc_msgSend__isRestrictedForDataclass_account_(self, v12, v6, v8) & 1) != 0 || objc_msgSend_isEqualToString_(v6, v12, *MEMORY[0x29EDB8080]) && (objc_msgSend_isRunningInStoreDemoMode(MEMORY[0x29EDBE378], v12, v21) & 1) != 0 || (objc_msgSend_isEqualToString_(v6, v12, *MEMORY[0x29EDB80D0]) & 1) != 0 || (objc_msgSend_isEqualToString_(v6, v12, *MEMORY[0x29EDB8148]) & 1) != 0 || (objc_msgSend_isEqualToString_(v6, v12, *MEMORY[0x29EDB8118]) & 1) != 0 || (objc_msgSend_isEqualToString_(v6, v12, *MEMORY[0x29EDB8160]) & 1) != 0 || (objc_msgSend_isEqualToString_(v6, v12, *MEMORY[0x29EDB8120]))
  {
    goto LABEL_17;
  }

  v28 = *MEMORY[0x29EDB8110];
  if (objc_msgSend_isEqualToString_(v6, v12, *MEMORY[0x29EDB8110]))
  {
    v31 = objc_msgSend_sharedManager(AADataclassManager, v29, v30);
    isSystemAppMCRestrictedOrRemovedForDataclass_forAccount = objc_msgSend_isSystemAppMCRestrictedOrRemovedForDataclass_forAccount_(v31, v32, v28, v8);

    v22 = objc_msgSend_aa_needsEmailConfiguration(v8, v34, v35) | isSystemAppMCRestrictedOrRemovedForDataclass_forAccount;
  }

  else
  {
    if (objc_msgSend_isEqualToString_(v6, v29, *MEMORY[0x29EDB80E8]) && objc_msgSend_isDeviceiPad(AADeviceModelHelper, v12, v13))
    {
      v36 = _AALogSystem();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v37) = 0;
        _os_log_impl(&dword_29C856000, v36, OS_LOG_TYPE_DEFAULT, "Health Dataclass. Setting auto-enable for iPad to false.", &v37, 2u);
      }

      goto LABEL_17;
    }

    v22 = 0;
  }

LABEL_18:
  if (objc_msgSend_aa_isManagedAppleID(v8, v12, v13))
  {
    if (((objc_msgSend_aa_serverDisabledDataclass_(v8, v23, v6) | v22) & 1) == 0)
    {
LABEL_20:
      v24 = _AALogSystem();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v37 = 138412290;
        v38 = v6;
        _os_log_impl(&dword_29C856000, v24, OS_LOG_TYPE_DEFAULT, "Auto-enabling dataclass: %@", &v37, 0xCu);
      }

      v25 = 1;
      goto LABEL_27;
    }
  }

  else if ((v22 & 1) == 0)
  {
    goto LABEL_20;
  }

  v24 = _AALogSystem();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v37 = 138412290;
    v38 = v6;
    _os_log_impl(&dword_29C856000, v24, OS_LOG_TYPE_DEFAULT, "Skipping auto-enable for %@", &v37, 0xCu);
  }

  v25 = 0;
LABEL_27:

  v26 = *MEMORY[0x29EDCA608];
  return v25;
}

- (BOOL)shouldProvisionDataclass:(id)a3 forAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  v9 = v7;
  if (!v6)
  {
    sub_29C85CAF8();
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_21:
    sub_29C85CB6C();
    goto LABEL_3;
  }

  if (!v7)
  {
    goto LABEL_21;
  }

LABEL_3:
  if ((objc_msgSend_isSystemAppMCRestrictedOrRemovedForDataclass_forAccount_(self, v8, v6, v9) & 1) == 0 && (!objc_msgSend_isEqualToString_(v6, v10, *MEMORY[0x29EDB8128]) || objc_msgSend_isMomentsDataclassEnabled(MEMORY[0x29EDBE378], v12, v13)))
  {
    v14 = objc_msgSend_aa_accountClass(v9, v12, v13);
    if (objc_msgSend_isEqualToString_(v14, v15, *MEMORY[0x29EDBE2C0]))
    {
      v11 = 1;
LABEL_18:

      goto LABEL_19;
    }

    v17 = objc_msgSend__filteredDataclassesForAccountClass_(self, v16, v14);
    if (objc_msgSend_containsObject_(v17, v18, v6))
    {
      if (objc_msgSend_isEqualToString_(v6, v19, *MEMORY[0x29EDB8138]))
      {
        shouldProvisionNotesForAccount = objc_msgSend__shouldProvisionNotesForAccount_(self, v20, v9);
      }

      else
      {
        if (!objc_msgSend_isEqualToString_(v6, v20, *MEMORY[0x29EDB8158]))
        {
          v11 = 1;
          goto LABEL_17;
        }

        shouldProvisionNotesForAccount = objc_msgSend__shouldProvisionRemindersForAccount_(self, v22, v9);
      }

      v11 = shouldProvisionNotesForAccount;
    }

    else
    {
      v11 = 0;
    }

LABEL_17:

    goto LABEL_18;
  }

  v11 = 0;
LABEL_19:

  return v11;
}

- (BOOL)_shouldProvisionNotesForAccount:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    sub_29C85CBE0();
  }

  v6 = objc_msgSend_aa_accountClass(v5, v3, v4);
  if (objc_msgSend_isEqualToString_(v6, v7, *MEMORY[0x29EDBE2C0]))
  {

LABEL_10:
    v16 = 1;
    goto LABEL_11;
  }

  v10 = objc_msgSend_aa_accountClass(v5, v8, v9);
  isEqualToString = objc_msgSend_isEqualToString_(v10, v11, *MEMORY[0x29EDBE2B8]);

  if ((isEqualToString & 1) != 0 || !objc_msgSend_aa_isNotesMigrated(v5, v13, v14))
  {
    goto LABEL_10;
  }

  v15 = _AALogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_29C85CC54();
  }

  v16 = 0;
LABEL_11:

  return v16;
}

- (BOOL)_shouldProvisionRemindersForAccount:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    sub_29C85CCC4();
  }

  v6 = objc_msgSend_aa_accountClass(v5, v3, v4);
  if (objc_msgSend_isEqualToString_(v6, v7, *MEMORY[0x29EDBE2C0]))
  {

LABEL_10:
    v16 = 1;
    goto LABEL_11;
  }

  v10 = objc_msgSend_aa_accountClass(v5, v8, v9);
  isEqualToString = objc_msgSend_isEqualToString_(v10, v11, *MEMORY[0x29EDBE2B8]);

  if ((isEqualToString & 1) != 0 || !objc_msgSend_aa_isRemindersMigrated(v5, v13, v14))
  {
    goto LABEL_10;
  }

  v15 = _AALogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_29C85CD38();
  }

  v16 = 0;
LABEL_11:

  return v16;
}

- (void)enableDataclassesWithoutLocalDataDataclassActionsForAccount:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x29EDCA608];
  v6 = a3;
  v7 = a4;
  v9 = objc_msgSend_filterDataclassesForPossibleAutoEnablementForAccount_(self, v8, v6);
  if (objc_msgSend_count(v9, v10, v11))
  {
    objc_msgSend_enableDataclassesWithoutLocalDataDataclassActionsForDataclasses_fromAccount_completion_(self, v12, v9, v6, v7);
  }

  else
  {
    v13 = _AALogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[AADataclassManager enableDataclassesWithoutLocalDataDataclassActionsForAccount:completion:]";
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_impl(&dword_29C856000, v13, OS_LOG_TYPE_DEFAULT, "%s - There are no auto-enableable dataclasses for account %@. Proceeding with save.", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v24 = sub_29C85ACE0;
    v25 = sub_29C85ACF0;
    v26 = os_transaction_create();
    v17 = MEMORY[0x29EDCA5F8];
    v18 = 3221225472;
    v19 = sub_29C85ACF8;
    v20 = &unk_29F32A440;
    v21 = v7;
    v22 = buf;
    v14 = MEMORY[0x29ED46520](&v17);
    objc_msgSend_saveAccount_onAccountStore_withCompletionHandler_(self->_storeProxy, v15, v6, self->_store, v14, v17, v18, v19, v20);

    _Block_object_dispose(buf, 8);
  }

  v16 = *MEMORY[0x29EDCA608];
}

- (void)enableDataclassesWithoutLocalDataDataclassActionsForDataclasses:(id)a3 fromAccount:(id)a4 completion:(id)a5
{
  v24 = *MEMORY[0x29EDCA608];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    sub_29C85CE10();
  }

  if (!v9)
  {
    sub_29C85CE84();
  }

  if (!v10)
  {
    sub_29C85CEF8();
  }

  v11 = _AALogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = v9;
    v22 = 2114;
    v23 = v8;
    _os_log_impl(&dword_29C856000, v11, OS_LOG_TYPE_DEFAULT, "Attempting to auto-enable dataclasses for account (%@): %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 3221225472;
  v16[2] = sub_29C85AFDC;
  v16[3] = &unk_29F32A490;
  objc_copyWeak(&v19, buf);
  v12 = v10;
  v18 = v12;
  v16[4] = self;
  v13 = v9;
  v17 = v13;
  objc_msgSend__buildAutoEnableableDataclassesAndActionsForAccount_dataclassesForEnablement_completion_(self, v14, v13, v8, v16);

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);

  v15 = *MEMORY[0x29EDCA608];
}

- (void)_buildAutoEnableableDataclassesAndActionsForAccount:(id)a3 dataclassesForEnablement:(id)a4 completion:(id)a5
{
  v63 = *MEMORY[0x29EDCA608];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v46 = objc_msgSend_mutableCopy(v9, v11, v12);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v13 = v9;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v56, v62, 16);
  if (v15)
  {
    v17 = v15;
    v18 = *v57;
    do
    {
      v19 = 0;
      do
      {
        if (*v57 != v18)
        {
          objc_enumerationMutation(v13);
        }

        objc_msgSend_setEnabled_forDataclass_(v8, v16, 1, *(*(&v56 + 1) + 8 * v19++), v46);
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v56, v62, 16);
    }

    while (v17);
  }

  v20 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  isPrimaryEmailVerified = objc_msgSend_aa_isPrimaryEmailVerified(v8, v21, v22);
  store = self->_store;
  v55 = 0;
  v26 = objc_msgSend_dataclassActionsForAccountSave_error_(store, v25, v8, &v55);
  v27 = v55;
  v30 = v27;
  if (v26)
  {
    v31 = _AALogSystem();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v61 = v26;
      _os_log_impl(&dword_29C856000, v31, OS_LOG_TYPE_DEFAULT, "We have potential dataclass actions: %@", buf, 0xCu);
    }

    v32 = objc_alloc_init(MEMORY[0x29EDB8E00]);
    v47 = MEMORY[0x29EDCA5F8];
    v48 = 3221225472;
    v49 = sub_29C85B7D0;
    v50 = &unk_29F32A4B8;
    v51 = self;
    v52 = v32;
    v33 = v46;
    v53 = v46;
    v54 = v8;
    v34 = v32;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v26, v35, &v47);
    v38 = objc_msgSend_copy(v34, v36, v37);
    objc_msgSend_setObject_forKeyedSubscript_(v20, v39, v38, @"dataclassActions");

    goto LABEL_12;
  }

  v33 = v46;
  if (!v27)
  {
LABEL_12:
    if (isPrimaryEmailVerified != objc_msgSend_aa_isPrimaryEmailVerified(v8, v28, v29, v46, v47, v48, v49, v50, v51))
    {
      objc_msgSend_aa_setPrimaryEmailVerified_(v8, v40, 1);
    }

    v42 = objc_msgSend_copy(v33, v40, v41);
    objc_msgSend_setObject_forKeyedSubscript_(v20, v43, v42, @"dataclasses");

    v10[2](v10, v20, 0);
    goto LABEL_19;
  }

  v44 = _AALogSystem();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    sub_29C85D080();
  }

  (v10)[2](v10, 0, v30);
LABEL_19:

  v45 = *MEMORY[0x29EDCA608];
}

- (id)filterDataclassesForPossibleAutoEnablementForAccount:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_userDefaultsDisabledDataclasses(self, v5, v6);
  v10 = objc_msgSend_provisionedDataclasses(v4, v8, v9);
  v13 = objc_msgSend_allObjects(v10, v11, v12);
  v19[0] = MEMORY[0x29EDCA5F8];
  v19[1] = 3221225472;
  v19[2] = sub_29C85BB0C;
  v19[3] = &unk_29F32A4E0;
  v20 = v4;
  v21 = v7;
  v14 = v7;
  v15 = v4;
  v17 = objc_msgSend_aaf_filter_(v13, v16, v19);

  return v17;
}

- (BOOL)_shouldVerifyAccountSave
{
  if (!objc_msgSend_deviceIsAudioAccessory(MEMORY[0x29EDBD240], a2, v2))
  {
    return 1;
  }

  v5 = objc_msgSend_mainBundle(MEMORY[0x29EDB9F48], v3, v4);
  v8 = objc_msgSend_bundleIdentifier(v5, v6, v7);
  isEqualToString = objc_msgSend_isEqualToString_(v8, v9, @"com.apple.HPSetup");

  if (!isEqualToString)
  {
    return 1;
  }

  v11 = _AALogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_29C85D128();
  }

  return 0;
}

@end