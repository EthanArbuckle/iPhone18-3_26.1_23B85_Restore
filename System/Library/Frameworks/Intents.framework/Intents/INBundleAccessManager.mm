@interface INBundleAccessManager
+ (id)sharedManager;
- (INBundleAccessManager)init;
- (id)_grantForBundleIdentifiers:(id)a3 error:(id *)a4;
- (id)grantForBundleIdentifier:(id)a3 error:(id *)a4;
- (id)grantForBundleIdentifiers:(id)a3 error:(id *)a4;
@end

@implementation INBundleAccessManager

- (id)_grantForBundleIdentifiers:(id)a3 error:(id *)a4
{
  v32 = a4;
  v52 = *MEMORY[0x1E69E9840];
  v5 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  ++self->_stats._requestCount;
  v6 = objc_opt_new();
  v34 = objc_opt_new();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v7 = v5;
  v38 = [v7 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v38)
  {
    v8 = *v44;
    v35 = v7;
    v37 = *v44;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v44 != v8)
        {
          objc_enumerationMutation(v7);
        }

        v10 = *(*(&v43 + 1) + 8 * i);
        v11 = [(INBundleAccessManager *)self securityScopedURLs];
        v12 = [v11 objectForKey:v10];

        if (v12)
        {
          v13 = INSiriLogContextIntents;
          if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v48 = "[INBundleAccessManager _grantForBundleIdentifiers:error:]";
            v49 = 2112;
            v50 = v10;
            _os_log_impl(&dword_18E991000, v13, OS_LOG_TYPE_INFO, "%s Using existing security-scoped URL for accessing bundle: %@", buf, 0x16u);
          }

          [v6 setObject:v12 forKey:v10];
          ++self->_stats._securityScopeCacheHitCount;
        }

        else
        {
          v14 = [(INBundleAccessManager *)self accessibleBundleIDs];
          v15 = [v14 containsObject:v10];

          if (v15)
          {
            ++self->_stats._accessibleCacheHitCount;
          }

          else
          {
            ++self->_stats._cacheMissCount;
            v16 = [MEMORY[0x1E6963620] bundleRecordWithBundleIdentifier:v10 allowPlaceholder:0 error:0];
            v17 = [v16 URL];
            if (!v17)
            {
              goto LABEL_14;
            }

            v18 = v17;
            v19 = [MEMORY[0x1E696AC08] defaultManager];
            v20 = [v16 URL];
            [v20 path];
            v22 = v21 = v6;
            v36 = [v19 isReadableFileAtPath:v22];

            v6 = v21;
            v7 = v35;

            if ((v36 & 1) == 0)
            {
              [v34 addObject:v10];
            }

            else
            {
LABEL_14:
              v23 = [(INBundleAccessManager *)self accessibleBundleIDs];
              [v23 addObject:v10];
            }
          }

          v8 = v37;
        }
      }

      v38 = [v7 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v38);
  }

  if (![v34 count])
  {
    goto LABEL_25;
  }

  v24 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v48 = "[INBundleAccessManager _grantForBundleIdentifiers:error:]";
    v49 = 2112;
    v50 = v34;
    _os_log_impl(&dword_18E991000, v24, OS_LOG_TYPE_INFO, "%s Requesting access to bundle identifiers from helper. %@", buf, 0x16u);
  }

  ++self->_stats._imageServiceLoadCount;
  v25 = +[INImageServiceConnection sharedConnection];
  v42 = 0;
  v26 = [v25 securityScopedURLsForBundleIdentifiers:v34 error:&v42];
  v27 = v42;

  if (v6)
  {
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __58__INBundleAccessManager__grantForBundleIdentifiers_error___block_invoke;
    v39[3] = &unk_1E727F298;
    v40 = v6;
    v41 = self;
    [v26 enumerateKeysAndObjectsUsingBlock:v39];

LABEL_25:
    v28 = [[INBundleAccessGrant alloc] initWithSecurityScopedURLs:v6];
    goto LABEL_29;
  }

  if (v33)
  {
    v29 = v27;
    *v33 = v27;
  }

  v28 = 0;
LABEL_29:

  v30 = *MEMORY[0x1E69E9840];

  return v28;
}

void __58__INBundleAccessManager__grantForBundleIdentifiers_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = [[INSecurityScopedURL alloc] initWithURL:v5];

  [*(a1 + 32) setObject:v8 forKey:v6];
  v7 = [*(a1 + 40) securityScopedURLs];
  [v7 setObject:v8 forKey:v6];
}

- (id)grantForBundleIdentifiers:(id)a3 error:(id *)a4
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(INBundleAccessManager *)self _grantForBundleIdentifiers:v6 error:a4];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (id)grantForBundleIdentifier:(id)a3 error:(id *)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  v8 = [(INBundleAccessManager *)self _grantForBundleIdentifiers:v7 error:a4];

  os_unfair_lock_unlock(&self->_lock);
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (INBundleAccessManager)init
{
  v7.receiver = self;
  v7.super_class = INBundleAccessManager;
  v2 = [(INBundleAccessManager *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    securityScopedURLs = v2->_securityScopedURLs;
    v2->_securityScopedURLs = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
    v5 = v2;
  }

  return v2;
}

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, &__block_literal_global_17680);
  }

  v3 = sharedManager_sharedInstance;

  return v3;
}

uint64_t __38__INBundleAccessManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(INBundleAccessManager);
  v1 = sharedManager_sharedInstance;
  sharedManager_sharedInstance = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end