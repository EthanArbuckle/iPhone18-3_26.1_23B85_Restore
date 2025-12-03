@interface ACDAccountStore
+ (id)accountCache;
- (ACDAccountStore)init;
- (ACDAccountStore)initWithClient:(id)client databaseConnection:(id)connection;
- (ACDAccountStoreDelegate)delegate;
- (ACDClient)client;
- (BOOL)_canManagedAccountType:(id)type syncManagedDataclass:(id)dataclass;
- (BOOL)_canSaveAccount:(id)account error:(id *)error;
- (BOOL)_handleAccountAdd:(id)add withDataclassActions:(id)actions error:(id *)error;
- (BOOL)_handleAccountMod:(id)mod withDataclassActions:(id)actions withError:(id *)error;
- (BOOL)_isManagedAccount:(id)account enabledForManagedDataclass:(id)dataclass;
- (BOOL)_performDataclassActions:(id)actions forAccount:(id)account error:(id *)error;
- (BOOL)_removeAccountNoSave:(id)save withDataclassActions:(id)actions withError:(id *)error;
- (BOOL)_saveWithError:(id *)error;
- (BOOL)_updateAccountNoSave:(id)save withDataclassActions:(id)actions error:(id *)error;
- (BOOL)accountsExistWithAccountTypeIdentifier:(id)identifier;
- (id)_accountTypeWithIdentifier:(id)identifier;
- (id)_accountWithIdentifier:(id)identifier;
- (id)_accountWithIdentifier:(id)identifier prefetchKeypaths:(id)keypaths;
- (id)_accountsWithAccountType:(id)type options:(unint64_t)options error:(id *)error;
- (id)_addAccountNoSave:(id)save withDataclassActions:(id)actions error:(id *)error;
- (id)_allAccounts_sync;
- (id)_childAccountsForAccountWithID:(id)d;
- (id)_clientTokenForAccountIdentifier:(id)identifier error:(id)error;
- (id)_clientTokenQueue;
- (id)_commitOrRollbackDataclassActions:(id)actions forAccount:(id)account originalEnabledDataclasses:(id)dataclasses;
- (id)_credentialItemWithAccountIdentifier:(id)identifier serviceName:(id)name;
- (id)_dataclassWithName:(id)name createIfNecessary:(BOOL)necessary;
- (id)_displayAccountForAccount:(id)account;
- (id)_legacyCredentialForAccount:(id)account client:(id)client error:(id *)error;
- (id)_lockForAccountType:(id)type;
- (id)_predicateForFetchingAccountsWithManagedAccountTypeID:(id)d options:(unint64_t)options;
- (id)_sync_accountWithIdentifier:(id)identifier;
- (id)accountTypeWithIdentifier:(id)identifier;
- (id)accountsWithAccountTypeIdentifier:(id)identifier;
- (id)clientTokenForAccount:(id)account;
- (id)masterCredentialForAccountIdentifier:(id)identifier;
- (id)remoteAccountStoreSession;
- (void)_completeSave:(id)save dataclassActions:(id)actions completion:(id)completion;
- (void)_deleteAccountNoSave:(id)save withDataclassActions:(id)actions error:(id *)error;
- (void)_pruneDuplicateAccountsForAccountType:(id)type withUserName:(id)name error:(id *)error;
- (void)_removeClientTokenForAccountIdentifer:(id)identifer;
- (void)_setAccountManagedObjectRelationships:(id)relationships withAccount:(id)account oldAccount:(id)oldAccount error:(id *)error;
- (void)accessKeysForAccountType:(id)type handler:(id)handler;
- (void)accountExistsWithDescription:(id)description completion:(id)completion;
- (void)accountIdentifiersEnabledForDataclass:(id)dataclass handler:(id)handler;
- (void)accountIdentifiersEnabledForDataclasses:(id)dataclasses withAccountTypeIdentifiers:(id)identifiers completion:(id)completion;
- (void)accountIdentifiersEnabledToSyncDataclass:(id)dataclass handler:(id)handler;
- (void)accountTypeWithIdentifier:(id)identifier handler:(id)handler;
- (void)accountTypesWithHandler:(id)handler;
- (void)accountWithIdentifier:(id)identifier handler:(id)handler;
- (void)accountsOnPairedDeviceWithAccountTypes:(id)types withOptions:(id)options handler:(id)handler;
- (void)accountsWithAccountType:(id)type options:(unint64_t)options completion:(id)completion;
- (void)accountsWithAccountTypeIdentifiers:(id)identifiers preloadedProperties:(id)properties completion:(id)completion;
- (void)accountsWithHandler:(id)handler;
- (void)addAccountNoSave:(id)save error:(id *)error;
- (void)addClientToken:(id)token forAccountIdentifier:(id)identifier completion:(id)completion;
- (void)appPermissionsForAccountType:(id)type withHandler:(id)handler;
- (void)cacheGenerationForAccounts:(id)accounts cacheSuffix:(id)suffix;
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
- (void)deleteAccountNoSave:(id)save error:(id *)error;
- (void)discoverPropertiesForAccount:(id)account options:(id)options completion:(id)completion;
- (void)displayAccountTypeForAccountWithIdentifier:(id)identifier handler:(id)handler;
- (void)enabledDataclassesForAccountWithIdentifier:(id)identifier handler:(id)handler;
- (void)grantedPermissionsForAccountType:(id)type withHandler:(id)handler;
- (void)handleURL:(id)l;
- (void)init;
- (void)insertAccountType:(id)type withHandler:(id)handler;
- (void)insertCredentialItem:(id)item completion:(id)completion;
- (void)isPerformingDataclassActionsForAccount:(id)account completion:(id)completion;
- (void)isPushSupportedForAccount:(id)account completion:(id)completion;
- (void)isTetheredSyncingEnabledForDataclass:(id)dataclass completion:(id)completion;
- (void)kerberosAccountsForDomainFromURL:(id)l completion:(id)completion;
- (void)migrateCredentialForAccount:(id)account completion:(id)completion;
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
- (void)resetDatabaseToVersion:(id)version withCompletion:(id)completion;
- (void)runAccountMigrationPlugins:(id)plugins;
- (void)saveAccount:(id)account toPairedDeviceWithOptions:(id)options completion:(id)completion;
- (void)saveAccount:(id)account verify:(BOOL)verify dataclassActions:(id)actions completion:(id)completion;
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
- (void)updateAccountNoSave:(id)save error:(id *)error;
- (void)verifyCredentialsForAccount:(id)account options:(id)options completion:(id)completion;
- (void)visibleTopLevelAccountsWithAccountTypeIdentifiers:(id)identifiers completion:(id)completion;
@end

@implementation ACDAccountStore

- (ACDClient)client
{
  WeakRetained = objc_loadWeakRetained(&self->_client);

  return WeakRetained;
}

+ (id)accountCache
{
  if (accountCache_onceToken != -1)
  {
    +[ACDAccountStore accountCache];
  }

  v3 = accountCache__cache;

  return v3;
}

void __36__ACDAccountStore__allAccounts_sync__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"date" ascending:1];
  v3 = *(*(a1 + 32) + 120);
  v4 = [MEMORY[0x277CB8F30] keypathsRequiredForInitialization];
  v5 = [v3 fetchObjectsForEntityNamed:@"Account" withPredicate:0 sortDescriptor:v2 prefetchKeypaths:v4];

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        v15 = objc_alloc(MEMORY[0x277CB8F30]);
        v16 = [v15 initWithManagedAccount:v14 accountStore:{*(a1 + 32), v19}];
        if (v16)
        {
          [*(*(*(a1 + 40) + 8) + 40) addObject:v16];
          v17 = +[ACDAccountStore accountCache];
          [v17 cacheAccount:v16];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __31__ACDAccountStore_accountCache__block_invoke()
{
  if (!accountCache__cache)
  {
    accountCache__cache = [[ACDAccountCache alloc] initWithValidityDuration:30];

    MEMORY[0x2821F96F8]();
  }
}

- (ACDAccountStore)init
{
  v3 = _ACDLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [ACDAccountStore init];
  }

  return [(ACDAccountStore *)self initWithClient:0 databaseConnection:0];
}

- (ACDAccountStore)initWithClient:(id)client databaseConnection:(id)connection
{
  clientCopy = client;
  connectionCopy = connection;
  v15.receiver = self;
  v15.super_class = ACDAccountStore;
  v8 = [(ACDAccountStore *)&v15 init];
  if (v8)
  {
    v9 = _ACDLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [ACDAccountStore initWithClient:databaseConnection:];
    }

    objc_storeWeak(&v8->_client, clientCopy);
    objc_storeStrong(&v8->_databaseConnection, connection);
    v8->_notificationsEnabled = 1;
    v8->_migrationInProgress = 0;
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    accountChanges = v8->_accountChanges;
    v8->_accountChanges = v10;

    v12 = [[ACDClientAuthorizationManager alloc] initWithDatabaseConnection:v8->_databaseConnection];
    authorizationManager = v8->_authorizationManager;
    v8->_authorizationManager = v12;
  }

  return v8;
}

- (id)accountTypeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v5 = +[ACDAccountStore accountCache];
  v18 = [v5 cachedAccountTypeForID:identifierCopy];

  v6 = v14[5];
  if (v6)
  {
    [v6 setAccountStore:self];
  }

  else
  {
    managedObjectContext = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __45__ACDAccountStore_accountTypeWithIdentifier___block_invoke;
    v10[3] = &unk_27848BF28;
    v10[4] = self;
    v11 = identifierCopy;
    v12 = &v13;
    [managedObjectContext performBlockAndWait:v10];
  }

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __45__ACDAccountStore_accountTypeWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _accountTypeWithIdentifier:*(a1 + 40)];
  if (v2)
  {
    v7 = v2;
    v3 = [objc_alloc(MEMORY[0x277CB8F58]) initWithManagedAccountType:v2 accountStore:*(a1 + 32)];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = +[ACDAccountStore accountCache];
    [v6 cacheAccountType:*(*(*(a1 + 48) + 8) + 40)];

    v2 = v7;
  }
}

- (id)accountsWithAccountTypeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  managedObjectContext = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__ACDAccountStore_accountsWithAccountTypeIdentifier___block_invoke;
  v9[3] = &unk_27848BF28;
  v6 = identifierCopy;
  v10 = v6;
  selfCopy = self;
  v12 = &v13;
  [managedObjectContext performBlockAndWait:v9];

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

void __53__ACDAccountStore_accountsWithAccountTypeIdentifier___block_invoke(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"accountType.identifier == %@", a1[4]];
  v3 = *(a1[5] + 120);
  v4 = [MEMORY[0x277CB8F30] keypathsRequiredForInitialization];
  v5 = [v3 fetchObjectsForEntityNamed:@"Account" withPredicate:v2 sortDescriptor:0 prefetchKeypaths:v4];

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [objc_alloc(MEMORY[0x277CB8F30]) initWithManagedAccount:*(*(&v16 + 1) + 8 * v13) accountStore:a1[5]];
        if (v14)
        {
          [*(*(a1[6] + 8) + 40) addObject:v14];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)accountsOnPairedDeviceWithAccountTypes:(id)types withOptions:(id)options handler:(id)handler
{
  typesCopy = types;
  handlerCopy = handler;
  optionsCopy = options;
  v11 = _ACDLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccountStore accountsOnPairedDeviceWithAccountTypes:withOptions:handler:];
  }

  v12 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277CB8EE0]];
  bOOLValue = [v12 BOOLValue];

  v14 = +[ACDPairedDeviceAccountCache sharedInstance];
  remoteDeviceProxy = self->_remoteDeviceProxy;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __78__ACDAccountStore_accountsOnPairedDeviceWithAccountTypes_withOptions_handler___block_invoke;
  v18[3] = &unk_27848C1F0;
  v19 = typesCopy;
  v20 = handlerCopy;
  v16 = handlerCopy;
  v17 = typesCopy;
  [v14 accountsFromRemoteDeviceProxy:remoteDeviceProxy ignoreCache:bOOLValue options:optionsCopy completion:v18];
}

void __78__ACDAccountStore_accountsOnPairedDeviceWithAccountTypes_withOptions_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v19 = 0;
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v20 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v14 = *(a1 + 32);
          v15 = [v13 accountType];
          v16 = [v15 identifier];
          LODWORD(v14) = [v14 containsObject:v16];

          if (v14)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    v6 = v19;
    v5 = v20;
  }

  v17 = *(a1 + 40);
  if (v17)
  {
    (*(v17 + 16))(v17, v7, v6);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)accountsExistWithAccountTypeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  managedObjectContext = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__ACDAccountStore_accountsExistWithAccountTypeIdentifier___block_invoke;
  v8[3] = &unk_27848BF28;
  v6 = identifierCopy;
  v9 = v6;
  selfCopy = self;
  v11 = &v12;
  [managedObjectContext performBlockAndWait:v8];

  LOBYTE(self) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return self;
}

void __58__ACDAccountStore_accountsExistWithAccountTypeIdentifier___block_invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"accountType.identifier == %@", a1[4]];
  v3 = _ACDLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[4];
    *buf = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v2;
    _os_log_impl(&dword_221D2F000, v3, OS_LOG_TYPE_DEFAULT, "Determining account existent: %@, %@", buf, 0x16u);
  }

  v5 = [*(a1[5] + 120) countOfEntityNamed:@"Account" withPredicate:v2];
  v6 = _ACDLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
    *buf = 138412290;
    v10 = v7;
    _os_log_impl(&dword_221D2F000, v6, OS_LOG_TYPE_DEFAULT, "Number of account is %@", buf, 0xCu);
  }

  *(*(a1[6] + 8) + 24) = v5 != 0;
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_removeAccountNoSave:(id)save withDataclassActions:(id)actions withError:(id *)error
{
  v83 = *MEMORY[0x277D85DE8];
  saveCopy = save;
  actionsCopy = actions;
  v10 = _ACDLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccountStore _removeAccountNoSave:withDataclassActions:withError:];
  }

  if ([(ACDAccountStore *)self notificationsEnabled])
  {
    accountNotifier = [(ACDAccountStore *)self accountNotifier];
    v77 = 0;
    v12 = [accountNotifier canRemoveAccount:saveCopy inStore:self error:&v77];
    v13 = v77;

    if ((v12 & 1) == 0)
    {
      if (error)
      {
        v49 = v13;
        v19 = 0;
        *error = v13;
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_49;
    }

    v14 = _ACDLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [saveCopy identifier];
      *buf = 138412290;
      v82 = identifier;
      _os_log_impl(&dword_221D2F000, v14, OS_LOG_TYPE_DEFAULT, "Plugins did not deny account %@ removal", buf, 0xCu);
    }
  }

  databaseConnection = self->_databaseConnection;
  objectID = [saveCopy objectID];
  v13 = [(ACDDatabaseConnection *)databaseConnection existingObjectWithURI:objectID];

  v18 = [objc_alloc(MEMORY[0x277CB8F30]) initWithManagedAccount:v13 accountStore:self];
  [v18 _loadAllCachedProperties];
  v19 = v13 != 0;
  if (v13)
  {
    v61 = actionsCopy;
    v62 = v18;
    v20 = _ACDLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v82 = saveCopy;
      _os_log_impl(&dword_221D2F000, v20, OS_LOG_TYPE_DEFAULT, "%@ is being deleted.", buf, 0xCu);
    }

    identifier2 = [saveCopy identifier];
    v22 = [(ACDAccountStore *)self _childAccountsForAccountWithID:identifier2];

    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v23 = v22;
    v24 = [v23 countByEnumeratingWithState:&v73 objects:v80 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v74;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v74 != v26)
          {
            objc_enumerationMutation(v23);
          }

          [*(*(&v73 + 1) + 8 * i) _loadAllCachedProperties];
        }

        v25 = [v23 countByEnumeratingWithState:&v73 objects:v80 count:16];
      }

      while (v25);
    }

    v60 = saveCopy;
    if ([(ACDAccountStore *)self notificationsEnabled]&& ![(ACDAccountStore *)self isMigrationInProgress])
    {
      accountNotifier2 = [(ACDAccountStore *)self accountNotifier];
      [accountNotifier2 postWillChangeNotificationForType:3 inStore:self newAccount:0 oldAccount:v62];

      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v29 = v23;
      v30 = [v29 countByEnumeratingWithState:&v69 objects:v79 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v70;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v70 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v69 + 1) + 8 * j);
            accountNotifier3 = [(ACDAccountStore *)self accountNotifier];
            [accountNotifier3 postWillChangeNotificationForType:3 inStore:self newAccount:0 oldAccount:v34];
          }

          v31 = [v29 countByEnumeratingWithState:&v69 objects:v79 count:16];
        }

        while (v31);
      }

      saveCopy = v60;
    }

    [(ACDAccountStore *)self _performDataclassActions:v61 forAccount:saveCopy error:error];
    v36 = [saveCopy objectForKeyedSubscript:@"AccountSyncDelete"];
    if (v36 && (v37 = v36, [saveCopy objectForKeyedSubscript:@"AccountSyncDelete"], v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v38, "BOOLValue"), v38, v37, (v39 & 1) == 0))
    {
      v42 = _ACDLogSystem();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        [ACDAccountStore _removeAccountNoSave:withDataclassActions:withError:];
      }
    }

    else
    {
      [ACDKeychainManager removeCredentialForAccount:v62 clientID:0 error:0];
      identifier3 = [v13 identifier];
      _clientTokenQueue = [(ACDAccountStore *)self _clientTokenQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __71__ACDAccountStore__removeAccountNoSave_withDataclassActions_withError___block_invoke;
      block[3] = &unk_27848BFF0;
      block[4] = self;
      v68 = identifier3;
      v42 = identifier3;
      dispatch_async(_clientTokenQueue, block);
    }

    [(ACDDatabaseConnection *)self->_databaseConnection deleteObject:v13];
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v45 = v23;
    v50 = [v45 countByEnumeratingWithState:&v63 objects:v78 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v64;
      do
      {
        for (k = 0; k != v51; ++k)
        {
          if (*v64 != v52)
          {
            objc_enumerationMutation(v45);
          }

          accountChanges = self->_accountChanges;
          v55 = [ACDAccountChange changeWithChangeType:3 account:0 oldAccount:*(*(&v63 + 1) + 8 * k)];
          [(NSMutableArray *)accountChanges addObject:v55];
        }

        v51 = [v45 countByEnumeratingWithState:&v63 objects:v78 count:16];
      }

      while (v51);
    }

    v56 = self->_accountChanges;
    v18 = v62;
    v48 = [ACDAccountChange changeWithChangeType:3 account:0 oldAccount:v62];
    [(NSMutableArray *)v56 addObject:v48];
    saveCopy = v60;
    actionsCopy = v61;
    v19 = v13 != 0;
    goto LABEL_45;
  }

  if (error)
  {
    v43 = MEMORY[0x277CCACA8];
    identifier4 = [saveCopy identifier];
    v45 = [v43 stringWithFormat:@"Failed to remove account with identifier %@ because it does not exist", identifier4];

    v46 = MEMORY[0x277CCA9B8];
    v47 = *MEMORY[0x277CB8DC0];
    v48 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v45 forKey:*MEMORY[0x277CCA450]];
    *error = [v46 errorWithDomain:v47 code:6 userInfo:v48];
LABEL_45:
  }

  v57 = _ACDLogSystem();
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccountStore _removeAccountNoSave:withDataclassActions:withError:];
  }

LABEL_49:
  v58 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)_saveWithError:(id *)error
{
  v154 = *MEMORY[0x277D85DE8];
  v5 = _ACDLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccountStore _saveWithError:];
  }

  v6 = _ACDSaveLogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);

  selfCopy = self;
  errorCopy = error;
  if (v7)
  {
    v141 = 0u;
    v142 = 0u;
    v139 = 0u;
    v140 = 0u;
    v8 = self->_accountChanges;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v139 objects:v150 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v140;
      v115 = *MEMORY[0x277CB8E40];
      v113 = &buf[16];
      v114 = *MEMORY[0x277CB8E60];
      v112 = v144;
      v117 = *v140;
      obj = v8;
      do
      {
        v12 = 0;
        do
        {
          if (*v140 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v139 + 1) + 8 * v12);
          account = [v13 account];
          v15 = account;
          if (account)
          {
            oldAccount = account;
          }

          else
          {
            oldAccount = [v13 oldAccount];
          }

          v17 = oldAccount;

          v18 = _ACDSaveLogSystem();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            client = [(ACDAccountStore *)self client];
            v123 = ACDStringFromChangeType([v13 changeType]);
            account2 = [v13 account];
            if (account2)
            {
              v116 = client;
              v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
              dirtyProperties = [account2 dirtyProperties];
              v23 = [dirtyProperties mutableCopy];

              [v23 removeObject:v115];
              [v23 removeObject:v114];
              if ([v23 count])
              {
                v24 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v23, "count")}];
                *buf = MEMORY[0x277D85DD0];
                *&buf[8] = 3221225472;
                *&buf[16] = ___ACDChangeDictionaryForAccount_block_invoke;
                v152 = &unk_27848C768;
                *&v153 = account2;
                *(&v153 + 1) = v24;
                v25 = v24;
                [v23 enumerateObjectsUsingBlock:buf];
                [v21 setObject:v25 forKeyedSubscript:@"dirtyProperties"];
              }

              dirtyAccountProperties = [account2 dirtyAccountProperties];
              v27 = [dirtyAccountProperties copy];

              if ([v27 count])
              {
                v28 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v27, "count")}];
                v143[0] = MEMORY[0x277D85DD0];
                v143[1] = 3221225472;
                v144[0] = ___ACDChangeDictionaryForAccount_block_invoke_3;
                v144[1] = &unk_27848C768;
                v145 = v28;
                v146 = account2;
                v29 = v28;
                [v27 enumerateObjectsUsingBlock:v143];
                [v21 setObject:v29 forKeyedSubscript:@"dirtyAccountProperties"];
              }

              self = selfCopy;
              client = v116;
            }

            else
            {
              v21 = 0;
            }

            *buf = 138544131;
            *&buf[4] = client;
            *&buf[12] = 2114;
            *&buf[14] = v123;
            *&buf[22] = 2113;
            v152 = v17;
            LOWORD(v153) = 2113;
            *(&v153 + 2) = v21;
            _os_log_debug_impl(&dword_221D2F000, v18, OS_LOG_TYPE_DEBUG, "%{public}@ %{public}@ account: %{private}@, changes: %{private}@", buf, 0x2Au);

            v11 = v117;
            v8 = obj;
          }

          ++v12;
        }

        while (v10 != v12);
        v30 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v139 objects:v150 count:16];
        v10 = v30;
      }

      while (v30);
    }
  }

  databaseConnection = self->_databaseConnection;
  v138 = 0;
  errorCopy = [(ACDDatabaseConnection *)databaseConnection saveWithError:&v138, errorCopy];
  v122 = v138;
  v32 = _ACLogSystem();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccountStore _saveWithError:];
  }

  databaseConnection = [(ACDAccountStore *)self databaseConnection];
  managedObjectContext = [databaseConnection managedObjectContext];
  [managedObjectContext refreshAllObjects];

  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  obja = self->_accountChanges;
  v35 = [(NSMutableArray *)obja countByEnumeratingWithState:&v134 objects:v149 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v135;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v135 != v37)
        {
          objc_enumerationMutation(obja);
        }

        v39 = *(*(&v134 + 1) + 8 * i);
        account3 = [v39 account];

        if (account3)
        {
          v41 = +[ACDAccountStore accountCache];
          account4 = [v39 account];
          [v41 removeAccount:account4 store:self];

          account5 = [v39 account];
          accountType = [account5 accountType];
          v45 = [(ACDAccountStore *)self _block_accountsWithAccountType:accountType options:1 error:0];

          if (v45)
          {
            v46 = +[ACDAccountStore accountCache];
            account6 = [v39 account];
            accountType2 = [account6 accountType];
            identifier = [accountType2 identifier];
            [v46 cacheAccounts:v45 forType:identifier justActive:0];

            self = selfCopy;
          }

          account7 = [v39 account];
          accountType3 = [account7 accountType];
          v52 = [(ACDAccountStore *)self _block_accountsWithAccountType:accountType3 options:0 error:0];

          if (!v52)
          {
            goto LABEL_43;
          }

          v53 = +[ACDAccountStore accountCache];
          account8 = [v39 account];
          goto LABEL_42;
        }

        oldAccount2 = [v39 oldAccount];

        if (!oldAccount2)
        {
          continue;
        }

        v56 = +[ACDAccountStore accountCache];
        oldAccount3 = [v39 oldAccount];
        [v56 removeAccount:oldAccount3 store:self];

        oldAccount4 = [v39 oldAccount];
        accountType4 = [oldAccount4 accountType];
        v45 = [(ACDAccountStore *)self _block_accountsWithAccountType:accountType4 options:1 error:0];

        if (v45)
        {
          v60 = +[ACDAccountStore accountCache];
          oldAccount5 = [v39 oldAccount];
          accountType5 = [oldAccount5 accountType];
          identifier2 = [accountType5 identifier];
          [v60 cacheAccounts:v45 forType:identifier2 justActive:0];

          self = selfCopy;
        }

        oldAccount6 = [v39 oldAccount];
        accountType6 = [oldAccount6 accountType];
        v52 = [(ACDAccountStore *)self _block_accountsWithAccountType:accountType6 options:0 error:0];

        if (v52)
        {
          v53 = +[ACDAccountStore accountCache];
          account8 = [v39 oldAccount];
LABEL_42:
          v66 = account8;
          accountType7 = [account8 accountType];
          identifier3 = [accountType7 identifier];
          [v53 cacheAccounts:v52 forType:identifier3 justActive:1];

          self = selfCopy;
        }

LABEL_43:
      }

      v36 = [(NSMutableArray *)obja countByEnumeratingWithState:&v134 objects:v149 count:16];
    }

    while (v36);
  }

  v69 = _ACLogSystem();
  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccountStore _saveWithError:];
  }

  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v70 = self->_accountChanges;
  v71 = [(NSMutableArray *)v70 countByEnumeratingWithState:&v130 objects:v148 count:16];
  v72 = v122;
  if (v71)
  {
    v73 = v71;
    v74 = *v131;
    objb = *v131;
    do
    {
      for (j = 0; j != v73; ++j)
      {
        if (*v131 != v74)
        {
          objc_enumerationMutation(v70);
        }

        v76 = *(*(&v130 + 1) + 8 * j);
        if (!v72 && ([*(*(&v130 + 1) + 8 * j) changeType] == 1 || objc_msgSend(v76, "changeType") == 5))
        {
          account9 = [v76 account];
          objectID = [account9 objectID];

          if (!objectID)
          {
            account10 = [v76 account];
            account11 = [v76 account];
            [account11 identifier];
            v82 = v81 = v70;
            v83 = [(ACDAccountStore *)self _accountWithIdentifier:v82 prefetchKeypaths:0];
            objectID2 = [v83 objectID];
            uRIRepresentation = [objectID2 URIRepresentation];
            [account10 _setObjectID:uRIRepresentation];

            v72 = v122;
            self = selfCopy;

            v70 = v81;
            v74 = objb;
          }
        }

        if (errorCopy)
        {
          if ([v76 changeType] == 3)
          {
            oldAccount7 = [v76 oldAccount];
            -[ACDAccountStore _delegate_accountStoreDidSaveAccount:changeType:](self, "_delegate_accountStoreDidSaveAccount:changeType:", oldAccount7, [v76 changeType]);
          }

          else
          {
            account12 = [v76 account];
            identifier4 = [account12 identifier];
            oldAccount7 = [(ACDAccountStore *)self _block_accountWithIdentifier:identifier4];

            if (oldAccount7)
            {
              account13 = [v76 account];
              [oldAccount7 _applyDirtyStateFromAccount:account13];

              -[ACDAccountStore _delegate_accountStoreDidSaveAccount:changeType:](self, "_delegate_accountStoreDidSaveAccount:changeType:", oldAccount7, [v76 changeType]);
            }

            else
            {
              v90 = _ACDLogSystem();
              if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
              {
                [(ACDAccountStore *)buf _saveWithError:v90];
              }

              account14 = [v76 account];
              -[ACDAccountStore _delegate_accountStoreDidSaveAccount:changeType:](self, "_delegate_accountStoreDidSaveAccount:changeType:", account14, [v76 changeType]);
            }

            v72 = v122;
          }
        }
      }

      v73 = [(NSMutableArray *)v70 countByEnumeratingWithState:&v130 objects:v148 count:16];
    }

    while (v73);
  }

  if (v72)
  {
    v92 = _ACDLogSystem();
    if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
    {
      [ACDAccountStore _saveWithError:];
    }

    if (v111)
    {
      *v111 = [v72 ac_secureCodingError];
    }
  }

  v93 = [(NSMutableArray *)self->_accountChanges copy];
  [(NSMutableArray *)self->_accountChanges removeAllObjects];
  if ([(ACDAccountStore *)self notificationsEnabled]&& ![(ACDAccountStore *)self isMigrationInProgress])
  {
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    objc = v93;
    v94 = v93;
    v95 = [v94 countByEnumeratingWithState:&v126 objects:v147 count:16];
    if (v95)
    {
      v96 = v95;
      v97 = *v127;
      v98 = *MEMORY[0x277CB8EC0];
      do
      {
        for (k = 0; k != v96; ++k)
        {
          if (*v127 != v97)
          {
            objc_enumerationMutation(v94);
          }

          v100 = *(*(&v126 + 1) + 8 * k);
          accountNotifier = [(ACDAccountStore *)self accountNotifier];
          if (v72)
          {
            account15 = [v100 account];
            oldAccount8 = [v100 oldAccount];
            [accountNotifier postDidChangeNotificationForType:4 inStore:self newAccount:account15 oldAccount:oldAccount8];
          }

          else
          {
            changeType = [v100 changeType];
            account16 = [v100 account];
            oldAccount9 = [v100 oldAccount];
            [accountNotifier postDidChangeNotificationForType:changeType inStore:selfCopy newAccount:account16 oldAccount:oldAccount9];

            self = selfCopy;
            if ([v100 changeType] == 1 || objc_msgSend(v100, "changeType") == 3)
            {
              [(ACRemoteDeviceProxy *)selfCopy->_remoteDeviceProxy sendCommand:v98 withAccount:0 completion:0];
            }
          }

          v72 = v122;
        }

        v96 = [v94 countByEnumeratingWithState:&v126 objects:v147 count:16];
      }

      while (v96);
    }

    v93 = objc;
  }

  v107 = _ACDLogSystem();
  if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccountStore _saveWithError:];
  }

  v108 = *MEMORY[0x277D85DE8];
  return errorCopy;
}

- (id)_commitOrRollbackDataclassActions:(id)actions forAccount:(id)account originalEnabledDataclasses:(id)dataclasses
{
  accountCopy = account;
  dataclassesCopy = dataclasses;
  v9 = MEMORY[0x277CBEB38];
  actionsCopy = actions;
  v11 = [[v9 alloc] initWithCapacity:{objc_msgSend(actionsCopy, "count")}];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __91__ACDAccountStore__commitOrRollbackDataclassActions_forAccount_originalEnabledDataclasses___block_invoke;
  v17[3] = &unk_27848C218;
  v18 = v11;
  v19 = accountCopy;
  v20 = dataclassesCopy;
  v12 = dataclassesCopy;
  v13 = accountCopy;
  v14 = v11;
  [actionsCopy enumerateKeysAndObjectsUsingBlock:v17];

  v15 = [v14 copy];

  return v15;
}

void __91__ACDAccountStore__commitOrRollbackDataclassActions_forAccount_originalEnabledDataclasses___block_invoke(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v5 _isError])
  {
    if ([a1[5] isPropertyDirty:*MEMORY[0x277CB8E70]])
    {
      [a1[5] setEnabled:objc_msgSend(a1[6] forDataclass:{"containsObject:", v6), v6}];
    }
  }

  else
  {
    [a1[4] setObject:v5 forKey:v6];
  }
}

- (BOOL)_performDataclassActions:(id)actions forAccount:(id)account error:(id *)error
{
  actionsCopy = actions;
  accountCopy = account;
  if ([actionsCopy count])
  {
    v10 = _ACDLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ACDAccountStore _performDataclassActions:forAccount:error:];
    }

    identifier = [accountCopy identifier];
    v12 = [(ACDAccountStore *)self _childAccountsForAccountWithID:identifier];

    accountNotifier = [(ACDAccountStore *)self accountNotifier];
    allKeys = [actionsCopy allKeys];
    [accountNotifier postWillPerformDataclassActionsOnAccount:accountCopy forDataclasses:allKeys];

    dataclassOwnersManager = [(ACDAccountStore *)self dataclassOwnersManager];
    v24 = 0;
    v16 = [dataclassOwnersManager performDataclassActions:actionsCopy forAccount:accountCopy withChildren:v12 withError:&v24];
    v17 = v24;

    accountNotifier2 = [(ACDAccountStore *)self accountNotifier];
    allKeys2 = [actionsCopy allKeys];
    [accountNotifier2 postDidPerformDataclassActionsOnAccount:accountCopy forDataclasses:allKeys2];

    if (v17)
    {
      v20 = _ACDLogSystem();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [ACDAccountStore _performDataclassActions:forAccount:error:];
      }
    }

    if (error)
    {
      v21 = v17;
      *error = v17;
    }

    v22 = _ACDLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [ACDAccountStore _performDataclassActions:forAccount:error:];
    }
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (void)addAccountNoSave:(id)save error:(id *)error
{
  saveCopy = save;
  v7 = _ACDLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccountStore addAccountNoSave:error:];
  }

  [saveCopy _setAccountStore:self];
  v8 = [(ACDAccountStore *)self _addAccountNoSave:saveCopy withDataclassActions:0 error:error];
  v9 = _ACDLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccountStore addAccountNoSave:error:];
  }
}

- (id)_addAccountNoSave:(id)save withDataclassActions:(id)actions error:(id *)error
{
  v55[1] = *MEMORY[0x277D85DE8];
  saveCopy = save;
  actionsCopy = actions;
  v10 = _ACDLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccountStore _addAccountNoSave:withDataclassActions:error:];
  }

  v11 = MEMORY[0x277CCAC30];
  identifier = [saveCopy identifier];
  v13 = [v11 predicateWithFormat:@"identifier == %@", identifier];

  databaseConnection = self->_databaseConnection;
  keypathsRequiredForInitialization = [MEMORY[0x277CB8F30] keypathsRequiredForInitialization];
  v16 = [(ACDDatabaseConnection *)databaseConnection fetchObjectsForEntityNamed:@"Account" withPredicate:v13 sortDescriptor:0 prefetchKeypaths:keypathsRequiredForInitialization];

  if (![v16 count])
  {
    v20 = [(ACDDatabaseConnection *)self->_databaseConnection insertNewObjectForEntityForName:@"Account"];
    if (([v20 validateRequiredAttributesForObject:saveCopy error:error]& 1) == 0)
    {
      [(ACDDatabaseConnection *)self->_databaseConnection deleteObject:v20];
      v25 = _ACDLogSystem();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [ACDAccountStore _addAccountNoSave:withDataclassActions:error:];
      }

      v21 = 0;
      goto LABEL_33;
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __64__ACDAccountStore__addAccountNoSave_withDataclassActions_error___block_invoke;
    aBlock[3] = &unk_27848C240;
    v47 = v20;
    v51 = v47;
    v22 = saveCopy;
    v52 = v22;
    selfCopy = self;
    v23 = _Block_copy(aBlock);
    v46 = [(ACDAccountStore *)self _commitOrRollbackDataclassActions:actionsCopy forAccount:v22 originalEnabledDataclasses:0];
    v48 = v23;
    v24 = (v23[2])(v23);
    if (v24)
    {
      goto LABEL_11;
    }

    isWarmingUp = [v22 isWarmingUp];
    accountChanges = self->_accountChanges;
    if (isWarmingUp)
    {
      v30 = 5;
    }

    else
    {
      v30 = 1;
    }

    v31 = [ACDAccountChange changeWithChangeType:v30 account:v22 oldAccount:0];
    [(NSMutableArray *)accountChanges addObject:v31];

    if ([(ACDAccountStore *)self notificationsEnabled]&& ![(ACDAccountStore *)self isMigrationInProgress])
    {
      isWarmingUp2 = [v22 isWarmingUp];
      v38 = _ACDLogSystem();
      v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG);
      if (isWarmingUp2)
      {
        if (v39)
        {
          [ACDAccountStore _addAccountNoSave:withDataclassActions:error:];
        }

        accountNotifier = [(ACDAccountStore *)self accountNotifier];
        v44 = [accountNotifier postWillChangeNotificationForType:5 inStore:self newAccount:v22 oldAccount:0];

        if ((v44 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v39)
        {
          [ACDAccountStore _addAccountNoSave:withDataclassActions:error:];
        }

        accountNotifier2 = [(ACDAccountStore *)self accountNotifier];
        v45 = [accountNotifier2 postWillChangeNotificationForType:1 inStore:self newAccount:v22 oldAccount:0];

        if (!v45)
        {
          goto LABEL_23;
        }
      }

      v24 = v48[2]();
      if (v24)
      {
LABEL_11:
        v25 = v24;
        v26 = _ACDLogSystem();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [ACDAccountStore _addAccountNoSave:withDataclassActions:error:];
        }

        [(ACDDatabaseConnection *)self->_databaseConnection rollback];
        if (error)
        {
          v27 = v25;
          v28 = 0;
          *error = v25;
        }

        else
        {
          v28 = 0;
        }

        v32 = v46;
LABEL_30:
        v35 = _ACDLogSystem();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          [ACDAccountStore _addAccountNoSave:withDataclassActions:error:];
        }

        v20 = v28;
        v21 = v20;
LABEL_33:

        goto LABEL_34;
      }
    }

LABEL_23:
    v49 = 0;
    v32 = v46;
    [(ACDAccountStore *)self _performDataclassActions:v46 forAccount:v22 error:&v49];
    v33 = v49;
    if (v33)
    {
      v34 = _ACDLogSystem();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
      {
        [ACDAccountStore _addAccountNoSave:withDataclassActions:error:];
      }
    }

    v25 = 0;
    v28 = v47;
    goto LABEL_30;
  }

  if (error)
  {
    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CB8DC0];
    v54 = *MEMORY[0x277CCA450];
    v55[0] = @"An account with that identifier already exists";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:&v54 count:1];
    *error = [v17 errorWithDomain:v18 code:5 userInfo:v19];
  }

  v20 = _ACDLogSystem();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccountStore _addAccountNoSave:withDataclassActions:error:];
  }

  v21 = 0;
LABEL_34:

  v36 = *MEMORY[0x277D85DE8];

  return v21;
}

id __64__ACDAccountStore__addAccountNoSave_withDataclassActions_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setValuesWithObject:*(a1 + 40)];
  v2 = [MEMORY[0x277CBEAA8] date];
  [*(a1 + 32) setDate:v2];

  [*(a1 + 32) setOwningBundleID:@"com.apple.accounts.accountsd"];
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [v3 UUIDString];
  [*(a1 + 32) setModificationID:v4];

  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(a1 + 32);
  v10 = 0;
  [v5 _setAccountManagedObjectRelationships:v7 withAccount:v6 oldAccount:0 error:&v10];
  v8 = v10;

  return v8;
}

- (void)updateAccountNoSave:(id)save error:(id *)error
{
  saveCopy = save;
  v7 = _ACDLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccountStore updateAccountNoSave:error:];
  }

  [saveCopy _setAccountStore:self];
  [(ACDAccountStore *)self _updateAccountNoSave:saveCopy withDataclassActions:0 error:error];
  v8 = _ACDLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccountStore updateAccountNoSave:error:];
  }
}

- (BOOL)_updateAccountNoSave:(id)save withDataclassActions:(id)actions error:(id *)error
{
  v77 = *MEMORY[0x277D85DE8];
  saveCopy = save;
  actionsCopy = actions;
  v10 = _ACDLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccountStore _updateAccountNoSave:withDataclassActions:error:];
  }

  if (error)
  {
    *error = 0;
  }

  identifier = [saveCopy identifier];
  v12 = [(ACDAccountStore *)self _accountWithIdentifier:identifier];

  if (!v12)
  {
    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:6 userInfo:0];
    v19 = _ACDLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [ACDAccountStore _updateAccountNoSave:withDataclassActions:error:];
    }

    if (error)
    {
      v20 = v18;
      *error = v18;
    }

    v21 = 0;
    goto LABEL_41;
  }

  v13 = [objc_alloc(MEMORY[0x277CB8F30]) initWithManagedAccount:v12 accountStore:self];
  v14 = _ACLogSystem();
  v59 = saveCopy;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    WeakRetained = objc_loadWeakRetained(&self->_client);
    bundleID = [WeakRetained bundleID];
    v48 = [v13 description];
    v49 = actionsCopy;
    if ([v13 isWarmingUp])
    {
      v50 = @"YES";
    }

    else
    {
      v50 = @"NO";
    }

    v51 = [saveCopy description];
    isWarmingUp = [v59 isWarmingUp];
    *buf = 138413314;
    v53 = @"YES";
    if (!isWarmingUp)
    {
      v53 = @"NO";
    }

    v68 = bundleID;
    v69 = 2112;
    v70 = v48;
    v71 = 2112;
    v72 = v50;
    actionsCopy = v49;
    v73 = 2112;
    v74 = v51;
    v75 = 2112;
    v76 = v53;
    _os_log_debug_impl(&dword_221D2F000, v14, OS_LOG_TYPE_DEBUG, "_updateAccountNoSave client %@ - existing %@ warming: %@ -- new %@ warming: %@", buf, 0x34u);

    saveCopy = v59;
  }

  [v13 _loadAllCachedProperties];
  v15 = v13;
  if ([v15 isWarmingUp])
  {
    if (saveCopy && ([saveCopy isWarmingUp] & 1) == 0)
    {
      v22 = _ACLogSystem();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [ACDAccountStore _updateAccountNoSave:withDataclassActions:error:];
      }

      v17 = 0;
      v56 = 1;
      v57 = 1;
      v16 = v15;
    }

    else
    {
      v16 = _ACLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [ACDAccountStore _updateAccountNoSave:withDataclassActions:error:];
      }

      v56 = 0;
      v57 = 5;
      v17 = v15;
    }
  }

  else
  {
    v56 = 0;
    v57 = 2;
    v17 = v15;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__ACDAccountStore__updateAccountNoSave_withDataclassActions_error___block_invoke;
  aBlock[3] = &unk_27848C268;
  v23 = saveCopy;
  v63 = v23;
  v24 = v12;
  v64 = v24;
  v25 = v15;
  v65 = v25;
  selfCopy = self;
  v26 = _Block_copy(aBlock);
  enabledDataclasses = [v25 enabledDataclasses];
  v58 = [(ACDAccountStore *)self _commitOrRollbackDataclassActions:actionsCopy forAccount:v23 originalEnabledDataclasses:enabledDataclasses];

  v28 = v26[2](v26, v25);
  v60 = v17;
  if (v28)
  {
    goto LABEL_24;
  }

  v33 = [objc_alloc(MEMORY[0x277CB8F30]) initWithManagedAccount:v24 accountStore:self];
  [v33 _loadAllCachedProperties];
  [v33 _applyDirtyStateFromAccount:v23];
  if (([v25 _isDifferentFrom:v33]& 1) == 0)
  {
    v37 = _ACDLogSystem();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      [ACDAccountStore _updateAccountNoSave:withDataclassActions:error:];
    }

    v36 = 0;
    v28 = 0;
    v21 = 0;
    saveCopy = v59;
    goto LABEL_39;
  }

  v55 = [v33 copy];
  if (-[ACDAccountStore notificationsEnabled](self, "notificationsEnabled") && !-[ACDAccountStore isMigrationInProgress](self, "isMigrationInProgress") && (-[ACDAccountStore accountNotifier](self, "accountNotifier"), v34 = objc_claimAutoreleasedReturnValue(), v54 = [v34 postWillChangeNotificationForType:v57 inStore:self newAccount:v33 oldAccount:v60], v34, v54))
  {
    [v23 takeValuesFromModifiedAccount:v33];
    v35 = v26[2](v26, v55);
    if (v35)
    {
      v28 = v35;

      v17 = v60;
LABEL_24:
      v29 = _ACDLogSystem();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [ACDAccountStore _updateAccountNoSave:withDataclassActions:error:];
      }

      accountChanges = self->_accountChanges;
      v31 = [ACDAccountChange changeWithChangeType:4 account:v17 oldAccount:v17];
      [(NSMutableArray *)accountChanges addObject:v31];

      [(ACDDatabaseConnection *)self->_databaseConnection rollback];
      if (error)
      {
        v32 = v28;
        v21 = 0;
        *error = v28;
      }

      else
      {
        v21 = 0;
      }

      v36 = 1;
      saveCopy = v59;
LABEL_39:
      v38 = v60;
      v39 = v58;
      goto LABEL_40;
    }

    v43 = [objc_alloc(MEMORY[0x277CB8F30]) initWithManagedAccount:v24 accountStore:self];

    [v43 _loadAllCachedProperties];
    if (v56)
    {
      [v43 markAllPropertiesDirty];
    }

    else
    {
      [v43 _applyDirtyStateFromAccount:v23];
    }
  }

  else
  {
    v43 = v33;
  }

  v44 = self->_accountChanges;
  v45 = [ACDAccountChange changeWithChangeType:v57 account:v43 oldAccount:v60];
  [(NSMutableArray *)v44 addObject:v45];

  v38 = v60;
  selfCopy2 = self;
  v39 = v58;
  v21 = [(ACDAccountStore *)selfCopy2 _performDataclassActions:v58 forAccount:v23 error:error];

  v28 = 0;
  v36 = 1;
  saveCopy = v59;
LABEL_40:

  if ((v36 & 1) == 0)
  {
    v21 = 1;
    goto LABEL_45;
  }

LABEL_41:
  v40 = _ACDLogSystem();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccountStore _updateAccountNoSave:withDataclassActions:error:];
  }

LABEL_45:
  v41 = *MEMORY[0x277D85DE8];
  return v21;
}

id __67__ACDAccountStore__updateAccountNoSave_withDataclassActions_error___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) setDirty:0 forProperty:@"owningBundleID"];
  [*(a1 + 40) setValuesWithObject:*(a1 + 32)];
  v4 = [MEMORY[0x277CCAD78] UUID];
  v5 = [v4 UUIDString];
  [*(a1 + 40) setModificationID:v5];

  if ([*(a1 + 32) isPropertyDirty:@"dataclassProperties"])
  {
    v6 = [*(a1 + 48) dataclassProperties];
    v7 = [v6 mutableCopy];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = objc_opt_new();
    }

    v10 = v9;

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = [*(a1 + 32) dirtyDataclassProperties];
    v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v28;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v27 + 1) + 8 * i);
          v17 = [*(a1 + 32) dataclassProperties];
          v18 = [v17 objectForKeyedSubscript:v16];
          [v10 setObject:v18 forKeyedSubscript:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v13);
    }

    [*(a1 + 40) setValue:v10 forKey:@"dataclassProperties"];
  }

  v19 = *(a1 + 56);
  v21 = *(a1 + 32);
  v20 = *(a1 + 40);
  v26 = 0;
  [v19 _setAccountManagedObjectRelationships:v20 withAccount:v21 oldAccount:v3 error:&v26];
  v22 = v26;
  v23 = v26;

  v24 = *MEMORY[0x277D85DE8];
  return v22;
}

- (void)deleteAccountNoSave:(id)save error:(id *)error
{
  saveCopy = save;
  [saveCopy _setAccountStore:self];
  [(ACDAccountStore *)self _deleteAccountNoSave:saveCopy withDataclassActions:0 error:error];
}

- (void)_deleteAccountNoSave:(id)save withDataclassActions:(id)actions error:(id *)error
{
  saveCopy = save;
  actionsCopy = actions;
  v10 = _ACDLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccountStore _deleteAccountNoSave:withDataclassActions:error:];
  }

  identifier = [saveCopy identifier];
  v12 = [(ACDAccountStore *)self _accountWithIdentifier:identifier];

  if (v12)
  {
    v13 = [objc_alloc(MEMORY[0x277CB8F30]) initWithManagedAccount:v12 accountStore:self];
    [v13 _loadAllCachedProperties];
    accountChanges = self->_accountChanges;
    v15 = [ACDAccountChange changeWithChangeType:3 account:0 oldAccount:v13];
    [(NSMutableArray *)accountChanges addObject:v15];

    v16 = _ACDLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [ACDAccountStore _deleteAccountNoSave:withDataclassActions:error:];
    }

    if ([(ACDAccountStore *)self notificationsEnabled]&& ![(ACDAccountStore *)self isMigrationInProgress])
    {
      accountNotifier = [(ACDAccountStore *)self accountNotifier];
      [accountNotifier postWillChangeNotificationForType:3 inStore:self newAccount:0 oldAccount:v13];
    }

    [(ACDAccountStore *)self _performDataclassActions:actionsCopy forAccount:saveCopy error:error];
    [ACDKeychainManager removeCredentialForAccount:v13 clientID:0 error:0];
    [(ACDDatabaseConnection *)self->_databaseConnection deleteObject:v12];
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:6 userInfo:0];
    v18 = _ACDLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [ACDAccountStore _deleteAccountNoSave:withDataclassActions:error:];
    }

    if (error)
    {
      v19 = v13;
      *error = v13;
    }
  }

  v20 = _ACDLogSystem();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccountStore _deleteAccountNoSave:withDataclassActions:error:];
  }
}

- (id)_accountWithIdentifier:(id)identifier
{
  v4 = MEMORY[0x277CB8F30];
  identifierCopy = identifier;
  keypathsRequiredForInitialization = [v4 keypathsRequiredForInitialization];
  v7 = [(ACDAccountStore *)self _accountWithIdentifier:identifierCopy prefetchKeypaths:keypathsRequiredForInitialization];

  return v7;
}

- (id)_accountWithIdentifier:(id)identifier prefetchKeypaths:(id)keypaths
{
  v6 = MEMORY[0x277CCAC30];
  keypathsCopy = keypaths;
  identifier = [v6 predicateWithFormat:@"identifier == %@", identifier];
  v9 = [(ACDDatabaseConnection *)self->_databaseConnection fetchObjectsForEntityNamed:@"Account" withPredicate:identifier sortDescriptor:0 prefetchKeypaths:keypathsCopy];

  lastObject = [v9 lastObject];

  return lastObject;
}

- (id)_displayAccountForAccount:(id)account
{
  accountCopy = account;
  parentAccount = [accountCopy parentAccount];
  v6 = accountCopy;
  if (parentAccount)
  {
    v6 = [(ACDAccountStore *)self _displayAccountForAccount:parentAccount];
  }

  return v6;
}

- (id)_accountTypeWithIdentifier:(id)identifier
{
  identifier = [MEMORY[0x277CCAC30] predicateWithFormat:@"identifier == %@", identifier];
  v5 = [(ACDDatabaseConnection *)self->_databaseConnection fetchObjectsForEntityNamed:@"AccountType" withPredicate:identifier];
  lastObject = [v5 lastObject];

  return lastObject;
}

- (id)_dataclassWithName:(id)name createIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v23 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  [(ACDDatabaseConnection *)self->_databaseConnection fetchObjectsForEntityNamed:@"Dataclass" withPredicate:0];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v21 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v17 = necessaryCopy;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        name = [v11 name];
        v13 = [name isEqualToString:nameCopy];

        if (v13)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

LABEL_11:
    necessaryCopy = v17;
  }

  if (!v8 && necessaryCopy)
  {
    v14 = _ACDLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [ACDAccountStore _dataclassWithName:createIfNecessary:];
    }

    v8 = [(ACDDatabaseConnection *)self->_databaseConnection insertNewObjectForEntityForName:@"Dataclass"];
    [v8 setName:nameCopy];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)_canSaveAccount:(id)account error:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__ACDAccountStore__canSaveAccount_error___block_invoke;
  aBlock[3] = &unk_27848C290;
  aBlock[4] = self;
  v7 = accountCopy;
  v46 = v7;
  v8 = _Block_copy(aBlock);
  accountType = [v7 accountType];
  supportsMultipleAccounts = [accountType supportsMultipleAccounts];

  v11 = _ACDLogSystem();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (!supportsMultipleAccounts)
  {
    if (v12)
    {
      accountType2 = [v7 accountType];
      *buf = 138412290;
      v48 = accountType2;
      _os_log_impl(&dword_221D2F000, v11, OS_LOG_TYPE_DEFAULT, "Account type %@ does NOT support multiples.", buf, 0xCu);
    }

    accountType3 = [v7 accountType];
    v44 = 0;
    v17 = [(ACDAccountStore *)self accountsWithAccountType:accountType3 options:1 error:&v44];
    v18 = v44;

    if (v17)
    {
      errorCopy = error;
      v38 = v18;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v39 = v17;
      v19 = v17;
      v20 = [v19 countByEnumeratingWithState:&v40 objects:v51 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v41;
        while (2)
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v41 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v40 + 1) + 8 * i);
            identifier = [v24 identifier];
            identifier2 = [v7 identifier];
            v27 = [identifier isEqualToString:identifier2];

            if ((v27 & 1) == 0)
            {
              v28 = _ACDLogSystem();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                accountType4 = [v7 accountType];
                accountTypeDescription = [accountType4 accountTypeDescription];
                *buf = 138412546;
                v48 = v24;
                v49 = 2112;
                v50 = accountTypeDescription;
                _os_log_impl(&dword_221D2F000, v28, OS_LOG_TYPE_DEFAULT, "Found active account %@ of type %@ that does NOT support multiples.  Returning NO.", buf, 0x16u);
              }

              v17 = v39;
              if (errorCopy)
              {
                *errorCopy = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:5 userInfo:0];
              }

              v14 = 0;
              v18 = v38;
              goto LABEL_30;
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v40 objects:v51 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

      v18 = v38;
      v17 = v39;
    }

    else if (v18)
    {
      v31 = _ACDLogSystem();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [ACDAccountStore _canSaveAccount:error:];
      }

      if (error)
      {
        v32 = v18;
        v14 = 0;
        *error = v18;
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_30;
    }

    v33 = _ACDLogSystem();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      accountType5 = [v7 accountType];
      *buf = 138412290;
      v48 = accountType5;
      _os_log_impl(&dword_221D2F000, v33, OS_LOG_TYPE_DEFAULT, "Found 0 accounts of type %@, returning YES.", buf, 0xCu);
    }

    v14 = 1;
LABEL_30:

    goto LABEL_31;
  }

  if (v12)
  {
    accountType6 = [v7 accountType];
    *buf = 138412290;
    v48 = accountType6;
    _os_log_impl(&dword_221D2F000, v11, OS_LOG_TYPE_DEFAULT, "Account type %@ does support multiples.", buf, 0xCu);
  }

  v14 = v8[2](v8, error);
LABEL_31:

  v35 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t __41__ACDAccountStore__canSaveAccount_error___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) notificationsEnabled])
  {
    v4 = [*(a1 + 32) accountNotifier];
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v14 = 0;
    v7 = [v4 canSaveAccount:v5 inStore:v6 error:&v14];
    v8 = v14;

    if ((v7 & 1) == 0)
    {
      v9 = _ACDLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 40);
        *buf = 138412546;
        v16 = v10;
        v17 = 2112;
        v18 = v8;
        _os_log_impl(&dword_221D2F000, v9, OS_LOG_TYPE_DEFAULT, "Can save account failed, plugin denied save of %@, error: %@", buf, 0x16u);
      }

      if (a2)
      {
        v11 = v8;
        *a2 = v8;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)_setAccountManagedObjectRelationships:(id)relationships withAccount:(id)account oldAccount:(id)oldAccount error:(id *)error
{
  v146[1] = *MEMORY[0x277D85DE8];
  relationshipsCopy = relationships;
  accountCopy = account;
  oldAccountCopy = oldAccount;
  v12 = _ACDLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccountStore _setAccountManagedObjectRelationships:withAccount:oldAccount:error:];
  }

  managedObjectContext = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
  persistentStoreCoordinator = [managedObjectContext persistentStoreCoordinator];
  accountType = [accountCopy accountType];
  objectID = [accountType objectID];
  v17 = [persistentStoreCoordinator managedObjectIDForURIRepresentation:objectID];

  managedObjectContext2 = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
  v114 = v17;
  v19 = [managedObjectContext2 objectWithID:v17];

  if ([accountCopy isPropertyDirty:@"accountType"])
  {
    [relationshipsCopy setAccountType:v19];
  }

  v113 = v19;
  if (![accountCopy isPropertyDirty:@"parent"])
  {
LABEL_9:
    v112 = oldAccountCopy;
    if ([accountCopy isPropertyDirty:@"accountProperties"])
    {
      accountProperties = [accountCopy accountProperties];
      v132 = 0u;
      v133 = 0u;
      v134 = 0u;
      v135 = 0u;
      v108 = accountCopy;
      dirtyAccountProperties = [accountCopy dirtyAccountProperties];
      v24 = [dirtyAccountProperties countByEnumeratingWithState:&v132 objects:v144 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v133;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v133 != v26)
            {
              objc_enumerationMutation(dirtyAccountProperties);
            }

            v28 = *(*(&v132 + 1) + 8 * i);
            v29 = [accountProperties valueForKey:v28];
            databaseConnection = self->_databaseConnection;
            if (v29)
            {
              [(ACDDatabaseConnection *)databaseConnection setAccountPropertyWithKey:v28 value:v29 owner:relationshipsCopy];
            }

            else
            {
              [(ACDDatabaseConnection *)databaseConnection deleteAccountPropertyWithKey:v28 owner:relationshipsCopy];
            }
          }

          v25 = [dirtyAccountProperties countByEnumeratingWithState:&v132 objects:v144 count:16];
        }

        while (v25);
      }

      accountCopy = v108;
      oldAccountCopy = v112;
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __86__ACDAccountStore__setAccountManagedObjectRelationships_withAccount_oldAccount_error___block_invoke;
    aBlock[3] = &unk_27848C2B8;
    aBlock[4] = self;
    v31 = _Block_copy(aBlock);
    if (![accountCopy isPropertyDirty:*MEMORY[0x277CB8E80]])
    {
LABEL_41:
      if (![accountCopy isPropertyDirty:*MEMORY[0x277CB8E70]])
      {
LABEL_58:
        v58 = MEMORY[0x277CB90B8];
        if (oldAccountCopy)
        {
          username = [relationshipsCopy username];
          if (username)
          {
            v60 = username;
            authenticationType = [relationshipsCopy authenticationType];
            v62 = [authenticationType isEqualToString:*v58];

            if ((v62 & 1) == 0)
            {
              v63 = [objc_alloc(MEMORY[0x277CB8F30]) initWithManagedAccount:relationshipsCopy];
              qualifiedUsername = [oldAccountCopy qualifiedUsername];
              qualifiedUsername2 = [v63 qualifiedUsername];
              v66 = [qualifiedUsername isEqualToString:qualifiedUsername2];

              if ((v66 & 1) == 0)
              {
                v69 = _ACDLogSystem();
                if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                {
                  qualifiedUsername3 = [oldAccountCopy qualifiedUsername];
                  v71 = ACHashedString();
                  qualifiedUsername4 = [v63 qualifiedUsername];
                  v73 = ACHashedString();
                  *buf = 138412802;
                  v137 = v63;
                  v138 = 2112;
                  v139 = v71;
                  v140 = 2112;
                  v141 = v73;
                  _os_log_impl(&dword_221D2F000, v69, OS_LOG_TYPE_DEFAULT, "%@: qualifiedUsername changed from %@ to %@", buf, 0x20u);
                }

                if ([accountCopy isPropertyDirty:@"credential"])
                {
                  internalCredential = [accountCopy internalCredential];
                  v75 = v112;
                }

                else
                {
                  v75 = v112;
                  internalCredential = [ACDKeychainManager credentialForAccount:v112 clientID:0];
                }

                [v63 setCredential:internalCredential];
                [ACDKeychainManager removeCredentialForAccount:v75 clientID:0 error:0];
                [ACDKeychainManager setCredentialForAccount:v63 error:error];

                oldAccountCopy = v75;
                goto LABEL_102;
              }
            }
          }
        }

        authenticationType2 = [accountCopy authenticationType];
        if ([authenticationType2 isEqualToString:*v58])
        {
          goto LABEL_99;
        }

        v68 = [accountCopy isPropertyDirty:@"credential"];

        if (!v68)
        {
          goto LABEL_100;
        }

        if (oldAccountCopy)
        {
          v63 = [ACDKeychainManager credentialForAccount:oldAccountCopy clientID:0];
        }

        else
        {
          v63 = 0;
        }

        credentialType = [v63 credentialType];
        v77 = *MEMORY[0x277CB8D98];
        if ([credentialType isEqual:*MEMORY[0x277CB8D98]])
        {
        }

        else
        {
          internalCredential2 = [accountCopy internalCredential];
          credentialType2 = [internalCredential2 credentialType];
          v80 = [credentialType2 isEqual:v77];

          if (!v80)
          {
            authenticationType2 = 0;
            goto LABEL_81;
          }
        }

        WeakRetained = objc_loadWeakRetained(&self->_client);
        v82 = [WeakRetained hasEntitlement:*MEMORY[0x277CB8FE0]];

        if (v82)
        {
          authenticationType2 = 0;
        }

        else
        {
          v83 = objc_loadWeakRetained(&self->_client);
          bundleID = [v83 bundleID];

          if (!bundleID)
          {
            v104 = _ACDLogSystem();
            if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
            {
              [ACDAccountStore _setAccountManagedObjectRelationships:? withAccount:? oldAccount:? error:?];
            }

            oldAccountCopy = v112;
            goto LABEL_102;
          }

          v85 = objc_loadWeakRetained(&self->_client);
          authenticationType2 = [v85 bundleID];
        }

        oldAccountCopy = v112;
LABEL_81:
        internalCredential3 = [accountCopy internalCredential];
        v87 = [internalCredential3 isEqual:v63];

        if ((v87 & 1) == 0)
        {
          v88 = oldAccountCopy;
          v89 = accountCopy;
          if (v88)
          {
            v115 = 0;
            v90 = &v115;
            [ACDKeychainManager setCredentialForAccount:v89 clientID:authenticationType2 error:&v115];
          }

          else
          {
            v116 = 0;
            v90 = &v116;
            [ACDKeychainManager setCredentialForNewAccount:v89 clientID:authenticationType2 error:&v116];
          }

          v91 = *v90;
          if ([(ACDAccountStore *)self isMigrationInProgress]&& v91)
          {
            v92 = _ACDLogSystem();
            if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v137 = v91;
              _os_log_impl(&dword_221D2F000, v92, OS_LOG_TYPE_DEFAULT, "Ignoring credential-save error because we're migrating. %@", buf, 0xCu);
            }

            accountCopy = v89;
            goto LABEL_97;
          }

          accountCopy = v89;
          oldAccountCopy = v112;
          if (v91)
          {
            userInfo = [v91 userInfo];
            v92 = [userInfo mutableCopy];

            v106 = *MEMORY[0x277CCA450];
            v94 = [v92 objectForKeyedSubscript:?];
            if (v94)
            {
              v95 = v94;
            }

            else
            {
              v95 = &stru_2835374D8;
            }

            v111 = v95;
            v105 = MEMORY[0x277CCACA8];
            v96 = objc_loadWeakRetained(&self->_client);
            name = [v96 name];
            v98 = [v105 stringWithFormat:@"%@ Requested By: %@", v95, name];

            [v92 setObject:v98 forKeyedSubscript:v106];
            v99 = MEMORY[0x277CCA9B8];
            domain = [v91 domain];
            v101 = [v99 errorWithDomain:domain code:-[NSObject code](v91 userInfo:{"code"), v92}];

            v102 = v101;
            *error = v101;

LABEL_97:
            oldAccountCopy = v112;
          }
        }

LABEL_99:
LABEL_100:
        v63 = _ACDLogSystem();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
        {
          [ACDAccountStore _setAccountManagedObjectRelationships:withAccount:oldAccount:error:];
        }

LABEL_102:
        v43 = v114;

        goto LABEL_103;
      }

      if ([accountCopy wasEnabledDataclassesReset])
      {
        v49 = objc_alloc_init(MEMORY[0x277CBEB58]);
        if (!oldAccountCopy)
        {
LABEL_49:
          v122 = 0u;
          v123 = 0u;
          v120 = 0u;
          v121 = 0u;
          enabledDataclasses = [accountCopy enabledDataclasses];
          v53 = [enabledDataclasses countByEnumeratingWithState:&v120 objects:v142 count:16];
          if (v53)
          {
            v54 = v53;
            v110 = accountCopy;
            v55 = *v121;
            v56 = *MEMORY[0x277CB8D68];
            do
            {
              for (j = 0; j != v54; ++j)
              {
                if (*v121 != v55)
                {
                  objc_enumerationMutation(enabledDataclasses);
                }

                (*(v31 + 2))(v31, v49, *(*(&v120 + 1) + 8 * j), v56);
              }

              v54 = [enabledDataclasses countByEnumeratingWithState:&v120 objects:v142 count:16];
            }

            while (v54);
            accountCopy = v110;
            oldAccountCopy = v112;
          }

          goto LABEL_57;
        }
      }

      else
      {
        enabledDataclasses2 = [relationshipsCopy enabledDataclasses];
        v49 = [enabledDataclasses2 mutableCopy];

        if (v49)
        {
          if (!oldAccountCopy)
          {
            goto LABEL_49;
          }
        }

        else
        {
          [ACDAccountStore _setAccountManagedObjectRelationships:withAccount:oldAccount:error:];
          if (!oldAccountCopy)
          {
            goto LABEL_49;
          }
        }
      }

      trackedEnabledDataclasses = [accountCopy trackedEnabledDataclasses];
      v117[0] = MEMORY[0x277D85DD0];
      v117[1] = 3221225472;
      v117[2] = __86__ACDAccountStore__setAccountManagedObjectRelationships_withAccount_oldAccount_error___block_invoke_3;
      v117[3] = &unk_27848C2E0;
      v119 = v31;
      v118 = v49;
      [trackedEnabledDataclasses enumerateModificationsUsingBlock:v117];

      enabledDataclasses = v119;
LABEL_57:

      [relationshipsCopy setEnabledDataclasses:v49];
      goto LABEL_58;
    }

    if ([accountCopy wasProvisionedDataclassesReset])
    {
      v32 = objc_alloc_init(MEMORY[0x277CBEB58]);
      if (!oldAccountCopy)
      {
LABEL_32:
        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v128 = 0u;
        provisionedDataclasses = [accountCopy provisionedDataclasses];
        v44 = [provisionedDataclasses countByEnumeratingWithState:&v127 objects:v143 count:16];
        if (v44)
        {
          v45 = v44;
          v109 = accountCopy;
          v46 = *v128;
          v47 = *MEMORY[0x277CB8D68];
          do
          {
            for (k = 0; k != v45; ++k)
            {
              if (*v128 != v46)
              {
                objc_enumerationMutation(provisionedDataclasses);
              }

              (*(v31 + 2))(v31, v32, *(*(&v127 + 1) + 8 * k), v47);
            }

            v45 = [provisionedDataclasses countByEnumeratingWithState:&v127 objects:v143 count:16];
          }

          while (v45);
          accountCopy = v109;
          oldAccountCopy = v112;
        }

        goto LABEL_40;
      }
    }

    else
    {
      provisionedDataclasses2 = [relationshipsCopy provisionedDataclasses];
      v32 = [provisionedDataclasses2 mutableCopy];

      if (v32)
      {
        if (!oldAccountCopy)
        {
          goto LABEL_32;
        }
      }

      else
      {
        [ACDAccountStore _setAccountManagedObjectRelationships:withAccount:oldAccount:error:];
        if (!oldAccountCopy)
        {
          goto LABEL_32;
        }
      }
    }

    trackedProvisionedDataclasses = [accountCopy trackedProvisionedDataclasses];
    v124[0] = MEMORY[0x277D85DD0];
    v124[1] = 3221225472;
    v124[2] = __86__ACDAccountStore__setAccountManagedObjectRelationships_withAccount_oldAccount_error___block_invoke_2;
    v124[3] = &unk_27848C2E0;
    v126 = v31;
    v125 = v32;
    [trackedProvisionedDataclasses enumerateModificationsUsingBlock:v124];

    provisionedDataclasses = v126;
LABEL_40:

    [relationshipsCopy setProvisionedDataclasses:v32];
    goto LABEL_41;
  }

  parentAccount = [accountCopy parentAccount];

  if (!parentAccount || ([accountCopy parentAccountIdentifier], v21 = objc_claimAutoreleasedReturnValue(), -[ACDAccountStore _accountWithIdentifier:](self, "_accountWithIdentifier:", v21), parentAccount = objc_claimAutoreleasedReturnValue(), v21, parentAccount))
  {
    [relationshipsCopy setParentAccount:parentAccount];

    goto LABEL_9;
  }

  v36 = _ACDLogSystem();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    [ACDAccountStore _setAccountManagedObjectRelationships:withAccount:oldAccount:error:];
  }

  v37 = MEMORY[0x277CCACA8];
  parentAccountIdentifier = [accountCopy parentAccountIdentifier];
  v39 = [v37 stringWithFormat:@"The parent account with ID %@ is unknown to our DB, so it cannot have any children added. The parent has probably already been deleted.", parentAccountIdentifier];

  v40 = MEMORY[0x277CCA9B8];
  v41 = *MEMORY[0x277CB8DC0];
  v145 = *MEMORY[0x277CCA450];
  v146[0] = v39;
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v146 forKeys:&v145 count:1];
  *error = [v40 errorWithDomain:v41 code:15 userInfo:v42];

  v43 = v17;
LABEL_103:

  v103 = *MEMORY[0x277D85DE8];
}

void __86__ACDAccountStore__setAccountManagedObjectRelationships_withAccount_oldAccount_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  if ([v8 isEqualToString:*MEMORY[0x277CB8D68]])
  {
    v9 = [*(a1 + 32) _dataclassWithName:v7 createIfNecessary:1];
    if (v9)
    {
      [v10 addObject:v9];
    }
  }

  else
  {
    if (![v8 isEqualToString:*MEMORY[0x277CB8D78]])
    {
      goto LABEL_8;
    }

    v9 = [*(a1 + 32) _dataclassWithName:v7 createIfNecessary:0];
    if (v9)
    {
      [v10 removeObject:v9];
    }
  }

LABEL_8:
}

- (BOOL)_handleAccountMod:(id)mod withDataclassActions:(id)actions withError:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  modCopy = mod;
  actionsCopy = actions;
  v10 = _ACDLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    username = [modCopy username];
    v12 = ACHashedString();
    *buf = 138412290;
    v27 = v12;
    _os_log_impl(&dword_221D2F000, v10, OS_LOG_TYPE_DEFAULT, "Updating existing account: %@", buf, 0xCu);
  }

  v25 = 0;
  v13 = [(ACDAccountStore *)self _updateAccountNoSave:modCopy withDataclassActions:actionsCopy error:&v25];
  v14 = v25;
  v15 = v14;
  if (!v13 || v14)
  {
    v16 = _ACDLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [ACDAccountStore _handleAccountMod:withDataclassActions:withError:];
    }
  }

  v24 = 0;
  v17 = [(ACDAccountStore *)self _saveWithError:&v24];
  v18 = v24;
  v19 = v18;
  if (error && v18)
  {
    v20 = v18;
    *error = v19;
  }

  v21 = _ACDLogSystem();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccountStore _handleAccountMod:withDataclassActions:withError:];
  }

  v22 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)_handleAccountAdd:(id)add withDataclassActions:(id)actions error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  addCopy = add;
  actionsCopy = actions;
  v10 = _ACDLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    username = [addCopy username];
    v12 = ACHashedString();
    *buf = 138412290;
    v30 = v12;
    _os_log_impl(&dword_221D2F000, v10, OS_LOG_TYPE_DEFAULT, "Adding new account: %@", buf, 0xCu);
  }

  [addCopy markAllPropertiesDirty];
  v28 = 0;
  v13 = [(ACDAccountStore *)self _addAccountNoSave:addCopy withDataclassActions:actionsCopy error:&v28];

  v14 = v28;
  if (v13)
  {
    WeakRetained = objc_loadWeakRetained(&self->_client);
    bundleID = [WeakRetained bundleID];
    [v13 setOwningBundleID:bundleID];

    v17 = _ACDLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      owningBundleID = [v13 owningBundleID];
      *buf = 138412290;
      v30 = owningBundleID;
      _os_log_impl(&dword_221D2F000, v17, OS_LOG_TYPE_DEFAULT, "Owning bundleID: %@", buf, 0xCu);
    }

    v27 = 0;
    LODWORD(self) = [(ACDAccountStore *)self _saveWithError:&v27];
    v19 = v27;
    if (self)
    {
      objectID = [v13 objectID];
      uRIRepresentation = [objectID URIRepresentation];
      [addCopy _setObjectID:uRIRepresentation];
    }

    else
    {
      objectID = _ACDLogSystem();
      if (os_log_type_enabled(objectID, OS_LOG_TYPE_ERROR))
      {
        [ACDAccountStore _handleAccountAdd:withDataclassActions:error:];
      }
    }

    if (!error)
    {
      v22 = v19;
      goto LABEL_19;
    }

    v23 = v19;
    if (v19)
    {
      goto LABEL_17;
    }
  }

  else
  {
    self = _ACDLogSystem();
    if (os_log_type_enabled(&self->super.super, OS_LOG_TYPE_ERROR))
    {
      [ACDAccountStore _handleAccountAdd:withDataclassActions:error:];
    }

    LOBYTE(self) = 0;
    if (!error)
    {
      v22 = 0;
      goto LABEL_19;
    }
  }

  v23 = 0;
  v22 = 0;
  v19 = v14;
  if (v14)
  {
LABEL_17:
    v24 = v19;
    *error = v19;
    v22 = v23;
  }

LABEL_19:

  v25 = *MEMORY[0x277D85DE8];
  return self;
}

- (id)_credentialItemWithAccountIdentifier:(id)identifier serviceName:(id)name
{
  name = [MEMORY[0x277CCAC30] predicateWithFormat:@"accountIdentifier == %@ AND serviceName == %@", identifier, name];
  v6 = [(ACDDatabaseConnection *)self->_databaseConnection fetchObjectsForEntityNamed:@"CredentialItem" withPredicate:name];
  lastObject = [v6 lastObject];

  return lastObject;
}

- (void)setClientBundleID:(id)d withHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_client);
  [WeakRetained setBundleID:dCopy];

  handlerCopy[2](handlerCopy, 1, 0);
}

- (void)accountWithIdentifier:(id)identifier handler:(id)handler
{
  handlerCopy = handler;
  v8 = [(ACDAccountStore *)self _sync_accountWithIdentifier:identifier];
  (*(handler + 2))(handlerCopy, v8, 0);
}

- (id)_sync_accountWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v5 = +[ACDAccountStore accountCache];
  v18 = [v5 cachedAccountForIdentifier:identifierCopy];

  v6 = v14[5];
  if (v6)
  {
    [v6 _setAccountStore:self];
  }

  else
  {
    managedObjectContext = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __47__ACDAccountStore__sync_accountWithIdentifier___block_invoke;
    v10[3] = &unk_27848BCD0;
    v12 = &v13;
    v10[4] = self;
    v11 = identifierCopy;
    [managedObjectContext performBlockAndWait:v10];
  }

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __47__ACDAccountStore__sync_accountWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _block_accountWithIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v5 = +[ACDAccountStore accountCache];
    [v5 cacheAccount:*(*(*(a1 + 48) + 8) + 40)];
  }
}

- (id)_allAccounts_sync
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  managedObjectContext = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__ACDAccountStore__allAccounts_sync__block_invoke;
  v6[3] = &unk_27848BED8;
  v6[4] = self;
  v6[5] = &v7;
  [managedObjectContext performBlockAndWait:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)accountsWithHandler:(id)handler
{
  handlerCopy = handler;
  _allAccounts_sync = [(ACDAccountStore *)self _allAccounts_sync];
  handlerCopy[2](handlerCopy, _allAccounts_sync, 0);
}

- (void)accountTypesWithHandler:(id)handler
{
  handlerCopy = handler;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  managedObjectContext = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__ACDAccountStore_accountTypesWithHandler___block_invoke;
  v6[3] = &unk_27848C308;
  v6[4] = self;
  v6[5] = &v7;
  [managedObjectContext performBlockAndWait:v6];

  handlerCopy[2](handlerCopy, v8[5], 0);
  _Block_object_dispose(&v7, 8);
}

void __43__ACDAccountStore_accountTypesWithHandler___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(*(a1 + 32) + 120) fetchObjectsForEntityNamed:@"AccountType" withPredicate:0];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [objc_alloc(MEMORY[0x277CB8F58]) initWithManagedAccountType:*(*(&v13 + 1) + 8 * v9) accountStore:*(a1 + 32)];
        [*(*(*(a1 + 40) + 8) + 40) addObject:v10];
        v11 = +[ACDAccountStore accountCache];
        [v11 cacheAccountType:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)displayAccountTypeForAccountWithIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  managedObjectContext = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__ACDAccountStore_displayAccountTypeForAccountWithIdentifier_handler___block_invoke;
  v10[3] = &unk_27848BF28;
  v10[4] = self;
  v9 = identifierCopy;
  v11 = v9;
  v12 = &v13;
  [managedObjectContext performBlockAndWait:v10];

  handlerCopy[2](handlerCopy, v14[5], 0);
  _Block_object_dispose(&v13, 8);
}

void __70__ACDAccountStore_displayAccountTypeForAccountWithIdentifier_handler___block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) _accountWithIdentifier:*(a1 + 40)];
  v2 = [*(a1 + 32) _displayAccountForAccount:?];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 accountType];
    v5 = [objc_alloc(MEMORY[0x277CB8F58]) initWithManagedAccountType:v4 accountStore:*(a1 + 32)];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

- (void)accountTypeWithIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v22 = 0;
  if (identifierCopy)
  {
    v8 = +[ACDAccountStore accountCache];
    v9 = [v8 cachedAccountTypeForID:identifierCopy];
    v10 = v18[5];
    v18[5] = v9;

    v11 = v18[5];
    if (v11)
    {
      [v11 setAccountStore:self];
    }

    else
    {
      managedObjectContext = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __53__ACDAccountStore_accountTypeWithIdentifier_handler___block_invoke;
      v13[3] = &unk_27848BF28;
      v14 = identifierCopy;
      selfCopy = self;
      v16 = &v17;
      [managedObjectContext performBlockAndWait:v13];
    }
  }

  handlerCopy[2](handlerCopy, v18[5], 0);
  _Block_object_dispose(&v17, 8);
}

void __53__ACDAccountStore_accountTypeWithIdentifier_handler___block_invoke(uint64_t *a1)
{
  v2 = a1 + 4;
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"identifier == %@", a1[4]];
  v4 = [*(a1[5] + 120) fetchObjectsForEntityNamed:@"AccountType" withPredicate:v3];
  v5 = [v4 lastObject];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CB8F58]) initWithManagedAccountType:v5 accountStore:a1[5]];
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = +[ACDAccountStore accountCache];
    [v9 cacheAccountType:*(*(a1[6] + 8) + 40)];
  }

  else
  {
    v10 = _ACDLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __53__ACDAccountStore_accountTypeWithIdentifier_handler___block_invoke_cold_1(a1 + 4);
    }

    v11 = [MEMORY[0x277CB8F58] allIdentifiers];
    v12 = [v11 containsObject:*v2];

    if (v12)
    {
      v13 = MEMORY[0x277CCACA8];
      WeakRetained = objc_loadWeakRetained((a1[5] + 160));
      v15 = [v13 stringWithFormat:@"Client '%@' failed to access internal account type '%@'", WeakRetained, a1[4]];

      v16 = +[ACDEventLedger sharedLedger];
      [v16 simulateCrashWithMessage:v15];
    }
  }
}

- (id)masterCredentialForAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  managedObjectContext = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__ACDAccountStore_masterCredentialForAccountIdentifier___block_invoke;
  v9[3] = &unk_27848BF28;
  v9[4] = self;
  v6 = identifierCopy;
  v10 = v6;
  v11 = &v12;
  [managedObjectContext performBlockAndWait:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __56__ACDAccountStore_masterCredentialForAccountIdentifier___block_invoke(void *a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v16[0] = *MEMORY[0x277CB8E48];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v5 = [v2 _accountWithIdentifier:v3 prefetchKeypaths:v4];

  if (v5)
  {
    v6 = [v5 accountType];
    v7 = [v6 credentialType];
    v8 = _ACDLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained((a1[4] + 160));
      v14 = 138412290;
      v15 = WeakRetained;
      _os_log_impl(&dword_221D2F000, v8, OS_LOG_TYPE_DEFAULT, "%@ is entitled for all account access - returning OAuth 2 master token.", &v14, 0xCu);
    }

    v10 = [ACDKeychainManager credentialForManagedAccountObject:v5];
    v11 = *(a1[6] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    [*(*(a1[6] + 8) + 40) setCredentialType:v7];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)credentialForAccount:(id)account serviceID:(id)d handler:(id)handler
{
  accountCopy = account;
  dCopy = d;
  handlerCopy = handler;
  v11 = MEMORY[0x277CB8F98];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__ACDAccountStore_credentialForAccount_serviceID_handler___block_invoke;
  v15[3] = &unk_27848C358;
  v15[4] = self;
  v16 = accountCopy;
  v17 = dCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = dCopy;
  v14 = accountCopy;
  [v11 performWithinPersonaForAccount:v14 withBlock:v15];
}

void __58__ACDAccountStore_credentialForAccount_serviceID_handler___block_invoke(uint64_t a1)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  v2 = [*(*(a1 + 32) + 120) managedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__ACDAccountStore_credentialForAccount_serviceID_handler___block_invoke_2;
  v7[3] = &unk_27848C330;
  v8 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v9 = v3;
  v10 = v4;
  v11 = &v19;
  v12 = &v13;
  [v2 performBlockAndWait:v7];

  v5 = v20[5];
  v6 = v14[5];
  (*(*(a1 + 56) + 16))();

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
}

void __58__ACDAccountStore_credentialForAccount_serviceID_handler___block_invoke_2(uint64_t a1)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v2 = _ACDLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __58__ACDAccountStore_credentialForAccount_serviceID_handler___block_invoke_2_cold_1();
  }

  v3 = *(a1 + 48);
  v4 = [*(a1 + 32) identifier];
  v18[0] = *MEMORY[0x277CB8E48];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v6 = [v3 _accountWithIdentifier:v4 prefetchKeypaths:v5];

  if (v6)
  {
    v7 = [v6 accountType];
    v8 = [v7 credentialType];
    v9 = *(a1 + 40);
    v10 = *(*(a1 + 64) + 8);
    obj = *(v10 + 40);
    v11 = [ACDKeychainManager credentialForManagedAccountObject:v6 clientID:v9 error:&obj];
    objc_storeStrong((v10 + 40), obj);
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    [*(*(*(a1 + 56) + 8) + 40) setCredentialType:v8];
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:6 userInfo:0];
    v15 = *(*(a1 + 64) + 8);
    v7 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)setCredential:(id)credential forAccount:(id)account serviceID:(id)d completion:(id)completion
{
  credentialCopy = credential;
  accountCopy = account;
  dCopy = d;
  completionCopy = completion;
  v14 = MEMORY[0x277CB8F98];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __65__ACDAccountStore_setCredential_forAccount_serviceID_completion___block_invoke;
  v19[3] = &unk_27848C380;
  v19[4] = self;
  v20 = credentialCopy;
  v21 = accountCopy;
  v22 = dCopy;
  v23 = completionCopy;
  v15 = completionCopy;
  v16 = dCopy;
  v17 = accountCopy;
  v18 = credentialCopy;
  [v14 performWithinPersonaForAccount:v17 withBlock:v19];
}

void __65__ACDAccountStore_setCredential_forAccount_serviceID_completion___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(*(a1 + 32) + 120) managedObjectContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__ACDAccountStore_setCredential_forAccount_serviceID_completion___block_invoke_2;
  v8[3] = &unk_27848C380;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  *&v6 = *(a1 + 56);
  *(&v6 + 1) = *v2;
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  v11 = *(a1 + 64);
  [v3 performBlockAndWait:v8];
}

void __65__ACDAccountStore_setCredential_forAccount_serviceID_completion___block_invoke_2(uint64_t a1)
{
  v2 = _ACDLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __65__ACDAccountStore_setCredential_forAccount_serviceID_completion___block_invoke_2_cold_1(a1);
  }

  v3 = *(a1 + 56);
  v4 = [*(a1 + 40) identifier];
  v5 = [v3 _accountWithIdentifier:v4 prefetchKeypaths:0];

  if (v5)
  {
    [*(a1 + 40) setCredential:*(a1 + 32)];
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v11 = 0;
    [ACDKeychainManager setCredentialForAccount:v6 clientID:v7 error:&v11];
    v8 = v11;
    v9 = *(*(a1 + 64) + 16);
  }

  else
  {
    v10 = *(a1 + 64);
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:6 userInfo:0];
    v9 = *(v10 + 16);
  }

  v9();
}

- (void)credentialForAccountWithIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = _ACDLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccountStore credentialForAccountWithIdentifier:identifierCopy handler:self];
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v9 = +[ACDAccountStore accountCache];
  v26 = [v9 cachedAccountForIdentifier:identifierCopy];

  v10 = v22[5];
  if (v10)
  {
    [v10 _setAccountStore:self];
  }

  else
  {
    managedObjectContext = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __62__ACDAccountStore_credentialForAccountWithIdentifier_handler___block_invoke;
    v18[3] = &unk_27848BF28;
    v18[4] = self;
    v19 = identifierCopy;
    v20 = &v21;
    [managedObjectContext performBlockAndWait:v18];
  }

  v12 = v22[5];
  if (v12)
  {
    v13 = MEMORY[0x277CB8F98];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __62__ACDAccountStore_credentialForAccountWithIdentifier_handler___block_invoke_147;
    v15[3] = &unk_27848C3D0;
    v15[4] = self;
    v17 = &v21;
    v16 = handlerCopy;
    [v13 performWithinPersonaForAccount:v12 withBlock:v15];
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:6 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v14);
  }

  _Block_object_dispose(&v21, 8);
}

void __62__ACDAccountStore_credentialForAccountWithIdentifier_handler___block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) _accountWithIdentifier:*(a1 + 40)];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CB8F30]) initWithManagedAccount:v3 accountStore:*(a1 + 32)];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = objc_alloc(MEMORY[0x277CB8F58]);
    v8 = [v3 accountType];
    v9 = [v7 initWithManagedAccountType:v8 accountStore:*(a1 + 32)];

    if (v9)
    {
      [*(*(*(a1 + 48) + 8) + 40) setAccountType:v9];
      v10 = +[ACDAccountStore accountCache];
      [v10 cacheAccount:*(*(*(a1 + 48) + 8) + 40)];
    }

    else
    {
      v11 = _ACDLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __62__ACDAccountStore_credentialForAccountWithIdentifier_handler___block_invoke_cold_1(v2);
      }
    }
  }

  else
  {
    v9 = _ACDLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __62__ACDAccountStore_credentialForAccountWithIdentifier_handler___block_invoke_cold_2(v2);
    }
  }
}

void __62__ACDAccountStore_credentialForAccountWithIdentifier_handler___block_invoke_147(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 176);
  v4 = *(*(*(a1 + 48) + 8) + 40);
  WeakRetained = objc_loadWeakRetained((v2 + 160));
  v6 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__ACDAccountStore_credentialForAccountWithIdentifier_handler___block_invoke_2;
  v9[3] = &unk_27848C3A8;
  v9[4] = v6;
  v8 = *(a1 + 40);
  v7 = v8;
  v10 = v8;
  [v3 credentialForAccount:v4 client:WeakRetained store:v6 handler:v9];
}

void __62__ACDAccountStore_credentialForAccountWithIdentifier_handler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _ACDLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __62__ACDAccountStore_credentialForAccountWithIdentifier_handler___block_invoke_2_cold_1();
  }

  if (!v5 && v6)
  {
    if ([v6 code] == -101 || objc_msgSend(v6, "code") == -102)
    {
      v8 = _ACDLogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(*(a1[6] + 8) + 40);
        *buf = 138412290;
        v19 = v9;
        _os_log_impl(&dword_221D2F000, v8, OS_LOG_TYPE_DEFAULT, "No plugin provides credentials for account %@. Falling back to legacy behavior.", buf, 0xCu);
      }

      v10 = a1[4];
      v11 = *(*(a1[6] + 8) + 40);
      WeakRetained = objc_loadWeakRetained(v10 + 20);
      v17 = v6;
      v5 = [v10 _legacyCredentialForAccount:v11 client:WeakRetained error:&v17];
      v13 = v17;

      v6 = v13;
      goto LABEL_18;
    }

    WeakRetained = _ACDLogSystem();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      __62__ACDAccountStore_credentialForAccountWithIdentifier_handler___block_invoke_2_cold_3();
    }

LABEL_17:
    v5 = 0;
    goto LABEL_18;
  }

  v14 = _ACDLogSystem();
  WeakRetained = v14;
  if (!v5)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(*(a1[6] + 8) + 40);
      *buf = 138412290;
      v19 = v15;
      _os_log_impl(&dword_221D2F000, WeakRetained, OS_LOG_TYPE_DEFAULT, "The credential for account %@ is missing. It may have been withheld by its auth plugin.", buf, 0xCu);
    }

    goto LABEL_17;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    __62__ACDAccountStore_credentialForAccountWithIdentifier_handler___block_invoke_2_cold_2(a1);
  }

LABEL_18:

  (*(a1[5] + 16))();
  v16 = *MEMORY[0x277D85DE8];
}

- (id)_legacyCredentialForAccount:(id)account client:(id)client error:(id *)error
{
  v21[1] = *MEMORY[0x277D85DE8];
  accountCopy = account;
  clientCopy = client;
  if ([clientCopy hasEntitlement:*MEMORY[0x277CB8FE0]])
  {
    goto LABEL_2;
  }

  accountType = [accountCopy accountType];
  identifier = [accountType identifier];
  if ([identifier isEqual:*MEMORY[0x277CB8D48]])
  {
    v13 = [clientCopy hasEntitlement:*MEMORY[0x277CB9068]];

    if (v13)
    {
      goto LABEL_2;
    }
  }

  else
  {
  }

  accountType2 = [accountCopy accountType];
  identifier2 = [accountType2 identifier];
  if (![identifier2 isEqual:*MEMORY[0x277CB8C58]])
  {

    if (!error)
    {
      goto LABEL_3;
    }

    goto LABEL_15;
  }

  v16 = [clientCopy hasEntitlement:*MEMORY[0x277CB9028]];

  if (v16)
  {
LABEL_2:
    error = [ACDKeychainManager credentialForAccount:accountCopy clientID:0 error:error];
    goto LABEL_3;
  }

  if (error)
  {
LABEL_15:
    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CB8DC0];
    v20 = *MEMORY[0x277CCA450];
    v21[0] = @"Client does not have access to credentials";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    *error = [v17 errorWithDomain:v18 code:9 userInfo:v19];

    error = 0;
  }

LABEL_3:

  v9 = *MEMORY[0x277D85DE8];

  return error;
}

- (void)credentialItemsWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  managedObjectContext = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__ACDAccountStore_credentialItemsWithCompletion___block_invoke;
  v6[3] = &unk_27848C308;
  v6[4] = self;
  v6[5] = &v7;
  [managedObjectContext performBlockAndWait:v6];

  completionCopy[2](completionCopy, v8[5], 0);
  _Block_object_dispose(&v7, 8);
}

void __49__ACDAccountStore_credentialItemsWithCompletion___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(*(a1 + 32) + 120) fetchObjectsForEntityNamed:@"CredentialItem"];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [objc_alloc(MEMORY[0x277CB8F60]) initWithManagedCredentialItem:*(*(&v12 + 1) + 8 * v9) accountStore:*(a1 + 32)];
        if (v10)
        {
          [*(*(*(a1 + 40) + 8) + 40) addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)credentialItemForAccount:(id)account serviceName:(id)name completion:(id)completion
{
  accountCopy = account;
  nameCopy = name;
  completionCopy = completion;
  v11 = MEMORY[0x277CB8F98];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__ACDAccountStore_credentialItemForAccount_serviceName_completion___block_invoke;
  v15[3] = &unk_27848C358;
  v15[4] = self;
  v16 = accountCopy;
  v17 = nameCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = nameCopy;
  v14 = accountCopy;
  [v11 performWithinPersonaForAccount:v14 withBlock:v15];
}

void __67__ACDAccountStore_credentialItemForAccount_serviceName_completion___block_invoke(uint64_t a1)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__3;
  v14 = __Block_byref_object_dispose__3;
  v15 = 0;
  v2 = [*(*(a1 + 32) + 120) managedObjectContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__ACDAccountStore_credentialItemForAccount_serviceName_completion___block_invoke_2;
  v6[3] = &unk_27848C3F8;
  v3 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v3;
  v8 = *(a1 + 48);
  v9 = &v10;
  [v2 performBlockAndWait:v6];

  (*(*(a1 + 56) + 16))(*(a1 + 56), v11[5], 0, v4, v5);
  _Block_object_dispose(&v10, 8);
}

void __67__ACDAccountStore_credentialItemForAccount_serviceName_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  v7 = [v2 _credentialItemWithAccountIdentifier:v3 serviceName:*(a1 + 48)];

  if (v7)
  {
    v4 = [objc_alloc(MEMORY[0x277CB8F60]) initWithManagedCredentialItem:v7 accountStore:*(a1 + 32)];
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

- (void)insertCredentialItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  accountIdentifier = [itemCopy accountIdentifier];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__ACDAccountStore_insertCredentialItem_completion___block_invoke;
  v11[3] = &unk_27848C470;
  v12 = itemCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = itemCopy;
  [(ACDAccountStore *)self accountWithIdentifier:accountIdentifier handler:v11];
}

void __51__ACDAccountStore_insertCredentialItem_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277CB8F98];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__ACDAccountStore_insertCredentialItem_completion___block_invoke_2;
  v8[3] = &unk_27848C448;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = v5;
  v10 = v6;
  v11 = v7;
  [v4 performWithinPersonaForAccount:a2 withBlock:v8];
}

void __51__ACDAccountStore_insertCredentialItem_completion___block_invoke_2(uint64_t a1)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__3;
  v20 = __Block_byref_object_dispose__3;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__3;
  v14 = __Block_byref_object_dispose__3;
  v15 = 0;
  [*(a1 + 32) setAccountStore:*(a1 + 40)];
  v2 = [*(*(a1 + 40) + 120) managedObjectContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__ACDAccountStore_insertCredentialItem_completion___block_invoke_3;
  v6[3] = &unk_27848C420;
  v5 = *(a1 + 32);
  v3 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  v8 = &v16;
  v9 = &v10;
  [v2 performBlockAndWait:v6];

  if (!v17[5])
  {
    [*(a1 + 32) setObjectID:v11[5]];
    v4 = *(a1 + 32);
  }

  (*(*(a1 + 48) + 16))();

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v16, 8);
}

void __51__ACDAccountStore_insertCredentialItem_completion___block_invoke_3(uint64_t a1)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) accountIdentifier];
  v4 = [*(a1 + 40) serviceName];
  v5 = [v2 _credentialItemWithAccountIdentifier:v3 serviceName:v4];

  if (v5)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [*(a1 + 40) accountIdentifier];
    v8 = [*(a1 + 40) serviceName];
    v9 = [v6 stringWithFormat:@"A credential item with the account identifier: %@ and service name: %@ already exists", v7, v8];

    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CB8DC0];
    v28 = *MEMORY[0x277CCA450];
    v29[0] = v9;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v13 = [v10 errorWithDomain:v11 code:20 userInfo:v12];
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    v16 = 0;
  }

  else
  {
    v16 = [*(*(a1 + 32) + 120) insertNewObjectForEntityForName:@"CredentialItem"];
    v17 = *(a1 + 40);
    v18 = *(*(a1 + 48) + 8);
    obj = *(v18 + 40);
    [v16 validateRequiredAttributesForObject:v17 error:&obj];
    objc_storeStrong((v18 + 40), obj);
    if (*(*(*(a1 + 48) + 8) + 40))
    {
      [*(*(a1 + 32) + 120) deleteObject:v16];
    }

    else
    {
      [v16 setValuesWithObject:*(a1 + 40)];
      v19 = *(*(a1 + 32) + 120);
      v20 = *(*(a1 + 48) + 8);
      v26 = *(v20 + 40);
      [v19 saveWithError:&v26];
      objc_storeStrong((v20 + 40), v26);
    }
  }

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v21 = [v16 objectID];
    v22 = [v21 URIRepresentation];
    v23 = *(*(a1 + 56) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)saveCredentialItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  accountIdentifier = [itemCopy accountIdentifier];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__ACDAccountStore_saveCredentialItem_completion___block_invoke;
  v11[3] = &unk_27848C470;
  v12 = itemCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = itemCopy;
  [(ACDAccountStore *)self accountWithIdentifier:accountIdentifier handler:v11];
}

void __49__ACDAccountStore_saveCredentialItem_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277CB8F98];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__ACDAccountStore_saveCredentialItem_completion___block_invoke_2;
  v8[3] = &unk_27848C448;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = v5;
  v10 = v6;
  v11 = v7;
  [v4 performWithinPersonaForAccount:a2 withBlock:v8];
}

void __49__ACDAccountStore_saveCredentialItem_completion___block_invoke_2(uint64_t a1)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__3;
  v14 = __Block_byref_object_dispose__3;
  v15 = 0;
  [*(a1 + 32) setAccountStore:*(a1 + 40)];
  v2 = [*(*(a1 + 40) + 120) managedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__ACDAccountStore_saveCredentialItem_completion___block_invoke_3;
  v7[3] = &unk_27848BF28;
  v6 = *(a1 + 32);
  v3 = v6.i64[0];
  v8 = vextq_s8(v6, v6, 8uLL);
  v9 = &v10;
  [v2 performBlockAndWait:v7];

  v4 = *(a1 + 48);
  if (v11[5])
  {
    (*(v4 + 16))(*(a1 + 48), 0);
  }

  else
  {
    v5 = [*(a1 + 32) objectID];
    (*(v4 + 16))(v4, v5, 0);
  }

  _Block_object_dispose(&v10, 8);
}

void __49__ACDAccountStore_saveCredentialItem_completion___block_invoke_3(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) accountIdentifier];
  v5 = [*v2 serviceName];
  v6 = [v3 _credentialItemWithAccountIdentifier:v4 serviceName:v5];

  if (v6)
  {
    [v6 setValuesWithObject:*v2];
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:22 userInfo:0];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = _ACDLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __49__ACDAccountStore_saveCredentialItem_completion___block_invoke_3_cold_1();
    }
  }

  v11 = *(*(a1 + 48) + 8);
  v13 = *(v11 + 40);
  v12 = (v11 + 40);
  v14 = *(*(a1 + 32) + 120);
  if (v13)
  {
    [v14 rollback];
  }

  else
  {
    obj = 0;
    [v14 saveWithError:&obj rollbackOnFailure:1];
    objc_storeStrong(v12, obj);
  }
}

- (void)removeCredentialItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  accountIdentifier = [itemCopy accountIdentifier];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__ACDAccountStore_removeCredentialItem_completion___block_invoke;
  v11[3] = &unk_27848C470;
  v12 = itemCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = itemCopy;
  [(ACDAccountStore *)self accountWithIdentifier:accountIdentifier handler:v11];
}

void __51__ACDAccountStore_removeCredentialItem_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277CB8F98];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__ACDAccountStore_removeCredentialItem_completion___block_invoke_2;
  v8[3] = &unk_27848C448;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = v5;
  v10 = v6;
  v11 = v7;
  [v4 performWithinPersonaForAccount:a2 withBlock:v8];
}

void __51__ACDAccountStore_removeCredentialItem_completion___block_invoke_2(uint64_t a1)
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = __Block_byref_object_copy__3;
  v8[4] = __Block_byref_object_dispose__3;
  v9 = 0;
  [*(a1 + 32) setAccountStore:*(a1 + 40)];
  v2 = [*(*(a1 + 40) + 120) managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__ACDAccountStore_removeCredentialItem_completion___block_invoke_3;
  v5[3] = &unk_27848BF28;
  v4 = *(a1 + 32);
  v3 = v4.i64[0];
  v6 = vextq_s8(v4, v4, 8uLL);
  v7 = v8;
  [v2 performBlockAndWait:v5];

  (*(*(a1 + 48) + 16))();
  _Block_object_dispose(v8, 8);
}

void __51__ACDAccountStore_removeCredentialItem_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) accountIdentifier];
  v4 = [*(a1 + 40) serviceName];
  v5 = [v2 _credentialItemWithAccountIdentifier:v3 serviceName:v4];

  if (v5)
  {
    [*(*(a1 + 32) + 120) deleteObject:v5];
    v6 = *(*(a1 + 48) + 8);
    v8 = *(v6 + 40);
    v7 = (v6 + 40);
    if (!v8)
    {
      v9 = *(*(a1 + 32) + 120);
      obj = 0;
      [v9 saveWithError:&obj];
      objc_storeStrong(v7, obj);
    }
  }
}

- (void)dataclassesWithHandler:(id)handler
{
  handlerCopy = handler;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__3;
  v12 = __Block_byref_object_dispose__3;
  v13 = 0;
  managedObjectContext = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__ACDAccountStore_dataclassesWithHandler___block_invoke;
  v7[3] = &unk_27848C308;
  v7[4] = self;
  v7[5] = &v8;
  [managedObjectContext performBlockAndWait:v7];

  if ([v9[5] count])
  {
    v6 = v9[5];
  }

  else
  {
    v6 = 0;
  }

  handlerCopy[2](handlerCopy, v6, 0);
  _Block_object_dispose(&v8, 8);
}

void __42__ACDAccountStore_dataclassesWithHandler___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(*(a1 + 32) + 120) fetchObjectsForEntityNamed:@"Dataclass" withPredicate:0];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(*(a1 + 40) + 8) + 40);
        v11 = [*(*(&v13 + 1) + 8 * v9) name];
        [v10 addObject:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)accountsWithAccountType:(id)type options:(unint64_t)options completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  [typeCopy setAccountStore:self];
  v14 = 0;
  v10 = [(ACDAccountStore *)self _accountsWithAccountType:typeCopy options:options error:&v14];
  v11 = v14;
  v12 = _ACDLogSystem();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ACDAccountStore accountsWithAccountType:options:completion:];
    }

    completionCopy[2](completionCopy, 0, v11);
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ACDAccountStore accountsWithAccountType:options:completion:];
    }

    (completionCopy)[2](completionCopy, v10, 0);
  }
}

- (id)_accountsWithAccountType:(id)type options:(unint64_t)options error:(id *)error
{
  typeCopy = type;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__3;
  v31 = __Block_byref_object_dispose__3;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  managedObjectContext = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__ACDAccountStore__accountsWithAccountType_options_error___block_invoke;
  v14[3] = &unk_27848C4C0;
  v17 = &v21;
  v10 = typeCopy;
  v20 = (options & 1) == 0;
  v15 = v10;
  selfCopy = self;
  v18 = &v27;
  optionsCopy = options;
  [managedObjectContext performBlockAndWait:v14];

  if (error)
  {
    v11 = v28[5];
    if (v11)
    {
      *error = v11;
    }
  }

  v12 = v22[5];

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v12;
}

void __58__ACDAccountStore__accountsWithAccountType_options_error___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = +[ACDAccountStore accountCache];
  v3 = [*(a1 + 32) identifier];
  v4 = *(a1 + 72);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __58__ACDAccountStore__accountsWithAccountType_options_error___block_invoke_2;
  v21[3] = &unk_27848C498;
  v16 = *(a1 + 32);
  v5 = v16.i64[0];
  v22 = vextq_s8(v16, v16, 8uLL);
  v6 = *(a1 + 64);
  v23 = *(a1 + 56);
  v24 = v6;
  v7 = [v2 cachedAccountsOfType:v3 justActive:v4 fetchBlock:v21];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = *(*(*(a1 + 48) + 8) + 40);
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v17 + 1) + 8 * v14++) _setAccountStore:{*(a1 + 40), *&v16, v17}];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

id __58__ACDAccountStore__accountsWithAccountType_options_error___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[7];
  v9 = 0;
  v5 = [v2 _block_accountsWithAccountType:v3 options:v4 error:&v9];
  v6 = v9;
  v7 = v9;
  if (v7)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v6);
  }

  return v5;
}

- (id)_predicateForFetchingAccountsWithManagedAccountTypeID:(id)d options:(unint64_t)options
{
  if (options)
  {
    [MEMORY[0x277CCAC30] predicateWithFormat:@"accountType == %@", d, v6];
  }

  else
  {
    [MEMORY[0x277CCAC30] predicateWithFormat:@"accountType == %@ AND active == %@", d, MEMORY[0x277CBEC38]];
  }
  v4 = ;

  return v4;
}

- (void)parentAccountForAccountWithIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  managedObjectContext = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__ACDAccountStore_parentAccountForAccountWithIdentifier_handler___block_invoke;
  v10[3] = &unk_27848BF28;
  v10[4] = self;
  v9 = identifierCopy;
  v11 = v9;
  v12 = &v13;
  [managedObjectContext performBlockAndWait:v10];

  handlerCopy[2](handlerCopy, v14[5], 0);
  _Block_object_dispose(&v13, 8);
}

void __65__ACDAccountStore_parentAccountForAccountWithIdentifier_handler___block_invoke(void *a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v11[0] = *MEMORY[0x277CB8E78];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v5 = [v2 _accountWithIdentifier:v3 prefetchKeypaths:v4];

  v6 = [v5 parentAccount];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CB8F30]) initWithManagedAccount:v6 accountStore:a1[4]];
    v8 = *(a1[6] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)childAccountsForAccountWithIdentifier:(id)identifier handler:(id)handler
{
  handlerCopy = handler;
  v7 = [(ACDAccountStore *)self _childAccountsForAccountWithID:identifier];
  handlerCopy[2](handlerCopy, v7, 0);
}

- (void)childAccountsWithAccountTypeIdentifier:(id)identifier parentAccountIdentifier:(id)accountIdentifier handler:(id)handler
{
  identifierCopy = identifier;
  accountIdentifierCopy = accountIdentifier;
  handlerCopy = handler;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__3;
  v22 = __Block_byref_object_dispose__3;
  v23 = 0;
  managedObjectContext = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __90__ACDAccountStore_childAccountsWithAccountTypeIdentifier_parentAccountIdentifier_handler___block_invoke;
  v14[3] = &unk_27848C3F8;
  v14[4] = self;
  v12 = identifierCopy;
  v15 = v12;
  v13 = accountIdentifierCopy;
  v16 = v13;
  v17 = &v18;
  [managedObjectContext performBlockAndWait:v14];

  handlerCopy[2](handlerCopy, v19[5], 0);
  _Block_object_dispose(&v18, 8);
}

void __90__ACDAccountStore_childAccountsWithAccountTypeIdentifier_parentAccountIdentifier_handler___block_invoke(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1[4] + 120);
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"accountType.identifier = %@ AND parentAccount.identifier = %@", a1[5], a1[6]];
  v4 = [MEMORY[0x277CB8F30] keypathsRequiredForInitialization];
  v5 = [v2 fetchObjectsForEntityNamed:@"Account" withPredicate:v3 sortDescriptor:0 prefetchKeypaths:v4];

  if ([v5 count])
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v7 = *(a1[7] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [objc_alloc(MEMORY[0x277CB8F30]) initWithManagedAccount:*(*(&v16 + 1) + 8 * v13)];
          if (v14)
          {
            [*(*(a1[7] + 8) + 40) addObject:v14];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_childAccountsForAccountWithID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__3;
    v17 = __Block_byref_object_dispose__3;
    v18 = 0;
    managedObjectContext = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __50__ACDAccountStore__childAccountsForAccountWithID___block_invoke;
    v9[3] = &unk_27848BF28;
    v10 = dCopy;
    selfCopy = self;
    v12 = &v13;
    [managedObjectContext performBlockAndWait:v9];

    v6 = v14[5];
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v7 = _ACDLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ACDAccountStore _childAccountsForAccountWithID:];
    }

    v6 = 0;
  }

  return v6;
}

void __50__ACDAccountStore__childAccountsForAccountWithID___block_invoke(void *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"parentAccount.identifier = %@", a1[4]];
  v3 = *(a1[5] + 120);
  v4 = [MEMORY[0x277CB8F30] keypathsRequiredForInitialization];
  v19 = v2;
  v5 = [v3 fetchObjectsForEntityNamed:@"Account" withPredicate:v2 sortDescriptor:0 prefetchKeypaths:v4];

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      v13 = 0;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * v13);
        v15 = [objc_alloc(MEMORY[0x277CB8F30]) initWithManagedAccount:v14 accountStore:a1[5]];
        v16 = [v14 accountType];
        v17 = [objc_alloc(MEMORY[0x277CB8F58]) initWithManagedAccountType:v16 accountStore:a1[5]];
        [v15 setAccountType:v17];
        if (v15)
        {
          [*(*(a1[6] + 8) + 40) addObject:v15];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)accountIdentifiersEnabledForDataclass:(id)dataclass handler:(id)handler
{
  dataclassCopy = dataclass;
  handlerCopy = handler;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  managedObjectContext = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__ACDAccountStore_accountIdentifiersEnabledForDataclass_handler___block_invoke;
  v10[3] = &unk_27848BF28;
  v10[4] = self;
  v9 = dataclassCopy;
  v11 = v9;
  v12 = &v13;
  [managedObjectContext performBlockAndWait:v10];

  handlerCopy[2](handlerCopy, v14[5], 0);
  _Block_object_dispose(&v13, 8);
}

void __65__ACDAccountStore_accountIdentifiersEnabledForDataclass_handler___block_invoke(void *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"date" ascending:1];
  v3 = *(a1[4] + 120);
  v4 = [MEMORY[0x277CB8F30] keypathsRequiredForInitialization];
  v19 = v2;
  v5 = [v3 fetchObjectsForEntityNamed:@"Account" withPredicate:0 sortDescriptor:v2 prefetchKeypaths:v4];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 enabledDataclasses];
        v13 = [v12 valueForKey:@"name"];
        if ([v13 containsObject:a1[5]])
        {
          if (!*(*(a1[6] + 8) + 40))
          {
            v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v15 = *(a1[6] + 8);
            v16 = *(v15 + 40);
            *(v15 + 40) = v14;
          }

          v17 = [v11 identifier];
          [*(*(a1[6] + 8) + 40) addObject:v17];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)accountIdentifiersEnabledToSyncDataclass:(id)dataclass handler:(id)handler
{
  dataclassCopy = dataclass;
  handlerCopy = handler;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  managedObjectContext = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__ACDAccountStore_accountIdentifiersEnabledToSyncDataclass_handler___block_invoke;
  v10[3] = &unk_27848BF28;
  v10[4] = self;
  v9 = dataclassCopy;
  v11 = v9;
  v12 = &v13;
  [managedObjectContext performBlockAndWait:v10];

  handlerCopy[2](handlerCopy, v14[5], 0);
  _Block_object_dispose(&v13, 8);
}

void __68__ACDAccountStore_accountIdentifiersEnabledToSyncDataclass_handler___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _dataclassWithName:*(a1 + 40) createIfNecessary:0];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"date" ascending:1];
    v4 = *(*(a1 + 32) + 120);
    v5 = [MEMORY[0x277CB8F30] keypathsRequiredForInitialization];
    v23 = v3;
    v6 = [v4 fetchObjectsForEntityNamed:@"Account" withPredicate:0 sortDescriptor:v3 prefetchKeypaths:v5];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (!v8)
    {
      goto LABEL_20;
    }

    v9 = v8;
    v10 = *v25;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = *(a1 + 32);
        v14 = [v12 accountType];
        LODWORD(v13) = [v13 _canManagedAccountType:v14 syncManagedDataclass:v2];

        if (v13)
        {
          v15 = [v12 parentAccount];
          v16 = *(a1 + 32);
          if (v15)
          {
            if (([v16 _isManagedAccount:v15 enabledForManagedDataclass:v2] & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          else if (![v16 _isManagedAccount:v12 enabledForManagedDataclass:v2])
          {
LABEL_17:

            continue;
          }

          v17 = [v12 identifier];
          if (v17)
          {
            v18 = *(*(*(a1 + 48) + 8) + 40);
            if (!v18)
            {
              v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
              v20 = *(*(a1 + 48) + 8);
              v21 = *(v20 + 40);
              *(v20 + 40) = v19;

              v18 = *(*(*(a1 + 48) + 8) + 40);
            }

            [v18 addObject:v17];
          }

          goto LABEL_17;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (!v9)
      {
LABEL_20:

        break;
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)_canManagedAccountType:(id)type syncManagedDataclass:(id)dataclass
{
  v20 = *MEMORY[0x277D85DE8];
  dataclassCopy = dataclass;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  syncableDataclasses = [type syncableDataclasses];
  v7 = [syncableDataclasses countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(syncableDataclasses);
        }

        name = [*(*(&v15 + 1) + 8 * i) name];
        name2 = [dataclassCopy name];
        v12 = [name isEqualToString:name2];

        if (v12)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [syncableDataclasses countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)_isManagedAccount:(id)account enabledForManagedDataclass:(id)dataclass
{
  v20 = *MEMORY[0x277D85DE8];
  dataclassCopy = dataclass;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  enabledDataclasses = [account enabledDataclasses];
  v7 = [enabledDataclasses countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(enabledDataclasses);
        }

        name = [*(*(&v15 + 1) + 8 * i) name];
        name2 = [dataclassCopy name];
        v12 = [name isEqualToString:name2];

        if (v12)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [enabledDataclasses countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)accountIdentifiersEnabledForDataclasses:(id)dataclasses withAccountTypeIdentifiers:(id)identifiers completion:(id)completion
{
  dataclassesCopy = dataclasses;
  identifiersCopy = identifiers;
  completionCopy = completion;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  managedObjectContext = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __97__ACDAccountStore_accountIdentifiersEnabledForDataclasses_withAccountTypeIdentifiers_completion___block_invoke;
  v14[3] = &unk_27848C4E8;
  v12 = identifiersCopy;
  v15 = v12;
  selfCopy = self;
  v18 = &v19;
  v13 = dataclassesCopy;
  v17 = v13;
  [managedObjectContext performBlockAndWait:v14];

  completionCopy[2](completionCopy, v20[5], 0);
  _Block_object_dispose(&v19, 8);
}

void __97__ACDAccountStore_accountIdentifiersEnabledForDataclasses_withAccountTypeIdentifiers_completion___block_invoke(void *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"accountType.identifier IN %@", a1[4]];
  v3 = *(a1[5] + 120);
  v4 = [MEMORY[0x277CB8F30] keypathsRequiredForInitialization];
  v20 = v2;
  v5 = [v3 fetchObjectsForEntityNamed:@"Account" withPredicate:v2 sortDescriptor:0 prefetchKeypaths:v4];

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = *(a1[7] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v5;
  v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [v13 enabledDataclasses];
        v15 = [v14 valueForKey:@"name"];
        v16 = [MEMORY[0x277CBEB98] setWithArray:a1[6]];
        v17 = [v16 intersectsSet:v15];

        if (v17)
        {
          v18 = [v13 identifier];
          [*(*(a1[7] + 8) + 40) addObject:v18];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)enabledDataclassesForAccountWithIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  managedObjectContext = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__ACDAccountStore_enabledDataclassesForAccountWithIdentifier_handler___block_invoke;
  v10[3] = &unk_27848BF28;
  v10[4] = self;
  v9 = identifierCopy;
  v11 = v9;
  v12 = &v13;
  [managedObjectContext performBlockAndWait:v10];

  handlerCopy[2](handlerCopy, v14[5], 0);
  _Block_object_dispose(&v13, 8);
}

void __70__ACDAccountStore_enabledDataclassesForAccountWithIdentifier_handler___block_invoke(void *a1)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v23[0] = *MEMORY[0x277CB8E70];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v5 = [v2 _accountWithIdentifier:v3 prefetchKeypaths:v4];

  if (v5)
  {
    v6 = [v5 enabledDataclasses];
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v8 = *(a1[6] + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v10 = v6;
      v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v19;
        do
        {
          v14 = 0;
          do
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(a1[6] + 8) + 40);
            v16 = [*(*(&v18 + 1) + 8 * v14) name];
            [v15 addObject:v16];

            ++v14;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v12);
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)provisionedDataclassesForAccountWithIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  managedObjectContext = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__ACDAccountStore_provisionedDataclassesForAccountWithIdentifier_handler___block_invoke;
  v10[3] = &unk_27848BF28;
  v10[4] = self;
  v9 = identifierCopy;
  v11 = v9;
  v12 = &v13;
  [managedObjectContext performBlockAndWait:v10];

  handlerCopy[2](handlerCopy, v14[5], 0);
  _Block_object_dispose(&v13, 8);
}

void __74__ACDAccountStore_provisionedDataclassesForAccountWithIdentifier_handler___block_invoke(void *a1)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v23[0] = *MEMORY[0x277CB8E80];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v5 = [v2 _accountWithIdentifier:v3 prefetchKeypaths:v4];

  if (v5)
  {
    v6 = [v5 provisionedDataclasses];
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v8 = *(a1[6] + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v10 = v6;
      v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v19;
        do
        {
          v14 = 0;
          do
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(a1[6] + 8) + 40);
            v16 = [*(*(&v18 + 1) + 8 * v14) name];
            [v15 addObject:v16];

            ++v14;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v12);
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)syncableDataclassesForAccountType:(id)type handler:(id)handler
{
  typeCopy = type;
  handlerCopy = handler;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  [typeCopy setAccountStore:self];
  managedObjectContext = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__ACDAccountStore_syncableDataclassesForAccountType_handler___block_invoke;
  v10[3] = &unk_27848BF28;
  v10[4] = self;
  v9 = typeCopy;
  v11 = v9;
  v12 = &v13;
  [managedObjectContext performBlockAndWait:v10];

  handlerCopy[2](handlerCopy, v14[5], 0);
  _Block_object_dispose(&v13, 8);
}

void __61__ACDAccountStore_syncableDataclassesForAccountType_handler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 120);
  v3 = [*(a1 + 40) objectID];
  v7 = [v2 existingObjectWithURI:v3];

  v4 = [v7 syncableDataclassStrings];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)supportedDataclassesForAccountType:(id)type handler:(id)handler
{
  typeCopy = type;
  handlerCopy = handler;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  [typeCopy setAccountStore:self];
  managedObjectContext = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__ACDAccountStore_supportedDataclassesForAccountType_handler___block_invoke;
  v10[3] = &unk_27848BF28;
  v10[4] = self;
  v9 = typeCopy;
  v11 = v9;
  v12 = &v13;
  [managedObjectContext performBlockAndWait:v10];

  handlerCopy[2](handlerCopy, v14[5], 0);
  _Block_object_dispose(&v13, 8);
}

void __62__ACDAccountStore_supportedDataclassesForAccountType_handler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 120);
  v3 = [*(a1 + 40) objectID];
  v7 = [v2 existingObjectWithURI:v3];

  v4 = [v7 supportedDataclassStrings];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)accessKeysForAccountType:(id)type handler:(id)handler
{
  typeCopy = type;
  handlerCopy = handler;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__3;
  v24 = __Block_byref_object_dispose__3;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  [typeCopy setAccountStore:self];
  managedObjectContext = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__ACDAccountStore_accessKeysForAccountType_handler___block_invoke;
  v10[3] = &unk_27848C420;
  v10[4] = self;
  v9 = typeCopy;
  v11 = v9;
  v12 = &v20;
  v13 = &v14;
  [managedObjectContext performBlockAndWait:v10];

  handlerCopy[2](handlerCopy, v21[5], v15[5]);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
}

void __52__ACDAccountStore_accessKeysForAccountType_handler___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 120);
  v3 = [*(a1 + 40) objectID];
  v4 = [v2 existingObjectWithURI:v3];

  if (!v4)
  {
    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CB8DC0];
    v28 = *MEMORY[0x277CCA450];
    v18 = MEMORY[0x277CCACA8];
    v5 = [*(a1 + 40) identifier];
    v9 = [v18 stringWithFormat:@"%@ is not a valid account type.", v5];
    v29 = v9;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v20 = [v16 errorWithDomain:v17 code:4 userInfo:v19];
    v21 = *(*(a1 + 56) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;

LABEL_12:
    goto LABEL_13;
  }

  v5 = [v4 accessKeys];
  if ([v5 count])
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      do
      {
        v13 = 0;
        do
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(*(a1 + 48) + 8) + 40);
          v15 = [*(*(&v24 + 1) + 8 * v13) name];
          [v14 addObject:v15];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v11);
    }

    v5 = v9;
    goto LABEL_12;
  }

LABEL_13:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)insertAccountType:(id)type withHandler:(id)handler
{
  v39 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  handlerCopy = handler;
  v32 = 0;
  v33[0] = &v32;
  v33[1] = 0x3032000000;
  v33[2] = __Block_byref_object_copy__3;
  v33[3] = __Block_byref_object_dispose__3;
  v34 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__3;
  v30 = __Block_byref_object_dispose__3;
  v31 = 0;
  [typeCopy setAccountStore:self];
  managedObjectContext = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __49__ACDAccountStore_insertAccountType_withHandler___block_invoke;
  v21 = &unk_27848C420;
  selfCopy = self;
  v9 = typeCopy;
  v23 = v9;
  v24 = &v32;
  v25 = &v26;
  [managedObjectContext performBlockAndWait:&v18];

  if (*(v33[0] + 40))
  {
    v10 = _ACDLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      identifier = [v9 identifier];
      [ACDAccountStore insertAccountType:identifier withHandler:v33];
    }

    v12 = 0;
    v13 = *(v33[0] + 40);
  }

  else
  {
    [v9 setObjectID:{v27[5], v18, v19, v20, v21, selfCopy}];
    v14 = _ACDLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [v9 identifier];
      v16 = v27[5];
      *buf = 138543618;
      v36 = identifier2;
      v37 = 2112;
      v38 = v16;
      _os_log_impl(&dword_221D2F000, v14, OS_LOG_TYPE_DEFAULT, "Inserted account type '%{public}@' with object ID: %@", buf, 0x16u);
    }

    v13 = 0;
    v12 = v9;
  }

  handlerCopy[2](handlerCopy, v12, v13);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  v17 = *MEMORY[0x277D85DE8];
}

void __49__ACDAccountStore_insertAccountType_withHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 _accountTypeWithIdentifier:v3];

  if (v4)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [*(a1 + 40) identifier];
    v7 = [v5 stringWithFormat:@"An account type with the identifier: %@ already exists", v6];

    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277CB8DC0];
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v7 forKey:*MEMORY[0x277CCA450]];
    v11 = [v8 errorWithDomain:v9 code:4 userInfo:v10];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v14 = 0;
  }

  else
  {
    v14 = [*(*(a1 + 32) + 120) insertNewObjectForEntityForName:@"AccountType"];
    v15 = *(a1 + 40);
    v16 = *(*(a1 + 48) + 8);
    obj = *(v16 + 40);
    [v14 validateRequiredAttributesForObject:v15 error:&obj];
    objc_storeStrong((v16 + 40), obj);
    if (*(*(*(a1 + 48) + 8) + 40))
    {
      [*(*(a1 + 32) + 120) deleteObject:v14];
    }

    else
    {
      [v14 setValuesWithObject:*(a1 + 40)];
      v17 = *(*(a1 + 32) + 120);
      v18 = *(*(a1 + 48) + 8);
      v23 = *(v18 + 40);
      [v17 saveWithError:&v23];
      objc_storeStrong((v18 + 40), v23);
    }
  }

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v19 = [v14 objectID];
    v20 = [v19 URIRepresentation];
    v21 = *(*(a1 + 56) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;
  }
}

- (void)removeAccountType:(id)type withHandler:(id)handler
{
  v36 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  handlerCopy = handler;
  v31 = 0;
  v32[0] = &v31;
  v32[1] = 0x3032000000;
  v32[2] = __Block_byref_object_copy__3;
  v32[3] = __Block_byref_object_dispose__3;
  v33 = 0;
  [typeCopy setAccountStore:self];
  identifier = [typeCopy identifier];
  v9 = [(ACDAccountStore *)self accountsExistWithAccountTypeIdentifier:identifier];

  if (v9)
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:1000 userInfo:0];
    v11 = *(v32[0] + 40);
    *(v32[0] + 40) = v10;
  }

  else
  {
    managedObjectContext = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __49__ACDAccountStore_removeAccountType_withHandler___block_invoke;
    v28[3] = &unk_27848BF28;
    v28[4] = self;
    v29 = typeCopy;
    v30 = &v31;
    [managedObjectContext performBlockAndWait:v28];
  }

  if (*(v32[0] + 40))
  {
    v13 = _ACDLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      identifier2 = [typeCopy identifier];
      [ACDAccountStore removeAccountType:identifier2 withHandler:v32];
    }

    v15 = *(v32[0] + 40);
    v16 = MEMORY[0x277CBEC28];
  }

  else
  {
    v17 = _ACDLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      identifier3 = [typeCopy identifier];
      *buf = 138543362;
      v35 = identifier3;
      _os_log_impl(&dword_221D2F000, v17, OS_LOG_TYPE_DEFAULT, "Removed account type '%{public}@'", buf, 0xCu);
    }

    allIdentifiers = [MEMORY[0x277CB8F58] allIdentifiers];
    identifier4 = [typeCopy identifier];
    v21 = [allIdentifiers containsObject:identifier4];

    if (v21)
    {
      v22 = MEMORY[0x277CCACA8];
      WeakRetained = objc_loadWeakRetained(&self->_client);
      identifier5 = [typeCopy identifier];
      v25 = [v22 stringWithFormat:@"Client '%@' removed internal account type '%@'", WeakRetained, identifier5];

      v26 = +[ACDEventLedger sharedLedger];
      [v26 simulateCrashWithMessage:v25];
    }

    v15 = 0;
    v16 = MEMORY[0x277CBEC38];
  }

  handlerCopy[2](handlerCopy, v16, v15);
  _Block_object_dispose(&v31, 8);

  v27 = *MEMORY[0x277D85DE8];
}

void __49__ACDAccountStore_removeAccountType_withHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 _accountTypeWithIdentifier:v3];

  if (v4)
  {
    [*(*(a1 + 32) + 120) deleteObject:v4];
    v5 = *(*(a1 + 48) + 8);
    v7 = *(v5 + 40);
    v6 = (v5 + 40);
    if (!v7)
    {
      v8 = *(*(a1 + 32) + 120);
      obj = 0;
      [v8 saveWithError:&obj];
      objc_storeStrong(v6, obj);
    }
  }

  v9 = +[ACDAccountStore accountCache];
  [v9 removeAccountType:*(a1 + 40)];
}

- (void)removeAccount:(id)account withDataclassActions:(id)actions completion:(id)completion
{
  accountCopy = account;
  actionsCopy = actions;
  completionCopy = completion;
  [accountCopy _setAccountStore:self];
  v11 = MEMORY[0x277CB8F98];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__ACDAccountStore_removeAccount_withDataclassActions_completion___block_invoke;
  v15[3] = &unk_27848C358;
  v15[4] = self;
  v16 = accountCopy;
  v17 = actionsCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = actionsCopy;
  v14 = accountCopy;
  [v11 performWithinPersonaForAccount:v14 withBlock:v15];
}

void __65__ACDAccountStore_removeAccount_withDataclassActions_completion___block_invoke(uint64_t a1)
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v22 = 0;
  v2 = [*(*(a1 + 32) + 120) managedObjectContext];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__ACDAccountStore_removeAccount_withDataclassActions_completion___block_invoke_2;
  v12[3] = &unk_27848C180;
  v4 = (a1 + 40);
  v3 = *(a1 + 40);
  v5 = *(a1 + 32);
  v15 = &v23;
  v12[4] = v5;
  v13 = v3;
  v14 = *(a1 + 48);
  v16 = &v17;
  [v2 performBlockAndWait:v12];

  if ([v18[5] code] == 6)
  {
    v6 = 0;
    v7 = 1;
  }

  else
  {
    v7 = *(v24 + 24);
    v6 = v18[5];
  }

  (*(*(a1 + 56) + 16))(*(a1 + 56), v7 & 1, v6);
  if (*(v24 + 24) == 1)
  {
    v8 = [*v4 objectForKeyedSubscript:@"AccountSyncDelete"];

    if (v8)
    {
      v9 = [*v4 objectForKeyedSubscript:@"AccountSyncDelete"];
      v10 = [v9 BOOLValue];

      if ((v10 & 1) == 0)
      {
        v11 = _ACDLogSystem();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          __65__ACDAccountStore_removeAccount_withDataclassActions_completion___block_invoke_cold_1(v4);
        }
      }
    }
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);
}

void __65__ACDAccountStore_removeAccount_withDataclassActions_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v12 = 0;
  v5 = [v2 _removeAccountNoSave:v3 withDataclassActions:v4 withError:&v12];
  v6 = v12;
  *(*(a1[7] + 8) + 24) &= v5;
  v7 = a1[4];
  v11 = 0;
  v8 = [v7 _saveWithError:&v11];
  v9 = v11;
  *(*(a1[7] + 8) + 24) &= v8;
  v10 = v9;
  if (v9 || (v10 = v6) != 0)
  {
    objc_storeStrong((*(a1[8] + 8) + 40), v10);
  }
}

- (void)canSaveAccount:(id)account completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  [accountCopy _setAccountStore:self];
  if (completionCopy)
  {
    objectID = [accountCopy objectID];
    if (objectID || ([accountCopy accountType], objectID = objc_claimAutoreleasedReturnValue(), !objc_msgSend(objectID, "isObsolete")))
    {
    }

    else
    {
      shouldPreventAccountCreationWithObsoleteAccountType = [(ACDAccountStore *)self shouldPreventAccountCreationWithObsoleteAccountType];

      if (shouldPreventAccountCreationWithObsoleteAccountType)
      {
        v10 = MEMORY[0x277CCACA8];
        accountType = [accountCopy accountType];
        accountTypeDescription = [accountType accountTypeDescription];
        v13 = [v10 stringWithFormat:@"Creating %@ accounts is not supported.", accountTypeDescription];

        v14 = MEMORY[0x277CCA9B8];
        v15 = *MEMORY[0x277CB8DC0];
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v13 forKey:*MEMORY[0x277CCA450]];
        v17 = [v14 errorWithDomain:v15 code:7 userInfo:v16];

        completionCopy[2](completionCopy, 0, v17);
LABEL_11:

        goto LABEL_12;
      }
    }

    v21 = 0;
    v18 = [(ACDAccountStore *)self _canSaveAccount:accountCopy error:&v21];
    v13 = v21;
    if (v18)
    {
      v19 = 1;
      v20 = 0;
    }

    else
    {
      v19 = 0;
      v20 = v13;
    }

    completionCopy[2](completionCopy, v19, v20);
    goto LABEL_11;
  }

LABEL_12:
}

- (void)saveAccount:(id)account verify:(BOOL)verify dataclassActions:(id)actions completion:(id)completion
{
  accountCopy = account;
  actionsCopy = actions;
  completionCopy = completion;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__3;
  v24[4] = __Block_byref_object_dispose__3;
  v25 = 0;
  v13 = MEMORY[0x277CB8F98];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __66__ACDAccountStore_saveAccount_verify_dataclassActions_completion___block_invoke;
  v17[3] = &unk_27848C538;
  v14 = accountCopy;
  v18 = v14;
  selfCopy = self;
  verifyCopy = verify;
  v15 = completionCopy;
  v21 = v15;
  v22 = v24;
  v16 = actionsCopy;
  v20 = v16;
  [v13 performWithinPersonaForAccount:v14 withBlock:v17];

  _Block_object_dispose(v24, 8);
}

void __66__ACDAccountStore_saveAccount_verify_dataclassActions_completion___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = os_transaction_create();
  [*(a1 + 32) _setAccountStore:*(a1 + 40)];
  Current = CFAbsoluteTimeGetCurrent();
  v4 = _ACDLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [v5 username];
    v7 = ACHashedString();
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 160));
    v9 = objc_loadWeakRetained((*(a1 + 40) + 160));
    v10 = [v9 pid];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 72)];
    *buf = 138413314;
    v33 = v5;
    v34 = 2112;
    v35 = v7;
    v36 = 2112;
    v37 = WeakRetained;
    v38 = 2114;
    v39 = v10;
    v40 = 2114;
    v41 = v11;
    _os_log_impl(&dword_221D2F000, v4, OS_LOG_TYPE_DEFAULT, "Daemon save called for account %@: username=%@, client=%@ (%{public}@), verify=%{public}@", buf, 0x34u);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__ACDAccountStore_saveAccount_verify_dataclassActions_completion___block_invoke_190;
  aBlock[3] = &unk_27848C510;
  v31 = Current;
  v30 = *(a1 + 56);
  v12 = v2;
  v29 = v12;
  v13 = _Block_copy(aBlock);
  v14 = [*(*(a1 + 40) + 120) managedObjectContext];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __66__ACDAccountStore_saveAccount_verify_dataclassActions_completion___block_invoke_192;
  v25[3] = &unk_27848BF28;
  v21 = *(a1 + 32);
  v15 = v21.i64[0];
  v26 = vextq_s8(v21, v21, 8uLL);
  v27 = *(a1 + 64);
  [v14 performBlockAndWait:v25];

  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v13[2](v13, 0);
  }

  else if (*(a1 + 72) == 1 && [*(a1 + 32) isActive] && (objc_msgSend(*(a1 + 32), "isAuthenticated") & 1) == 0 && objc_msgSend(*(a1 + 32), "supportsAuthentication") && (objc_msgSend(*(a1 + 32), "authenticationType"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", *MEMORY[0x277CB90B8]), v16, (v17 & 1) == 0))
  {
    v20 = *(a1 + 32);
    v19 = *(a1 + 40);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __66__ACDAccountStore_saveAccount_verify_dataclassActions_completion___block_invoke_196;
    v22[3] = &unk_27848C470;
    v22[4] = v19;
    v23 = *(a1 + 48);
    v24 = v13;
    [v19 verifyCredentialsForAccount:v20 saveWhenAuthorized:0 withHandler:v22];
  }

  else
  {
    [*(a1 + 40) _completeSave:*(a1 + 32) dataclassActions:*(a1 + 48) completion:{v13, v21.i64[0]}];
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __66__ACDAccountStore_saveAccount_verify_dataclassActions_completion___block_invoke_190(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  Current = CFAbsoluteTimeGetCurrent();
  v8 = *(a1 + 48);
  v9 = _ACDLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:Current - v8];
    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&dword_221D2F000, v9, OS_LOG_TYPE_DEFAULT, "TIMING: Daemon save took %@", &v12, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v11 = *MEMORY[0x277D85DE8];
}

void __66__ACDAccountStore_saveAccount_verify_dataclassActions_completion___block_invoke_192(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 120) managedObjectContext];
  v3 = [v2 persistentStoreCoordinator];
  v4 = [*(a1 + 40) accountType];
  v5 = [v4 objectID];
  v6 = [v3 managedObjectIDForURIRepresentation:v5];

  if (v6 && ([*(*(a1 + 32) + 120) managedObjectContext], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "objectWithID:", v6), v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
  {
    v9 = [*(a1 + 40) objectID];
    if (v9 || ([v8 obsolete], v9 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(v9, "BOOLValue")))
    {
    }

    else
    {
      v10 = [*(a1 + 32) shouldPreventAccountCreationWithObsoleteAccountType];

      if (v10)
      {
        v11 = MEMORY[0x277CCACA8];
        v12 = [*(a1 + 40) accountType];
        v13 = [v12 accountTypeDescription];
        v14 = [v11 stringWithFormat:@"Creating %@ accounts is not supported.", v13];

        v15 = MEMORY[0x277CCA9B8];
        v16 = *MEMORY[0x277CB8DC0];
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v14 forKey:*MEMORY[0x277CCA450]];
        v18 = [v15 errorWithDomain:v16 code:7 userInfo:v17];
        v19 = *(*(a1 + 48) + 8);
        v20 = *(v19 + 40);
        *(v19 + 40) = v18;

LABEL_14:
        goto LABEL_15;
      }
    }

    v32 = *(a1 + 48);
    v31 = (a1 + 48);
    v33 = *(v31 - 2);
    v34 = *(v31 - 1);
    v35 = *(v32 + 8);
    obj = *(v35 + 40);
    v36 = [v33 _canSaveAccount:v34 error:&obj];
    objc_storeStrong((v35 + 40), obj);
    if ((v36 & 1) == 0)
    {
      v14 = _ACDLogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __66__ACDAccountStore_saveAccount_verify_dataclassActions_completion___block_invoke_192_cold_1(v31);
      }

      goto LABEL_14;
    }
  }

  else
  {
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"The account being saved is missing a valid account type"];
    v22 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CB8DC0];
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v21 forKey:*MEMORY[0x277CCA450]];
    v25 = [v22 errorWithDomain:v23 code:2 userInfo:v24];
    v27 = *(a1 + 48);
    v26 = a1 + 48;
    v28 = *(v27 + 8);
    v29 = *(v28 + 40);
    *(v28 + 40) = v25;

    v30 = _ACDLogSystem();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      __66__ACDAccountStore_saveAccount_verify_dataclassActions_completion___block_invoke_192_cold_2(v26);
    }

    v8 = 0;
  }

LABEL_15:
}

void __66__ACDAccountStore_saveAccount_verify_dataclassActions_completion___block_invoke_196(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [*(a1 + 32) _completeSave:v5 dataclassActions:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    v7 = _ACDLogSystem();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      if (v8)
      {
        __66__ACDAccountStore_saveAccount_verify_dataclassActions_completion___block_invoke_196_cold_1(v6);
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      if (v8)
      {
        __66__ACDAccountStore_saveAccount_verify_dataclassActions_completion___block_invoke_196_cold_2();
      }

      v9 = *(a1 + 48);
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:3 userInfo:0];
      (*(v9 + 16))(v9, 0, v10);
    }
  }
}

- (id)_lockForAccountType:(id)type
{
  typeCopy = type;
  if (_lockForAccountType__onceToken != -1)
  {
    [ACDAccountStore _lockForAccountType:];
  }

  identifier = [typeCopy identifier];
  if (identifier)
  {
    v5 = _lockForAccountType__accountTypeLocks;
    objc_sync_enter(v5);
    v6 = [_lockForAccountType__accountTypeLocks objectForKeyedSubscript:identifier];

    if (!v6)
    {
      v7 = objc_opt_new();
      [_lockForAccountType__accountTypeLocks setObject:v7 forKeyedSubscript:identifier];
    }

    v8 = [_lockForAccountType__accountTypeLocks objectForKeyedSubscript:identifier];
    objc_sync_exit(v5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __39__ACDAccountStore__lockForAccountType___block_invoke()
{
  _lockForAccountType__accountTypeLocks = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)_completeSave:(id)save dataclassActions:(id)actions completion:(id)completion
{
  saveCopy = save;
  actionsCopy = actions;
  completionCopy = completion;
  v11 = _ACDLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccountStore _completeSave:dataclassActions:completion:];
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__3;
  v30 = __Block_byref_object_dispose__3;
  v31 = 0;
  v23 = 0;
  v24[0] = &v23;
  v24[1] = 0x2020000000;
  v25 = 0;
  [saveCopy _setAccountStore:self];
  managedObjectContext = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __61__ACDAccountStore__completeSave_dataclassActions_completion___block_invoke;
  v17[3] = &unk_27848C560;
  v13 = saveCopy;
  v18 = v13;
  selfCopy = self;
  v21 = &v26;
  v22 = &v23;
  v14 = actionsCopy;
  v20 = v14;
  [managedObjectContext performBlockAndWait:v17];

  v15 = _ACDLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccountStore _completeSave:v24 dataclassActions:? completion:?];
  }

  if (*(v24[0] + 24) == 1)
  {
    objectID = [v13 objectID];
    completionCopy[2](completionCopy, objectID, v27[5]);
  }

  else
  {
    completionCopy[2](completionCopy, 0, v27[5]);
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v26, 8);
}

void __61__ACDAccountStore__completeSave_dataclassActions_completion___block_invoke(uint64_t a1)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectID];

  v3 = *(a1 + 40);
  if (!v2)
  {
    v12 = [*(a1 + 32) accountType];
    v13 = [v3 _lockForAccountType:v12];

    [v13 lock];
    v15 = *(a1 + 32);
    v14 = *(a1 + 40);
    v16 = *(*(a1 + 56) + 8);
    v34 = *(v16 + 40);
    v17 = [v14 _canSaveAccount:v15 error:&v34];
    objc_storeStrong((v16 + 40), v34);
    if (v17)
    {
      v19 = *(a1 + 32);
      v18 = *(a1 + 40);
      v20 = *(a1 + 48);
      v21 = *(*(a1 + 56) + 8);
      v33 = *(v21 + 40);
      v22 = [v18 _handleAccountAdd:v19 withDataclassActions:v20 error:&v33];
      objc_storeStrong((v21 + 40), v33);
      *(*(*(a1 + 64) + 8) + 24) = v22;
    }

    [v13 unlock];
    goto LABEL_8;
  }

  v4 = v3[15];
  v5 = [*(a1 + 32) objectID];
  v6 = [v4 existingObjectWithURI:v5];

  v7 = *(a1 + 32);
  if (!v6)
  {
    v23 = MEMORY[0x277CCACA8];
    v24 = [*(a1 + 32) objectID];
    v13 = [v23 stringWithFormat:@"The account with object ID %@ is unknown to our DB, so it cannot be updated. It has probably already been deleted.", v24];

    v25 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CB8DC0];
    v35 = *MEMORY[0x277CCA450];
    v36[0] = v13;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v28 = [v25 errorWithDomain:v26 code:15 userInfo:v27];
    v29 = *(*(a1 + 56) + 8);
    v30 = *(v29 + 40);
    *(v29 + 40) = v28;

LABEL_8:
    goto LABEL_9;
  }

  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(*(a1 + 56) + 8);
  obj = *(v10 + 40);
  v11 = [v8 _handleAccountMod:v7 withDataclassActions:v9 withError:&obj];
  objc_storeStrong((v10 + 40), obj);
  *(*(*(a1 + 64) + 8) + 24) = v11;
LABEL_9:
  v31 = *MEMORY[0x277D85DE8];
}

- (void)verifyCredentialsForAccount:(id)account options:(id)options completion:(id)completion
{
  accountCopy = account;
  optionsCopy = options;
  completionCopy = completion;
  v11 = MEMORY[0x277CB8F98];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__ACDAccountStore_verifyCredentialsForAccount_options_completion___block_invoke;
  v15[3] = &unk_27848C358;
  v16 = accountCopy;
  selfCopy = self;
  v18 = optionsCopy;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = optionsCopy;
  v14 = accountCopy;
  [v11 performWithinPersonaForAccount:v14 withBlock:v15];
}

void __66__ACDAccountStore_verifyCredentialsForAccount_options_completion___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = (a1 + 40);
  [*(a1 + 32) _setAccountStore:*(a1 + 40)];
  v4 = _ACDLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __66__ACDAccountStore_verifyCredentialsForAccount_options_completion___block_invoke_cold_1();
  }

  v5 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277CB90B0]];
  v6 = [v5 BOOLValue];

  if (!v6)
  {
    v10 = 0;
    goto LABEL_7;
  }

  v7 = *v3;
  v8 = *v2;
  v11 = 0;
  v9 = [v7 _canSaveAccount:v8 error:&v11];
  v10 = v11;
  if (v9)
  {
LABEL_7:
    [*(*(a1 + 40) + 176) verifyCredentialsForAccount:*(a1 + 32) accountStore:*(a1 + 40) options:*(a1 + 48) handler:*(a1 + 56)];
    goto LABEL_8;
  }

  (*(*(a1 + 56) + 16))();
LABEL_8:
}

- (void)renewCredentialsForAccount:(id)account options:(id)options completion:(id)completion
{
  accountCopy = account;
  optionsCopy = options;
  completionCopy = completion;
  v11 = MEMORY[0x277CB8F98];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__ACDAccountStore_renewCredentialsForAccount_options_completion___block_invoke;
  v15[3] = &unk_27848C5B0;
  v15[4] = self;
  v16 = accountCopy;
  v17 = optionsCopy;
  v18 = completionCopy;
  v12 = optionsCopy;
  v13 = completionCopy;
  v14 = accountCopy;
  [v11 performWithinPersonaForAccount:v14 withBlock:v15];
}

void __65__ACDAccountStore_renewCredentialsForAccount_options_completion___block_invoke(uint64_t a1)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  v2 = [*(*(a1 + 32) + 120) managedObjectContext];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __65__ACDAccountStore_renewCredentialsForAccount_options_completion___block_invoke_2;
  v17[3] = &unk_27848BF28;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v18 = v3;
  v19 = v4;
  v20 = &v21;
  [v2 performBlockAndWait:v17];

  if (v22[5])
  {
    v5 = *(a1 + 56);
    v6 = [MEMORY[0x277CCABB0] numberWithInt:2];
    (*(v5 + 16))(v5, v6, v22[5]);
  }

  else
  {
    [*(a1 + 40) _setAccountStore:*(a1 + 32)];
    v7 = _os_feature_enabled_impl();
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    if (v7)
    {
      v11 = *(v8 + 184);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __65__ACDAccountStore_renewCredentialsForAccount_options_completion___block_invoke_205;
      v15[3] = &unk_27848C588;
      v16 = *(a1 + 56);
      [v11 renewCredentialFor:v9 with:v8 options:v10 completionHandler:v15];
      v6 = v16;
    }

    else
    {
      v12 = *(v8 + 176);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __65__ACDAccountStore_renewCredentialsForAccount_options_completion___block_invoke_2_207;
      v13[3] = &unk_27848C588;
      v14 = *(a1 + 56);
      [v12 renewCredentialsForAccount:v9 accountStore:v8 options:v10 completion:v13];
      v6 = v14;
    }
  }

  _Block_object_dispose(&v21, 8);
}

void __65__ACDAccountStore_renewCredentialsForAccount_options_completion___block_invoke_2(uint64_t a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectID];
  if (v2)
  {
    v3 = v2;
    v4 = *(*(a1 + 40) + 120);
    v5 = [*(a1 + 32) objectID];
    v6 = [v4 existingObjectWithURI:v5];

    if (!v6)
    {
      v7 = _ACDLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __65__ACDAccountStore_renewCredentialsForAccount_options_completion___block_invoke_2_cold_1();
      }

      v8 = MEMORY[0x277CCACA8];
      v9 = [*(a1 + 32) objectID];
      v10 = [v8 stringWithFormat:@"The account with object ID %@ is unknown to our DB, so it cannot be updated. It has probably already been deleted.", v9];

      v11 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277CB8DC0];
      v18 = *MEMORY[0x277CCA450];
      v19[0] = v10;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v14 = [v11 errorWithDomain:v12 code:15 userInfo:v13];
      v15 = *(*(a1 + 48) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __65__ACDAccountStore_renewCredentialsForAccount_options_completion___block_invoke_205(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v7 = [v5 numberWithInteger:a2];
  (*(v4 + 16))(v4, v7, v6);
}

void __65__ACDAccountStore_renewCredentialsForAccount_options_completion___block_invoke_2_207(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v7 = [v5 numberWithInteger:a2];
  (*(v4 + 16))(v4, v7, v6);
}

void __103__ACDAccountStore__requestAccessForAccountTypeWithIdentifier_options_allowUserInteraction_withHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = _ACDLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __103__ACDAccountStore__requestAccessForAccountTypeWithIdentifier_options_allowUserInteraction_withHandler___block_invoke_cold_1(a2);
  }

  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  (*(v7 + 16))(v7, v8, v5);
}

- (void)appPermissionsForAccountType:(id)type withHandler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  authorizationManager = self->_authorizationManager;
  identifier = [type identifier];
  v9 = [(ACDClientAuthorizationManager *)authorizationManager allAuthorizationsForAccountTypeWithIdentifier:identifier];

  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v16, "isGranted", v21)}];
        client = [v16 client];
        bundleID = [client bundleID];

        if (bundleID)
        {
          [v10 setValue:v17 forKey:bundleID];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  handlerCopy[2](handlerCopy, v10, 0);
  v20 = *MEMORY[0x277D85DE8];
}

- (void)setPermissionGranted:(id)granted forBundleID:(id)d onAccountType:(id)type withHandler:(id)handler
{
  typeCopy = type;
  handlerCopy = handler;
  dCopy = d;
  grantedCopy = granted;
  identifier = [typeCopy identifier];
  v15 = [(ACDAccountStore *)self accountTypeWithIdentifier:identifier];

  v16 = [ACDClient clientWithBundleID:dCopy];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__ACDAccountStore_setPermissionGranted_forBundleID_onAccountType_withHandler___block_invoke;
  aBlock[3] = &unk_27848C600;
  v17 = typeCopy;
  v23 = v17;
  v18 = handlerCopy;
  selfCopy = self;
  v25 = v18;
  v19 = _Block_copy(aBlock);
  bOOLValue = [grantedCopy BOOLValue];

  accessPluginManager = self->_accessPluginManager;
  if (bOOLValue)
  {
    [(ACDAccessPluginManager *)accessPluginManager authorizeAccessToAccountsOfType:v15 forClient:v16 store:self completion:v19];
  }

  else
  {
    [(ACDAccessPluginManager *)accessPluginManager revokeAccessToAccountsOfType:v15 forClient:v16 store:self completion:v19];
  }
}

void __78__ACDAccountStore_setPermissionGranted_forBundleID_onAccountType_withHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[ACDAccountStore accountCache];
  [v5 removeAccountType:*(a1 + 32)];

  if (v4)
  {
    v6 = _ACDLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __78__ACDAccountStore_setPermissionGranted_forBundleID_onAccountType_withHandler___block_invoke_cold_1();
    }

    v7 = *(*(a1 + 48) + 16);
  }

  else
  {
    v8 = [*(a1 + 40) delegate];
    [v8 accountStore:*(a1 + 40) didSaveAccount:0 changeType:2];

    v7 = *(*(a1 + 48) + 16);
  }

  v7();
}

- (void)clearAllPermissionsGrantedForAccountType:(id)type withHandler:(id)handler
{
  typeCopy = type;
  handlerCopy = handler;
  identifier = [typeCopy identifier];
  v9 = [(ACDAccountStore *)self accountTypeWithIdentifier:identifier];

  accessPluginManager = self->_accessPluginManager;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__ACDAccountStore_clearAllPermissionsGrantedForAccountType_withHandler___block_invoke;
  v13[3] = &unk_27848C600;
  selfCopy = self;
  v16 = handlerCopy;
  v14 = typeCopy;
  v11 = handlerCopy;
  v12 = typeCopy;
  [(ACDAccessPluginManager *)accessPluginManager revokeAllAccessToAccountsOfType:v9 store:self withCompletion:v13];
}

void __72__ACDAccountStore_clearAllPermissionsGrantedForAccountType_withHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[ACDAccountStore accountCache];
  [v5 removeAccountType:*(a1 + 32)];

  v6 = _ACDLogSystem();
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __78__ACDAccountStore_setPermissionGranted_forBundleID_onAccountType_withHandler___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __72__ACDAccountStore_clearAllPermissionsGrantedForAccountType_withHandler___block_invoke_cold_2();
  }

  (*(*(a1 + 48) + 16))();
  v8 = [*(a1 + 40) delegate];
  [v8 accountStore:*(a1 + 40) didSaveAccount:0 changeType:2];
}

- (void)permissionForAccountType:(id)type withHandler:(id)handler
{
  typeCopy = type;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_client);
  v8 = [WeakRetained hasEntitlement:*MEMORY[0x277CB8FE0]];

  if (v8)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:1];
  }

  else
  {
    authorizationManager = self->_authorizationManager;
    v11 = objc_loadWeakRetained(&self->_client);
    identifier = [typeCopy identifier];
    v13 = [(ACDClientAuthorizationManager *)authorizationManager authorizationForClient:v11 accountTypeWithIdentifier:identifier];

    v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v13, "isGranted")}];
  }

  handlerCopy[2](handlerCopy, v9, 0);
}

- (void)grantedPermissionsForAccountType:(id)type withHandler:(id)handler
{
  authorizationManager = self->_authorizationManager;
  handlerCopy = handler;
  typeCopy = type;
  WeakRetained = objc_loadWeakRetained(&self->_client);
  identifier = [typeCopy identifier];

  v12 = [(ACDClientAuthorizationManager *)authorizationManager authorizationForClient:WeakRetained accountTypeWithIdentifier:identifier];

  grantedPermissions = [v12 grantedPermissions];
  handlerCopy[2](handlerCopy, grantedPermissions, 0);
}

- (void)clearGrantedPermissionsForAccountType:(id)type withHandler:(id)handler
{
  typeCopy = type;
  handlerCopy = handler;
  identifier = [typeCopy identifier];
  v9 = [(ACDAccountStore *)self accountTypeWithIdentifier:identifier];

  accessPluginManager = self->_accessPluginManager;
  WeakRetained = objc_loadWeakRetained(&self->_client);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__ACDAccountStore_clearGrantedPermissionsForAccountType_withHandler___block_invoke;
  v14[3] = &unk_27848C628;
  v15 = typeCopy;
  v16 = handlerCopy;
  v14[4] = self;
  v12 = typeCopy;
  v13 = handlerCopy;
  [(ACDAccessPluginManager *)accessPluginManager revokeAccessToAccountsOfType:v9 forClient:WeakRetained store:self completion:v14];
}

void __69__ACDAccountStore_clearGrantedPermissionsForAccountType_withHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = _ACDLogSystem();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __69__ACDAccountStore_clearGrantedPermissionsForAccountType_withHandler___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __69__ACDAccountStore_clearGrantedPermissionsForAccountType_withHandler___block_invoke_cold_2();
  }

  (*(*(a1 + 48) + 16))();
  v7 = [*(a1 + 32) authorizationManager];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
  v9 = [v7 removeAuthorizationForClient:WeakRetained accountType:*(a1 + 40)];

  v10 = [*(a1 + 32) delegate];
  [v10 accountStore:*(a1 + 32) didSaveAccount:0 changeType:2];
}

- (void)preloadDataclassOwnersWithCompletion:(id)completion
{
  completionCopy = completion;
  dataclassOwnersManager = [(ACDAccountStore *)self dataclassOwnersManager];
  v7 = 0;
  [dataclassOwnersManager preloadDataclassOwnersWithError:&v7];
  v6 = v7;

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v6);
  }
}

- (void)dataclassActionsForAccountSave:(id)save completion:(id)completion
{
  v27[1] = *MEMORY[0x277D85DE8];
  saveCopy = save;
  completionCopy = completion;
  [saveCopy _setAccountStore:self];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__ACDAccountStore_dataclassActionsForAccountSave_completion___block_invoke;
  aBlock[3] = &unk_27848C650;
  aBlock[4] = self;
  v8 = saveCopy;
  v25 = v8;
  v9 = _Block_copy(aBlock);
  trackedEnabledDataclasses = [v8 trackedEnabledDataclasses];
  allModifications = [trackedEnabledDataclasses allModifications];

  if ([allModifications count])
  {
    if ([allModifications count] == 1)
    {
      allKeys = [allModifications allKeys];
      firstObject = [allKeys firstObject];

      v14 = [allModifications objectForKeyedSubscript:firstObject];
      v23 = 0;
      v15 = v9[2](v9, firstObject, v14, &v23);
      v16 = v23;
      if (v15)
      {
        v26 = firstObject;
        v27[0] = v15;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
        completionCopy[2](completionCopy, v17, v16);
      }

      else
      {
        completionCopy[2](completionCopy, 0, v16);
      }
    }

    else
    {
      v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __61__ACDAccountStore_dataclassActionsForAccountSave_completion___block_invoke_2;
      v20[3] = &unk_27848C2E0;
      v21 = v18;
      v22 = v9;
      firstObject = v18;
      [allModifications enumerateKeysAndObjectsUsingBlock:v20];
      completionCopy[2](completionCopy, firstObject, 0);
    }
  }

  else
  {
    completionCopy[2](completionCopy, 0, 0);
  }

  v19 = *MEMORY[0x277D85DE8];
}

id __61__ACDAccountStore_dataclassActionsForAccountSave_completion___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if ([v8 isEqualToString:*MEMORY[0x277CB8D68]])
  {
    v9 = [*(a1 + 32) dataclassOwnersManager];
    v10 = [v9 actionsForEnablingDataclass:v7 onAccount:*(a1 + 40) withError:a4];
LABEL_5:
    v11 = v10;

    goto LABEL_7;
  }

  if ([v8 isEqualToString:*MEMORY[0x277CB8D78]])
  {
    v9 = [*(a1 + 32) dataclassOwnersManager];
    v10 = [v9 actionsForDisablingDataclass:v7 onAccount:*(a1 + 40) withError:a4];
    goto LABEL_5;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

void __61__ACDAccountStore_dataclassActionsForAccountSave_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = (*(*(a1 + 40) + 16))();
  v8 = 0;
  v9 = v8;
  if (v7)
  {
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v5];
  }

  else if (v8)
  {
    v10 = _ACDLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v16 = v5;
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v9;
      _os_log_error_impl(&dword_221D2F000, v10, OS_LOG_TYPE_ERROR, "Failed to get actions for dataclass: %@, changeType: %@, error: %@", buf, 0x20u);
    }

    v11 = [MEMORY[0x277CB8F70] _actionForError:v9];
    v14 = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    [*(a1 + 32) setObject:v12 forKeyedSubscript:v5];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)dataclassActionsForAccountDeletion:(id)deletion completion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  deletionCopy = deletion;
  completionCopy = completion;
  [deletionCopy _setAccountStore:self];
  v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [deletionCopy enabledDataclasses];
  v7 = [obj countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        v12 = v9;
        if (*v25 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        dataclassOwnersManager = [(ACDAccountStore *)self dataclassOwnersManager];
        v23 = v9;
        v15 = [dataclassOwnersManager actionsForDeletingAccount:deletionCopy affectingDataclass:v13 withError:&v23];
        v9 = v23;

        if ([v15 count])
        {
          [v22 setObject:v15 forKey:v13];
        }

        else if (v9)
        {
          v16 = _ACDLogSystem();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v30 = v13;
            v31 = 2112;
            v32 = v9;
            _os_log_error_impl(&dword_221D2F000, v16, OS_LOG_TYPE_ERROR, "Failed to query actions for dataclass %@, error: %@", buf, 0x16u);
          }

          v17 = [MEMORY[0x277CB8F70] _actionForError:v9];
          v28 = v17;
          v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
          [v22 setObject:v18 forKey:v13];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  completionCopy[2](completionCopy, v22, v9);
  v19 = *MEMORY[0x277D85DE8];
}

- (void)isPerformingDataclassActionsForAccount:(id)account completion:(id)completion
{
  completionCopy = completion;
  accountCopy = account;
  [accountCopy _setAccountStore:self];
  dataclassOwnersManager = [(ACDAccountStore *)self dataclassOwnersManager];
  v8 = [dataclassOwnersManager isPerformingDataclassActionsForAccount:accountCopy];

  completionCopy[2](completionCopy, v8, 0);
}

- (void)accountExistsWithDescription:(id)description completion:(id)completion
{
  descriptionCopy = description;
  completionCopy = completion;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  managedObjectContext = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__ACDAccountStore_accountExistsWithDescription_completion___block_invoke;
  v10[3] = &unk_27848BF28;
  v9 = descriptionCopy;
  v11 = v9;
  selfCopy = self;
  v13 = &v14;
  [managedObjectContext performBlockAndWait:v10];

  (*(completionCopy + 2))(completionCopy, *(v15 + 24), 0);
  _Block_object_dispose(&v14, 8);
}

void __59__ACDAccountStore_accountExistsWithDescription_completion___block_invoke(void *a1)
{
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"accountDescription == %@", a1[4]];
  v2 = *(a1[5] + 120);
  v3 = [MEMORY[0x277CB8F30] keypathsRequiredForInitialization];
  v4 = [v2 fetchObjectsForEntityNamed:@"Account" withPredicate:v5 sortDescriptor:0 prefetchKeypaths:v3];

  *(*(a1[6] + 8) + 24) = [v4 count] != 0;
}

- (void)isTetheredSyncingEnabledForDataclass:(id)dataclass completion:(id)completion
{
  v14[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v6 = syncDataTypeForDataclass(dataclass);
  if (!v6)
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:1 userInfo:0];
LABEL_6:
    completionCopy[2](completionCopy, 0, v7);

    goto LABEL_7;
  }

  v12 = 0;
  if (!GetTetheredSyncingDisabledForDataType(v6, &v12))
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277CB8DC0];
    v13 = *MEMORY[0x277CCA450];
    v14[0] = @"GetTetheredSyncingDisabledForDataType failed!";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v7 = [v8 errorWithDomain:v9 code:1 userInfo:v10];

    goto LABEL_6;
  }

  (completionCopy)[2](completionCopy, v12 == 0, 0);
LABEL_7:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)tetheredSyncSourceTypeForDataclass:(id)dataclass completion:(id)completion
{
  completionCopy = completion;
  if (syncDataTypeForDataclass(dataclass))
  {
    v6 = tetheredSyncSourceTypeForDataType();
    completionCopy[2](completionCopy, v6, 0);
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:1 userInfo:0];
    (completionCopy)[2](completionCopy, 0, v6);
  }
}

- (void)kerberosAccountsForDomainFromURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  v8 = _ACDLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccountStore kerberosAccountsForDomainFromURL:completion:];
  }

  absoluteString = [lCopy absoluteString];
  if (absoluteString)
  {
    managedObjectContext = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __63__ACDAccountStore_kerberosAccountsForDomainFromURL_completion___block_invoke;
    v11[3] = &unk_27848C678;
    v11[4] = self;
    v13 = &v14;
    v12 = absoluteString;
    [managedObjectContext performBlockAndWait:v11];
  }

  completionCopy[2](completionCopy, v15[5], 0);

  _Block_object_dispose(&v14, 8);
}

void __63__ACDAccountStore_kerberosAccountsForDomainFromURL_completion___block_invoke(void *a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = *(a1[4] + 120);
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"accountType.identifier matches 'com.apple.account.kerberos.sso.*'"];
  v4 = [MEMORY[0x277CB8F30] keypathsRequiredForInitialization];
  v5 = [v2 fetchObjectsForEntityNamed:@"Account" withPredicate:v3 sortDescriptor:0 prefetchKeypaths:v4];

  if ([v5 count])
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v25 = v5;
    obj = v5;
    v9 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v32;
      do
      {
        v12 = 0;
        do
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = [objc_alloc(MEMORY[0x277CB8F30]) initWithManagedAccount:*(*(&v31 + 1) + 8 * v12) accountStore:a1[4]];
          v14 = [v13 accountProperties];
          v15 = [v14 objectForKeyedSubscript:@"domains"];

          v16 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v15, "count")}];
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v17 = v15;
          v18 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v28;
            do
            {
              v21 = 0;
              do
              {
                if (*v28 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v27 + 1) + 8 * v21);
                GSSRuleAddMatch();
                ++v21;
              }

              while (v19 != v21);
              v19 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v19);
          }

          v23 = a1[5];
          if (GSSRuleGetMatch())
          {
            [*(*(a1[6] + 8) + 40) addObject:v13];
          }

          ++v12;
        }

        while (v12 != v10);
        v10 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v10);
    }

    v5 = v25;
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)isPushSupportedForAccount:(id)account completion:(id)completion
{
  authenticationPluginManager = self->_authenticationPluginManager;
  completionCopy = completion;
  completionCopy[2](completionCopy, [(ACDAuthenticationPluginManager *)authenticationPluginManager isPushSupportedForAccount:account], 0);
}

- (void)discoverPropertiesForAccount:(id)account options:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  accountCopy = account;
  [accountCopy _setAccountStore:self];
  [(ACDAuthenticationPluginManager *)self->_authenticationPluginManager discoverPropertiesForAccount:accountCopy accountStore:self options:optionsCopy completion:completionCopy];
}

- (void)resetDatabaseToVersion:(id)version withCompletion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  databaseConnection = self->_databaseConnection;
  completionCopy = completion;
  [(ACDDatabaseConnection *)databaseConnection setVersion:versionCopy];
  v9 = self->_databaseConnection;
  v15 = 0;
  v10 = [(ACDDatabaseConnection *)v9 saveWithError:&v15];
  v11 = v15;
  v12 = _ACDLogSystem();
  v13 = v12;
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = versionCopy;
      _os_log_impl(&dword_221D2F000, v13, OS_LOG_TYPE_DEFAULT, "Reset database to version %@, will exit when clean", buf, 0xCu);
    }

    completionCopy[2](completionCopy, 1, 0);
    xpc_transaction_exit_clean();
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ACDAccountStore resetDatabaseToVersion:withCompletion:];
    }

    (completionCopy)[2](completionCopy, 0, v11);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_clientTokenQueue
{
  if (_clientTokenQueue_onceToken != -1)
  {
    [ACDAccountStore _clientTokenQueue];
  }

  v3 = _clientTokenQueue_clientTokenQueue;

  return v3;
}

void __36__ACDAccountStore__clientTokenQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.accounts.clienttoken", v2);
  v1 = _clientTokenQueue_clientTokenQueue;
  _clientTokenQueue_clientTokenQueue = v0;
}

- (void)addClientToken:(id)token forAccountIdentifier:(id)identifier completion:(id)completion
{
  tokenCopy = token;
  identifierCopy = identifier;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__ACDAccountStore_addClientToken_forAccountIdentifier_completion___block_invoke;
  v14[3] = &unk_27848C6A0;
  v14[4] = self;
  v15 = tokenCopy;
  v16 = identifierCopy;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = identifierCopy;
  v13 = tokenCopy;
  [(ACDAccountStore *)self accountWithIdentifier:v12 handler:v14];
}

void __66__ACDAccountStore_addClientToken_forAccountIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277CB8F98];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__ACDAccountStore_addClientToken_forAccountIdentifier_completion___block_invoke_2;
  v10[3] = &unk_27848C358;
  v9 = *(a1 + 32);
  v5 = *(&v9 + 1);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v11 = v9;
  v12 = v8;
  [v4 performWithinPersonaForAccount:a2 withBlock:v10];
}

void __66__ACDAccountStore_addClientToken_forAccountIdentifier_completion___block_invoke_2(id *a1)
{
  v2 = a1 + 4;
  v3 = [a1[4] _clientTokenQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__ACDAccountStore_addClientToken_forAccountIdentifier_completion___block_invoke_3;
  block[3] = &unk_27848C358;
  *&v4 = a1[5];
  *(&v4 + 1) = *v2;
  v8 = v4;
  v5 = a1[6];
  v6 = a1[7];
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  dispatch_async(v3, block);
}

void __66__ACDAccountStore_addClientToken_forAccountIdentifier_completion___block_invoke_3(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) _clientTokenForAccountIdentifier:*(a1 + 48) error:0];

    if (v2)
    {
      v3 = 0;
    }

    else
    {
      v9 = *MEMORY[0x277CDBED8];
      v10[0] = *MEMORY[0x277CDBEE8];
      v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
      v5 = [*(a1 + 32) dataUsingEncoding:4];
      v6 = *(a1 + 48);
      v8 = 0;
      [ACDKeychain addItemWithServiceName:@"com.apple.account.clientToken" username:v6 accessGroup:0 passwordData:v5 options:v4 error:&v8];
      v3 = v8;
    }
  }

  else
  {
    v3 = 0;
  }

  (*(*(a1 + 56) + 16))();

  v7 = *MEMORY[0x277D85DE8];
}

- (void)clientTokenForAccountIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__ACDAccountStore_clientTokenForAccountIdentifier_completion___block_invoke;
  v10[3] = &unk_27848C470;
  v10[4] = self;
  v11 = identifierCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = identifierCopy;
  [(ACDAccountStore *)self accountWithIdentifier:v9 handler:v10];
}

void __62__ACDAccountStore_clientTokenForAccountIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277CB8F98];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__ACDAccountStore_clientTokenForAccountIdentifier_completion___block_invoke_2;
  v6[3] = &unk_27848C448;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  v8 = *(a1 + 48);
  [v4 performWithinPersonaForAccount:a2 withBlock:v6];
}

void __62__ACDAccountStore_clientTokenForAccountIdentifier_completion___block_invoke_2(id *a1)
{
  v2 = [a1[4] _clientTokenQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__ACDAccountStore_clientTokenForAccountIdentifier_completion___block_invoke_3;
  block[3] = &unk_27848C448;
  v3 = a1[5];
  v4 = a1[4];
  v6 = v3;
  v7 = v4;
  v8 = a1[6];
  dispatch_async(v2, block);
}

void __62__ACDAccountStore_clientTokenForAccountIdentifier_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [*(a1 + 40) _clientTokenForAccountIdentifier:v2 error:0];
  }

  else
  {
    v4 = _ACDLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __62__ACDAccountStore_clientTokenForAccountIdentifier_completion___block_invoke_3_cold_1();
    }

    v3 = 0;
  }

  (*(*(a1 + 48) + 16))();
}

- (id)clientTokenForAccount:(id)account
{
  accountCopy = account;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  v5 = MEMORY[0x277CB8F98];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__ACDAccountStore_clientTokenForAccount___block_invoke;
  v9[3] = &unk_27848C678;
  v9[4] = self;
  v11 = &v12;
  v6 = accountCopy;
  v10 = v6;
  [v5 performWithinPersonaForAccount:v6 withBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __41__ACDAccountStore_clientTokenForAccount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientTokenQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__ACDAccountStore_clientTokenForAccount___block_invoke_2;
  block[3] = &unk_27848BCD0;
  block[4] = *(a1 + 32);
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  dispatch_sync(v2, block);
}

void __41__ACDAccountStore_clientTokenForAccount___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [*(a1 + 40) identifier];
  v3 = [v2 _clientTokenForAccountIdentifier:v6 error:0];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)_clientTokenForAccountIdentifier:(id)identifier error:(id)error
{
  errorCopy = error;
  errorCopy2 = error;
  v6 = [ACDKeychain passwordForServiceName:@"com.apple.account.clientToken" username:identifier accessGroup:0 options:0 error:&errorCopy];
  v7 = errorCopy;

  if (v7)
  {
    v8 = _ACDLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [ACDAccountStore _clientTokenForAccountIdentifier:error:];
    }
  }

  return v6;
}

- (void)_removeClientTokenForAccountIdentifer:(id)identifer
{
  v5 = 0;
  [ACDKeychain removeItemForServiceName:@"com.apple.account.clientToken" username:identifer accessGroup:0 options:0 error:&v5];
  v3 = v5;
  if (v3)
  {
    v4 = _ACDLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [ACDAccountStore _removeClientTokenForAccountIdentifer:];
    }
  }
}

- (void)handleURL:(id)l
{
  v31 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = _ACDLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = lCopy;
    _os_log_impl(&dword_221D2F000, v5, OS_LOG_TYPE_DEFAULT, "Handling URL %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__3;
  v29 = __Block_byref_object_dispose__3;
  v30 = 0;
  host = [lCopy host];
  v7 = [host compare:@"client_token" options:1] == 0;

  if (v7)
  {
    path = [lCopy path];
    if ([path length] >= 2)
    {
      v10 = [path substringFromIndex:1];

      _allAccounts_sync = [(ACDAccountStore *)self _allAccounts_sync];
      _clientTokenQueue = [(ACDAccountStore *)self _clientTokenQueue];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __29__ACDAccountStore_handleURL___block_invoke;
      v19[3] = &unk_27848C3F8;
      v20 = _allAccounts_sync;
      selfCopy = self;
      path = v10;
      v22 = path;
      p_buf = &buf;
      v13 = _allAccounts_sync;
      dispatch_sync(_clientTokenQueue, v19);
    }
  }

  else
  {
    host2 = [lCopy host];
    path = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = host2;
  }

  if (*(*(&buf + 1) + 40))
  {
    v14 = _ACDLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(*(&buf + 1) + 40);
      *v24 = 138412290;
      v25 = v15;
      _os_log_impl(&dword_221D2F000, v14, OS_LOG_TYPE_DEFAULT, "Found a matching account with identifier %@", v24, 0xCu);
    }

    v16 = [(ACDAccountStore *)self accountWithIdentifier:*(*(&buf + 1) + 40)];
    v17 = v16;
    if (v16)
    {
      [v16 setLastCredentialRenewalRejectionDate:0];
      [v17 setAuthenticated:1];
      [(ACDAccountStore *)self saveVerifiedAccount:v17 error:0];
    }
  }

  else
  {
    v17 = _ACDLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ACDAccountStore handleURL:];
    }
  }

  _Block_object_dispose(&buf, 8);
  v18 = *MEMORY[0x277D85DE8];
}

void __29__ACDAccountStore_handleURL___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = *(a1 + 40);
        v9 = [v7 identifier];
        v10 = [v8 _clientTokenForAccountIdentifier:v9 error:0];
        v11 = [v10 isEqualToString:*(a1 + 48)];

        if (v11)
        {
          v12 = [v7 identifier];
          v13 = *(*(a1 + 56) + 8);
          v14 = *(v13 + 40);
          *(v13 + 40) = v12;

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
}

- (id)remoteAccountStoreSession
{
  fakeRemoteAccountStoreSession = self->_fakeRemoteAccountStoreSession;
  if (!fakeRemoteAccountStoreSession)
  {
    v4 = [[ACDFakeRemoteAccountStoreSession alloc] initWithFakeProxy:self];
    v5 = self->_fakeRemoteAccountStoreSession;
    self->_fakeRemoteAccountStoreSession = v4;

    fakeRemoteAccountStoreSession = self->_fakeRemoteAccountStoreSession;
  }

  return fakeRemoteAccountStoreSession;
}

- (void)visibleTopLevelAccountsWithAccountTypeIdentifiers:(id)identifiers completion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  managedObjectContext = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__ACDAccountStore_visibleTopLevelAccountsWithAccountTypeIdentifiers_completion___block_invoke;
  v11[3] = &unk_27848C448;
  v12 = identifiersCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = identifiersCopy;
  [managedObjectContext performBlockAndWait:v11];
}

void __80__ACDAccountStore_visibleTopLevelAccountsWithAccountTypeIdentifiers_completion___block_invoke(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"visible == YES && parentAccount == nil && accountType.identifier IN %@", a1[4]];
  v3 = *(a1[5] + 120);
  v4 = [MEMORY[0x277CB8F30] keypathsRequiredForInitialization];
  v5 = [v3 fetchObjectsForEntityNamed:@"Account" withPredicate:v2 sortDescriptor:0 prefetchKeypaths:v4];

  if ([v5 count])
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [objc_alloc(MEMORY[0x277CB8F30]) initWithManagedAccount:*(*(&v15 + 1) + 8 * v11)];
          if (v12)
          {
            [v6 addObject:v12];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = 0;
  }

  v13 = a1[6];
  if (v13)
  {
    (*(v13 + 16))(v13, v6, 0);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)accountsWithAccountTypeIdentifiers:(id)identifiers preloadedProperties:(id)properties completion:(id)completion
{
  identifiersCopy = identifiers;
  propertiesCopy = properties;
  completionCopy = completion;
  if ([identifiersCopy count] == 1 && !objc_msgSend(propertiesCopy, "count"))
  {
    managedObjectContext = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __85__ACDAccountStore_accountsWithAccountTypeIdentifiers_preloadedProperties_completion___block_invoke;
    v24[3] = &unk_27848C358;
    v25 = identifiersCopy;
    selfCopy = self;
    v27 = propertiesCopy;
    v28 = completionCopy;
    v17 = completionCopy;
    v18 = propertiesCopy;
    v19 = identifiersCopy;
    [managedObjectContext performBlockAndWait:v24];

    v15 = v25;
  }

  else
  {
    managedObjectContext2 = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __85__ACDAccountStore_accountsWithAccountTypeIdentifiers_preloadedProperties_completion___block_invoke_3;
    v20[3] = &unk_27848C358;
    v20[4] = self;
    v21 = identifiersCopy;
    v22 = propertiesCopy;
    v23 = completionCopy;
    v12 = completionCopy;
    v13 = propertiesCopy;
    v14 = identifiersCopy;
    [managedObjectContext2 performBlockAndWait:v20];

    v15 = v21;
  }
}

void __85__ACDAccountStore_accountsWithAccountTypeIdentifiers_preloadedProperties_completion___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = +[ACDAccountStore accountCache];
  v3 = [*(a1 + 32) firstObject];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __85__ACDAccountStore_accountsWithAccountTypeIdentifiers_preloadedProperties_completion___block_invoke_2;
  v17[3] = &unk_27848C6C8;
  v12 = *(a1 + 32);
  v4 = v12.i64[0];
  v18 = vextq_s8(v12, v12, 8uLL);
  v19 = *(a1 + 48);
  v5 = [v2 cachedAccountsOfType:v3 justActive:0 fetchBlock:v17];

  if (*(a1 + 56))
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v13 + 1) + 8 * v10++) _setAccountStore:{*(a1 + 40), *&v12, v13}];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v20 count:16];
      }

      while (v8);
    }

    (*(*(a1 + 56) + 16))();
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __85__ACDAccountStore_accountsWithAccountTypeIdentifiers_preloadedProperties_completion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _block_accountsWithAccountTypeIdentifiers:*(a1 + 40) preloadedProperties:*(a1 + 48)];
  objc_claimAutoreleasedReturnValue();
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(v2 + 16))();
  }

  return MEMORY[0x2821F96F8]();
}

- (void)notifyRemoteDevicesOfModifiedAccount:(id)account withChangeType:(id)type options:(id)options completion:(id)completion
{
  accountCopy = account;
  typeCopy = type;
  completionCopy = completion;
  optionsCopy = options;
  v14 = _ACLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccountStore notifyRemoteDevicesOfModifiedAccount:withChangeType:options:completion:];
  }

  [accountCopy _setAccountStore:self];
  remoteDeviceProxy = self->_remoteDeviceProxy;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __90__ACDAccountStore_notifyRemoteDevicesOfModifiedAccount_withChangeType_options_completion___block_invoke;
  v17[3] = &unk_27848C6F0;
  v18 = completionCopy;
  v16 = completionCopy;
  [(ACRemoteDeviceProxy *)remoteDeviceProxy sendCommand:typeCopy withAccount:accountCopy options:optionsCopy completion:v17];
}

uint64_t __90__ACDAccountStore_notifyRemoteDevicesOfModifiedAccount_withChangeType_options_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a4);
  }

  return result;
}

- (void)saveAccount:(id)account toPairedDeviceWithOptions:(id)options completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  optionsCopy = options;
  v11 = _ACLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccountStore saveAccount:toPairedDeviceWithOptions:completion:];
  }

  [accountCopy _setAccountStore:self];
  remoteDeviceProxy = self->_remoteDeviceProxy;
  v13 = *MEMORY[0x277CB8EA0];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__ACDAccountStore_saveAccount_toPairedDeviceWithOptions_completion___block_invoke;
  v15[3] = &unk_27848C6F0;
  v16 = completionCopy;
  v14 = completionCopy;
  [(ACRemoteDeviceProxy *)remoteDeviceProxy sendCommand:v13 withAccount:accountCopy options:optionsCopy completion:v15];
}

uint64_t __68__ACDAccountStore_saveAccount_toPairedDeviceWithOptions_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a4);
  }

  return result;
}

- (void)removeAccountsFromPairedDeviceWithOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  v8 = _ACLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccountStore removeAccountsFromPairedDeviceWithOptions:completion:];
  }

  remoteDeviceProxy = self->_remoteDeviceProxy;
  v10 = *MEMORY[0x277CB8EB0];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__ACDAccountStore_removeAccountsFromPairedDeviceWithOptions_completion___block_invoke;
  v12[3] = &unk_27848C6F0;
  v13 = completionCopy;
  v11 = completionCopy;
  [(ACRemoteDeviceProxy *)remoteDeviceProxy sendCommand:v10 withAccount:0 options:optionsCopy completion:v12];
}

uint64_t __72__ACDAccountStore_removeAccountsFromPairedDeviceWithOptions_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a4);
  }

  return result;
}

- (void)removeAccountFromPairedDevice:(id)device withOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  deviceCopy = device;
  v11 = _ACLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccountStore removeAccountFromPairedDevice:withOptions:completion:];
  }

  remoteDeviceProxy = self->_remoteDeviceProxy;
  v13 = *MEMORY[0x277CB8EA8];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__ACDAccountStore_removeAccountFromPairedDevice_withOptions_completion___block_invoke;
  v15[3] = &unk_27848C6F0;
  v16 = completionCopy;
  v14 = completionCopy;
  [(ACRemoteDeviceProxy *)remoteDeviceProxy sendCommand:v13 withAccount:deviceCopy options:optionsCopy completion:v15];
}

uint64_t __72__ACDAccountStore_removeAccountFromPairedDevice_withOptions_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a4);
  }

  return result;
}

- (void)migrateCredentialForAccount:(id)account completion:(id)completion
{
  v24[1] = *MEMORY[0x277D85DE8];
  accountCopy = account;
  completionCopy = completion;
  v7 = _ACLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccountStore migrateCredentialForAccount:completion:];
  }

  v8 = +[ACDKeychainMigrator sharedInstance];
  v24[0] = accountCopy;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v10 = [v8 keychainItemsForAccounts:v9];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * v15);
        v17 = +[ACDKeychainMigrator sharedInstance];
        [v17 migrateKeychainItem:v16 toKeybag:1];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  [ACDKeychainManager notifiyCredentialChangedForAccount:accountCopy];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1, 0);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)triggerKeychainMigrationIfNecessary:(id)necessary
{
  v26 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  v5 = _ACLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccountStore triggerKeychainMigrationIfNecessary:];
  }

  keychainVersion = [(ACDDatabaseConnection *)self->_databaseConnection keychainVersion];
  integerValue = [keychainVersion integerValue];
  v8 = _ACLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:9];
    v10 = v9;
    v11 = @"NO";
    *buf = 138412802;
    v21 = keychainVersion;
    v22 = 2112;
    if (integerValue < 9)
    {
      v11 = @"YES";
    }

    v23 = v9;
    v24 = 2112;
    v25 = v11;
    _os_log_impl(&dword_221D2F000, v8, OS_LOG_TYPE_DEFAULT, "Database keychain version: %@, expected version: %@, will migrate: %@", buf, 0x20u);
  }

  if (integerValue >= 9)
  {
    v16 = 0;
  }

  else
  {
    v12 = +[ACDKeychainMigrator sharedInstance];
    [v12 migrateAllKeychainItems];

    databaseConnection = self->_databaseConnection;
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:9];
    [(ACDDatabaseConnection *)databaseConnection setKeychainVersion:v14];

    v15 = self->_databaseConnection;
    v19 = 0;
    [(ACDDatabaseConnection *)v15 saveWithError:&v19];
    v16 = v19;
    if (v16)
    {
      v17 = _ACDLogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [ACDAccountStore triggerKeychainMigrationIfNecessary:];
      }
    }
  }

  if (necessaryCopy)
  {
    necessaryCopy[2](necessaryCopy, v16 == 0, v16);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)runAccountMigrationPlugins:(id)plugins
{
  pluginsCopy = plugins;
  v5 = _ACLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccountStore runAccountMigrationPlugins:];
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__3;
  v14 = __Block_byref_object_dispose__3;
  v15 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v9 = 0;
  managedObjectContext = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__ACDAccountStore_runAccountMigrationPlugins___block_invoke;
  v7[3] = &unk_27848BFA0;
  v7[4] = self;
  v7[5] = v8;
  v7[6] = &v10;
  [managedObjectContext performBlockAndWait:v7];

  if (pluginsCopy)
  {
    pluginsCopy[2](pluginsCopy, v11[5] == 0);
  }

  _Block_object_dispose(v8, 8);
  _Block_object_dispose(&v10, 8);
}

void __46__ACDAccountStore_runAccountMigrationPlugins___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _accountTypeWithIdentifier:*MEMORY[0x277CB8D58]];
  v3 = [*(a1 + 32) _accountTypeWithIdentifier:*MEMORY[0x277CB8D60]];
  v4 = *(a1 + 32);
  v15 = 0;
  [v4 _pruneDuplicateAccountsForAccountType:v2 withUserName:@"local" error:&v15];
  v5 = v15;
  v6 = *(a1 + 32);
  v14 = v5;
  [v6 _pruneDuplicateAccountsForAccountType:v3 withUserName:@"local" error:&v14];
  v7 = v14;

  v8 = *(*(a1 + 32) + 120);
  v13 = v7;
  LOBYTE(v5) = [v8 saveWithError:&v13];
  v9 = v13;

  *(*(*(a1 + 40) + 8) + 24) = v5;
  if (v9)
  {
    v10 = [v9 ac_secureCodingError];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

- (void)_pruneDuplicateAccountsForAccountType:(id)type withUserName:(id)name error:(id *)error
{
  v48[1] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  nameCopy = name;
  v9 = _ACLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccountStore _pruneDuplicateAccountsForAccountType:withUserName:error:];
  }

  v10 = nameCopy;
  v39 = typeCopy;
  nameCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"accountType == %@ && username == %@", typeCopy, nameCopy];
  v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"date" ascending:1];
  v13 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"Account"];
  v38 = nameCopy;
  [v13 setPredicate:nameCopy];
  v37 = v12;
  v48[0] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:1];
  [v13 setSortDescriptors:v14];

  [v13 setFetchLimit:1];
  managedObjectContext = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
  v41 = 0;
  v16 = [managedObjectContext executeFetchRequest:v13 error:&v41];
  v17 = v41;

  if (v17)
  {
    v18 = _ACDLogSystem();
    v19 = v39;
    v20 = v10;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v34 = ACHashedString();
      *buf = 138412802;
      v43 = v39;
      v44 = 2112;
      v45 = v34;
      v46 = 2112;
      v47 = v17;
      _os_log_error_impl(&dword_221D2F000, v18, OS_LOG_TYPE_ERROR, "@Error pruning accounts of type %@ with username %@: %@", buf, 0x20u);
    }

    if (error)
    {
      v21 = v17;
      *error = v17;
    }
  }

  else if ([v16 count])
  {
    if ([v16 count] != 1)
    {
      [ACDAccountStore _pruneDuplicateAccountsForAccountType:withUserName:error:];
    }

    v22 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"Account"];
    v23 = MEMORY[0x277CCAC30];
    firstObject = [v16 firstObject];
    v25 = [v23 predicateWithFormat:@"accountType == %@ && username == %@ && SELF != %@", v39, v10, firstObject];
    [v22 setPredicate:v25];

    v26 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v22];
    [v26 setResultType:2];
    managedObjectContext2 = [(ACDDatabaseConnection *)self->_databaseConnection managedObjectContext];
    v40 = 0;
    v28 = [managedObjectContext2 executeRequest:v26 error:&v40];
    v17 = v40;

    v29 = _ACDLogSystem();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      [ACDAccountStore _pruneDuplicateAccountsForAccountType:v28 withUserName:? error:?];
    }

    v20 = v10;
    if (v17)
    {
      v30 = _ACDLogSystem();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v35 = ACHashedString();
        *buf = 138412802;
        v43 = v39;
        v44 = 2112;
        v45 = v35;
        v46 = 2112;
        v47 = v17;
        _os_log_error_impl(&dword_221D2F000, v30, OS_LOG_TYPE_ERROR, "@Error pruning accounts of type %@ with username %@: %@", buf, 0x20u);
      }

      if (error)
      {
        v31 = v17;
        *error = v17;
      }
    }

    v19 = v39;
  }

  else
  {
    v32 = _ACDLogSystem();
    v19 = v39;
    v20 = v10;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      [ACDAccountStore _pruneDuplicateAccountsForAccountType:withUserName:error:];
    }

    v17 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)scheduleBackupIfNonexistent:(id)nonexistent
{
  nonexistentCopy = nonexistent;
  databaseBackupActivity = [(ACDAccountStore *)self databaseBackupActivity];
  [databaseBackupActivity scheduleBackupIfNonexistent];

  nonexistentCopy[2](nonexistentCopy, 1, 0);
}

- (void)shutdownAccountsD:(id)d
{
  (*(d + 2))(d, 1, 0);

  xpc_transaction_exit_clean();
}

- (void)cacheGenerationForAccounts:(id)accounts cacheSuffix:(id)suffix
{
  suffixCopy = suffix;
  accountsCopy = accounts;
  v7 = +[ACDAccountStore accountCache];
  [v7 cacheGenerationForAccounts:accountsCopy cacheSuffix:suffixCopy];
}

- (void)registerMonitorForAccountsOfTypes:(id)types propertiesToPrefetch:(id)prefetch completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  prefetchCopy = prefetch;
  completionCopy = completion;
  v11 = _ACDLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    WeakRetained = objc_loadWeakRetained(&self->_client);
    *buf = 138412802;
    v19 = WeakRetained;
    v20 = 2112;
    v21 = typesCopy;
    v22 = 2112;
    v23 = prefetchCopy;
    _os_log_debug_impl(&dword_221D2F000, v11, OS_LOG_TYPE_DEBUG, "Client %@ registered to monitor for types %@, preloadedProperties %@", buf, 0x20u);
  }

  allObjects = [typesCopy allObjects];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __85__ACDAccountStore_registerMonitorForAccountsOfTypes_propertiesToPrefetch_completion___block_invoke;
  v16[3] = &unk_27848C718;
  v17 = completionCopy;
  v13 = completionCopy;
  [(ACDAccountStore *)self accountsWithAccountTypeIdentifiers:allObjects preloadedProperties:prefetchCopy completion:v16];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)uidOfAccountsd:(id)accountsd
{
  accountsdCopy = accountsd;
  v4 = geteuid();
  (*(accountsd + 2))(accountsdCopy, v4);
}

- (ACDAccountStoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)init
{
  v7 = *MEMORY[0x277D85DE8];
  callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithClient:databaseConnection:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 connection];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)accountsOnPairedDeviceWithAccountTypes:withOptions:handler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_removeAccountNoSave:withDataclassActions:withError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_removeAccountNoSave:withDataclassActions:withError:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_removeAccountNoSave:withDataclassActions:withError:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_saveWithError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_saveWithError:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_saveWithError:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_saveWithError:(os_log_t)log .cold.4(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_221D2F000, log, OS_LOG_TYPE_ERROR, "ACDAccountStore couldn't find just updated account", buf, 2u);
}

- (void)_saveWithError:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_15(&dword_221D2F000, v0, v1, "ACDAccountStore failed to save its MOC. %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_saveWithError:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_performDataclassActions:forAccount:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_performDataclassActions:forAccount:error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_15(&dword_221D2F000, v0, v1, "Failed to perform dataclass actions, error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_performDataclassActions:forAccount:error:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addAccountNoSave:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addAccountNoSave:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_addAccountNoSave:withDataclassActions:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_addAccountNoSave:withDataclassActions:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_addAccountNoSave:withDataclassActions:error:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_addAccountNoSave:withDataclassActions:error:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_addAccountNoSave:withDataclassActions:error:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_addAccountNoSave:withDataclassActions:error:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_addAccountNoSave:withDataclassActions:error:.cold.7()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_17();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_addAccountNoSave:withDataclassActions:error:.cold.8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateAccountNoSave:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateAccountNoSave:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_updateAccountNoSave:withDataclassActions:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_updateAccountNoSave:withDataclassActions:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_updateAccountNoSave:withDataclassActions:error:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_updateAccountNoSave:withDataclassActions:error:.cold.4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_updateAccountNoSave:withDataclassActions:error:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_updateAccountNoSave:withDataclassActions:error:.cold.6()
{
  OUTLINED_FUNCTION_22();
  v10 = *MEMORY[0x277D85DE8];
  v2 = [v1 identifier];
  v3 = [v0 localizedDescription];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_updateAccountNoSave:withDataclassActions:error:.cold.7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_deleteAccountNoSave:withDataclassActions:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_deleteAccountNoSave:withDataclassActions:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_deleteAccountNoSave:withDataclassActions:error:.cold.3()
{
  OUTLINED_FUNCTION_22();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 identifier];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_deleteAccountNoSave:withDataclassActions:error:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_dataclassWithName:createIfNecessary:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_canSaveAccount:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_15(&dword_221D2F000, v0, v1, "Failed to fetch similar accounts, error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_setAccountManagedObjectRelationships:withAccount:oldAccount:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_setAccountManagedObjectRelationships:withAccount:oldAccount:error:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 parentAccountIdentifier];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_setAccountManagedObjectRelationships:withAccount:oldAccount:error:.cold.3()
{
  OUTLINED_FUNCTION_3_1();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"ACDAccountStore.m" lineNumber:1013 description:@"Failed to read provisionedDataclasses from database"];
}

- (void)_setAccountManagedObjectRelationships:withAccount:oldAccount:error:.cold.4()
{
  OUTLINED_FUNCTION_3_1();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"ACDAccountStore.m" lineNumber:1041 description:@"Failed to read enabledDataclasses from database"];
}

- (void)_setAccountManagedObjectRelationships:(id *)a1 withAccount:oldAccount:error:.cold.5(id *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_setAccountManagedObjectRelationships:withAccount:oldAccount:error:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleAccountMod:withDataclassActions:withError:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_17();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_handleAccountMod:withDataclassActions:withError:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleAccountAdd:withDataclassActions:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_15(&dword_221D2F000, v0, v1, "Failed to save account, error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleAccountAdd:withDataclassActions:error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_15(&dword_221D2F000, v0, v1, "Error inserting new account: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __53__ACDAccountStore_accountTypeWithIdentifier_handler___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_9(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_15(&dword_221D2F000, v1, v2, "@No account type found for identifier '%{public}@'", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __58__ACDAccountStore_credentialForAccount_serviceID_handler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3_1();
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(v1 + 32) identifier];
  v3 = *(v0 + 40);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __65__ACDAccountStore_setCredential_forAccount_serviceID_completion___block_invoke_2_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)credentialForAccountWithIdentifier:(uint64_t)a1 handler:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a2 + 160));
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __62__ACDAccountStore_credentialForAccountWithIdentifier_handler___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_9(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_15(&dword_221D2F000, v1, v2, "No ACAccountType found for account with identifier %@.", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __62__ACDAccountStore_credentialForAccountWithIdentifier_handler___block_invoke_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_9(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_15(&dword_221D2F000, v1, v2, "No managed object was found for account with identifier %@.", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __62__ACDAccountStore_credentialForAccountWithIdentifier_handler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3_1();
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(v1 + 32) + 160));
  v3 = *(*(*(v0 + 48) + 8) + 40);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __62__ACDAccountStore_credentialForAccountWithIdentifier_handler___block_invoke_2_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(*(*(a1 + 48) + 8) + 40);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

void __62__ACDAccountStore_credentialForAccountWithIdentifier_handler___block_invoke_2_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_15(&dword_221D2F000, v0, v1, "An unexpected error occurred: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __49__ACDAccountStore_saveCredentialItem_completion___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_3_1();
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*v1 accountIdentifier];
  v3 = [*v0 serviceName];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)accountsWithAccountType:options:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)accountsWithAccountType:options:completion:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_block_accountsWithAccountType:options:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_15(&dword_221D2F000, v0, v1, "Failed to get an NSManagedObjectID for account type %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)insertAccountType:(uint64_t)a1 withHandler:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_24(a1, a2);
  OUTLINED_FUNCTION_23(v3, 5.8382e-34, v4, v5);
  OUTLINED_FUNCTION_20(&dword_221D2F000, v8, v6, "Could not insert account type '%{public}@': %@", v7);
}

- (void)removeAccountType:(uint64_t)a1 withHandler:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_24(a1, a2);
  OUTLINED_FUNCTION_23(v3, 5.8382e-34, v4, v5);
  OUTLINED_FUNCTION_20(&dword_221D2F000, v8, v6, "Could not remove account type '%{public}@': %@", v7);
}

void __65__ACDAccountStore_removeAccount_withDataclassActions_completion___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_9(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __66__ACDAccountStore_saveAccount_verify_dataclassActions_completion___block_invoke_192_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_9(a1, *MEMORY[0x277D85DE8]);
  v2 = *(*(v1 + 8) + 40);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_15(&dword_221D2F000, v3, v4, "Account save rejected by plugins, error: %@", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void __66__ACDAccountStore_saveAccount_verify_dataclassActions_completion___block_invoke_192_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(*(*a1 + 8) + 40) localizedDescription];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __66__ACDAccountStore_saveAccount_verify_dataclassActions_completion___block_invoke_196_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_completeSave:dataclassActions:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_completeSave:(uint64_t *)a1 dataclassActions:completion:.cold.2(uint64_t *a1)
{
  OUTLINED_FUNCTION_9(a1, *MEMORY[0x277D85DE8]);
  *(v1 + 24);
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);
  v7 = *MEMORY[0x277D85DE8];
}

void __66__ACDAccountStore_verifyCredentialsForAccount_options_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_22();
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*v1 + 160));
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __65__ACDAccountStore_renewCredentialsForAccount_options_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_22();
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*v1 + 160));
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_requestAccessForAccountTypeWithIdentifier:options:allowUserInteraction:withHandler:.cold.1()
{
  OUTLINED_FUNCTION_22();
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((v0 + 160));
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __103__ACDAccountStore__requestAccessForAccountTypeWithIdentifier_options_allowUserInteraction_withHandler___block_invoke_cold_1(char a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithBool:a1 & 1];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __78__ACDAccountStore_setPermissionGranted_forBundleID_onAccountType_withHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_15(&dword_221D2F000, v0, v1, "Could not save permissions: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __72__ACDAccountStore_clearAllPermissionsGrantedForAccountType_withHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __69__ACDAccountStore_clearGrantedPermissionsForAccountType_withHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_15(&dword_221D2F000, v0, v1, "Could not clear permissions: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __69__ACDAccountStore_clearGrantedPermissionsForAccountType_withHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)kerberosAccountsForDomainFromURL:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)resetDatabaseToVersion:withCompletion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_20(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_clientTokenForAccountIdentifier:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_removeClientTokenForAccountIdentifer:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_15(&dword_221D2F000, v0, v1, "client token removal failed: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleURL:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_15(&dword_221D2F000, v0, v1, "Couldn't find an account matching the URL %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)notifyRemoteDevicesOfModifiedAccount:withChangeType:options:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)saveAccount:toPairedDeviceWithOptions:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)removeAccountsFromPairedDeviceWithOptions:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)removeAccountFromPairedDevice:withOptions:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)migrateCredentialForAccount:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)triggerKeychainMigrationIfNecessary:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)triggerKeychainMigrationIfNecessary:.cold.2()
{
  OUTLINED_FUNCTION_22();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*v0 keychainVersion];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)runAccountMigrationPlugins:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_pruneDuplicateAccountsForAccountType:withUserName:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_pruneDuplicateAccountsForAccountType:withUserName:error:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"ACDAccountStore.m" lineNumber:3207 description:@"Should only be one value returned here!"];
}

- (void)_pruneDuplicateAccountsForAccountType:(void *)a1 withUserName:error:.cold.3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 result];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_pruneDuplicateAccountsForAccountType:withUserName:error:.cold.4()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = ACHashedString();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end