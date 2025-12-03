@interface TKHostTokenRegistry
+ (id)allowedBundlesFromEntitlements:(id)entitlements;
+ (id)bundleIdentifierFromAuditToken:(id *)token;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NSArray)tokens;
- (NSDictionary)tokenExtensions;
- (TKHostTokenRegistry)initWithDriverCache:(id)cache listener:(id)listener keychain:(id)keychain;
- (TKHostTokenRegistryDelegate)delegate;
- (id)_registeredTokens;
- (id)beginTransaction:(id)transaction;
- (id)createTokenWithTokenID:(id)d persistent:(BOOL)persistent;
- (id)reloadTokenClassesFromStore;
- (id)stringForStorageKey:(int64_t)key;
- (id)tokenWithTokenID:(id)d;
- (void)commitTransaction;
- (void)dealloc;
- (void)keychainItemsModified:(id)modified;
- (void)loadTokensFromStore:(id)store;
- (void)markModified;
- (void)preloadTokens;
- (void)registerClassIDs:(id)ds;
- (void)removeTokenWithTokenID:(id)d removeRegistered:(BOOL)registered;
- (void)saveTokensToStorageIfNeeded;
@end

@implementation TKHostTokenRegistry

- (TKHostTokenRegistry)initWithDriverCache:(id)cache listener:(id)listener keychain:(id)keychain
{
  cacheCopy = cache;
  listenerCopy = listener;
  keychainCopy = keychain;
  v27.receiver = self;
  v27.super_class = TKHostTokenRegistry;
  v12 = [(TKHostTokenRegistry *)&v27 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_driverCache, cache);
    [(TKHostTokenDriverCache *)v13->_driverCache setRegistry:v13];
    objc_storeStrong(&v13->_keychain, keychain);
    v14 = [&__NSDictionary0__struct mutableCopy];
    tokensByTokenID = v13->_tokensByTokenID;
    v13->_tokensByTokenID = v14;

    v16 = [&__NSDictionary0__struct mutableCopy];
    pendingCreationTokens = v13->_pendingCreationTokens;
    v13->_pendingCreationTokens = v16;

    tokenClassIDs = v13->_tokenClassIDs;
    v13->_tokenClassIDs = &__NSArray0__struct;

    v19 = [&__NSArray0__struct mutableCopy];
    externalTransactions = v13->_externalTransactions;
    v13->_externalTransactions = v19;

    v21 = [&__NSArray0__struct mutableCopy];
    keychainItemsDirty = v13->_keychainItemsDirty;
    v13->_keychainItemsDirty = v21;

    v23 = +[NSHashTable weakObjectsHashTable];
    clientConnections = v13->_clientConnections;
    v13->_clientConnections = v23;

    objc_storeStrong(&v13->_listener, listener);
    [(NSXPCListener *)v13->_listener setDelegate:v13];
    [(NSXPCListener *)v13->_listener resume];
    allowedExtensionClassIDs = [cacheCopy allowedExtensionClassIDs];
    v13->_resetDB = allowedExtensionClassIDs != 0;
  }

  return v13;
}

+ (id)bundleIdentifierFromAuditToken:(id *)token
{
  if (&_CPCopyBundleIdentifierAndTeamFromAuditToken)
  {
    v4 = *&token->var0[4];
    *v23[0].val = *token->var0;
    *&v23[0].val[4] = v4;
    CPCopyBundleIdentifierAndTeamFromAuditToken();
  }

  v5 = sub_1000049CC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10001DD80();
  }

  v6 = *&token->var0[4];
  *v23[0].val = *token->var0;
  *&v23[0].val[4] = v6;
  v7 = audit_token_to_pid(v23);
  v8 = proc_pidpath(v7, v23, 0x1000u);
  if (v8 <= 0)
  {
    v10 = sub_1000049CC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10001DFF0();
    }

    goto LABEL_21;
  }

  v9 = [[NSString alloc] initWithBytes:v23 length:v8 encoding:4];
  if (!v9)
  {
    v10 = sub_1000049CC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10001DF7C();
    }

    goto LABEL_21;
  }

  v10 = v9;
  v11 = [NSURL fileURLWithPath:v9];
  if (!v11)
  {
    v12 = sub_1000049CC();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10001DF0C();
    }

    goto LABEL_20;
  }

  v12 = v11;
  v13 = _CFBundleCopyBundleURLForExecutableURL();
  if (!v13)
  {
    v18 = sub_1000049CC();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10001DE9C();
    }

LABEL_20:
LABEL_21:

    bundleIdentifier = 0;
LABEL_22:
    v19 = 0;
    goto LABEL_23;
  }

  v14 = v13;
  v15 = [NSBundle bundleWithURL:v13];
  v16 = v15;
  if (v15)
  {
    bundleIdentifier = [v15 bundleIdentifier];
  }

  else
  {
    v21 = sub_1000049CC();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10001DDBC();
    }

    bundleIdentifier = 0;
  }

  if (!v16)
  {
    goto LABEL_22;
  }

  v22 = sub_1000049CC();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    sub_10001DE2C();
  }

  bundleIdentifier = bundleIdentifier;
  v19 = bundleIdentifier;
LABEL_23:

  return v19;
}

+ (id)allowedBundlesFromEntitlements:(id)entitlements
{
  v3 = [entitlements valueForEntitlement:@"com.apple.private.ctk.configuration-allowed-for-bundles"];
  if (!v3)
  {
LABEL_18:
    v10 = 0;
    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = sub_1000049CC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10001E078();
    }

LABEL_17:

    goto LABEL_18;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v11 = sub_1000049CC();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            sub_10001E0B4();
          }

          goto LABEL_17;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = v4;
LABEL_19:

  return v10;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = connectionCopy;
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v9 = [TKHostTokenRegistry bundleIdentifierFromAuditToken:&v18];
  v10 = [TKHostTokenRegistry allowedBundlesFromEntitlements:v8];
  v11 = v10;
  if (v9)
  {
    goto LABEL_5;
  }

  if (v10 && [v10 count])
  {
    v9 = [v11 objectAtIndexedSubscript:0];
LABEL_5:
    v12 = [TKTokenConfiguration interfaceForProtocol:v18];
    [v8 setExportedInterface:v12];

    v13 = [[TKHostTokenRegistryConfigurationProxy alloc] initWithRegistry:self callerBundleID:v9 allowedForBundles:v11];
    [v8 setExportedObject:v13];

    v14 = +[TKTokenConfiguration interfaceForChangeProtocol];
    [v8 setRemoteObjectInterface:v14];

    [v8 resume];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NSHashTable *)selfCopy->_clientConnections addObject:v8];
    objc_sync_exit(selfCopy);

    v16 = 1;
    goto LABEL_12;
  }

  v9 = sub_1000049CC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    sub_10001E0F0(v8, v9);
  }

  v16 = 0;
LABEL_12:

  return v16;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = TKHostTokenRegistry;
  [(TKHostTokenRegistry *)&v3 dealloc];
}

- (NSArray)tokens
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allKeys = [(NSMutableDictionary *)selfCopy->_tokensByTokenID allKeys];
  objc_sync_exit(selfCopy);

  return allKeys;
}

- (id)beginTransaction:(id)transaction
{
  transactionCopy = transaction;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  ++selfCopy->_transactionCounter;
  v6 = [[TKHostTokenRegistryTransaction alloc] initWithRegistry:selfCopy name:transactionCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (NSDictionary)tokenExtensions
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  driverCache = [(TKHostTokenRegistry *)selfCopy driverCache];
  extensions = [driverCache extensions];

  objc_sync_exit(selfCopy);

  return extensions;
}

- (void)preloadTokens
{
  obj = self;
  objc_sync_enter(obj);
  driverCache = [(TKHostTokenRegistry *)obj driverCache];
  [driverCache preloadTokens];

  objc_sync_exit(obj);
}

- (void)markModified
{
  obj = self;
  objc_sync_enter(obj);
  obj->_storageDirty = 1;
  objc_sync_exit(obj);
}

- (void)keychainItemsModified:(id)modified
{
  modifiedCopy = modified;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (([(NSMutableArray *)selfCopy->_keychainItemsDirty containsObject:modifiedCopy]& 1) == 0)
  {
    [(NSMutableArray *)selfCopy->_keychainItemsDirty addObject:modifiedCopy];
  }

  objc_sync_exit(selfCopy);
}

- (id)_registeredTokens
{
  v3 = +[NSMutableArray array];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [(NSMutableDictionary *)selfCopy->_tokensByTokenID allValues];
  v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isRegistered])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (void)commitTransaction
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_transactionCounter - 1;
  selfCopy->_transactionCounter = v3;
  if (!v3)
  {
    [(TKHostTokenRegistry *)selfCopy saveTokensToStorageIfNeeded];
    if ([(NSMutableArray *)selfCopy->_keychainItemsDirty count])
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v4 = selfCopy->_clientConnections;
      v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        v6 = *v10;
        do
        {
          v7 = 0;
          do
          {
            if (*v10 != v6)
            {
              objc_enumerationMutation(v4);
            }

            remoteObjectProxy = [*(*(&v9 + 1) + 8 * v7) remoteObjectProxy];
            [remoteObjectProxy tokenConfigurationChanged:selfCopy->_keychainItemsDirty];

            v7 = v7 + 1;
          }

          while (v5 != v7);
          v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
        }

        while (v5);
      }

      [(NSMutableArray *)selfCopy->_keychainItemsDirty removeAllObjects];
    }

    [(NSMutableDictionary *)selfCopy->_pendingCreationTokens removeAllObjects];
  }

  objc_sync_exit(selfCopy);
}

- (void)saveTokensToStorageIfNeeded
{
  selfCopy = self;
  storage = [(TKHostTokenRegistry *)self storage];
  if (storage)
  {
    storageDirty = selfCopy->_storageDirty;

    if (storageDirty)
    {
      v30 = a2;
      v6 = [&__NSDictionary0__struct mutableCopy];
      v7 = [&__NSDictionary0__struct mutableCopy];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      obj = selfCopy->_tokensByTokenID;
      v8 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      v32 = selfCopy;
      if (v8)
      {
        v9 = v8;
        v10 = *v35;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v35 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v34 + 1) + 8 * i);
            v13 = [(NSMutableDictionary *)selfCopy->_tokensByTokenID objectForKeyedSubscript:v12];
            if (([v13 persistent] & 1) != 0 || (objc_msgSend(v13, "keychainItems"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "count"), v14, v15))
            {
              v33 = 0;
              v16 = [NSKeyedArchiver archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v33];
              v17 = v33;
              if (!v16)
              {
                sub_10001E180(v30, selfCopy, v13, v17);
              }

              isRegistered = [v13 isRegistered];
              stringRepresentation = [v12 stringRepresentation];
              v20 = isRegistered == 0;
              selfCopy = v32;
              if (v20)
              {
                v21 = v6;
              }

              else
              {
                v21 = v7;
              }

              [v21 setObject:v16 forKeyedSubscript:stringRepresentation];
            }
          }

          v9 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v9);
      }

      v22 = sub_1000049CC();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        sub_10001E200();
      }

      v23 = v32;
      storage2 = [(TKHostTokenRegistry *)v32 storage];
      v25 = [(TKHostTokenRegistry *)v32 stringForStorageKey:0];
      v26 = v6;
      [storage2 setObject:v6 forKey:v25];

      storage3 = [(TKHostTokenRegistry *)v32 storage];
      v28 = [(TKHostTokenRegistry *)v32 stringForStorageKey:2];
      [storage3 setObject:v7 forKey:v28];

      if (!CFPreferencesAppSynchronize(kCFPreferencesCurrentApplication))
      {
        v29 = sub_1000049CC();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          sub_10001E23C();
        }

        v23 = v32;
      }

      v23->_storageDirty = 0;
    }
  }
}

- (id)tokenWithTokenID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_tokensByTokenID objectForKeyedSubscript:dCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [(NSMutableDictionary *)selfCopy->_pendingCreationTokens objectForKeyedSubscript:dCopy];
  }

  v9 = v8;

  objc_sync_exit(selfCopy);

  return v9;
}

- (void)removeTokenWithTokenID:(id)d removeRegistered:(BOOL)registered
{
  dCopy = d;
  v7 = [(TKHostTokenRegistry *)self beginTransaction:@"removeTokenWithTokenID"];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(NSMutableDictionary *)selfCopy->_tokensByTokenID objectForKeyedSubscript:dCopy];
  v10 = v9;
  if (v9)
  {
    if (![v9 isRegistered] || registered)
    {
      [(NSMutableDictionary *)selfCopy->_toBeRemovedTokens setObject:v10 forKeyedSubscript:dCopy];
      [(NSMutableDictionary *)selfCopy->_tokensByTokenID removeObjectForKey:dCopy];
      [v10 setKeychainItems:&__NSArray0__struct];
      [v10 setRegistry:0];
      objc_sync_exit(selfCopy);

      driver = [v10 driver];
      [driver releaseTokenWithTokenID:dCopy];

      v15 = selfCopy;
      objc_sync_enter(v15);
      [(NSMutableDictionary *)selfCopy->_toBeRemovedTokens removeObjectForKey:dCopy];
      objc_sync_exit(v15);
    }

    else
    {
      [v10 setSlotName:0];
      [v10 setDriver:0];
      v11 = sub_1000049CC();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_10001E278();
      }

      objc_sync_exit(selfCopy);
      driver2 = [v10 driver];
      [driver2 releaseTokenWithTokenID:dCopy];
    }

    v16 = sub_1000049CC();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      persistent = [v10 persistent];
      v18 = @"non-persistent";
      if (persistent)
      {
        v18 = @"persistent";
      }

      v20 = 138543618;
      v21 = v18;
      v22 = 2114;
      v23 = dCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Removing %{public}@ token %{public}@ from system", &v20, 0x16u);
    }

    delegate = [(TKHostTokenRegistry *)selfCopy delegate];
    [delegate hostTokenRegistry:selfCopy removedToken:dCopy persistent:{objc_msgSend(v10, "persistent")}];

    selfCopy = [v7 markModified];
    [(TKHostTokenRegistry *)selfCopy commit];
  }

  else
  {
    [v7 commit];
    v13 = sub_1000049CC();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10001E2E8();
    }

    objc_sync_exit(selfCopy);
  }
}

- (id)createTokenWithTokenID:(id)d persistent:(BOOL)persistent
{
  persistentCopy = persistent;
  dCopy = d;
  v7 = 0;
  v8 = 0;
  v9 = 100;
  do
  {
    if (v7)
    {
      [(TKHostTokenRegistry *)self removeTokenWithTokenID:dCopy removeRegistered:1];
    }

    if (v8)
    {
      [NSThread sleepForTimeInterval:0.01];
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    v11 = [(NSMutableDictionary *)self->_toBeRemovedTokens objectForKeyedSubscript:dCopy];
    v8 = v11 != 0;

    if (v11)
    {
      objc_sync_exit(selfCopy);

      goto LABEL_20;
    }

    v12 = [(NSMutableDictionary *)self->_tokensByTokenID objectForKeyedSubscript:dCopy];
    v13 = v12;
    if (v12)
    {
      if (![v12 isRegistered])
      {
        v14 = 1;
        goto LABEL_19;
      }

      v4 = v13;
    }

    else
    {
      v4 = [(NSMutableDictionary *)self->_pendingCreationTokens objectForKeyedSubscript:dCopy];
      if (v4)
      {
        [(NSMutableDictionary *)self->_pendingCreationTokens removeObjectForKey:dCopy];
      }

      else
      {
        v4 = [[TKHostToken alloc] initWithTokenID:dCopy persistent:persistentCopy];
        [(TKHostToken *)v4 setRegistry:selfCopy];
      }

      [(NSMutableDictionary *)self->_tokensByTokenID setObject:v4 forKeyedSubscript:dCopy];
      v15 = sub_1000049CC();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v24 = v4;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Adding token %{public}@ to system", buf, 0xCu);
      }

      v16 = [(TKHostTokenRegistry *)selfCopy beginTransaction:@"createTokenWithTokenID"];
      markModified = [v16 markModified];
      [markModified commit];
    }

    v14 = 0;
LABEL_19:

    objc_sync_exit(selfCopy);
    if ((v14 & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_20:
    v7 = v11 == 0;
    --v9;
  }

  while (v9);
  v18 = +[NSAssertionHandler currentHandler];
  v19 = [dCopy description];
  [v18 handleFailureInMethod:a2 object:selfCopy file:@"TKHostTokenRegistry.m" lineNumber:427 description:{@"createTokenWithTokenID failed %@", v19}];

  v4 = 0;
LABEL_22:

  return v4;
}

- (void)loadTokensFromStore:(id)store
{
  storeCopy = store;
  v4 = sub_1000049CC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10001E358();
  }

  v5 = [NSUserDefaults alloc];
  storeCopy = [NSString stringWithFormat:@"com.apple.security.%@-db", storeCopy];
  v7 = [v5 initWithSuiteName:storeCopy];
  storage = self->_storage;
  self->_storage = v7;

  if ([(TKHostTokenRegistry *)self resetDB])
  {
    v9 = sub_1000049CC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "cleaning existing registry DB", buf, 2u);
    }

    storage = [(TKHostTokenRegistry *)self storage];
    v11 = [(TKHostTokenRegistry *)self stringForStorageKey:1];
    [storage removeObjectForKey:v11];

    storage2 = [(TKHostTokenRegistry *)self storage];
    v13 = [(TKHostTokenRegistry *)self stringForStorageKey:0];
    [storage2 removeObjectForKey:v13];

    storage3 = [(TKHostTokenRegistry *)self storage];
    v15 = [(TKHostTokenRegistry *)self stringForStorageKey:2];
    [storage3 removeObjectForKey:v15];
  }

  v51 = [(TKHostTokenRegistry *)self beginTransaction:@"loadTokensFromStore"];
  storage4 = [(TKHostTokenRegistry *)self storage];
  v17 = [(TKHostTokenRegistry *)self stringForStorageKey:2];
  v18 = [storage4 objectForKey:v17];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = &__NSDictionary0__struct;
  }

  v48 = v20;

  storage5 = [(TKHostTokenRegistry *)self storage];
  v22 = [(TKHostTokenRegistry *)self stringForStorageKey:0];
  v23 = [storage5 objectForKey:v22];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = &__NSDictionary0__struct;
  }

  v26 = v25;

  v50 = [v26 mutableCopy];
  [v50 addEntriesFromDictionary:v48];

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v27 = [v50 copy];
  v28 = [v27 countByEnumeratingWithState:&v55 objects:v63 count:16];
  if (v28)
  {
    v29 = *v56;
    do
    {
      v30 = 0;
      do
      {
        if (*v56 != v29)
        {
          objc_enumerationMutation(v27);
        }

        v31 = *(*(&v55 + 1) + 8 * v30);
        v32 = objc_opt_class();
        v33 = [v27 objectForKeyedSubscript:v31];
        v54 = 0;
        v34 = [NSKeyedUnarchiver unarchivedObjectOfClass:v32 fromData:v33 error:&v54];
        v35 = v54;

        if (v34)
        {
          [v34 setRegistry:self];
          if (([v34 persistent] & 1) != 0 || objc_msgSend(v34, "isRegistered"))
          {
            v36 = sub_1000049CC();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
            {
              if ([v34 persistent])
              {
                v43 = @"persistent";
              }

              else
              {
                v43 = @"registered";
              }

              tokenID = [v34 tokenID];
              *buf = 138412546;
              v60 = v43;
              v61 = 2114;
              v62 = tokenID;
              _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "Read %@ token %{public}@", buf, 0x16u);
            }

            tokensByTokenID = self->_tokensByTokenID;
            tokenID2 = [v34 tokenID];
            [(NSMutableDictionary *)tokensByTokenID setObject:v34 forKeyedSubscript:tokenID2];
          }

          else
          {
            v39 = sub_1000049CC();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              tokenID3 = [v34 tokenID];
              *buf = 138543362;
              v60 = tokenID3;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Deleting keychain items from token %{public}@", buf, 0xCu);
            }

            [v34 setKeychainItems:&__NSArray0__struct];
            markModified = [v51 markModified];
            tokenID2 = [v34 tokenID];
            v42 = [v51 keychainItemsModified:tokenID2];
          }
        }

        else
        {
          tokenID2 = sub_1000049CC();
          if (os_log_type_enabled(tokenID2, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v60 = v31;
            v61 = 2114;
            v62 = v35;
            _os_log_error_impl(&_mh_execute_header, tokenID2, OS_LOG_TYPE_ERROR, "Failed to read data of token %{public}@ - skipping. Error: %{public}@", buf, 0x16u);
          }
        }

        v30 = v30 + 1;
      }

      while (v28 != v30);
      v45 = [v27 countByEnumeratingWithState:&v55 objects:v63 count:16];
      v28 = v45;
    }

    while (v45);
  }

  reloadTokenClassesFromStore = [(TKHostTokenRegistry *)self reloadTokenClassesFromStore];
  [(TKHostTokenRegistry *)self registerClassIDs:reloadTokenClassesFromStore];
  [v51 commit];
  objc_initWeak(buf, self);
  keychain = [(TKHostTokenRegistry *)self keychain];
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_1000064D0;
  v52[3] = &unk_1000389E8;
  objc_copyWeak(&v53, buf);
  [keychain accessKeychainWithBlock:v52];

  objc_destroyWeak(&v53);
  objc_destroyWeak(buf);
}

- (id)reloadTokenClassesFromStore
{
  v2 = [(TKHostTokenRegistry *)self beginTransaction:@"reloadTokenClassesFromStore"];
  v76 = 0;
  v77 = &v76;
  v78 = 0x2020000000;
  v79 = 0;
  storage = [(TKHostTokenRegistry *)self storage];
  v4 = [(TKHostTokenRegistry *)self stringForStorageKey:1];
  v5 = [storage objectForKey:v4];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v5 = &__NSDictionary0__struct;
  }

  tokenExtensions = [v2 tokenExtensions];
  v74[0] = _NSConcreteStackBlock;
  v74[1] = 3221225472;
  v74[2] = sub_100006FA4;
  v74[3] = &unk_100038A10;
  v53 = [&__NSDictionary0__struct mutableCopy];
  v75 = v53;
  [tokenExtensions enumerateKeysAndObjectsUsingBlock:v74];
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = v5;
  v52 = [obj countByEnumeratingWithState:&v70 objects:v86 count:16];
  if (v52)
  {
    v51 = *v71;
    *&v6 = 138543618;
    v49 = v6;
    do
    {
      v7 = 0;
      do
      {
        if (*v71 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v70 + 1) + 8 * v7);
        v9 = [obj objectForKeyedSubscript:{v8, v49}];
        v10 = [v53 objectForKeyedSubscript:v8];
        v11 = [v9 isEqual:v10];
        v55 = v7;

        if ((v11 & 1) == 0)
        {
          v12 = [v53 objectForKeyedSubscript:v8];
          v13 = v12 == 0;

          if (v13)
          {
            v14 = [&__NSArray0__struct mutableCopy];
            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            v15 = self->_tokensByTokenID;
            v16 = [(NSMutableDictionary *)v15 countByEnumeratingWithState:&v66 objects:v85 count:16];
            if (v16)
            {
              v17 = *v67;
              do
              {
                for (i = 0; i != v16; i = i + 1)
                {
                  if (*v67 != v17)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v19 = *(*(&v66 + 1) + 8 * i);
                  classID = [v19 classID];
                  v21 = [classID isEqualToString:v8];

                  if (v21)
                  {
                    v22 = [(NSMutableDictionary *)self->_tokensByTokenID objectForKeyedSubscript:v19];
                    [v14 addObject:v22];
                  }
                }

                v16 = [(NSMutableDictionary *)v15 countByEnumeratingWithState:&v66 objects:v85 count:16];
              }

              while (v16);
            }

            v23 = sub_1000049CC();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              v24 = [tokenExtensions objectForKeyedSubscript:v8];
              identifier = [v24 identifier];
              v26 = [v14 count];
              *buf = v49;
              v82 = identifier;
              v83 = 1024;
              v84 = v26;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Token driver %{public}@ disappeared, deleting its %d tokens", buf, 0x12u);
            }

            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            v27 = v14;
            v28 = [v27 countByEnumeratingWithState:&v62 objects:v80 count:16];
            if (v28)
            {
              v29 = *v63;
              do
              {
                for (j = 0; j != v28; j = j + 1)
                {
                  if (*v63 != v29)
                  {
                    objc_enumerationMutation(v27);
                  }

                  v31 = *(*(&v62 + 1) + 8 * j);
                  [v31 setKeychainItems:&__NSArray0__struct];
                  tokensByTokenID = self->_tokensByTokenID;
                  tokenID = [v31 tokenID];
                  [(NSMutableDictionary *)tokensByTokenID removeObjectForKey:tokenID];

                  markModified = [v2 markModified];
                  tokenID2 = [v31 tokenID];
                  v36 = [v2 keychainItemsModified:tokenID2];
                }

                v28 = [v27 countByEnumeratingWithState:&v62 objects:v80 count:16];
              }

              while (v28);
            }
          }

          *(v77 + 24) = 1;
        }

        v7 = v55 + 1;
      }

      while ((v55 + 1) != v52);
      v52 = [obj countByEnumeratingWithState:&v70 objects:v86 count:16];
    }

    while (v52);
  }

  v37 = [&__NSDictionary0__struct mutableCopy];
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_100007038;
  v57[3] = &unk_100038A38;
  v38 = obj;
  v58 = v38;
  v39 = v37;
  v59 = v39;
  v40 = tokenExtensions;
  v60 = v40;
  v61 = &v76;
  [v53 enumerateKeysAndObjectsUsingBlock:v57];
  if (*(v77 + 24) == 1)
  {
    v41 = sub_1000049CC();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      sub_10001E404([v53 count], buf, v41);
    }

    allKeys = [v53 allKeys];
    tokenClassIDs = self->_tokenClassIDs;
    self->_tokenClassIDs = allKeys;

    storage2 = [(TKHostTokenRegistry *)self storage];
    v45 = [(TKHostTokenRegistry *)self stringForStorageKey:1];
    [storage2 setObject:v53 forKey:v45];
  }

  [v2 commit];
  v46 = v60;
  v47 = v39;

  _Block_object_dispose(&v76, 8);

  return v47;
}

- (void)registerClassIDs:(id)ds
{
  dsCopy = ds;
  v25 = [(TKHostTokenRegistry *)self beginTransaction:@"registerClassIDs"];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [dsCopy allKeys];
  v5 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v5)
  {
    v7 = *v29;
    *&v6 = 138543618;
    v24 = v6;
    do
    {
      v8 = 0;
      do
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v28 + 1) + 8 * v8);
        driverCache = [(TKHostTokenRegistry *)self driverCache];
        v11 = [dsCopy objectForKeyedSubscript:v9];
        v12 = [driverCache hostTokenDriverFromExtension:v11];

        v27 = 0;
        LODWORD(driverCache) = [v12 configureWithError:&v27];
        v13 = v27;
        if (driverCache)
        {
          v14 = sub_1000049CC();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            extension = [v12 extension];
            identifier = [extension identifier];
            *buf = 138543362;
            v33 = identifier;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "New token driver %{public}@ successfully configured", buf, 0xCu);
          }
        }

        else
        {
          selfCopy = self;
          objc_sync_enter(selfCopy);
          v18 = [(NSArray *)self->_tokenClassIDs mutableCopy];
          [v18 removeObject:v9];
          v19 = [v18 copy];
          tokenClassIDs = self->_tokenClassIDs;
          self->_tokenClassIDs = v19;

          markModified = [v25 markModified];
          objc_sync_exit(selfCopy);

          v14 = sub_1000049CC();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            extension2 = [v12 extension];
            identifier2 = [extension2 identifier];
            *buf = v24;
            v33 = identifier2;
            v34 = 2114;
            v35 = v13;
            _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Configuration of token driver %{public}@ failed: %{public}@", buf, 0x16u);
          }
        }

        v8 = v8 + 1;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v5);
  }

  [v25 commit];
}

- (id)stringForStorageKey:(int64_t)key
{
  v3 = @"tokens";
  if (key == 1)
  {
    v3 = @"classes";
  }

  if (key == 2)
  {
    return @"registeredTokens";
  }

  else
  {
    return v3;
  }
}

- (TKHostTokenRegistryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end