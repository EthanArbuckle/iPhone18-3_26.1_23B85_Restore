@interface TKHostTokenDriverCache
- (NSDictionary)extensions;
- (TKHostTokenDriverCache)init;
- (TKHostTokenRegistry)registry;
- (TKSmartCardTokenRegistrationRegistry)smartCardTokenRegistrationRegistry;
- (id)beginMatchingTokenExtensionsWithAttributes:(id)a3;
- (id)hostTokenDriverFromExtension:(id)a3;
- (id)hostTokenDriverWithClassID:(id)a3 error:(id *)a4;
- (void)dealloc;
- (void)invalidate;
- (void)preloadTokens;
- (void)removeDriverWithClassID:(id)a3;
@end

@implementation TKHostTokenDriverCache

- (TKHostTokenDriverCache)init
{
  v15.receiver = self;
  v15.super_class = TKHostTokenDriverCache;
  v2 = [(TKHostTokenDriverCache *)&v15 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    drivers = v2->_drivers;
    v2->_drivers = v3;

    v2->_idleTimeout = 5.0;
    v2->_extensionClass = objc_opt_class();
    if (+[TKVirtualTokenExtension isAvailable])
    {
      v2->_extensionClass = objc_opt_class();
    }

    v5 = TKSmartCardPreferencesDomain;
    v6 = CFPreferencesCopyValue(TKSmartCardPreferencesDisabledTokensKey, TKSmartCardPreferencesDomain, kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = &__NSArray0__struct;
    }

    objc_storeStrong(&v2->_disabledExtensionIDs, v7);
    if ([(NSArray *)v2->_disabledExtensionIDs count])
    {
      v8 = sub_100018CF8();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        disabledExtensionIDs = v2->_disabledExtensionIDs;
        *buf = 138543362;
        v17 = disabledExtensionIDs;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Following token extensions disabled by configuration: %{public}@", buf, 0xCu);
      }
    }

    v10 = CFPreferencesCopyValue(TKSmartCardPreferencesPreloadedTokensKey, v5, kCFPreferencesAnyUser, kCFPreferencesCurrentHost);

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = &__NSArray0__struct;
    }

    objc_storeStrong(&v2->_toBePreloadedExtensionIDs, v11);
    if ([(NSArray *)v2->_toBePreloadedExtensionIDs count])
    {
      v12 = sub_100018CF8();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        toBePreloadedExtensionIDs = v2->_toBePreloadedExtensionIDs;
        *buf = 138543362;
        v17 = toBePreloadedExtensionIDs;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Following token extensions will be preloaded by configuration: %{public}@", buf, 0xCu);
      }
    }
  }

  return v2;
}

- (void)dealloc
{
  if (self->_matchingContext)
  {
    [(objc_class *)self->_extensionClass endMatchingExtensions:?];
    matchingContext = self->_matchingContext;
    self->_matchingContext = 0;
  }

  v4.receiver = self;
  v4.super_class = TKHostTokenDriverCache;
  [(TKHostTokenDriverCache *)&v4 dealloc];
}

- (void)removeDriverWithClassID:(id)a3
{
  v4 = a3;
  v5 = sub_100018CF8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100021594();
  }

  v6 = self;
  objc_sync_enter(v6);
  v7 = [(NSMutableDictionary *)v6->_drivers objectForKey:v4];
  [(NSMutableDictionary *)v6->_drivers removeObjectForKey:v4];
  objc_sync_exit(v6);

  [v7 invalidate];
}

- (id)beginMatchingTokenExtensionsWithAttributes:(id)a3
{
  v4 = a3;
  v5 = [v4 mutableCopy];
  [v5 setObject:@"com.apple.ctk-tokens" forKeyedSubscript:NSExtensionPointName];
  extensionClass = self->_extensionClass;
  v17 = 0;
  v7 = [(objc_class *)extensionClass extensionsWithMatchingAttributes:v5 error:&v17];
  v8 = v17;
  if (!v7)
  {
    v9 = sub_100018CF8();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000215FC();
    }
  }

  v10 = self;
  objc_sync_enter(v10);
  objc_storeStrong(&v10->_matchingExtensions, v7);
  objc_sync_exit(v10);

  objc_initWeak(&location, v10);
  v11 = self->_extensionClass;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001AF04;
  v14[3] = &unk_1000391E8;
  objc_copyWeak(&v15, &location);
  v12 = [(objc_class *)v11 beginMatchingExtensionsWithAttributes:v5 completion:v14];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v12;
}

- (NSDictionary)extensions
{
  v2 = self;
  objc_sync_enter(v2);
  v24 = v2;
  if (!v2->_matchingContext)
  {
    v3 = [(TKHostTokenDriverCache *)v2 beginMatchingTokenExtensionsWithAttributes:&__NSDictionary0__struct];
    matchingContext = v2->_matchingContext;
    v2->_matchingContext = v3;
  }

  if (v2->_matchingExtensions)
  {
    v22 = [&__NSDictionary0__struct mutableCopy];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v2->_matchingExtensions;
    v5 = [(NSArray *)obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v5)
    {
      v26 = *v33;
      v25 = TKTokenClassDriverClassIDKey;
      do
      {
        v27 = v5;
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v33 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v32 + 1) + 8 * i);
          v8 = [v7 attributes];
          v9 = [v8 objectForKeyedSubscript:v25];

          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v10 = +[TKClientToken builtinTokenIDs];
          v11 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v11)
          {
            v12 = *v29;
            while (2)
            {
              for (j = 0; j != v11; j = j + 1)
              {
                if (*v29 != v12)
                {
                  objc_enumerationMutation(v10);
                }

                v14 = [[TKTokenID alloc] initWithTokenID:*(*(&v28 + 1) + 8 * j)];
                v15 = [v14 classID];

                LOBYTE(v14) = [v15 isEqualToString:v9];
                if (v14)
                {

                  goto LABEL_22;
                }
              }

              v11 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
              if (v11)
              {
                continue;
              }

              break;
            }
          }

          disabledExtensionIDs = v24->_disabledExtensionIDs;
          v17 = [v7 identifier];
          LOBYTE(disabledExtensionIDs) = [(NSArray *)disabledExtensionIDs containsObject:v17];

          if ((disabledExtensionIDs & 1) == 0)
          {
            if (-[TKHostTokenDriverCache allowTestOnlyExtensions](v24, "allowTestOnlyExtensions") || ([v7 attributes], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "objectForKeyedSubscript:", @"com.apple.ctk.testonly"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "BOOLValue"), v19, v18, (v20 & 1) == 0))
            {
              [v22 setObject:v7 forKeyedSubscript:v9];
            }
          }

LABEL_22:
        }

        v5 = [(NSArray *)obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v22 = &__NSDictionary0__struct;
  }

  objc_sync_exit(v24);

  return v22;
}

- (void)preloadTokens
{
  if ([(NSArray *)self->_toBePreloadedExtensionIDs count])
  {
    v3 = self;
    objc_sync_enter(v3);
    p_isa = &v3->super.isa;
    v4 = [(TKHostTokenDriverCache *)v3 extensions];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = [v4 allKeys];
    v6 = [v5 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (!v6)
    {
      goto LABEL_18;
    }

    v8 = *v25;
    *&v7 = 138543618;
    v20 = v7;
    obj = v5;
    while (1)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = [v4 objectForKeyedSubscript:{v10, v20}];
        toBePreloadedExtensionIDs = self->_toBePreloadedExtensionIDs;
        v13 = [v11 identifier];
        if ([(NSArray *)toBePreloadedExtensionIDs containsObject:v13])
        {
          v14 = [p_isa[11] objectForKey:v10];
          v15 = v14 == 0;

          if (!v15)
          {
            goto LABEL_16;
          }

          v16 = sub_100018CF8();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            [v11 identifier];
            objc_claimAutoreleasedReturnValue();
            sub_100021708();
          }

          v17 = [p_isa hostTokenDriverFromExtension:v11];
          v23 = 0;
          v18 = [v17 contextWithError:&v23];
          v13 = v23;
          if (!v18)
          {
            v18 = sub_100018CF8();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v19 = [v11 identifier];
              *buf = v20;
              v29 = v19;
              v30 = 2114;
              v31 = v13;
              _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "failed to preload token extension: '%{public}@', error: %{public}@", buf, 0x16u);
            }
          }
        }

LABEL_16:
      }

      v5 = obj;
      v6 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (!v6)
      {
LABEL_18:

        objc_sync_exit(p_isa);
        return;
      }
    }
  }
}

- (id)hostTokenDriverFromExtension:(id)a3
{
  v5 = a3;
  v6 = [v5 attributes];
  v7 = TKTokenClassDriverClassIDKey;
  v8 = [v6 objectForKeyedSubscript:TKTokenClassDriverClassIDKey];

  if (!v8)
  {
    sub_100021754(v5, a2, self, v7);
  }

  v9 = self;
  objc_sync_enter(v9);
  v10 = [(NSMutableDictionary *)v9->_drivers objectForKeyedSubscript:v8];
  if (!v10)
  {
    v10 = [[TKHostTokenDriver alloc] initWithExtension:v5 cache:v9];
    [(NSMutableDictionary *)v9->_drivers setObject:v10 forKeyedSubscript:v8];
    v11 = sub_100018CF8();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_1000217F4();
    }
  }

  objc_sync_exit(v9);

  return v10;
}

- (id)hostTokenDriverWithClassID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(TKHostTokenDriverCache *)self extensions];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (v8)
  {
    v9 = [(TKHostTokenDriverCache *)self hostTokenDriverFromExtension:v8];
  }

  else
  {
    v10 = sub_100018CF8();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "requested driver for token class '%{public}@' not found in the system", &v12, 0xCu);
    }

    if (a4)
    {
      [NSError errorWithDomain:TKErrorDomain code:-7 userInfo:0];
      *a4 = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)invalidate
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_drivers allValues];
  [(NSMutableDictionary *)v2->_drivers removeAllObjects];
  objc_sync_exit(v2);

  v4 = sub_100018CF8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10002185C(v3, v4);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * v8) invalidate];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (TKHostTokenRegistry)registry
{
  WeakRetained = objc_loadWeakRetained(&self->_registry);

  return WeakRetained;
}

- (TKSmartCardTokenRegistrationRegistry)smartCardTokenRegistrationRegistry
{
  WeakRetained = objc_loadWeakRetained(&self->_smartCardTokenRegistrationRegistry);

  return WeakRetained;
}

@end