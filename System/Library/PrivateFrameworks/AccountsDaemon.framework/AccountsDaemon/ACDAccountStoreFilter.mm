@interface ACDAccountStoreFilter
- (ACDAccountStoreFilter)init;
- (ACDAccountStoreFilter)initWithBackingAccountStore:(id)store;
- (BOOL)_accessGrantedForBundleID:(id)d onAccountTypeID:(id)iD;
- (BOOL)_accessGrantedForClient:(id)client onAccountTypeID:(id)d;
- (BOOL)_clientHasPermissionToAddAccount:(id)account;
- (BOOL)_isClientPermittedToAccessAccount:(id)account;
- (BOOL)_isClientPermittedToAccessAccountTypeWithIdentifier:(id)identifier;
- (BOOL)_isClientPermittedToRemoveAccount:(id)account;
- (BOOL)_wildCardAuthorizationMatchingForAccountTypeIdentifier:(id)identifier;
- (BOOL)isClientEntitledToAccessAccountTypeWithIdentifier:(id)identifier;
- (id)_appPermissionsForAccountTypeIdentifier:(id)identifier;
- (void)accessKeysForAccountType:(id)type handler:(id)handler;
- (void)accountExistsWithDescription:(id)description completion:(id)completion;
- (void)accountIdentifiersEnabledForDataclass:(id)dataclass handler:(id)handler;
- (void)accountIdentifiersEnabledForDataclasses:(id)dataclasses withAccountTypeIdentifiers:(id)identifiers completion:(id)completion;
- (void)accountIdentifiersEnabledToSyncDataclass:(id)dataclass handler:(id)handler;
- (void)accountTypeWithIdentifier:(id)identifier handler:(id)handler;
- (void)accountTypesWithHandler:(id)handler;
- (void)accountWithIdentifier:(id)identifier handler:(id)handler;
- (void)accountsOnPairedDeviceWithAccountTypes:(id)types withOptions:(id)options handler:(id)handler;
- (void)accountsWithAccountType:(id)type handler:(id)handler;
- (void)accountsWithAccountType:(id)type options:(unint64_t)options completion:(id)completion;
- (void)accountsWithAccountTypeIdentifiers:(id)identifiers preloadedProperties:(id)properties completion:(id)completion;
- (void)accountsWithHandler:(id)handler;
- (void)addClientToken:(id)token forAccountIdentifier:(id)identifier completion:(id)completion;
- (void)appPermissionsForAccountType:(id)type withHandler:(id)handler;
- (void)canSaveAccount:(id)account completion:(id)completion;
- (void)childAccountsForAccountWithIdentifier:(id)identifier handler:(id)handler;
- (void)childAccountsWithAccountTypeIdentifier:(id)identifier parentAccountIdentifier:(id)accountIdentifier handler:(id)handler;
- (void)clearAllPermissionsGrantedForAccountType:(id)type withHandler:(id)handler;
- (void)clearGrantedPermissionsForAccountType:(id)type withHandler:(id)handler;
- (void)clientTokenForAccountIdentifier:(id)identifier completion:(id)completion;
- (void)credentialForAccount:(id)account serviceID:(id)d handler:(id)handler;
- (void)credentialForAccountWithIdentifier:(id)identifier handler:(id)handler;
- (void)credentialItemForAccount:(id)account serviceName:(id)name completion:(id)completion;
- (void)credentialItemsWithCompletion:(id)completion;
- (void)dataclassActionsForAccountDeletion:(id)deletion completion:(id)completion;
- (void)dataclassActionsForAccountSave:(id)save completion:(id)completion;
- (void)dataclassesWithHandler:(id)handler;
- (void)discoverPropertiesForAccount:(id)account options:(id)options completion:(id)completion;
- (void)displayAccountTypeForAccountWithIdentifier:(id)identifier handler:(id)handler;
- (void)enabledDataclassesForAccountWithIdentifier:(id)identifier handler:(id)handler;
- (void)grantedPermissionsForAccountType:(id)type withHandler:(id)handler;
- (void)handleURL:(id)l;
- (void)insertAccountType:(id)type withHandler:(id)handler;
- (void)insertCredentialItem:(id)item completion:(id)completion;
- (void)isPerformingDataclassActionsForAccount:(id)account completion:(id)completion;
- (void)isPushSupportedForAccount:(id)account completion:(id)completion;
- (void)isTetheredSyncingEnabledForDataclass:(id)dataclass completion:(id)completion;
- (void)kerberosAccountsForDomainFromURL:(id)l completion:(id)completion;
- (void)migrateCredentialForAccount:(id)account completion:(id)completion;
- (void)notifyRemoteDevicesOfModifiedAccount:(id)account withChangeType:(id)type;
- (void)notifyRemoteDevicesOfModifiedAccount:(id)account withChangeType:(id)type options:(id)options completion:(id)completion;
- (void)parentAccountForAccountWithIdentifier:(id)identifier handler:(id)handler;
- (void)permissionForAccountType:(id)type withHandler:(id)handler;
- (void)preloadDataclassOwnersWithCompletion:(id)completion;
- (void)provisionedDataclassesForAccountWithIdentifier:(id)identifier handler:(id)handler;
- (void)registerMonitorForAccountsOfTypes:(id)types propertiesToPrefetch:(id)prefetch completion:(id)completion;
- (void)removeAccount:(id)account withDataclassActions:(id)actions completion:(id)completion;
- (void)removeAccountFromPairedDevice:(id)device withOptions:(id)options completion:(id)completion;
- (void)removeAccountType:(id)type withHandler:(id)handler;
- (void)removeAccountsFromPairedDeviceWithOptions:(id)options completion:(id)completion;
- (void)removeCredentialItem:(id)item completion:(id)completion;
- (void)renewCredentialsForAccount:(id)account options:(id)options completion:(id)completion;
- (void)requestAccessForAccountTypeWithIdentifier:(id)identifier options:(id)options withHandler:(id)handler;
- (void)resetDatabaseToVersion:(id)version withCompletion:(id)completion;
- (void)runAccountMigrationPlugins:(id)plugins;
- (void)saveAccount:(id)account toPairedDeviceWithOptions:(id)options completion:(id)completion;
- (void)saveAccount:(id)account withHandler:(id)handler;
- (void)saveCredentialItem:(id)item completion:(id)completion;
- (void)scheduleBackupIfNonexistent:(id)nonexistent;
- (void)setClientBundleID:(id)d withHandler:(id)handler;
- (void)setCredential:(id)credential forAccount:(id)account serviceID:(id)d completion:(id)completion;
- (void)setPermissionGranted:(id)granted forBundleID:(id)d onAccountType:(id)type withHandler:(id)handler;
- (void)shutdownAccountsD:(id)d;
- (void)supportedDataclassesForAccountType:(id)type handler:(id)handler;
- (void)syncableDataclassesForAccountType:(id)type handler:(id)handler;
- (void)tetheredSyncSourceTypeForDataclass:(id)dataclass completion:(id)completion;
- (void)triggerKeychainMigrationIfNecessary:(id)necessary;
- (void)uidOfAccountsd:(id)accountsd;
- (void)verifyCredentialsForAccount:(id)account options:(id)options completion:(id)completion;
- (void)visibleTopLevelAccountsWithAccountTypeIdentifiers:(id)identifiers completion:(id)completion;
@end

@implementation ACDAccountStoreFilter

- (ACDAccountStoreFilter)init
{
  [(ACDAccountStoreFilter *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ACDAccountStoreFilter)initWithBackingAccountStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = ACDAccountStoreFilter;
  v6 = [(ACDAccountStoreFilter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backingAccountStore, store);
  }

  return v7;
}

- (BOOL)_accessGrantedForClient:(id)client onAccountTypeID:(id)d
{
  dCopy = d;
  clientCopy = client;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  authorizationManager = [backingAccountStore authorizationManager];
  v10 = [authorizationManager authorizationForClient:clientCopy accountTypeWithIdentifier:dCopy];

  LOBYTE(clientCopy) = [v10 isGranted];
  return clientCopy;
}

- (BOOL)_accessGrantedForBundleID:(id)d onAccountTypeID:(id)iD
{
  iDCopy = iD;
  v7 = [ACDClient clientWithBundleID:d];
  LOBYTE(self) = [(ACDAccountStoreFilter *)self _accessGrantedForClient:v7 onAccountTypeID:iDCopy];

  return self;
}

- (BOOL)isClientEntitledToAccessAccountTypeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  client = [backingAccountStore client];
  if ([client hasEntitlement:*MEMORY[0x277CB8FE0]])
  {
    v7 = [identifierCopy isEqualToString:*MEMORY[0x277CB8BF0]];

    if ((v7 & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  backingAccountStore2 = [(ACDAccountStoreFilter *)self backingAccountStore];
  client2 = [backingAccountStore2 client];
  if ([client2 hasEntitlement:*MEMORY[0x277CB8FE8]])
  {
    if ([identifierCopy isEqualToString:*MEMORY[0x277CB8BB8]] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", *MEMORY[0x277CB8C08]) & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", *MEMORY[0x277CB8CB8]) & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", *MEMORY[0x277CB8C38]) & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", *MEMORY[0x277CB8BA0]) & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", *MEMORY[0x277CB8BF8]) & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", *MEMORY[0x277CB8D58]))
    {
      goto LABEL_27;
    }

    v10 = [identifierCopy isEqualToString:*MEMORY[0x277CB8C28]];

    if (v10)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  backingAccountStore3 = [(ACDAccountStoreFilter *)self backingAccountStore];
  client3 = [backingAccountStore3 client];
  if ([client3 hasEntitlement:*MEMORY[0x277CB9028]])
  {
    v13 = [identifierCopy isEqual:*MEMORY[0x277CB8C58]];

    if (v13)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  backingAccountStore2 = [(ACDAccountStoreFilter *)self backingAccountStore];
  client2 = [backingAccountStore2 client];
  if ([client2 hasEntitlement:*MEMORY[0x277CB9070]])
  {
    if ([identifierCopy isEqual:*MEMORY[0x277CB8D58]])
    {
LABEL_27:
      v15 = 1;
      goto LABEL_28;
    }

    v14 = [identifierCopy isEqual:*MEMORY[0x277CB8D60]];

    if (v14)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  backingAccountStore2 = [(ACDAccountStoreFilter *)self backingAccountStore];
  client2 = [backingAccountStore2 client];
  if ([client2 hasEntitlement:*MEMORY[0x277CB8FF8]])
  {
    if ([identifierCopy isEqual:*MEMORY[0x277CB8D58]])
    {
      goto LABEL_27;
    }

    v31 = [identifierCopy isEqual:*MEMORY[0x277CB8D60]];

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

  backingAccountStore4 = [(ACDAccountStoreFilter *)self backingAccountStore];
  client4 = [backingAccountStore4 client];
  if ([client4 hasEntitlement:*MEMORY[0x277CB8FF0]])
  {
    v18 = [identifierCopy isEqualToString:*MEMORY[0x277CB8BB0]];

    if (v18)
    {
      goto LABEL_45;
    }
  }

  else
  {
  }

  if ([identifierCopy isEqual:*MEMORY[0x277CB8D48]])
  {
    backingAccountStore5 = [(ACDAccountStoreFilter *)self backingAccountStore];
    client5 = [backingAccountStore5 client];
    v21 = [client5 hasEntitlement:*MEMORY[0x277CB9068]];

    if (v21)
    {
      goto LABEL_45;
    }
  }

  if ([identifierCopy isEqual:*MEMORY[0x277CB8D18]])
  {
    backingAccountStore6 = [(ACDAccountStoreFilter *)self backingAccountStore];
    client6 = [backingAccountStore6 client];
    v24 = [client6 hasEntitlement:*MEMORY[0x277CB9060]];

    if (v24)
    {
      goto LABEL_45;
    }
  }

  if ([identifierCopy isEqual:*MEMORY[0x277CB8CF0]])
  {
    backingAccountStore7 = [(ACDAccountStoreFilter *)self backingAccountStore];
    client7 = [backingAccountStore7 client];
    v27 = [client7 hasEntitlement:*MEMORY[0x277CB9040]];

    if (v27)
    {
      goto LABEL_45;
    }
  }

  if ([identifierCopy isEqual:*MEMORY[0x277CB8CE0]])
  {
    backingAccountStore8 = [(ACDAccountStoreFilter *)self backingAccountStore];
    client8 = [backingAccountStore8 client];
    v30 = [client8 hasEntitlement:*MEMORY[0x277CB9038]];

    if (v30)
    {
      goto LABEL_45;
    }
  }

  if (![identifierCopy isEqualToString:*MEMORY[0x277CB8BF0]])
  {
    v15 = 0;
    goto LABEL_46;
  }

  backingAccountStore2 = [(ACDAccountStoreFilter *)self backingAccountStore];
  client2 = [backingAccountStore2 client];
  v15 = [client2 hasEntitlement:*MEMORY[0x277CB9020]];
LABEL_28:

LABEL_46:
  return v15;
}

- (BOOL)_isClientPermittedToAccessAccountTypeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (-[ACDAccountStoreFilter isClientEntitledToAccessAccountTypeWithIdentifier:](self, "isClientEntitledToAccessAccountTypeWithIdentifier:", identifierCopy) || (-[ACDAccountStoreFilter backingAccountStore](self, "backingAccountStore"), v5 = objc_claimAutoreleasedReturnValue(), [v5 client], v6 = objc_claimAutoreleasedReturnValue(), v7 = -[ACDAccountStoreFilter _accessGrantedForClient:onAccountTypeID:](self, "_accessGrantedForClient:onAccountTypeID:", v6, identifierCopy), v6, v5, v7))
  {
    v8 = 1;
  }

  else if ([identifierCopy hasPrefix:*MEMORY[0x277CB8C88]])
  {
    v8 = [(ACDAccountStoreFilter *)self _wildCardAuthorizationMatchingForAccountTypeIdentifier:identifierCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_wildCardAuthorizationMatchingForAccountTypeIdentifier:(id)identifier
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = [(ACDAccountStoreFilter *)self _appPermissionsForAccountTypeIdentifier:identifier];
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
        backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
        client = [backingAccountStore client];
        bundleID = [client bundleID];
        v14 = [v10 evaluateWithObject:bundleID];

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

- (id)_appPermissionsForAccountTypeIdentifier:(id)identifier
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  authorizationManager = [backingAccountStore authorizationManager];
  v7 = [authorizationManager allAuthorizationsForAccountTypeWithIdentifier:identifierCopy];

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
        client = [v14 client];
        bundleID = [client bundleID];

        if (bundleID)
        {
          [v8 setValue:v15 forKey:bundleID];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)_isClientPermittedToAccessAccount:(id)account
{
  accountType = [account accountType];
  identifier = [accountType identifier];
  LOBYTE(self) = [(ACDAccountStoreFilter *)self _isClientPermittedToAccessAccountTypeWithIdentifier:identifier];

  return self;
}

- (BOOL)_isClientPermittedToRemoveAccount:(id)account
{
  accountCopy = account;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  accountType = [accountCopy accountType];
  identifier = [accountType identifier];
  v8 = [backingAccountStore accountTypeWithIdentifier:identifier];

  owningBundleID = [accountCopy owningBundleID];

  backingAccountStore2 = [(ACDAccountStoreFilter *)self backingAccountStore];
  client = [backingAccountStore2 client];
  LOBYTE(identifier) = [client hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (identifier)
  {
    goto LABEL_2;
  }

  identifier2 = [v8 identifier];
  if ([identifier2 isEqualToString:*MEMORY[0x277CB8D48]])
  {
    backingAccountStore3 = [(ACDAccountStoreFilter *)self backingAccountStore];
    client2 = [backingAccountStore3 client];
    v16 = [client2 hasEntitlement:*MEMORY[0x277CB9068]];

    if (v16)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  identifier3 = [v8 identifier];
  if (([identifier3 isEqualToString:*MEMORY[0x277CB8C38]] & 1) == 0)
  {

LABEL_11:
    backingAccountStore4 = [(ACDAccountStoreFilter *)self backingAccountStore];
    client3 = [backingAccountStore4 client];
    bundleID = [client3 bundleID];
    v12 = [bundleID isEqualToString:owningBundleID];

    goto LABEL_12;
  }

  backingAccountStore5 = [(ACDAccountStoreFilter *)self backingAccountStore];
  client4 = [backingAccountStore5 client];
  v20 = [client4 hasEntitlement:*MEMORY[0x277CB8FE8]];

  if ((v20 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_2:
  v12 = 1;
LABEL_12:

  return v12;
}

- (BOOL)_clientHasPermissionToAddAccount:(id)account
{
  accountCopy = account;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  client = [backingAccountStore client];
  v8 = [client hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v8)
  {
    goto LABEL_2;
  }

  accountType = [accountCopy accountType];
  identifier = [accountType identifier];
  if ([identifier isEqualToString:*MEMORY[0x277CB8BB8]])
  {
    backingAccountStore2 = [(ACDAccountStoreFilter *)self backingAccountStore];
    client2 = [backingAccountStore2 client];
    v15 = [client2 hasEntitlement:*MEMORY[0x277CB8FE8]];

    if (v15)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  accountType2 = [accountCopy accountType];
  identifier2 = [accountType2 identifier];
  if ([identifier2 isEqualToString:*MEMORY[0x277CB8C08]])
  {
    backingAccountStore3 = [(ACDAccountStoreFilter *)self backingAccountStore];
    client3 = [backingAccountStore3 client];
    v20 = [client3 hasEntitlement:*MEMORY[0x277CB8FE8]];

    if (v20)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  accountType3 = [accountCopy accountType];
  identifier3 = [accountType3 identifier];
  if ([identifier3 isEqualToString:*MEMORY[0x277CB8CB8]])
  {
    backingAccountStore4 = [(ACDAccountStoreFilter *)self backingAccountStore];
    client4 = [backingAccountStore4 client];
    v25 = [client4 hasEntitlement:*MEMORY[0x277CB8FE8]];

    if (v25)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  accountType4 = [accountCopy accountType];
  identifier4 = [accountType4 identifier];
  if ([identifier4 isEqualToString:*MEMORY[0x277CB8C38]])
  {
    backingAccountStore5 = [(ACDAccountStoreFilter *)self backingAccountStore];
    client5 = [backingAccountStore5 client];
    v30 = [client5 hasEntitlement:*MEMORY[0x277CB8FE8]];

    if (v30)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  accountType5 = [accountCopy accountType];
  identifier5 = [accountType5 identifier];
  if ([identifier5 isEqualToString:*MEMORY[0x277CB8BA0]])
  {
    backingAccountStore6 = [(ACDAccountStoreFilter *)self backingAccountStore];
    client6 = [backingAccountStore6 client];
    v35 = [client6 hasEntitlement:*MEMORY[0x277CB8FE8]];

    if (v35)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  accountType6 = [accountCopy accountType];
  identifier6 = [accountType6 identifier];
  v38 = *MEMORY[0x277CB8D58];
  if ([identifier6 isEqualToString:*MEMORY[0x277CB8D58]])
  {
    backingAccountStore7 = [(ACDAccountStoreFilter *)self backingAccountStore];
    client7 = [backingAccountStore7 client];
    identifier8 = [client7 hasEntitlement:*MEMORY[0x277CB8FE8]];

    if (identifier8)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  accountType7 = [accountCopy accountType];
  identifier7 = [accountType7 identifier];
  v43 = [identifier7 isEqualToString:v38];
  if ((v43 & 1) == 0)
  {
    accountType8 = [accountCopy accountType];
    identifier8 = [accountType8 identifier];
    if (![identifier8 isEqualToString:*MEMORY[0x277CB8D60]])
    {

      goto LABEL_36;
    }

    v68 = accountType8;
  }

  backingAccountStore8 = [(ACDAccountStoreFilter *)self backingAccountStore];
  client8 = [backingAccountStore8 client];
  v47 = [client8 hasEntitlement:*MEMORY[0x277CB9070]];

  if ((v43 & 1) == 0)
  {
  }

  if (v47)
  {
    goto LABEL_2;
  }

LABEL_36:
  accountType9 = [accountCopy accountType];
  identifier9 = [accountType9 identifier];
  v50 = [identifier9 isEqualToString:v38];
  if ((v50 & 1) != 0 || ([accountCopy accountType], v38 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v38, "identifier"), v43 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v43, "isEqualToString:", *MEMORY[0x277CB8D60])))
  {
    backingAccountStore9 = [(ACDAccountStoreFilter *)self backingAccountStore];
    client9 = [backingAccountStore9 client];
    v53 = [client9 hasEntitlement:*MEMORY[0x277CB8FF8]];

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

  accountType10 = [accountCopy accountType];
  identifier10 = [accountType10 identifier];
  if ([identifier10 isEqualToString:*MEMORY[0x277CB8D48]])
  {
    backingAccountStore10 = [(ACDAccountStoreFilter *)self backingAccountStore];
    client10 = [backingAccountStore10 client];
    v58 = [client10 hasEntitlement:*MEMORY[0x277CB9068]];

    if (v58)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  accountType11 = [accountCopy accountType];
  identifier11 = [accountType11 identifier];
  if ([identifier11 isEqual:*MEMORY[0x277CB8C58]])
  {
    backingAccountStore11 = [(ACDAccountStoreFilter *)self backingAccountStore];
    client11 = [backingAccountStore11 client];
    v63 = [client11 hasEntitlement:*MEMORY[0x277CB9028]];

    if ((v63 & 1) == 0)
    {
      goto LABEL_51;
    }

LABEL_2:
    v9 = 1;
    goto LABEL_3;
  }

LABEL_51:
  accountType12 = [accountCopy accountType];
  identifier12 = [accountType12 identifier];
  if ([identifier12 isEqual:*MEMORY[0x277CB8CF0]])
  {
    backingAccountStore12 = [(ACDAccountStoreFilter *)self backingAccountStore];
    client12 = [backingAccountStore12 client];
    v9 = [client12 hasEntitlement:*MEMORY[0x277CB9040]];
  }

  else
  {
    v9 = 0;
  }

LABEL_3:
  return v9;
}

- (void)setClientBundleID:(id)d withHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  client = [backingAccountStore client];
  v11 = [client hasEntitlement:*MEMORY[0x277CB9010]];

  if (v11)
  {
    backingAccountStore2 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [backingAccountStore2 setClientBundleID:dCopy withHandler:handlerCopy];
  }

  else
  {
    v13 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v13];
    }

    backingAccountStore2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    handlerCopy[2](handlerCopy, 0, backingAccountStore2);
  }
}

- (void)accountsWithHandler:(id)handler
{
  handlerCopy = handler;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__ACDAccountStoreFilter_accountsWithHandler___block_invoke;
  v7[3] = &unk_27848C1F0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [backingAccountStore accountsWithHandler:v7];
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

- (void)accountTypesWithHandler:(id)handler
{
  handlerCopy = handler;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  [backingAccountStore accountTypesWithHandler:handlerCopy];
}

- (void)accountWithIdentifier:(id)identifier handler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__ACDAccountStoreFilter_accountWithIdentifier_handler___block_invoke;
  v10[3] = &unk_27848D060;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [backingAccountStore accountWithIdentifier:identifierCopy handler:v10];
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

- (void)accountsWithAccountType:(id)type handler:(id)handler
{
  typeCopy = type;
  handlerCopy = handler;
  identifier = [typeCopy identifier];
  v10 = [(ACDAccountStoreFilter *)self _isClientPermittedToAccessAccountTypeWithIdentifier:identifier];

  if (v10)
  {
    backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
    client = [backingAccountStore client];
    v13 = [client hasEntitlement:*MEMORY[0x277CB9030]];

    backingAccountStore2 = [(ACDAccountStoreFilter *)self backingAccountStore];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __57__ACDAccountStoreFilter_accountsWithAccountType_handler___block_invoke;
    v18[3] = &unk_27848D088;
    v18[4] = self;
    v20 = v13;
    v19 = handlerCopy;
    [backingAccountStore2 accountsWithAccountType:typeCopy handler:v18];
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
    (*(handlerCopy + 2))(handlerCopy, 0, v17);
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

- (void)accountsWithAccountType:(id)type options:(unint64_t)options completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  identifier = [typeCopy identifier];
  v12 = [(ACDAccountStoreFilter *)self _isClientPermittedToAccessAccountTypeWithIdentifier:identifier];

  if (v12)
  {
    backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __68__ACDAccountStoreFilter_accountsWithAccountType_options_completion___block_invoke;
    v17[3] = &unk_27848C1F0;
    v17[4] = self;
    v18 = completionCopy;
    [backingAccountStore accountsWithAccountType:typeCopy options:options completion:v17];
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
    (*(completionCopy + 2))(completionCopy, 0, v16);
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

- (void)accountsOnPairedDeviceWithAccountTypes:(id)types withOptions:(id)options handler:(id)handler
{
  v42 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  optionsCopy = options;
  handlerCopy = handler;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v11 = [typesCopy countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = v11;
  v28 = handlerCopy;
  v29 = optionsCopy;
  v13 = *v34;
  v14 = 1;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v34 != v13)
      {
        objc_enumerationMutation(typesCopy);
      }

      v16 = *(*(&v33 + 1) + 8 * i);
      if (![(ACDAccountStoreFilter *)self _isClientPermittedToAccessAccountTypeWithIdentifier:v16])
      {
        v17 = _ACDLogSystem();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
          client = [backingAccountStore client];
          *buf = 138412546;
          v38 = client;
          v39 = 2112;
          v40 = v16;
          _os_log_error_impl(&dword_221D2F000, v17, OS_LOG_TYPE_ERROR, "Client %@ is not allowed to access accounts of type %@.", buf, 0x16u);
        }

        v14 = 0;
      }
    }

    v12 = [typesCopy countByEnumeratingWithState:&v33 objects:v41 count:16];
  }

  while (v12);
  handlerCopy = v28;
  optionsCopy = v29;
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
    backingAccountStore2 = [(ACDAccountStoreFilter *)self backingAccountStore];
    client2 = [backingAccountStore2 client];
    v22 = [client2 hasEntitlement:*MEMORY[0x277CB9030]];

    backingAccountStore3 = [(ACDAccountStoreFilter *)self backingAccountStore];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __84__ACDAccountStoreFilter_accountsOnPairedDeviceWithAccountTypes_withOptions_handler___block_invoke;
    v30[3] = &unk_27848D088;
    v30[4] = self;
    v32 = v22;
    v31 = handlerCopy;
    [backingAccountStore3 accountsOnPairedDeviceWithAccountTypes:typesCopy withOptions:optionsCopy handler:v30];
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

- (void)parentAccountForAccountWithIdentifier:(id)identifier handler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__ACDAccountStoreFilter_parentAccountForAccountWithIdentifier_handler___block_invoke;
  v10[3] = &unk_27848D060;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [backingAccountStore parentAccountForAccountWithIdentifier:identifierCopy handler:v10];
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

- (void)childAccountsForAccountWithIdentifier:(id)identifier handler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__ACDAccountStoreFilter_childAccountsForAccountWithIdentifier_handler___block_invoke;
  v10[3] = &unk_27848C1F0;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [backingAccountStore childAccountsForAccountWithIdentifier:identifierCopy handler:v10];
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

- (void)accountIdentifiersEnabledToSyncDataclass:(id)dataclass handler:(id)handler
{
  dataclassCopy = dataclass;
  handlerCopy = handler;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  client = [backingAccountStore client];
  v11 = [client hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v11)
  {
    backingAccountStore2 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [backingAccountStore2 accountIdentifiersEnabledToSyncDataclass:dataclassCopy handler:handlerCopy];
  }

  else
  {
    v13 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v13];
    }

    backingAccountStore2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:9 userInfo:0];
    handlerCopy[2](handlerCopy, 0, backingAccountStore2);
  }
}

- (void)accountIdentifiersEnabledForDataclass:(id)dataclass handler:(id)handler
{
  dataclassCopy = dataclass;
  handlerCopy = handler;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  client = [backingAccountStore client];
  v11 = [client hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v11)
  {
    backingAccountStore2 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [backingAccountStore2 accountIdentifiersEnabledForDataclass:dataclassCopy handler:handlerCopy];
  }

  else
  {
    v13 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v13];
    }

    backingAccountStore2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:9 userInfo:0];
    handlerCopy[2](handlerCopy, 0, backingAccountStore2);
  }
}

- (void)accountExistsWithDescription:(id)description completion:(id)completion
{
  completionCopy = completion;
  descriptionCopy = description;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  [backingAccountStore accountExistsWithDescription:descriptionCopy completion:completionCopy];
}

- (void)kerberosAccountsForDomainFromURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__ACDAccountStoreFilter_kerberosAccountsForDomainFromURL_completion___block_invoke;
  v10[3] = &unk_27848C1F0;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [backingAccountStore kerberosAccountsForDomainFromURL:lCopy completion:v10];
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

- (void)childAccountsWithAccountTypeIdentifier:(id)identifier parentAccountIdentifier:(id)accountIdentifier handler:(id)handler
{
  identifierCopy = identifier;
  accountIdentifierCopy = accountIdentifier;
  handlerCopy = handler;
  if ([(ACDAccountStoreFilter *)self _isClientPermittedToAccessAccountTypeWithIdentifier:identifierCopy])
  {
    backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
    [backingAccountStore childAccountsWithAccountTypeIdentifier:identifierCopy parentAccountIdentifier:accountIdentifierCopy handler:handlerCopy];
  }

  else
  {
    v13 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v13];
    }

    backingAccountStore = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    handlerCopy[2](handlerCopy, 0, backingAccountStore);
  }
}

- (void)displayAccountTypeForAccountWithIdentifier:(id)identifier handler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  [backingAccountStore displayAccountTypeForAccountWithIdentifier:identifierCopy handler:handlerCopy];
}

- (void)accountTypeWithIdentifier:(id)identifier handler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  [backingAccountStore accountTypeWithIdentifier:identifierCopy handler:handlerCopy];
}

- (void)credentialForAccountWithIdentifier:(id)identifier handler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  [backingAccountStore credentialForAccountWithIdentifier:identifierCopy handler:handlerCopy];
}

- (void)credentialForAccount:(id)account serviceID:(id)d handler:(id)handler
{
  accountCopy = account;
  dCopy = d;
  handlerCopy = handler;
  if ([(ACDAccountStoreFilter *)self _isClientPermittedToAccessAccount:accountCopy])
  {
    backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
    [backingAccountStore credentialForAccount:accountCopy serviceID:dCopy handler:handlerCopy];
  }

  else
  {
    v13 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v13];
    }

    backingAccountStore = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    handlerCopy[2](handlerCopy, 0, backingAccountStore);
  }
}

- (void)setCredential:(id)credential forAccount:(id)account serviceID:(id)d completion:(id)completion
{
  credentialCopy = credential;
  accountCopy = account;
  dCopy = d;
  completionCopy = completion;
  if ([(ACDAccountStoreFilter *)self _isClientPermittedToAccessAccount:accountCopy])
  {
    backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
    [backingAccountStore setCredential:credentialCopy forAccount:accountCopy serviceID:dCopy completion:completionCopy];
  }

  else
  {
    v16 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v16];
    }

    backingAccountStore = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    completionCopy[2](completionCopy, 0, backingAccountStore);
  }
}

- (void)credentialItemsWithCompletion:(id)completion
{
  completionCopy = completion;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  [backingAccountStore credentialItemsWithCompletion:completionCopy];
}

- (void)credentialItemForAccount:(id)account serviceName:(id)name completion:(id)completion
{
  completionCopy = completion;
  nameCopy = name;
  accountCopy = account;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  [backingAccountStore credentialItemForAccount:accountCopy serviceName:nameCopy completion:completionCopy];
}

- (void)insertCredentialItem:(id)item completion:(id)completion
{
  completionCopy = completion;
  itemCopy = item;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  [backingAccountStore insertCredentialItem:itemCopy completion:completionCopy];
}

- (void)saveCredentialItem:(id)item completion:(id)completion
{
  completionCopy = completion;
  itemCopy = item;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  [backingAccountStore saveCredentialItem:itemCopy completion:completionCopy];
}

- (void)removeCredentialItem:(id)item completion:(id)completion
{
  completionCopy = completion;
  itemCopy = item;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  [backingAccountStore removeCredentialItem:itemCopy completion:completionCopy];
}

- (void)enabledDataclassesForAccountWithIdentifier:(id)identifier handler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  [backingAccountStore enabledDataclassesForAccountWithIdentifier:identifierCopy handler:handlerCopy];
}

- (void)provisionedDataclassesForAccountWithIdentifier:(id)identifier handler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  [backingAccountStore provisionedDataclassesForAccountWithIdentifier:identifierCopy handler:handlerCopy];
}

- (void)dataclassesWithHandler:(id)handler
{
  handlerCopy = handler;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  [backingAccountStore dataclassesWithHandler:handlerCopy];
}

- (void)supportedDataclassesForAccountType:(id)type handler:(id)handler
{
  handlerCopy = handler;
  typeCopy = type;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  [backingAccountStore supportedDataclassesForAccountType:typeCopy handler:handlerCopy];
}

- (void)syncableDataclassesForAccountType:(id)type handler:(id)handler
{
  handlerCopy = handler;
  typeCopy = type;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  [backingAccountStore syncableDataclassesForAccountType:typeCopy handler:handlerCopy];
}

- (void)preloadDataclassOwnersWithCompletion:(id)completion
{
  completionCopy = completion;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  [backingAccountStore preloadDataclassOwnersWithCompletion:completionCopy];
}

- (void)dataclassActionsForAccountSave:(id)save completion:(id)completion
{
  completionCopy = completion;
  saveCopy = save;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  [backingAccountStore dataclassActionsForAccountSave:saveCopy completion:completionCopy];
}

- (void)dataclassActionsForAccountDeletion:(id)deletion completion:(id)completion
{
  completionCopy = completion;
  deletionCopy = deletion;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  [backingAccountStore dataclassActionsForAccountDeletion:deletionCopy completion:completionCopy];
}

- (void)isPerformingDataclassActionsForAccount:(id)account completion:(id)completion
{
  completionCopy = completion;
  accountCopy = account;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  [backingAccountStore isPerformingDataclassActionsForAccount:accountCopy completion:completionCopy];
}

- (void)accessKeysForAccountType:(id)type handler:(id)handler
{
  handlerCopy = handler;
  typeCopy = type;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  [backingAccountStore accessKeysForAccountType:typeCopy handler:handlerCopy];
}

- (void)removeAccount:(id)account withDataclassActions:(id)actions completion:(id)completion
{
  accountCopy = account;
  actionsCopy = actions;
  completionCopy = completion;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  [accountCopy _setAccountStore:backingAccountStore];

  if ([(ACDAccountStoreFilter *)self _isClientPermittedToRemoveAccount:accountCopy])
  {
    backingAccountStore2 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [backingAccountStore2 removeAccount:accountCopy withDataclassActions:actionsCopy completion:completionCopy];
  }

  else
  {
    v14 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v14];
    }

    v15 = MEMORY[0x277CCACA8];
    accountType = [accountCopy accountType];
    accountTypeDescription = [accountType accountTypeDescription];
    backingAccountStore2 = [v15 stringWithFormat:@"The application is not permitted to delete %@ accounts", accountTypeDescription];

    v18 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CB8DC0];
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObject:backingAccountStore2 forKey:*MEMORY[0x277CCA450]];
    v21 = [v18 errorWithDomain:v19 code:7 userInfo:v20];
    (*(completionCopy + 2))(completionCopy, 0, v21);
  }
}

- (void)canSaveAccount:(id)account completion:(id)completion
{
  completionCopy = completion;
  accountCopy = account;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  [backingAccountStore canSaveAccount:accountCopy completion:completionCopy];
}

- (void)saveAccount:(id)account withHandler:(id)handler
{
  v38[1] = *MEMORY[0x277D85DE8];
  accountCopy = account;
  handlerCopy = handler;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  [accountCopy _setAccountStore:backingAccountStore];

  accountType = [accountCopy accountType];
  identifier = [accountType identifier];
  v12 = [(ACDAccountStoreFilter *)self _isClientPermittedToAccessAccountTypeWithIdentifier:identifier];

  if (v12)
  {
    if ([(ACDAccountStoreFilter *)self _clientHasPermissionToAddAccount:accountCopy])
    {
      backingAccountStore2 = [(ACDAccountStoreFilter *)self backingAccountStore];
      [backingAccountStore2 saveAccount:accountCopy withHandler:handlerCopy];

      goto LABEL_13;
    }

    v22 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v22];
    }

    v23 = MEMORY[0x277CCACA8];
    backingAccountStore3 = [(ACDAccountStoreFilter *)self backingAccountStore];
    client = [backingAccountStore3 client];
    v26 = [client pid];
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
    accountType2 = [accountCopy accountType];
    accountTypeDescription = [accountType2 accountTypeDescription];
    v18 = [v15 stringWithFormat:@"The application is not permitted to access %@ accounts", accountTypeDescription];

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

  handlerCopy[2](handlerCopy, 0, v28);
LABEL_13:

  v36 = *MEMORY[0x277D85DE8];
}

- (void)insertAccountType:(id)type withHandler:(id)handler
{
  handlerCopy = handler;
  typeCopy = type;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  [backingAccountStore insertAccountType:typeCopy withHandler:handlerCopy];
}

- (void)removeAccountType:(id)type withHandler:(id)handler
{
  handlerCopy = handler;
  typeCopy = type;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  [backingAccountStore removeAccountType:typeCopy withHandler:handlerCopy];
}

- (void)requestAccessForAccountTypeWithIdentifier:(id)identifier options:(id)options withHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  identifierCopy = identifier;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  [backingAccountStore _requestAccessForAccountTypeWithIdentifier:identifierCopy options:optionsCopy allowUserInteraction:1 withHandler:handlerCopy];
}

- (void)appPermissionsForAccountType:(id)type withHandler:(id)handler
{
  handlerCopy = handler;
  typeCopy = type;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  [backingAccountStore appPermissionsForAccountType:typeCopy withHandler:handlerCopy];
}

- (void)setPermissionGranted:(id)granted forBundleID:(id)d onAccountType:(id)type withHandler:(id)handler
{
  v26[1] = *MEMORY[0x277D85DE8];
  grantedCopy = granted;
  dCopy = d;
  typeCopy = type;
  handlerCopy = handler;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  client = [backingAccountStore client];
  v17 = [client hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v17)
  {
    backingAccountStore2 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [backingAccountStore2 setPermissionGranted:grantedCopy forBundleID:dCopy onAccountType:typeCopy withHandler:handlerCopy];
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
    (*(handlerCopy + 2))(handlerCopy, 0, v23);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)permissionForAccountType:(id)type withHandler:(id)handler
{
  handlerCopy = handler;
  typeCopy = type;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  [backingAccountStore permissionForAccountType:typeCopy withHandler:handlerCopy];
}

- (void)grantedPermissionsForAccountType:(id)type withHandler:(id)handler
{
  handlerCopy = handler;
  typeCopy = type;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  [backingAccountStore grantedPermissionsForAccountType:typeCopy withHandler:handlerCopy];
}

- (void)clearGrantedPermissionsForAccountType:(id)type withHandler:(id)handler
{
  handlerCopy = handler;
  typeCopy = type;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  [backingAccountStore clearGrantedPermissionsForAccountType:typeCopy withHandler:handlerCopy];
}

- (void)clearAllPermissionsGrantedForAccountType:(id)type withHandler:(id)handler
{
  v20[1] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  handlerCopy = handler;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  client = [backingAccountStore client];
  v11 = [client hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v11)
  {
    backingAccountStore2 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [backingAccountStore2 clearAllPermissionsGrantedForAccountType:typeCopy withHandler:handlerCopy];
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
    (*(handlerCopy + 2))(handlerCopy, 0, v17);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)verifyCredentialsForAccount:(id)account options:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  accountCopy = account;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  [backingAccountStore verifyCredentialsForAccount:accountCopy options:optionsCopy completion:completionCopy];
}

- (void)renewCredentialsForAccount:(id)account options:(id)options completion:(id)completion
{
  accountCopy = account;
  optionsCopy = options;
  completionCopy = completion;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  [accountCopy _setAccountStore:backingAccountStore];

  backingAccountStore2 = [(ACDAccountStoreFilter *)self backingAccountStore];
  client = [backingAccountStore2 client];
  if ([client hasEntitlement:*MEMORY[0x277CB8FE0]])
  {

    goto LABEL_3;
  }

  backingAccountStore3 = [(ACDAccountStoreFilter *)self backingAccountStore];
  client2 = [backingAccountStore3 client];
  v17 = [client2 hasEntitlement:*MEMORY[0x277CB8FE8]];

  if (v17)
  {
    goto LABEL_5;
  }

  accountType = [accountCopy accountType];
  backingAccountStore2 = [accountType identifier];

  backingAccountStore4 = [(ACDAccountStoreFilter *)self backingAccountStore];
  client3 = [backingAccountStore4 client];
  v22 = [(ACDAccountStoreFilter *)self _accessGrantedForClient:client3 onAccountTypeID:backingAccountStore2];

  if (v22)
  {
LABEL_3:

LABEL_5:
    backingAccountStore5 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [backingAccountStore5 renewCredentialsForAccount:accountCopy options:optionsCopy completion:completionCopy];
    goto LABEL_6;
  }

  accountType2 = [accountCopy accountType];
  identifier = [accountType2 identifier];
  v25 = [identifier hasPrefix:*MEMORY[0x277CB8C88]];

  if (v25)
  {
    v26 = [(ACDAccountStoreFilter *)self _wildCardAuthorizationMatchingForAccountTypeIdentifier:backingAccountStore2];

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

  backingAccountStore5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
  completionCopy[2](completionCopy, &unk_28353F1C8, backingAccountStore5);
LABEL_6:
}

- (void)migrateCredentialForAccount:(id)account completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  [accountCopy _setAccountStore:backingAccountStore];

  backingAccountStore2 = [(ACDAccountStoreFilter *)self backingAccountStore];
  client = [backingAccountStore2 client];
  if ([client hasEntitlement:*MEMORY[0x277CB8FE0]])
  {

LABEL_4:
    backingAccountStore3 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [backingAccountStore3 migrateCredentialForAccount:accountCopy completion:completionCopy];
    goto LABEL_10;
  }

  backingAccountStore4 = [(ACDAccountStoreFilter *)self backingAccountStore];
  client2 = [backingAccountStore4 client];
  v14 = [client2 hasEntitlement:*MEMORY[0x277CB8FE8]];

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

  backingAccountStore3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
  completionCopy[2](completionCopy, 0, backingAccountStore3);
LABEL_10:
}

- (void)isTetheredSyncingEnabledForDataclass:(id)dataclass completion:(id)completion
{
  dataclassCopy = dataclass;
  completionCopy = completion;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  client = [backingAccountStore client];
  v11 = [client hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v11)
  {
    backingAccountStore2 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [backingAccountStore2 isTetheredSyncingEnabledForDataclass:dataclassCopy completion:completionCopy];
  }

  else
  {
    v13 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v13];
    }

    backingAccountStore2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    completionCopy[2](completionCopy, 0, backingAccountStore2);
  }
}

- (void)tetheredSyncSourceTypeForDataclass:(id)dataclass completion:(id)completion
{
  dataclassCopy = dataclass;
  completionCopy = completion;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  client = [backingAccountStore client];
  v11 = [client hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v11)
  {
    backingAccountStore2 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [backingAccountStore2 tetheredSyncSourceTypeForDataclass:dataclassCopy completion:completionCopy];
  }

  else
  {
    v13 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v13];
    }

    backingAccountStore2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    completionCopy[2](completionCopy, 0, backingAccountStore2);
  }
}

- (void)isPushSupportedForAccount:(id)account completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  client = [backingAccountStore client];
  v11 = [client hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v11)
  {
    backingAccountStore2 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [backingAccountStore2 isPushSupportedForAccount:accountCopy completion:completionCopy];
  }

  else
  {
    v13 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v13];
    }

    backingAccountStore2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    completionCopy[2](completionCopy, 0, backingAccountStore2);
  }
}

- (void)accountIdentifiersEnabledForDataclasses:(id)dataclasses withAccountTypeIdentifiers:(id)identifiers completion:(id)completion
{
  dataclassesCopy = dataclasses;
  identifiersCopy = identifiers;
  completionCopy = completion;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  client = [backingAccountStore client];
  v14 = [client hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v14)
  {
    backingAccountStore2 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [backingAccountStore2 accountIdentifiersEnabledForDataclasses:dataclassesCopy withAccountTypeIdentifiers:identifiersCopy completion:completionCopy];
  }

  else
  {
    v16 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v16];
    }

    backingAccountStore2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    completionCopy[2](completionCopy, 0, backingAccountStore2);
  }
}

- (void)handleURL:(id)l
{
  lCopy = l;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  client = [backingAccountStore client];
  v6 = [client hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v6)
  {
    backingAccountStore2 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [backingAccountStore2 handleURL:lCopy];
  }
}

- (void)addClientToken:(id)token forAccountIdentifier:(id)identifier completion:(id)completion
{
  tokenCopy = token;
  identifierCopy = identifier;
  completionCopy = completion;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  client = [backingAccountStore client];
  v14 = [client hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v14)
  {
    backingAccountStore2 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [backingAccountStore2 addClientToken:tokenCopy forAccountIdentifier:identifierCopy completion:completionCopy];
  }

  else
  {
    v16 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v16];
    }

    backingAccountStore2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    completionCopy[2](completionCopy, 0, backingAccountStore2);
  }
}

- (void)discoverPropertiesForAccount:(id)account options:(id)options completion:(id)completion
{
  accountCopy = account;
  optionsCopy = options;
  completionCopy = completion;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  client = [backingAccountStore client];
  v14 = [client hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v14)
  {
    backingAccountStore2 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [backingAccountStore2 discoverPropertiesForAccount:accountCopy options:optionsCopy completion:completionCopy];
  }

  else
  {
    v16 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v16];
    }

    backingAccountStore2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    completionCopy[2](completionCopy, 0, backingAccountStore2);
  }
}

- (void)clientTokenForAccountIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  client = [backingAccountStore client];
  v11 = [client hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v11)
  {
    backingAccountStore2 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [backingAccountStore2 clientTokenForAccountIdentifier:identifierCopy completion:completionCopy];
  }

  else
  {
    v13 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v13];
    }

    backingAccountStore2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    completionCopy[2](completionCopy, 0, backingAccountStore2);
  }
}

- (void)visibleTopLevelAccountsWithAccountTypeIdentifiers:(id)identifiers completion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  client = [backingAccountStore client];
  v11 = [client hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v11)
  {
    backingAccountStore2 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [backingAccountStore2 visibleTopLevelAccountsWithAccountTypeIdentifiers:identifiersCopy completion:completionCopy];
  }

  else
  {
    v13 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v13];
    }

    backingAccountStore2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    completionCopy[2](completionCopy, 0, backingAccountStore2);
  }
}

- (void)accountsWithAccountTypeIdentifiers:(id)identifiers preloadedProperties:(id)properties completion:(id)completion
{
  identifiersCopy = identifiers;
  propertiesCopy = properties;
  completionCopy = completion;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  client = [backingAccountStore client];
  v14 = [client hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v14)
  {
    backingAccountStore2 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [backingAccountStore2 accountsWithAccountTypeIdentifiers:identifiersCopy preloadedProperties:propertiesCopy completion:completionCopy];
  }

  else
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __91__ACDAccountStoreFilter_accountsWithAccountTypeIdentifiers_preloadedProperties_completion___block_invoke;
    v19[3] = &unk_27848D0B0;
    v19[4] = self;
    v16 = [identifiersCopy ac_filter:v19];
    if ([v16 count])
    {
      backingAccountStore3 = [(ACDAccountStoreFilter *)self backingAccountStore];
      [backingAccountStore3 accountsWithAccountTypeIdentifiers:v16 preloadedProperties:propertiesCopy completion:completionCopy];
    }

    else
    {
      v18 = _ACDEntitlementLogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v18];
      }

      backingAccountStore3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
      completionCopy[2](completionCopy, 0, backingAccountStore3);
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

- (void)notifyRemoteDevicesOfModifiedAccount:(id)account withChangeType:(id)type
{
  accountCopy = account;
  typeCopy = type;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  client = [backingAccountStore client];
  v11 = [client hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v11)
  {
    backingAccountStore2 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [backingAccountStore2 notifyRemoteDevicesOfModifiedAccount:accountCopy withChangeType:typeCopy];
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

- (void)notifyRemoteDevicesOfModifiedAccount:(id)account withChangeType:(id)type options:(id)options completion:(id)completion
{
  accountCopy = account;
  typeCopy = type;
  optionsCopy = options;
  completionCopy = completion;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  client = [backingAccountStore client];
  v17 = [client hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v17)
  {
    backingAccountStore2 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [backingAccountStore2 notifyRemoteDevicesOfModifiedAccount:accountCopy withChangeType:typeCopy options:optionsCopy completion:completionCopy];
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

    backingAccountStore2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    completionCopy[2](completionCopy, 0, backingAccountStore2);
  }
}

- (void)saveAccount:(id)account toPairedDeviceWithOptions:(id)options completion:(id)completion
{
  accountCopy = account;
  optionsCopy = options;
  completionCopy = completion;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  client = [backingAccountStore client];
  v14 = [client hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v14)
  {
    backingAccountStore2 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [backingAccountStore2 saveAccount:accountCopy toPairedDeviceWithOptions:optionsCopy completion:completionCopy];
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

    backingAccountStore2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    completionCopy[2](completionCopy, 0, backingAccountStore2);
  }
}

- (void)removeAccountsFromPairedDeviceWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  client = [backingAccountStore client];
  v11 = [client hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v11)
  {
    backingAccountStore2 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [backingAccountStore2 removeAccountsFromPairedDeviceWithOptions:optionsCopy completion:completionCopy];
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

    backingAccountStore2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    completionCopy[2](completionCopy, 0, backingAccountStore2);
  }
}

- (void)removeAccountFromPairedDevice:(id)device withOptions:(id)options completion:(id)completion
{
  deviceCopy = device;
  optionsCopy = options;
  completionCopy = completion;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  client = [backingAccountStore client];
  v14 = [client hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v14)
  {
    backingAccountStore2 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [backingAccountStore2 removeAccountFromPairedDevice:deviceCopy withOptions:optionsCopy completion:completionCopy];
  }

  else
  {
    v16 = _ACLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)deviceCopy removeAccountFromPairedDevice:v16 withOptions:v17 completion:v18, v19, v20, v21, v22];
    }

    v23 = _ACDEntitlementLogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [(ACDAccountStoreFilter *)self setClientBundleID:a2 withHandler:v23];
    }

    backingAccountStore2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    completionCopy[2](completionCopy, 0, backingAccountStore2);
  }
}

- (void)triggerKeychainMigrationIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  client = [backingAccountStore client];
  v8 = [client hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v8)
  {
    backingAccountStore2 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [backingAccountStore2 triggerKeychainMigrationIfNecessary:necessaryCopy];
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
    (*(necessaryCopy + 2))(necessaryCopy, 0, v11);
  }
}

- (void)runAccountMigrationPlugins:(id)plugins
{
  pluginsCopy = plugins;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  client = [backingAccountStore client];
  v8 = [client hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v8)
  {
    backingAccountStore2 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [backingAccountStore2 runAccountMigrationPlugins:pluginsCopy];
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
    (*(pluginsCopy + 2))(pluginsCopy, 0, v11);
  }
}

- (void)scheduleBackupIfNonexistent:(id)nonexistent
{
  nonexistentCopy = nonexistent;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  client = [backingAccountStore client];
  v8 = [client hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v8)
  {
    backingAccountStore2 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [backingAccountStore2 scheduleBackupIfNonexistent:nonexistentCopy];
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
    (*(nonexistentCopy + 2))(nonexistentCopy, 0, v11);
  }
}

- (void)resetDatabaseToVersion:(id)version withCompletion:(id)completion
{
  versionCopy = version;
  completionCopy = completion;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  client = [backingAccountStore client];
  v11 = [client hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v11)
  {
    backingAccountStore2 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [backingAccountStore2 resetDatabaseToVersion:versionCopy withCompletion:completionCopy];
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

    backingAccountStore2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    completionCopy[2](completionCopy, 0, backingAccountStore2);
  }
}

- (void)shutdownAccountsD:(id)d
{
  dCopy = d;
  backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
  client = [backingAccountStore client];
  v8 = [client hasEntitlement:*MEMORY[0x277CB9058]];

  if (v8)
  {
    backingAccountStore2 = [(ACDAccountStoreFilter *)self backingAccountStore];
    [backingAccountStore2 shutdownAccountsD:dCopy];
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
    (*(dCopy + 2))(dCopy, 0, v11);
  }
}

- (void)registerMonitorForAccountsOfTypes:(id)types propertiesToPrefetch:(id)prefetch completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  prefetchCopy = prefetch;
  completionCopy = completion;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = [typesCopy countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = v11;
  v20 = prefetchCopy;
  v13 = *v22;
  v14 = 1;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v22 != v13)
      {
        objc_enumerationMutation(typesCopy);
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

    v12 = [typesCopy countByEnumeratingWithState:&v21 objects:v27 count:16];
  }

  while (v12);
  prefetchCopy = v20;
  if ((v14 & 1) == 0)
  {
    backingAccountStore = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:7 userInfo:0];
    completionCopy[2](completionCopy, 0, backingAccountStore);
  }

  else
  {
LABEL_13:
    backingAccountStore = [(ACDAccountStoreFilter *)self backingAccountStore];
    [backingAccountStore registerMonitorForAccountsOfTypes:typesCopy propertiesToPrefetch:prefetchCopy completion:completionCopy];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)uidOfAccountsd:(id)accountsd
{
  accountsdCopy = accountsd;
  v4 = geteuid();
  (*(accountsd + 2))(accountsdCopy, v4);
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