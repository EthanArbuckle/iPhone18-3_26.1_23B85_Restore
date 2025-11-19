@interface ACDAccountStoreFilter
- (ACDAccountStoreFilter)init;
- (ACDAccountStoreFilter)initWithBackingAccountStore:(id)a3;
- (BOOL)_accessGrantedForBundleID:(id)a3 onAccountTypeID:(id)a4;
- (BOOL)_accessGrantedForClient:(id)a3 onAccountTypeID:(id)a4;
- (BOOL)_clientHasPermissionToAddAccount:(id)a3;
- (BOOL)_isClientPermittedToAccessAccount:(id)a3;
- (BOOL)_isClientPermittedToAccessAccountTypeWithIdentifier:(id)a3;
- (BOOL)_isClientPermittedToRemoveAccount:(id)a3;
- (BOOL)_wildCardAuthorizationMatchingForAccountTypeIdentifier:(id)a3;
- (BOOL)isClientEntitledToAccessAccountTypeWithIdentifier:(id)a3;
- (id)_appPermissionsForAccountTypeIdentifier:(id)a3;
- (void)accessKeysForAccountType:(id)a3 handler:(id)a4;
- (void)accountExistsWithDescription:(id)a3 completion:(id)a4;
- (void)accountIdentifiersEnabledForDataclass:(id)a3 handler:(id)a4;
- (void)accountIdentifiersEnabledForDataclasses:(id)a3 withAccountTypeIdentifiers:(id)a4 completion:(id)a5;
- (void)accountIdentifiersEnabledToSyncDataclass:(id)a3 handler:(id)a4;
- (void)accountTypeWithIdentifier:(id)a3 handler:(id)a4;
- (void)accountTypesWithHandler:(id)a3;
- (void)accountWithIdentifier:(id)a3 handler:(id)a4;
- (void)accountsOnPairedDeviceWithAccountTypes:(id)a3 withOptions:(id)a4 handler:(id)a5;
- (void)accountsWithAccountType:(id)a3 handler:(id)a4;
- (void)accountsWithAccountType:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)accountsWithAccountTypeIdentifiers:(id)a3 preloadedProperties:(id)a4 completion:(id)a5;
- (void)accountsWithHandler:(id)a3;
- (void)addClientToken:(id)a3 forAccountIdentifier:(id)a4 completion:(id)a5;
- (void)appPermissionsForAccountType:(id)a3 withHandler:(id)a4;
- (void)canSaveAccount:(id)a3 completion:(id)a4;
- (void)childAccountsForAccountWithIdentifier:(id)a3 handler:(id)a4;
- (void)childAccountsWithAccountTypeIdentifier:(id)a3 parentAccountIdentifier:(id)a4 handler:(id)a5;
- (void)clearAllPermissionsGrantedForAccountType:(id)a3 withHandler:(id)a4;
- (void)clearGrantedPermissionsForAccountType:(id)a3 withHandler:(id)a4;
- (void)clientTokenForAccountIdentifier:(id)a3 completion:(id)a4;
- (void)credentialForAccount:(id)a3 serviceID:(id)a4 handler:(id)a5;
- (void)credentialForAccountWithIdentifier:(id)a3 handler:(id)a4;
- (void)credentialItemForAccount:(id)a3 serviceName:(id)a4 completion:(id)a5;
- (void)credentialItemsWithCompletion:(id)a3;
- (void)dataclassActionsForAccountDeletion:(id)a3 completion:(id)a4;
- (void)dataclassActionsForAccountSave:(id)a3 completion:(id)a4;
- (void)dataclassesWithHandler:(id)a3;
- (void)discoverPropertiesForAccount:(id)a3 options:(id)a4 completion:(id)a5;
- (void)displayAccountTypeForAccountWithIdentifier:(id)a3 handler:(id)a4;
- (void)enabledDataclassesForAccountWithIdentifier:(id)a3 handler:(id)a4;
- (void)grantedPermissionsForAccountType:(id)a3 withHandler:(id)a4;
- (void)handleURL:(id)a3;
- (void)insertAccountType:(id)a3 withHandler:(id)a4;
- (void)insertCredentialItem:(id)a3 completion:(id)a4;
- (void)isPerformingDataclassActionsForAccount:(id)a3 completion:(id)a4;
- (void)isPushSupportedForAccount:(id)a3 completion:(id)a4;
- (void)isTetheredSyncingEnabledForDataclass:(id)a3 completion:(id)a4;
- (void)kerberosAccountsForDomainFromURL:(id)a3 completion:(id)a4;
- (void)migrateCredentialForAccount:(id)a3 completion:(id)a4;
- (void)notifyRemoteDevicesOfModifiedAccount:(id)a3 withChangeType:(id)a4;
- (void)notifyRemoteDevicesOfModifiedAccount:(id)a3 withChangeType:(id)a4 options:(id)a5 completion:(id)a6;
- (void)parentAccountForAccountWithIdentifier:(id)a3 handler:(id)a4;
- (void)permissionForAccountType:(id)a3 withHandler:(id)a4;
- (void)preloadDataclassOwnersWithCompletion:(id)a3;
- (void)provisionedDataclassesForAccountWithIdentifier:(id)a3 handler:(id)a4;
- (void)registerMonitorForAccountsOfTypes:(id)a3 propertiesToPrefetch:(id)a4 completion:(id)a5;
- (void)removeAccount:(id)a3 withDataclassActions:(id)a4 completion:(id)a5;
- (void)removeAccountFromPairedDevice:(id)a3 withOptions:(id)a4 completion:(id)a5;
- (void)removeAccountType:(id)a3 withHandler:(id)a4;
- (void)removeAccountsFromPairedDeviceWithOptions:(id)a3 completion:(id)a4;
- (void)removeCredentialItem:(id)a3 completion:(id)a4;
- (void)renewCredentialsForAccount:(id)a3 options:(id)a4 completion:(id)a5;
- (void)requestAccessForAccountTypeWithIdentifier:(id)a3 options:(id)a4 withHandler:(id)a5;
- (void)resetDatabaseToVersion:(id)a3 withCompletion:(id)a4;
- (void)runAccountMigrationPlugins:(id)a3;
- (void)saveAccount:(id)a3 toPairedDeviceWithOptions:(id)a4 completion:(id)a5;
- (void)saveAccount:(id)a3 withHandler:(id)a4;
- (void)saveCredentialItem:(id)a3 completion:(id)a4;
- (void)scheduleBackupIfNonexistent:(id)a3;
- (void)setClientBundleID:(id)a3 withHandler:(id)a4;
- (void)setCredential:(id)a3 forAccount:(id)a4 serviceID:(id)a5 completion:(id)a6;
- (void)setPermissionGranted:(id)a3 forBundleID:(id)a4 onAccountType:(id)a5 withHandler:(id)a6;
- (void)shutdownAccountsD:(id)a3;
- (void)supportedDataclassesForAccountType:(id)a3 handler:(id)a4;
- (void)syncableDataclassesForAccountType:(id)a3 handler:(id)a4;
- (void)tetheredSyncSourceTypeForDataclass:(id)a3 completion:(id)a4;
- (void)triggerKeychainMigrationIfNecessary:(id)a3;
- (void)uidOfAccountsd:(id)a3;
- (void)verifyCredentialsForAccount:(id)a3 options:(id)a4 completion:(id)a5;
- (void)visibleTopLevelAccountsWithAccountTypeIdentifiers:(id)a3 completion:(id)a4;
@end

@implementation ACDAccountStoreFilter

- (ACDAccountStoreFilter)init
{
  [(ACDAccountStoreFilter *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ACDAccountStoreFilter)initWithBackingAccountStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ACDAccountStoreFilter;
  v6 = [(ACDAccountStoreFilter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backingAccountStore, a3);
  }

  return v7;
}

- (BOOL)_accessGrantedForClient:(id)a3 onAccountTypeID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v9 = [v8 authorizationManager];
  v10 = [v9 authorizationForClient:v7 accountTypeWithIdentifier:v6];

  LOBYTE(v7) = [v10 isGranted];
  return v7;
}

- (BOOL)_accessGrantedForBundleID:(id)a3 onAccountTypeID:(id)a4
{
  v6 = a4;
  v7 = [ACDClient clientWithBundleID:a3];
  LOBYTE(self) = [(ACDAccountStoreFilter *)self _accessGrantedForClient:v7 onAccountTypeID:v6];

  return self;
}

- (BOOL)isClientEntitledToAccessAccountTypeWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v6 = [v5 client];
  if ([v6 hasEntitlement:*MEMORY[0x277CB8FE0]])
  {
    v7 = [v4 isEqualToString:*MEMORY[0x277CB8BF0]];

    if ((v7 & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  v8 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v9 = [v8 client];
  if ([v9 hasEntitlement:*MEMORY[0x277CB8FE8]])
  {
    if ([v4 isEqualToString:*MEMORY[0x277CB8BB8]] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x277CB8C08]) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x277CB8CB8]) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x277CB8C38]) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x277CB8BA0]) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x277CB8BF8]) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x277CB8D58]))
    {
      goto LABEL_27;
    }

    v10 = [v4 isEqualToString:*MEMORY[0x277CB8C28]];

    if (v10)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  v11 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v12 = [v11 client];
  if ([v12 hasEntitlement:*MEMORY[0x277CB9028]])
  {
    v13 = [v4 isEqual:*MEMORY[0x277CB8C58]];

    if (v13)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  v8 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v9 = [v8 client];
  if ([v9 hasEntitlement:*MEMORY[0x277CB9070]])
  {
    if ([v4 isEqual:*MEMORY[0x277CB8D58]])
    {
LABEL_27:
      v15 = 1;
      goto LABEL_28;
    }

    v14 = [v4 isEqual:*MEMORY[0x277CB8D60]];

    if (v14)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  v8 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v9 = [v8 client];
  if ([v9 hasEntitlement:*MEMORY[0x277CB8FF8]])
  {
    if ([v4 isEqual:*MEMORY[0x277CB8D58]])
    {
      goto LABEL_27;
    }

    v31 = [v4 isEqual:*MEMORY[0x277CB8D60]];

    if (v31)
    {
LABEL_45:
      v15 = 1;
      goto LABEL_46;
    }
  }

  else
  {
  }

  v16 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v17 = [v16 client];
  if ([v17 hasEntitlement:*MEMORY[0x277CB8FF0]])
  {
    v18 = [v4 isEqualToString:*MEMORY[0x277CB8BB0]];

    if (v18)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  if ([v4 isEqual:*MEMORY[0x277CB8D48]])
  {
    v19 = [(ACDAccountStoreFilter *)self backingAccountStore];
    v20 = [v19 client];
    v21 = [v20 hasEntitlement:*MEMORY[0x277CB9068]];

    if (v21)
    {
      goto LABEL_45;
    }
  }

  if ([v4 isEqual:*MEMORY[0x277CB8D18]])
  {
    v22 = [(ACDAccountStoreFilter *)self backingAccountStore];
    v23 = [v22 client];
    v24 = [v23 hasEntitlement:*MEMORY[0x277CB9060]];

    if (v24)
    {
      goto LABEL_45;
    }
  }

  if ([v4 isEqual:*MEMORY[0x277CB8CF0]])
  {
    v25 = [(ACDAccountStoreFilter *)self backingAccountStore];
    v26 = [v25 client];
    v27 = [v26 hasEntitlement:*MEMORY[0x277CB9040]];

    if (v27)
    {
      goto LABEL_45;
    }
  }

  if ([v4 isEqual:*MEMORY[0x277CB8CE0]])
  {
    v28 = [(ACDAccountStoreFilter *)self backingAccountStore];
    v29 = [v28 client];
    v30 = [v29 hasEntitlement:*MEMORY[0x277CB9038]];

    if (v30)
    {
      goto LABEL_45;
    }
  }

  if (![v4 isEqualToString:*MEMORY[0x277CB8BF0]])
  {
    v15 = 0;
    goto LABEL_46;
  }

  v8 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v9 = [v8 client];
  v15 = [v9 hasEntitlement:*MEMORY[0x277CB9020]];
LABEL_28:

LABEL_46:
  return v15;
}

- (BOOL)_isClientPermittedToAccessAccountTypeWithIdentifier:(id)a3
{
  v4 = a3;
  if (-[ACDAccountStoreFilter isClientEntitledToAccessAccountTypeWithIdentifier:](self, "isClientEntitledToAccessAccountTypeWithIdentifier:", v4) || (-[ACDAccountStoreFilter backingAccountStore](self, "backingAccountStore"), v5 = objc_claimAutoreleasedReturnValue(), [v5 client], v6 = objc_claimAutoreleasedReturnValue(), v7 = -[ACDAccountStoreFilter _accessGrantedForClient:onAccountTypeID:](self, "_accessGrantedForClient:onAccountTypeID:", v6, v4), v6, v5, v7))
  {
    v8 = 1;
  }

  else if ([v4 hasPrefix:*MEMORY[0x277CB8C88]])
  {
    v8 = [(ACDAccountStoreFilter *)self _wildCardAuthorizationMatchingForAccountTypeIdentifier:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_wildCardAuthorizationMatchingForAccountTypeIdentifier:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = [(ACDAccountStoreFilter *)self _appPermissionsForAccountTypeIdentifier:a3];
  [v4 allKeys];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v22 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v18 = v4;
    v8 = *v20;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self like %@", *(*(&v19 + 1) + 8 * i)];
        v11 = [(ACDAccountStoreFilter *)self backingAccountStore];
        v12 = [v11 client];
        v13 = [v12 bundleID];
        v14 = [v10 evaluateWithObject:v13];

        if (v14)
        {
          v15 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

    v15 = 0;
LABEL_11:
    v4 = v18;
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)_appPermissionsForAccountTypeIdentifier:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v6 = [v5 authorizationManager];
  v7 = [v6 allAuthorizationsForAccountTypeWithIdentifier:v4];

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v14, "isGranted", v20)}];
        v16 = [v14 client];
        v17 = [v16 bundleID];

        if (v17)
        {
          [v8 setValue:v15 forKey:v17];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)_isClientPermittedToAccessAccount:(id)a3
{
  v4 = [a3 accountType];
  v5 = [v4 identifier];
  LOBYTE(self) = [(ACDAccountStoreFilter *)self _isClientPermittedToAccessAccountTypeWithIdentifier:v5];

  return self;
}

- (BOOL)_isClientPermittedToRemoveAccount:(id)a3
{
  v4 = a3;
  v5 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v6 = [v4 accountType];
  v7 = [v6 identifier];
  v8 = [v5 accountTypeWithIdentifier:v7];

  v9 = [v4 owningBundleID];

  v10 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v11 = [v10 client];
  LOBYTE(v7) = [v11 hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v7)
  {
    goto LABEL_2;
  }

  v13 = [v8 identifier];
  if ([v13 isEqualToString:*MEMORY[0x277CB8D48]])
  {
    v14 = [(ACDAccountStoreFilter *)self backingAccountStore];
    v15 = [v14 client];
    v16 = [v15 hasEntitlement:*MEMORY[0x277CB9068]];

    if (v16)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  v17 = [v8 identifier];
  if (([v17 isEqualToString:*MEMORY[0x277CB8C38]] & 1) == 0)
  {

LABEL_11:
    v21 = [(ACDAccountStoreFilter *)self backingAccountStore];
    v22 = [v21 client];
    v23 = [v22 bundleID];
    v12 = [v23 isEqualToString:v9];

    goto LABEL_12;
  }

  v18 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v19 = [v18 client];
  v20 = [v19 hasEntitlement:*MEMORY[0x277CB8FE8]];

  if ((v20 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_2:
  v12 = 1;
LABEL_12:

  return v12;
}

- (BOOL)_clientHasPermissionToAddAccount:(id)a3
{
  v5 = a3;
  v6 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v7 = [v6 client];
  v8 = [v7 hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v8)
  {
    goto LABEL_2;
  }

  v11 = [v5 accountType];
  v12 = [v11 identifier];
  if ([v12 isEqualToString:*MEMORY[0x277CB8BB8]])
  {
    v13 = [(ACDAccountStoreFilter *)self backingAccountStore];
    v14 = [v13 client];
    v15 = [v14 hasEntitlement:*MEMORY[0x277CB8FE8]];

    if (v15)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  v16 = [v5 accountType];
  v17 = [v16 identifier];
  if ([v17 isEqualToString:*MEMORY[0x277CB8C08]])
  {
    v18 = [(ACDAccountStoreFilter *)self backingAccountStore];
    v19 = [v18 client];
    v20 = [v19 hasEntitlement:*MEMORY[0x277CB8FE8]];

    if (v20)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  v21 = [v5 accountType];
  v22 = [v21 identifier];
  if ([v22 isEqualToString:*MEMORY[0x277CB8CB8]])
  {
    v23 = [(ACDAccountStoreFilter *)self backingAccountStore];
    v24 = [v23 client];
    v25 = [v24 hasEntitlement:*MEMORY[0x277CB8FE8]];

    if (v25)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  v26 = [v5 accountType];
  v27 = [v26 identifier];
  if ([v27 isEqualToString:*MEMORY[0x277CB8C38]])
  {
    v28 = [(ACDAccountStoreFilter *)self backingAccountStore];
    v29 = [v28 client];
    v30 = [v29 hasEntitlement:*MEMORY[0x277CB8FE8]];

    if (v30)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  v31 = [v5 accountType];
  v32 = [v31 identifier];
  if ([v32 isEqualToString:*MEMORY[0x277CB8BA0]])
  {
    v33 = [(ACDAccountStoreFilter *)self backingAccountStore];
    v34 = [v33 client];
    v35 = [v34 hasEntitlement:*MEMORY[0x277CB8FE8]];

    if (v35)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  v36 = [v5 accountType];
  v37 = [v36 identifier];
  v38 = *MEMORY[0x277CB8D58];
  if ([v37 isEqualToString:*MEMORY[0x277CB8D58]])
  {
    v39 = [(ACDAccountStoreFilter *)self backingAccountStore];
    v40 = [v39 client];
    v3 = [v40 hasEntitlement:*MEMORY[0x277CB8FE8]];

    if (v3)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  v41 = [v5 accountType];
  v42 = [v41 identifier];
  v43 = [v42 isEqualToString:v38];
  if ((v43 & 1) == 0)
  {
    v44 = [v5 accountType];
    v3 = [v44 identifier];
    if (![v3 isEqualToString:*MEMORY[0x277CB8D60]])
    {

      goto LABEL_36;
    }

    v68 = v44;
  }

  v45 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v46 = [v45 client];
  v47 = [v46 hasEntitlement:*MEMORY[0x277CB9070]];

  if ((v43 & 1) == 0)
  {
  }

  if (v47)
  {
    goto LABEL_2;
  }

LABEL_36:
  v48 = [v5 accountType];
  v49 = [v48 identifier];
  v50 = [v49 isEqualToString:v38];
  if ((v50 & 1) != 0 || ([v5 accountType], v38 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v38, "identifier"), v43 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v43, "isEqualToString:", *MEMORY[0x277CB8D60])))
  {
    v51 = [(ACDAccountStoreFilter *)self backingAccountStore];
    v52 = [v51 client];
    v53 = [v52 hasEntitlement:*MEMORY[0x277CB8FF8]];

    if ((v50 & 1) == 0)
    {
    }

    if (v53)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  v54 = [v5 accountType];
  v55 = [v54 identifier];
  if ([v55 isEqualToString:*MEMORY[0x277CB8D48]])
  {
    v56 = [(ACDAccountStoreFilter *)self backingAccountStore];
    v57 = [v56 client];
    v58 = [v57 hasEntitlement:*MEMORY[0x277CB9068]];

    if (v58)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  v59 = [v5 accountType];
  v60 = [v59 identifier];
  if ([v60 isEqual:*MEMORY[0x277CB8C58]])
  {
    v61 = [(ACDAccountStoreFilter *)self backingAccountStore];
    v62 = [v61 client];
    v63 = [v62 hasEntitlement:*MEMORY[0x277CB9028]];

    if ((v63 & 1) == 0)
    {
      goto LABEL_51;
    }

LABEL_2:
    v9 = 1;
    goto LABEL_3;
  }

LABEL_51:
  v64 = [v5 accountType];
  v65 = [v64 identifier];
  if ([v65 isEqual:*MEMORY[0x277CB8CF0]])
  {
    v66 = [(ACDAccountStoreFilter *)self backingAccountStore];
    v67 = [v66 client];
    v9 = [v67 hasEntitlement:*MEMORY[0x277CB9040]];
  }

  else
  {
    v9 = 0;
  }

LABEL_3:
  return v9;
}

- (void)setClientBundleID:(id)a3 withHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v10 = [v9 client];
  v11 = [v10 hasEntitlement:*MEMORY[0x277CB9010]];

  if (v11)
  {
    v12 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [v12 setClientBundleID:v7 withHandler:v8];
  }

  else
  {
    v13 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v13];
    }

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    v8[2](v8, 0, v12);
  }
}

- (void)accountsWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__ACDAccountStoreFilter_accountsWithHandler___block_invoke;
  v7[3] = &unk_27848C1F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 accountsWithHandler:v7];
}

void __45__ACDAccountStoreFilter_accountsWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if ([*(a1 + 32) _isClientPermittedToAccessAccount:{v13, v15}])
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  (*(*(a1 + 40) + 16))();
  v14 = *MEMORY[0x277D85DE8];
}

- (void)accountTypesWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(ACDAccountStoreFilter *)self backingAccountStore];
  [v5 accountTypesWithHandler:v4];
}

- (void)accountWithIdentifier:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__ACDAccountStoreFilter_accountWithIdentifier_handler___block_invoke;
  v10[3] = &unk_27848D060;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 accountWithIdentifier:v7 handler:v10];
}

void __55__ACDAccountStoreFilter_accountWithIdentifier_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  if ([v5 _isClientPermittedToAccessAccount:v8])
  {
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)accountsWithAccountType:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 identifier];
  v10 = [(ACDAccountStoreFilter *)self _isClientPermittedToAccessAccountTypeWithIdentifier:v9];

  if (v10)
  {
    v11 = [(ACDAccountStoreFilter *)self backingAccountStore];
    v12 = [v11 client];
    v13 = [v12 hasEntitlement:*MEMORY[0x277CB9030]];

    v14 = [(ACDAccountStoreFilter *)self backingAccountStore];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __57__ACDAccountStoreFilter_accountsWithAccountType_handler___block_invoke;
    v18[3] = &unk_27848D088;
    v18[4] = self;
    v20 = v13;
    v19 = v8;
    [v14 accountsWithAccountType:v7 handler:v18];
  }

  else
  {
    v15 = _ACDLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ACDAccountStoreFilter accountsWithAccountType:handler:];
    }

    v16 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v16];
    }

    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:9 userInfo:0];
    (*(v8 + 2))(v8, 0, v17);
  }
}

void __57__ACDAccountStoreFilter_accountsWithAccountType_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if ([*(a1 + 32) _isClientPermittedToAccessAccount:{v13, v15}] && ((*(a1 + 48) & 1) != 0 || objc_msgSend(v13, "isActive")))
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  (*(*(a1 + 40) + 16))();
  v14 = *MEMORY[0x277D85DE8];
}

- (void)accountsWithAccountType:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = [v9 identifier];
  v12 = [(ACDAccountStoreFilter *)self _isClientPermittedToAccessAccountTypeWithIdentifier:v11];

  if (v12)
  {
    v13 = [(ACDAccountStoreFilter *)self backingAccountStore];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __68__ACDAccountStoreFilter_accountsWithAccountType_options_completion___block_invoke;
    v17[3] = &unk_27848C1F0;
    v17[4] = self;
    v18 = v10;
    [v13 accountsWithAccountType:v9 options:a4 completion:v17];
  }

  else
  {
    v14 = _ACDLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ACDAccountStoreFilter accountsWithAccountType:handler:];
    }

    v15 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v15];
    }

    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:9 userInfo:0];
    (*(v10 + 2))(v10, 0, v16);
  }
}

void __68__ACDAccountStoreFilter_accountsWithAccountType_options_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if ([*(a1 + 32) _isClientPermittedToAccessAccount:{v13, v15}])
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  (*(*(a1 + 40) + 16))();
  v14 = *MEMORY[0x277D85DE8];
}

- (void)accountsOnPairedDeviceWithAccountTypes:(id)a3 withOptions:(id)a4 handler:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v11 = [v8 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = v11;
  v28 = v10;
  v29 = v9;
  v13 = *v34;
  v14 = 1;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v34 != v13)
      {
        objc_enumerationMutation(v8);
      }

      v16 = *(*(&v33 + 1) + 8 * i);
      if (![(ACDAccountStoreFilter *)self _isClientPermittedToAccessAccountTypeWithIdentifier:v16])
      {
        v17 = _ACDLogSystem();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = [(ACDAccountStoreFilter *)self backingAccountStore];
          v19 = [v18 client];
          *buf = 138412546;
          v38 = v19;
          v39 = 2112;
          v40 = v16;
          _os_log_error_impl(&dword_221D2F000, v17, OS_LOG_TYPE_ERROR, "Client %@ is not allowed to access accounts of type %@.", buf, 0x16u);
        }

        v14 = 0;
      }
    }

    v12 = [v8 countByEnumeratingWithState:&v33 objects:v41 count:16];
  }

  while (v12);
  v10 = v28;
  v9 = v29;
  if ((v14 & 1) == 0)
  {
    v24 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v24];
    }

    v25 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:9 userInfo:0];
    (*(v28 + 2))(v28, 0, v25);
  }

  else
  {
LABEL_13:
    v20 = [(ACDAccountStoreFilter *)self backingAccountStore];
    v21 = [v20 client];
    v22 = [v21 hasEntitlement:*MEMORY[0x277CB9030]];

    v23 = [(ACDAccountStoreFilter *)self backingAccountStore];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __84__ACDAccountStoreFilter_accountsOnPairedDeviceWithAccountTypes_withOptions_handler___block_invoke;
    v30[3] = &unk_27848D088;
    v30[4] = self;
    v32 = v22;
    v31 = v10;
    [v23 accountsOnPairedDeviceWithAccountTypes:v8 withOptions:v9 handler:v30];
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __84__ACDAccountStoreFilter_accountsOnPairedDeviceWithAccountTypes_withOptions_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if ([*(a1 + 32) _isClientPermittedToAccessAccount:{v13, v15}] && ((*(a1 + 48) & 1) != 0 || objc_msgSend(v13, "isActive")))
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  (*(*(a1 + 40) + 16))();
  v14 = *MEMORY[0x277D85DE8];
}

- (void)parentAccountForAccountWithIdentifier:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__ACDAccountStoreFilter_parentAccountForAccountWithIdentifier_handler___block_invoke;
  v10[3] = &unk_27848D060;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 parentAccountForAccountWithIdentifier:v7 handler:v10];
}

void __71__ACDAccountStoreFilter_parentAccountForAccountWithIdentifier_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  if ([v5 _isClientPermittedToAccessAccount:v8])
  {
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)childAccountsForAccountWithIdentifier:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__ACDAccountStoreFilter_childAccountsForAccountWithIdentifier_handler___block_invoke;
  v10[3] = &unk_27848C1F0;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 childAccountsForAccountWithIdentifier:v7 handler:v10];
}

void __71__ACDAccountStoreFilter_childAccountsForAccountWithIdentifier_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if ([*(a1 + 32) _isClientPermittedToAccessAccount:{v13, v15}])
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  (*(*(a1 + 40) + 16))();
  v14 = *MEMORY[0x277D85DE8];
}

- (void)accountIdentifiersEnabledToSyncDataclass:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v10 = [v9 client];
  v11 = [v10 hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v11)
  {
    v12 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [v12 accountIdentifiersEnabledToSyncDataclass:v7 handler:v8];
  }

  else
  {
    v13 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v13];
    }

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:9 userInfo:0];
    v8[2](v8, 0, v12);
  }
}

- (void)accountIdentifiersEnabledForDataclass:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v10 = [v9 client];
  v11 = [v10 hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v11)
  {
    v12 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [v12 accountIdentifiersEnabledForDataclass:v7 handler:v8];
  }

  else
  {
    v13 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v13];
    }

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:9 userInfo:0];
    v8[2](v8, 0, v12);
  }
}

- (void)accountExistsWithDescription:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ACDAccountStoreFilter *)self backingAccountStore];
  [v8 accountExistsWithDescription:v7 completion:v6];
}

- (void)kerberosAccountsForDomainFromURL:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__ACDAccountStoreFilter_kerberosAccountsForDomainFromURL_completion___block_invoke;
  v10[3] = &unk_27848C1F0;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 kerberosAccountsForDomainFromURL:v7 completion:v10];
}

void __69__ACDAccountStoreFilter_kerberosAccountsForDomainFromURL_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if ([*(a1 + 32) _isClientPermittedToAccessAccount:{v13, v15}])
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  (*(*(a1 + 40) + 16))();
  v14 = *MEMORY[0x277D85DE8];
}

- (void)childAccountsWithAccountTypeIdentifier:(id)a3 parentAccountIdentifier:(id)a4 handler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([(ACDAccountStoreFilter *)self _isClientPermittedToAccessAccountTypeWithIdentifier:v9])
  {
    v12 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [v12 childAccountsWithAccountTypeIdentifier:v9 parentAccountIdentifier:v10 handler:v11];
  }

  else
  {
    v13 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v13];
    }

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    v11[2](v11, 0, v12);
  }
}

- (void)displayAccountTypeForAccountWithIdentifier:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ACDAccountStoreFilter *)self backingAccountStore];
  [v8 displayAccountTypeForAccountWithIdentifier:v7 handler:v6];
}

- (void)accountTypeWithIdentifier:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ACDAccountStoreFilter *)self backingAccountStore];
  [v8 accountTypeWithIdentifier:v7 handler:v6];
}

- (void)credentialForAccountWithIdentifier:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ACDAccountStoreFilter *)self backingAccountStore];
  [v8 credentialForAccountWithIdentifier:v7 handler:v6];
}

- (void)credentialForAccount:(id)a3 serviceID:(id)a4 handler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([(ACDAccountStoreFilter *)self _isClientPermittedToAccessAccount:v9])
  {
    v12 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [v12 credentialForAccount:v9 serviceID:v10 handler:v11];
  }

  else
  {
    v13 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v13];
    }

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    v11[2](v11, 0, v12);
  }
}

- (void)setCredential:(id)a3 forAccount:(id)a4 serviceID:(id)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if ([(ACDAccountStoreFilter *)self _isClientPermittedToAccessAccount:v12])
  {
    v15 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [v15 setCredential:v11 forAccount:v12 serviceID:v13 completion:v14];
  }

  else
  {
    v16 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v16];
    }

    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    v14[2](v14, 0, v15);
  }
}

- (void)credentialItemsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ACDAccountStoreFilter *)self backingAccountStore];
  [v5 credentialItemsWithCompletion:v4];
}

- (void)credentialItemForAccount:(id)a3 serviceName:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(ACDAccountStoreFilter *)self backingAccountStore];
  [v11 credentialItemForAccount:v10 serviceName:v9 completion:v8];
}

- (void)insertCredentialItem:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ACDAccountStoreFilter *)self backingAccountStore];
  [v8 insertCredentialItem:v7 completion:v6];
}

- (void)saveCredentialItem:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ACDAccountStoreFilter *)self backingAccountStore];
  [v8 saveCredentialItem:v7 completion:v6];
}

- (void)removeCredentialItem:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ACDAccountStoreFilter *)self backingAccountStore];
  [v8 removeCredentialItem:v7 completion:v6];
}

- (void)enabledDataclassesForAccountWithIdentifier:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ACDAccountStoreFilter *)self backingAccountStore];
  [v8 enabledDataclassesForAccountWithIdentifier:v7 handler:v6];
}

- (void)provisionedDataclassesForAccountWithIdentifier:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ACDAccountStoreFilter *)self backingAccountStore];
  [v8 provisionedDataclassesForAccountWithIdentifier:v7 handler:v6];
}

- (void)dataclassesWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(ACDAccountStoreFilter *)self backingAccountStore];
  [v5 dataclassesWithHandler:v4];
}

- (void)supportedDataclassesForAccountType:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ACDAccountStoreFilter *)self backingAccountStore];
  [v8 supportedDataclassesForAccountType:v7 handler:v6];
}

- (void)syncableDataclassesForAccountType:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ACDAccountStoreFilter *)self backingAccountStore];
  [v8 syncableDataclassesForAccountType:v7 handler:v6];
}

- (void)preloadDataclassOwnersWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ACDAccountStoreFilter *)self backingAccountStore];
  [v5 preloadDataclassOwnersWithCompletion:v4];
}

- (void)dataclassActionsForAccountSave:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ACDAccountStoreFilter *)self backingAccountStore];
  [v8 dataclassActionsForAccountSave:v7 completion:v6];
}

- (void)dataclassActionsForAccountDeletion:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ACDAccountStoreFilter *)self backingAccountStore];
  [v8 dataclassActionsForAccountDeletion:v7 completion:v6];
}

- (void)isPerformingDataclassActionsForAccount:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ACDAccountStoreFilter *)self backingAccountStore];
  [v8 isPerformingDataclassActionsForAccount:v7 completion:v6];
}

- (void)accessKeysForAccountType:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ACDAccountStoreFilter *)self backingAccountStore];
  [v8 accessKeysForAccountType:v7 handler:v6];
}

- (void)removeAccount:(id)a3 withDataclassActions:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(ACDAccountStoreFilter *)self backingAccountStore];
  [v9 _setAccountStore:v12];

  if ([(ACDAccountStoreFilter *)self _isClientPermittedToRemoveAccount:v9])
  {
    v13 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [v13 removeAccount:v9 withDataclassActions:v10 completion:v11];
  }

  else
  {
    v14 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v14];
    }

    v15 = MEMORY[0x277CCACA8];
    v16 = [v9 accountType];
    v17 = [v16 accountTypeDescription];
    v13 = [v15 stringWithFormat:@"The application is not permitted to delete %@ accounts", v17];

    v18 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CB8DC0];
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v13 forKey:*MEMORY[0x277CCA450]];
    v21 = [v18 errorWithDomain:v19 code:7 userInfo:v20];
    (*(v11 + 2))(v11, 0, v21);
  }
}

- (void)canSaveAccount:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ACDAccountStoreFilter *)self backingAccountStore];
  [v8 canSaveAccount:v7 completion:v6];
}

- (void)saveAccount:(id)a3 withHandler:(id)a4
{
  v38[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(ACDAccountStoreFilter *)self backingAccountStore];
  [v7 _setAccountStore:v9];

  v10 = [v7 accountType];
  v11 = [v10 identifier];
  v12 = [(ACDAccountStoreFilter *)self _isClientPermittedToAccessAccountTypeWithIdentifier:v11];

  if (v12)
  {
    if ([(ACDAccountStoreFilter *)self _clientHasPermissionToAddAccount:v7])
    {
      v13 = [(ACDAccountStoreFilter *)self backingAccountStore];
      [v13 saveAccount:v7 withHandler:v8];

      goto LABEL_13;
    }

    v22 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v22];
    }

    v23 = MEMORY[0x277CCACA8];
    v24 = [(ACDAccountStoreFilter *)self backingAccountStore];
    v25 = [v24 client];
    v26 = [v25 pid];
    v18 = [v23 stringWithFormat:@"PID %@ does not have permission to add an account", v26];

    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CB8DC0];
    v37 = *MEMORY[0x277CCA450];
    v38[0] = v18;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
  }

  else
  {
    v14 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v14];
    }

    v15 = MEMORY[0x277CCACA8];
    v16 = [v7 accountType];
    v17 = [v16 accountTypeDescription];
    v18 = [v15 stringWithFormat:@"The application is not permitted to access %@ accounts", v17];

    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CB8DC0];
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v18 forKey:*MEMORY[0x277CCA450]];
  }

  v27 = v21;
  v28 = [v19 errorWithDomain:v20 code:7 userInfo:v21];

  v29 = _ACDLogSystem();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    [(ACDAccountStoreFilter *)v28 saveAccount:v29 withHandler:v30, v31, v32, v33, v34, v35];
  }

  v8[2](v8, 0, v28);
LABEL_13:

  v36 = *MEMORY[0x277D85DE8];
}

- (void)insertAccountType:(id)a3 withHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ACDAccountStoreFilter *)self backingAccountStore];
  [v8 insertAccountType:v7 withHandler:v6];
}

- (void)removeAccountType:(id)a3 withHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ACDAccountStoreFilter *)self backingAccountStore];
  [v8 removeAccountType:v7 withHandler:v6];
}

- (void)requestAccessForAccountTypeWithIdentifier:(id)a3 options:(id)a4 withHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(ACDAccountStoreFilter *)self backingAccountStore];
  [v11 _requestAccessForAccountTypeWithIdentifier:v10 options:v9 allowUserInteraction:1 withHandler:v8];
}

- (void)appPermissionsForAccountType:(id)a3 withHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ACDAccountStoreFilter *)self backingAccountStore];
  [v8 appPermissionsForAccountType:v7 withHandler:v6];
}

- (void)setPermissionGranted:(id)a3 forBundleID:(id)a4 onAccountType:(id)a5 withHandler:(id)a6
{
  v26[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v16 = [v15 client];
  v17 = [v16 hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v17)
  {
    v18 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [v18 setPermissionGranted:v11 forBundleID:v12 onAccountType:v13 withHandler:v14];
  }

  else
  {
    v19 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v19];
    }

    v20 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CB8DC0];
    v25 = *MEMORY[0x277CCA450];
    v26[0] = @"You are not allowed to modify the authorization model.";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v23 = [v20 errorWithDomain:v21 code:7 userInfo:v22];
    (*(v14 + 2))(v14, 0, v23);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)permissionForAccountType:(id)a3 withHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ACDAccountStoreFilter *)self backingAccountStore];
  [v8 permissionForAccountType:v7 withHandler:v6];
}

- (void)grantedPermissionsForAccountType:(id)a3 withHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ACDAccountStoreFilter *)self backingAccountStore];
  [v8 grantedPermissionsForAccountType:v7 withHandler:v6];
}

- (void)clearGrantedPermissionsForAccountType:(id)a3 withHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ACDAccountStoreFilter *)self backingAccountStore];
  [v8 clearGrantedPermissionsForAccountType:v7 withHandler:v6];
}

- (void)clearAllPermissionsGrantedForAccountType:(id)a3 withHandler:(id)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v10 = [v9 client];
  v11 = [v10 hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v11)
  {
    v12 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [v12 clearAllPermissionsGrantedForAccountType:v7 withHandler:v8];
  }

  else
  {
    v13 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v13];
    }

    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CB8DC0];
    v19 = *MEMORY[0x277CCA450];
    v20[0] = @"You are not allowed to modify the authorization model.";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v17 = [v14 errorWithDomain:v15 code:7 userInfo:v16];
    (*(v8 + 2))(v8, 0, v17);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)verifyCredentialsForAccount:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(ACDAccountStoreFilter *)self backingAccountStore];
  [v11 verifyCredentialsForAccount:v10 options:v9 completion:v8];
}

- (void)renewCredentialsForAccount:(id)a3 options:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(ACDAccountStoreFilter *)self backingAccountStore];
  [v9 _setAccountStore:v12];

  v13 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v14 = [v13 client];
  if ([v14 hasEntitlement:*MEMORY[0x277CB8FE0]])
  {

    goto LABEL_3;
  }

  v15 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v16 = [v15 client];
  v17 = [v16 hasEntitlement:*MEMORY[0x277CB8FE8]];

  if (v17)
  {
    goto LABEL_5;
  }

  v19 = [v9 accountType];
  v13 = [v19 identifier];

  v20 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v21 = [v20 client];
  v22 = [(ACDAccountStoreFilter *)self _accessGrantedForClient:v21 onAccountTypeID:v13];

  if (v22)
  {
LABEL_3:

LABEL_5:
    v18 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [v18 renewCredentialsForAccount:v9 options:v10 completion:v11];
    goto LABEL_6;
  }

  v23 = [v9 accountType];
  v24 = [v23 identifier];
  v25 = [v24 hasPrefix:*MEMORY[0x277CB8C88]];

  if (v25)
  {
    v26 = [(ACDAccountStoreFilter *)self _wildCardAuthorizationMatchingForAccountTypeIdentifier:v13];

    if (v26)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

  v27 = _ACDLogSystem();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    [ACDAccountStoreFilter renewCredentialsForAccount:options:completion:];
  }

  v28 = _ACDEntitlementLogSystem();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v28];
  }

  v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
  v11[2](v11, &unk_28353F1C8, v18);
LABEL_6:
}

- (void)migrateCredentialForAccount:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(ACDAccountStoreFilter *)self backingAccountStore];
  [v7 _setAccountStore:v9];

  v10 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v11 = [v10 client];
  if ([v11 hasEntitlement:*MEMORY[0x277CB8FE0]])
  {

LABEL_4:
    v15 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [v15 migrateCredentialForAccount:v7 completion:v8];
    goto LABEL_10;
  }

  v12 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v13 = [v12 client];
  v14 = [v13 hasEntitlement:*MEMORY[0x277CB8FE8]];

  if (v14)
  {
    goto LABEL_4;
  }

  v16 = _ACDLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [ACDAccountStoreFilter migrateCredentialForAccount:completion:];
  }

  v17 = _ACDEntitlementLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v17];
  }

  v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
  v8[2](v8, 0, v15);
LABEL_10:
}

- (void)isTetheredSyncingEnabledForDataclass:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v10 = [v9 client];
  v11 = [v10 hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v11)
  {
    v12 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [v12 isTetheredSyncingEnabledForDataclass:v7 completion:v8];
  }

  else
  {
    v13 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v13];
    }

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    v8[2](v8, 0, v12);
  }
}

- (void)tetheredSyncSourceTypeForDataclass:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v10 = [v9 client];
  v11 = [v10 hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v11)
  {
    v12 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [v12 tetheredSyncSourceTypeForDataclass:v7 completion:v8];
  }

  else
  {
    v13 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v13];
    }

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    v8[2](v8, 0, v12);
  }
}

- (void)isPushSupportedForAccount:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v10 = [v9 client];
  v11 = [v10 hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v11)
  {
    v12 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [v12 isPushSupportedForAccount:v7 completion:v8];
  }

  else
  {
    v13 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v13];
    }

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    v8[2](v8, 0, v12);
  }
}

- (void)accountIdentifiersEnabledForDataclasses:(id)a3 withAccountTypeIdentifiers:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v13 = [v12 client];
  v14 = [v13 hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v14)
  {
    v15 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [v15 accountIdentifiersEnabledForDataclasses:v9 withAccountTypeIdentifiers:v10 completion:v11];
  }

  else
  {
    v16 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v16];
    }

    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    v11[2](v11, 0, v15);
  }
}

- (void)handleURL:(id)a3
{
  v8 = a3;
  v4 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v5 = [v4 client];
  v6 = [v5 hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v6)
  {
    v7 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [v7 handleURL:v8];
  }
}

- (void)addClientToken:(id)a3 forAccountIdentifier:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v13 = [v12 client];
  v14 = [v13 hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v14)
  {
    v15 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [v15 addClientToken:v9 forAccountIdentifier:v10 completion:v11];
  }

  else
  {
    v16 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v16];
    }

    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    v11[2](v11, 0, v15);
  }
}

- (void)discoverPropertiesForAccount:(id)a3 options:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v13 = [v12 client];
  v14 = [v13 hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v14)
  {
    v15 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [v15 discoverPropertiesForAccount:v9 options:v10 completion:v11];
  }

  else
  {
    v16 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v16];
    }

    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    v11[2](v11, 0, v15);
  }
}

- (void)clientTokenForAccountIdentifier:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v10 = [v9 client];
  v11 = [v10 hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v11)
  {
    v12 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [v12 clientTokenForAccountIdentifier:v7 completion:v8];
  }

  else
  {
    v13 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v13];
    }

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    v8[2](v8, 0, v12);
  }
}

- (void)visibleTopLevelAccountsWithAccountTypeIdentifiers:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v10 = [v9 client];
  v11 = [v10 hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v11)
  {
    v12 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [v12 visibleTopLevelAccountsWithAccountTypeIdentifiers:v7 completion:v8];
  }

  else
  {
    v13 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v13];
    }

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    v8[2](v8, 0, v12);
  }
}

- (void)accountsWithAccountTypeIdentifiers:(id)a3 preloadedProperties:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v13 = [v12 client];
  v14 = [v13 hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v14)
  {
    v15 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [v15 accountsWithAccountTypeIdentifiers:v9 preloadedProperties:v10 completion:v11];
  }

  else
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __91__ACDAccountStoreFilter_accountsWithAccountTypeIdentifiers_preloadedProperties_completion___block_invoke;
    v19[3] = &unk_27848D0B0;
    v19[4] = self;
    v16 = [v9 ac_filter:v19];
    if ([v16 count])
    {
      v17 = [(ACDAccountStoreFilter *)self backingAccountStore];
      [v17 accountsWithAccountTypeIdentifiers:v16 preloadedProperties:v10 completion:v11];
    }

    else
    {
      v18 = _ACDEntitlementLogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v18];
      }

      v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
      v11[2](v11, 0, v17);
    }
  }
}

uint64_t __91__ACDAccountStoreFilter_accountsWithAccountTypeIdentifiers_preloadedProperties_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _isClientPermittedToAccessAccountTypeWithIdentifier:v3];
  if ((v4 & 1) == 0)
  {
    v5 = _ACDLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __91__ACDAccountStoreFilter_accountsWithAccountTypeIdentifiers_preloadedProperties_completion___block_invoke_cold_1();
    }
  }

  return v4;
}

- (void)notifyRemoteDevicesOfModifiedAccount:(id)a3 withChangeType:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v10 = [v9 client];
  v11 = [v10 hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v11)
  {
    v12 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [v12 notifyRemoteDevicesOfModifiedAccount:v7 withChangeType:v8];
  }

  else
  {
    v13 = _ACLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ACDAccountStoreFilter notifyRemoteDevicesOfModifiedAccount:withChangeType:];
    }

    v14 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v14];
    }
  }
}

- (void)notifyRemoteDevicesOfModifiedAccount:(id)a3 withChangeType:(id)a4 options:(id)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v16 = [v15 client];
  v17 = [v16 hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v17)
  {
    v18 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [v18 notifyRemoteDevicesOfModifiedAccount:v11 withChangeType:v12 options:v13 completion:v14];
  }

  else
  {
    v19 = _ACLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [ACDAccountStoreFilter notifyRemoteDevicesOfModifiedAccount:withChangeType:];
    }

    v20 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v20];
    }

    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    v14[2](v14, 0, v18);
  }
}

- (void)saveAccount:(id)a3 toPairedDeviceWithOptions:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v13 = [v12 client];
  v14 = [v13 hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v14)
  {
    v15 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [v15 saveAccount:v9 toPairedDeviceWithOptions:v10 completion:v11];
  }

  else
  {
    v16 = _ACLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [ACDAccountStoreFilter saveAccount:toPairedDeviceWithOptions:completion:];
    }

    v17 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v17];
    }

    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    v11[2](v11, 0, v15);
  }
}

- (void)removeAccountsFromPairedDeviceWithOptions:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v10 = [v9 client];
  v11 = [v10 hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v11)
  {
    v12 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [v12 removeAccountsFromPairedDeviceWithOptions:v7 completion:v8];
  }

  else
  {
    v13 = _ACLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ACDAccountStoreFilter removeAccountsFromPairedDeviceWithOptions:completion:];
    }

    v14 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v14];
    }

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    v8[2](v8, 0, v12);
  }
}

- (void)removeAccountFromPairedDevice:(id)a3 withOptions:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v13 = [v12 client];
  v14 = [v13 hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v14)
  {
    v15 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [v15 removeAccountFromPairedDevice:v9 withOptions:v10 completion:v11];
  }

  else
  {
    v16 = _ACLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)v9 removeAccountFromPairedDevice:v16 withOptions:v17 completion:v18, v19, v20, v21, v22];
    }

    v23 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v23];
    }

    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    v11[2](v11, 0, v15);
  }
}

- (void)triggerKeychainMigrationIfNecessary:(id)a3
{
  v5 = a3;
  v6 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v7 = [v6 client];
  v8 = [v7 hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v8)
  {
    v12 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [v12 triggerKeychainMigrationIfNecessary:v5];
  }

  else
  {
    v9 = _ACLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ACDAccountStoreFilter triggerKeychainMigrationIfNecessary:];
    }

    v10 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v10];
    }

    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    (*(v5 + 2))(v5, 0, v11);
  }
}

- (void)runAccountMigrationPlugins:(id)a3
{
  v5 = a3;
  v6 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v7 = [v6 client];
  v8 = [v7 hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v8)
  {
    v12 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [v12 runAccountMigrationPlugins:v5];
  }

  else
  {
    v9 = _ACLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ACDAccountStoreFilter runAccountMigrationPlugins:];
    }

    v10 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v10];
    }

    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    (*(v5 + 2))(v5, 0, v11);
  }
}

- (void)scheduleBackupIfNonexistent:(id)a3
{
  v5 = a3;
  v6 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v7 = [v6 client];
  v8 = [v7 hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v8)
  {
    v12 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [v12 scheduleBackupIfNonexistent:v5];
  }

  else
  {
    v9 = _ACLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ACDAccountStoreFilter scheduleBackupIfNonexistent:];
    }

    v10 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v10];
    }

    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    (*(v5 + 2))(v5, 0, v11);
  }
}

- (void)resetDatabaseToVersion:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v10 = [v9 client];
  v11 = [v10 hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v11)
  {
    v12 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [v12 resetDatabaseToVersion:v7 withCompletion:v8];
  }

  else
  {
    v13 = _ACLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ACDAccountStoreFilter resetDatabaseToVersion:withCompletion:];
    }

    v14 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v14];
    }

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    v8[2](v8, 0, v12);
  }
}

- (void)shutdownAccountsD:(id)a3
{
  v5 = a3;
  v6 = [(ACDAccountStoreFilter *)self backingAccountStore];
  v7 = [v6 client];
  v8 = [v7 hasEntitlement:*MEMORY[0x277CB9058]];

  if (v8)
  {
    v12 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [v12 shutdownAccountsD:v5];
  }

  else
  {
    v9 = _ACLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ACDAccountStoreFilter shutdownAccountsD:];
    }

    v10 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v10];
    }

    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    (*(v5 + 2))(v5, 0, v11);
  }
}

- (void)registerMonitorForAccountsOfTypes:(id)a3 propertiesToPrefetch:(id)a4 completion:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = v11;
  v20 = v9;
  v13 = *v22;
  v14 = 1;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v22 != v13)
      {
        objc_enumerationMutation(v8);
      }

      v16 = *(*(&v21 + 1) + 8 * i);
      if (![(ACDAccountStoreFilter *)self isClientEntitledToAccessAccountTypeWithIdentifier:v16])
      {
        v17 = _ACLogSystem();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v26 = v16;
          _os_log_error_impl(&dword_221D2F000, v17, OS_LOG_TYPE_ERROR, "Client is not entitled account type %@", buf, 0xCu);
        }

        v14 = 0;
      }
    }

    v12 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
  }

  while (v12);
  v9 = v20;
  if ((v14 & 1) == 0)
  {
    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    v10[2](v10, 0, v18);
  }

  else
  {
LABEL_13:
    v18 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [v18 registerMonitorForAccountsOfTypes:v8 propertiesToPrefetch:v9 completion:v10];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)uidOfAccountsd:(id)a3
{
  v5 = a3;
  v4 = geteuid();
  (*(a3 + 2))(v5, v4);
}

- (void)accountsWithAccountType:handler:.cold.1()
{
  OUTLINED_FUNCTION_22();
  v13 = *MEMORY[0x277D85DE8];
  v2 = [v1 backingAccountStore];
  v3 = [v2 client];
  v4 = [v0 identifier];
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_4_0(&dword_221D2F000, v5, v6, "Client %@ is not allowed to access accounts of type %@.", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)saveAccount:(uint64_t)a3 withHandler:(uint64_t)a4 .cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15(&dword_221D2F000, a2, a3, "Could not save account: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)renewCredentialsForAccount:options:completion:.cold.1()
{
  OUTLINED_FUNCTION_22();
  v11 = *MEMORY[0x277D85DE8];
  v1 = [v0 backingAccountStore];
  v2 = [v1 client];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_4_0(&dword_221D2F000, v3, v4, "Cannot renew credentials because %@ is not entitled or permitted to access to account %@.", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)migrateCredentialForAccount:completion:.cold.1()
{
  OUTLINED_FUNCTION_22();
  v11 = *MEMORY[0x277D85DE8];
  v1 = [v0 backingAccountStore];
  v2 = [v1 client];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_4_0(&dword_221D2F000, v3, v4, "Cannot migrate credentials because %@ is not entitled or permitted to access to account %@.", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __91__ACDAccountStoreFilter_accountsWithAccountTypeIdentifiers_preloadedProperties_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_22();
  v11 = *MEMORY[0x277D85DE8];
  v1 = [*v0 backingAccountStore];
  v2 = [v1 client];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_4_0(&dword_221D2F000, v3, v4, "Client (%@) attempted to access restricted account type: %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeAccountFromPairedDevice:(uint64_t)a3 withOptions:(uint64_t)a4 completion:(uint64_t)a5 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15(&dword_221D2F000, a2, a3, "Client not entitled to remove account %@ from paired devices.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end