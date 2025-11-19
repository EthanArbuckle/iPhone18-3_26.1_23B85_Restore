@interface AMSMediaTokenServiceStore
+ (BOOL)_hasAppleGroupEnabled;
- (AMSMediaTokenServiceStore)initWithClientIdentifier:(id)a3 keychainAccessGroup:(id)a4 patBasedToken:(BOOL)a5;
- (AMSMediaTokenServiceStore)initWithClientIdentifier:(id)a3 keychainAccessGroup:(id)a4 usingAccessControlIdentifier:(BOOL)a5 patBasedToken:(BOOL)a6;
- (AMSMediaTokenServiceStore)initWithClientIdentifier:(id)a3 keychainStore:(id)a4 patBasedToken:(BOOL)a5;
- (id)_mediaTokenChangedNotificationName;
- (id)_mediaTokenFromUserDefaults;
- (id)retrieveToken;
- (void)_deleteMediaTokenFromUserDefaultsIfPresent;
- (void)_mediaTokenChanged:(id)a3;
- (void)_setupKeychainNotifications;
- (void)_teardownKeychainNotifications;
- (void)dealloc;
- (void)deleteToken;
- (void)setKeychainAccessGroup:(id)a3;
- (void)storeToken:(id)a3;
@end

@implementation AMSMediaTokenServiceStore

+ (BOOL)_hasAppleGroupEnabled
{
  if (qword_1ED6E2E08 != -1)
  {
    dispatch_once(&qword_1ED6E2E08, &__block_literal_global_85);
  }

  return _MergedGlobals_127;
}

- (void)_setupKeychainNotifications
{
  v3 = [(AMSMediaTokenServiceStore *)self _mediaTokenChangedNotificationName];
  if (v3)
  {
    v5 = v3;
    v4 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v4 addObserver:self selector:sel__mediaTokenChanged_ name:v5 object:0 suspensionBehavior:2];

    v3 = v5;
  }
}

- (id)_mediaTokenChangedNotificationName
{
  v3 = [(AMSMediaTokenServiceStore *)self _keychainAccessGroup];
  if (v3)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [(AMSMediaTokenServiceStore *)self clientIdentifier];
    v6 = [v4 stringWithFormat:@"com.apple.AppleMediaServices.mediaTokenChanged.%@.%@", v3, v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __50__AMSMediaTokenServiceStore__hasAppleGroupEnabled__block_invoke()
{
  v0 = [AMSProcessInfo valueForEntitlement:@"keychain-access-groups"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v1 = v0;
  }

  else
  {
    v1 = 0;
  }

  _MergedGlobals_127 = [v1 containsObject:@"apple"];
}

- (id)retrieveToken
{
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  v3 = self->_memoryMediaToken;
  if (!v3)
  {
    v3 = [(AMSMediaTokenServiceKeychainStoreProtocol *)self->_keychainStore retrieveToken];
    if (!v3)
    {
      if (self->_patBasedToken)
      {
        v3 = 0;
      }

      else
      {
        v3 = [(AMSMediaTokenServiceStore *)self _mediaTokenFromUserDefaults];
        if (v3)
        {
          [(AMSMediaTokenServiceKeychainStoreProtocol *)self->_keychainStore storeToken:v3];
        }
      }
    }

    [(AMSMediaTokenServiceStore *)self _deleteMediaTokenFromUserDefaultsIfPresent];
    objc_storeStrong(&self->_memoryMediaToken, v3);
  }

  os_unfair_lock_unlock(&self->_accessLock);

  return v3;
}

- (void)_deleteMediaTokenFromUserDefaultsIfPresent
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = CFPreferencesCopyAppValue(@"AMSMediaTokens", @"com.apple.AppleMediaServices");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [(AMSMediaTokenServiceStore *)self clientIdentifier];
    v6 = [v4 objectForKeyedSubscript:v5];

    if (v6)
    {
      v7 = +[AMSLogConfig sharedMediaConfig];
      if (!v7)
      {
        v7 = +[AMSLogConfig sharedConfig];
      }

      v8 = [v7 OSLogObject];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = v9;
        v11 = [(AMSMediaTokenServiceStore *)self clientIdentifier];
        v15 = 138543618;
        v16 = v9;
        v17 = 2114;
        v18 = v11;
        _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Removing previously stored media token from user defaults.", &v15, 0x16u);
      }

      v12 = [v4 mutableCopy];
      v13 = [(AMSMediaTokenServiceStore *)self clientIdentifier];
      [v12 setObject:0 forKeyedSubscript:v13];

      if ([v12 count])
      {
        v14 = v12;
      }

      else
      {
        v14 = 0;
      }

      CFPreferencesSetAppValue(@"AMSMediaTokens", v14, @"com.apple.AppleMediaServices");
      CFPreferencesAppSynchronize(@"com.apple.AppleMediaServices");
    }
  }
}

- (AMSMediaTokenServiceStore)initWithClientIdentifier:(id)a3 keychainAccessGroup:(id)a4 patBasedToken:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = AMSMediaTokenServiceStoreEffectiveKeychainAccessGroup(a4);
  v10 = [[AMSMediaTokenServiceKeychainStore alloc] initWithClientIdentifier:v8 keychainAccessGroup:v9];
  v11 = [(AMSMediaTokenServiceStore *)self initWithClientIdentifier:v8 keychainStore:v10 patBasedToken:v5];

  return v11;
}

- (AMSMediaTokenServiceStore)initWithClientIdentifier:(id)a3 keychainStore:(id)a4 patBasedToken:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v20.receiver = self;
  v20.super_class = AMSMediaTokenServiceStore;
  v10 = [(AMSMediaTokenServiceStore *)&v20 init];
  v11 = v10;
  if (v10)
  {
    v10->_accessLock._os_unfair_lock_opaque = 0;
    v12 = [v8 copy];
    clientIdentifier = v11->_clientIdentifier;
    v11->_clientIdentifier = v12;

    v14 = [v9 keychainAccessGroup];
    keychainAccessGroup = v11->_keychainAccessGroup;
    v11->_keychainAccessGroup = v14;

    objc_storeStrong(&v11->_keychainStore, a4);
    v11->_patBasedToken = a5;
    v16 = objc_opt_new();
    v17 = [v16 UUIDString];
    notificationObject = v11->_notificationObject;
    v11->_notificationObject = v17;

    [(AMSMediaTokenServiceStore *)v11 _setupKeychainNotifications];
  }

  return v11;
}

- (AMSMediaTokenServiceStore)initWithClientIdentifier:(id)a3 keychainAccessGroup:(id)a4 usingAccessControlIdentifier:(BOOL)a5 patBasedToken:(BOOL)a6
{
  result = [(AMSMediaTokenServiceStore *)self initWithClientIdentifier:a3 keychainAccessGroup:a4 patBasedToken:a6];
  if (result)
  {
    result->_usingAccessControlIdentifier = a5;
  }

  return result;
}

- (void)setKeychainAccessGroup:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock_with_options();
  v5 = [(AMSMediaTokenServiceStore *)self _keychainAccessGroup];
  [(AMSMediaTokenServiceStore *)self _teardownKeychainNotifications];
  v6 = [v4 copy];

  keychainAccessGroup = self->_keychainAccessGroup;
  self->_keychainAccessGroup = v6;

  v8 = [(AMSMediaTokenServiceStore *)self _keychainAccessGroup];
  [(AMSMediaTokenServiceKeychainStoreProtocol *)self->_keychainStore setKeychainAccessGroup:v8];
  memoryMediaToken = self->_memoryMediaToken;
  self->_memoryMediaToken = 0;

  [(AMSMediaTokenServiceStore *)self _setupKeychainNotifications];
  os_unfair_lock_unlock(&self->_accessLock);
  v10 = +[AMSLogConfig sharedMediaConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  v11 = [v10 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = v12;
    v14 = [(AMSMediaTokenServiceStore *)self clientIdentifier];
    v15 = 138544130;
    v16 = v12;
    v17 = 2114;
    v18 = v14;
    v19 = 2112;
    v20 = v5;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Changed keychain access group from %@ to %@.", &v15, 0x2Au);
  }
}

- (void)storeToken:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  objc_storeStrong(&self->_memoryMediaToken, a3);
  if (([(AMSMediaTokenServiceKeychainStoreProtocol *)self->_keychainStore storeToken:v5]& 1) != 0)
  {
    if (!self->_patBasedToken)
    {
      [(AMSMediaTokenServiceStore *)self _deleteMediaTokenFromUserDefaultsIfPresent];
    }

    v6 = [(AMSMediaTokenServiceStore *)self _mediaTokenChangedNotificationName];
    os_unfair_lock_unlock(&self->_accessLock);
    if (v6)
    {
      v7 = +[AMSLogConfig sharedMediaConfig];
      if (!v7)
      {
        v7 = +[AMSLogConfig sharedConfig];
      }

      v8 = [v7 OSLogObject];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = v9;
        v11 = [(AMSMediaTokenServiceStore *)self clientIdentifier];
        v13 = 138543618;
        v14 = v9;
        v15 = 2114;
        v16 = v11;
        _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Posting media token changed notification.", &v13, 0x16u);
      }

      v12 = [MEMORY[0x1E696ABB0] defaultCenter];
      [v12 postNotificationName:v6 object:self->_notificationObject];
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_accessLock);
  }
}

- (void)deleteToken
{
  v16 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  memoryMediaToken = self->_memoryMediaToken;
  self->_memoryMediaToken = 0;

  v4 = [(AMSMediaTokenServiceKeychainStoreProtocol *)self->_keychainStore deleteToken];
  if (!self->_patBasedToken)
  {
    [(AMSMediaTokenServiceStore *)self _deleteMediaTokenFromUserDefaultsIfPresent];
  }

  if (v4)
  {
    v5 = [(AMSMediaTokenServiceStore *)self _mediaTokenChangedNotificationName];
    os_unfair_lock_unlock(&self->_accessLock);
    if (v5)
    {
      v6 = +[AMSLogConfig sharedMediaConfig];
      if (!v6)
      {
        v6 = +[AMSLogConfig sharedConfig];
      }

      v7 = [v6 OSLogObject];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = objc_opt_class();
        v9 = v8;
        v10 = [(AMSMediaTokenServiceStore *)self clientIdentifier];
        v12 = 138543618;
        v13 = v8;
        v14 = 2114;
        v15 = v10;
        _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Posting media token changed notification.", &v12, 0x16u);
      }

      v11 = [MEMORY[0x1E696ABB0] defaultCenter];
      [v11 postNotificationName:v5 object:self->_notificationObject];
    }
  }

  else
  {

    os_unfair_lock_unlock(&self->_accessLock);
  }
}

- (void)dealloc
{
  [(AMSMediaTokenServiceStore *)self _teardownKeychainNotifications];
  v3.receiver = self;
  v3.super_class = AMSMediaTokenServiceStore;
  [(AMSMediaTokenServiceStore *)&v3 dealloc];
}

- (id)_mediaTokenFromUserDefaults
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = CFPreferencesCopyAppValue(@"AMSMediaTokens", @"com.apple.AppleMediaServices");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [(AMSMediaTokenServiceStore *)self clientIdentifier];
    v6 = [v4 objectForKeyedSubscript:v5];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = 0;
      v7 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v22];
      v8 = v22;
      if (!v7)
      {
        v9 = +[AMSLogConfig sharedMediaConfig];
        if (!v9)
        {
          v9 = +[AMSLogConfig sharedConfig];
        }

        v10 = [v9 OSLogObject];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v21 = v8;
          v11 = objc_opt_class();
          v20 = v11;
          v12 = [(AMSMediaTokenServiceStore *)self clientIdentifier];
          *buf = 138543874;
          v24 = v11;
          v8 = v21;
          v25 = 2114;
          v26 = v12;
          v27 = 2114;
          v28 = v21;
          _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to unarchive media token data. Error: %{public}@", buf, 0x20u);
        }
      }

      v13 = +[AMSLogConfig sharedMediaConfig];
      if (!v13)
      {
        v13 = +[AMSLogConfig sharedConfig];
      }

      v14 = [v13 OSLogObject];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v8;
        v16 = objc_opt_class();
        v17 = v16;
        v18 = [(AMSMediaTokenServiceStore *)self clientIdentifier];
        *buf = 138543618;
        v24 = v16;
        v8 = v15;
        v25 = 2114;
        v26 = v18;
        _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Returning media token loaded from user defaults.", buf, 0x16u);
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_mediaTokenChanged:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  v5 = [v4 object];

  LOBYTE(v4) = [v5 isEqualToString:self->_notificationObject];
  if ((v4 & 1) == 0)
  {
    v6 = +[AMSLogConfig sharedMediaConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = v8;
      v10 = [(AMSMediaTokenServiceStore *)self clientIdentifier];
      v12 = 138543618;
      v13 = v8;
      v14 = 2114;
      v15 = v10;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Received media token changed notification.", &v12, 0x16u);
    }

    os_unfair_lock_lock_with_options();
    memoryMediaToken = self->_memoryMediaToken;
    self->_memoryMediaToken = 0;

    os_unfair_lock_unlock(&self->_accessLock);
  }
}

- (void)_teardownKeychainNotifications
{
  v3 = [(AMSMediaTokenServiceStore *)self _mediaTokenChangedNotificationName];
  if (v3)
  {
    v5 = v3;
    v4 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v4 removeObserver:self name:v5 object:0];

    v3 = v5;
  }
}

@end