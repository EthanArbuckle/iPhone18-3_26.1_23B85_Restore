@interface TKHostTokenRegistryConfigurationProxy
- (BOOL)_areKeychainItemsDifferent:(id)a3 comparedTo:(id)a4;
- (BOOL)haveAccessForClassID:(id)a3 verbose:(BOOL)a4;
- (TKHostTokenRegistry)registry;
- (TKHostTokenRegistryConfigurationProxy)initWithRegistry:(id)a3 callerBundleID:(id)a4 allowedForBundles:(id)a5;
- (id)ensureTokenWithTokenID:(id)a3;
- (void)_updateRegisteredToken:(id)a3 withNewKeychainItems:(id)a4 transaction:(id)a5 tokenID:(id)a6;
- (void)beginTransactionWithReply:(id)a3;
- (void)endTransactionWithReply:(id)a3;
- (void)getClassIDsWithReply:(id)a3;
- (void)getKeychainItemsForTokenID:(id)a3 reply:(id)a4;
- (void)getTokenIDsForClassID:(id)a3 reply:(id)a4;
- (void)readDataForTokenID:(id)a3 reply:(id)a4;
- (void)removeTokenID:(id)a3 reply:(id)a4;
- (void)updateKeychainItemsForTokenID:(id)a3 items:(id)a4 reply:(id)a5;
- (void)updateTokenID:(id)a3 data:(id)a4 reply:(id)a5;
@end

@implementation TKHostTokenRegistryConfigurationProxy

- (TKHostTokenRegistryConfigurationProxy)initWithRegistry:(id)a3 callerBundleID:(id)a4 allowedForBundles:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = TKHostTokenRegistryConfigurationProxy;
  v11 = [(TKHostTokenRegistryConfigurationProxy *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_registry, v8);
    objc_storeStrong(&v12->_callerBundleID, a4);
    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = &__NSArray0__struct;
    }

    objc_storeStrong(&v12->_allowedForBundles, v13);
  }

  return v12;
}

- (BOOL)haveAccessForClassID:(id)a3 verbose:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v46 = self;
  WeakRetained = objc_loadWeakRetained(&self->_registry);
  v8 = [WeakRetained beginTransaction:@"haveAccessForClassID"];

  v9 = [v8 tokenExtensions];
  v10 = [v9 objectForKeyedSubscript:v6];

  [v8 commit];
  if (v10)
  {
    v11 = [v10 _plugIn];
    v12 = [v11 url];

    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      if (!-[NSObject isFileURL](v12, "isFileURL") || (-[NSObject path](v12, "path"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v20 hasPrefix:@"/System/"], v20, (v21 & 1) == 0))
      {
        v47 = sub_1000049CC();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          sub_10001E4BC();
        }

        LOBYTE(v19) = 0;
LABEL_41:

LABEL_42:
        goto LABEL_43;
      }
    }

    v45 = v4;
    v13 = [v10 _plugIn];
    v47 = [v13 identifier];

    v14 = [v10 _plugIn];
    v15 = [v14 containingUrl];
    if (v15)
    {
      v16 = [v10 _plugIn];
      v17 = [v16 containingUrl];
      v18 = [NSBundle bundleWithURL:v17];
    }

    else
    {
      v18 = 0;
    }

    v22 = [v18 bundleIdentifier];
    callerBundleID = v46->_callerBundleID;
    if (v22)
    {
      v24 = v22;
      v25 = [v18 bundleIdentifier];
      if ([(NSString *)callerBundleID hasPrefix:v25])
      {

LABEL_20:
        LODWORD(v19) = 1;
LABEL_37:
        if (v45)
        {
          v35 = sub_1000049CC();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            if (v19)
            {
              v37 = @"Allowing";
            }

            else
            {
              v37 = @"Refusing";
            }

            v38 = v12;
            v39 = v46->_callerBundleID;
            v40 = [v18 bundleIdentifier];
            allowedForBundles = v46->_allowedForBundles;
            *buf = 138544642;
            v53 = v37;
            v54 = 2114;
            v55 = v39;
            v12 = v38;
            v56 = 2114;
            v57 = v6;
            v58 = 2114;
            v59 = v47;
            v60 = 2114;
            v61 = v40;
            v42 = v40;
            v62 = 2114;
            v63 = allowedForBundles;
            _os_log_debug_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "%{public}@ caller %{public}@, to access token classID=%{public}@ identifier=%{public}@ containing=%{public}@ entitled for=%{public}@", buf, 0x3Eu);
          }
        }

        goto LABEL_41;
      }

      v26 = [v47 hasPrefix:v46->_callerBundleID];

      if (v26)
      {
        goto LABEL_20;
      }
    }

    else if (([v47 hasPrefix:v46->_callerBundleID]& 1) != 0)
    {
      goto LABEL_20;
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v27 = v46->_allowedForBundles;
    v19 = [(NSArray *)v27 countByEnumeratingWithState:&v48 objects:v64 count:16];
    if (v19)
    {
      v43 = v12;
      v44 = v6;
      v28 = *v49;
      while (2)
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v49 != v28)
          {
            objc_enumerationMutation(v27);
          }

          v30 = *(*(&v48 + 1) + 8 * i);
          v31 = [v18 bundleIdentifier];
          if (v31)
          {
            v32 = v31;
            v33 = [v18 bundleIdentifier];
            v34 = [v30 hasPrefix:v33];

            if (v34)
            {
              goto LABEL_34;
            }
          }

          else if ([v30 isEqualToString:v47])
          {
LABEL_34:
            LODWORD(v19) = 1;
            goto LABEL_35;
          }
        }

        v19 = [(NSArray *)v27 countByEnumeratingWithState:&v48 objects:v64 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }

LABEL_35:
      v12 = v43;
      v6 = v44;
    }

    goto LABEL_37;
  }

  if (v4)
  {
    v12 = sub_1000049CC();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10001E4F8(self, v6, v12);
    }

    LOBYTE(v19) = 0;
    goto LABEL_42;
  }

  LOBYTE(v19) = 0;
LABEL_43:

  return v19;
}

- (void)getClassIDsWithReply:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_registry);
  v6 = [WeakRetained beginTransaction:@"getClassIDsWithReply"];

  v7 = [&__NSArray0__struct mutableCopy];
  v8 = objc_loadWeakRetained(&self->_registry);
  objc_sync_enter(v8);
  v9 = objc_loadWeakRetained(&self->_registry);
  v10 = [v9 reloadTokenClassesFromStore];

  objc_sync_exit(v8);
  v11 = objc_loadWeakRetained(&self->_registry);
  [v11 registerClassIDs:v10];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = [v6 tokenExtensions];
  v13 = [v12 allKeys];

  v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v14)
  {
    v15 = *v19;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v18 + 1) + 8 * i);
        if ([(TKHostTokenRegistryConfigurationProxy *)self haveAccessForClassID:v17 verbose:0])
        {
          [v7 addObject:v17];
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  [v6 commit];
  v4[2](v4, v7);
}

- (void)beginTransactionWithReply:(id)a3
{
  v4 = a3;
  v5 = [(TKHostTokenRegistryConfigurationProxy *)self registry];
  v8 = [v5 beginTransaction:@"beginTransactionWithReply"];

  v6 = [(TKHostTokenRegistryConfigurationProxy *)self registry];
  v7 = [v6 externalTransactions];
  [v7 addObject:v8];

  v4[2](v4);
}

- (void)endTransactionWithReply:(id)a3
{
  v4 = a3;
  v5 = [(TKHostTokenRegistryConfigurationProxy *)self registry];
  v6 = [v5 externalTransactions];
  v9 = [v6 lastObject];

  [v9 commit];
  v7 = [(TKHostTokenRegistryConfigurationProxy *)self registry];
  v8 = [v7 externalTransactions];
  [v8 removeLastObject];

  v4[2](v4);
}

- (void)getTokenIDsForClassID:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [&__NSArray0__struct mutableCopy];
  WeakRetained = objc_loadWeakRetained(&self->_registry);
  v20 = [WeakRetained beginTransaction:@"getTokenIDsForClassID"];

  if ([(TKHostTokenRegistryConfigurationProxy *)self ensureAccessForClassID:v6])
  {
    obj = objc_loadWeakRetained(&self->_registry);
    objc_sync_enter(obj);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = [(TKHostTokenRegistryConfigurationProxy *)self registry];
    v11 = [v10 tokens];

    v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          v16 = [v15 classID];
          v17 = [v16 isEqualToString:v6];

          if (v17)
          {
            [v8 addObject:v15];
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }

    objc_sync_exit(obj);
  }

  [v20 commit];
  v18 = [v8 copy];
  v7[2](v7, v18);
}

- (id)ensureTokenWithTokenID:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_registry);
  v6 = [WeakRetained beginTransaction:@"ensureTokenWithTokenID"];

  v7 = [(TKHostTokenRegistryConfigurationProxy *)self registry];
  v8 = [v7 tokensByTokenID];
  v9 = [v8 objectForKeyedSubscript:v4];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = [(TKHostTokenRegistryConfigurationProxy *)self registry];
    v13 = [v12 pendingCreationTokens];
    v11 = [v13 objectForKey:v4];
  }

  if (!v11)
  {
    v11 = [[TKHostToken alloc] initWithTokenID:v4 persistent:0];
    v14 = [(TKHostTokenRegistryConfigurationProxy *)self registry];
    [(TKHostToken *)v11 setRegistry:v14];

    v15 = [(TKHostTokenRegistryConfigurationProxy *)self registry];
    v16 = [v15 pendingCreationTokens];
    [v16 setObject:v11 forKeyedSubscript:v4];

    v17 = sub_1000049CC();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_10001E584();
    }
  }

  [v6 commit];

  return v11;
}

- (void)getKeychainItemsForTokenID:(id)a3 reply:(id)a4
{
  v15 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_registry);
  v8 = [WeakRetained beginTransaction:@"getKeychainItemsForTokenID"];

  v9 = [v15 classID];
  v10 = [(TKHostTokenRegistryConfigurationProxy *)self ensureAccessForClassID:v9];

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_registry);
    objc_sync_enter(v11);
    v12 = [(TKHostTokenRegistryConfigurationProxy *)self ensureTokenWithTokenID:v15];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 keychainItems];
    }

    else
    {
      v14 = &__NSArray0__struct;
    }

    objc_sync_exit(v11);
  }

  else
  {
    v14 = &__NSArray0__struct;
  }

  [v8 commit];
  v6[2](v6, v14);
}

- (void)updateKeychainItemsForTokenID:(id)a3 items:(id)a4 reply:(id)a5
{
  v25 = a3;
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_registry);
  v11 = [WeakRetained beginTransaction:@"updateKeychainItemsForTokenID"];

  v12 = [v25 classID];
  v13 = [(TKHostTokenRegistryConfigurationProxy *)self ensureAccessForClassID:v12];

  if (v13)
  {
    v14 = objc_loadWeakRetained(&self->_registry);
    objc_sync_enter(v14);
    v15 = [(TKHostTokenRegistryConfigurationProxy *)self ensureTokenWithTokenID:v25];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 persistent];
      v18 = [v16 keychainItems];
      v19 = &MKBGetDeviceLockState_ptr;
      if (v18)
      {
        v20 = [v16 keychainItems];
        v21 = [NSKeyedArchiver archivedDataWithRootObject:v20 requiringSecureCoding:0 error:0];

        v19 = &MKBGetDeviceLockState_ptr;
      }

      else
      {
        v21 = 0;
      }

      if (v8)
      {
        v22 = [v19[141] archivedDataWithRootObject:v8 requiringSecureCoding:0 error:0];
      }

      else
      {
        v22 = 0;
      }

      if (([v21 isEqualToData:v22] & 1) == 0)
      {
        if ([v16 isRegistered])
        {
          [(TKHostTokenRegistryConfigurationProxy *)self _updateRegisteredToken:v16 withNewKeychainItems:v8 transaction:v11 tokenID:v25];
        }

        else
        {
          [v16 setKeychainItems:v8];
          v23 = [v11 keychainItemsModified:v25];
        }
      }
    }

    else
    {
      v17 = 1;
    }

    objc_sync_exit(v14);
  }

  else
  {
    v17 = 1;
  }

  [v11 commit];
  v24 = [(TKHostTokenRegistryConfigurationProxy *)self registry];
  [v24 notifyTokenReinsertion:v25 persistent:v17];

  v9[2](v9);
}

- (void)_updateRegisteredToken:(id)a3 withNewKeychainItems:(id)a4 transaction:(id)a5 tokenID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (![v11 count] || (v14 = objc_msgSend(v11, "count"), objc_msgSend(v10, "keychainItems"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "count"), v15, v14 < v16))
  {
    v17 = sub_1000049CC();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_10001E6B8();
    }

LABEL_5:

    goto LABEL_6;
  }

  v18 = [v10 keychainItems];
  v19 = [(TKHostTokenRegistryConfigurationProxy *)self _areKeychainItemsDifferent:v18 comparedTo:v11];

  v17 = sub_1000049CC();
  v20 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
  if ((v19 & 1) == 0)
  {
    if (v20)
    {
      sub_10001E5F4();
    }

    goto LABEL_5;
  }

  if (v20)
  {
    sub_10001E630(v11, v17);
  }

  [v10 setKeychainItems:v11];
  v21 = [v12 keychainItemsModified:v13];
LABEL_6:
}

- (BOOL)_areKeychainItemsDifferent:(id)a3 comparedTo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 count];
  if (v7 <= [v5 count])
  {
    v9 = [v6 mutableCopy];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v18 = v5;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          v19[0] = _NSConcreteStackBlock;
          v19[1] = 3221225472;
          v19[2] = sub_100008A80;
          v19[3] = &unk_100038A60;
          v19[4] = v15;
          v16 = [v9 indexOfObjectPassingTest:{v19, v18}];
          if (v16 == 0x7FFFFFFFFFFFFFFFLL)
          {

            v8 = 1;
            goto LABEL_13;
          }

          [v9 removeObjectAtIndex:v16];
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v8 = [v9 count] != 0;
LABEL_13:

    v5 = v18;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)readDataForTokenID:(id)a3 reply:(id)a4
{
  v15 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_registry);
  v8 = [WeakRetained beginTransaction:@"readDataForTokenID"];

  v9 = [v15 classID];
  v10 = [(TKHostTokenRegistryConfigurationProxy *)self ensureAccessForClassID:v9];

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_registry);
    objc_sync_enter(v11);
    v12 = [(TKHostTokenRegistryConfigurationProxy *)self ensureTokenWithTokenID:v15];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 configurationData];
    }

    else
    {
      v14 = 0;
    }

    objc_sync_exit(v11);
  }

  else
  {
    v14 = 0;
  }

  [v8 commit];
  v6[2](v6, v14);
}

- (void)updateTokenID:(id)a3 data:(id)a4 reply:(id)a5
{
  v20 = a3;
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_registry);
  v11 = [WeakRetained beginTransaction:@"updateTokenID"];

  v12 = [v20 classID];
  v13 = [(TKHostTokenRegistryConfigurationProxy *)self ensureAccessForClassID:v12];

  if (v13)
  {
    v14 = objc_loadWeakRetained(&self->_registry);
    objc_sync_enter(v14);
    v15 = [(TKHostTokenRegistryConfigurationProxy *)self ensureTokenWithTokenID:v20];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 configurationData];
      v18 = [v17 isEqualToData:v8];

      if ((v18 & 1) == 0)
      {
        [v16 setConfigurationData:v8];
        v19 = [v11 markModified];
      }
    }

    objc_sync_exit(v14);
  }

  [v11 commit];
  v9[2](v9);
}

- (void)removeTokenID:(id)a3 reply:(id)a4
{
  v12 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_registry);
  v8 = [WeakRetained beginTransaction:@"removeTokenID"];

  v9 = [v12 classID];
  v10 = [(TKHostTokenRegistryConfigurationProxy *)self ensureAccessForClassID:v9];

  if (v10)
  {
    v11 = [(TKHostTokenRegistryConfigurationProxy *)self registry];
    [v11 removeTokenWithTokenID:v12];
  }

  [v8 commit];
  v6[2](v6);
}

- (TKHostTokenRegistry)registry
{
  WeakRetained = objc_loadWeakRetained(&self->_registry);

  return WeakRetained;
}

@end