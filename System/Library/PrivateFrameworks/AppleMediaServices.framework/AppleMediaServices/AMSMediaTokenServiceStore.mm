@interface AMSMediaTokenServiceStore
+ (BOOL)_hasAppleGroupEnabled;
- (AMSMediaTokenServiceStore)initWithClientIdentifier:(id)identifier keychainAccessGroup:(id)group patBasedToken:(BOOL)token;
- (AMSMediaTokenServiceStore)initWithClientIdentifier:(id)identifier keychainAccessGroup:(id)group usingAccessControlIdentifier:(BOOL)controlIdentifier patBasedToken:(BOOL)token;
- (AMSMediaTokenServiceStore)initWithClientIdentifier:(id)identifier keychainStore:(id)store patBasedToken:(BOOL)token;
- (id)_mediaTokenChangedNotificationName;
- (id)_mediaTokenFromUserDefaults;
- (id)retrieveToken;
- (void)_deleteMediaTokenFromUserDefaultsIfPresent;
- (void)_mediaTokenChanged:(id)changed;
- (void)_setupKeychainNotifications;
- (void)_teardownKeychainNotifications;
- (void)dealloc;
- (void)deleteToken;
- (void)setKeychainAccessGroup:(id)group;
- (void)storeToken:(id)token;
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
  _mediaTokenChangedNotificationName = [(AMSMediaTokenServiceStore *)self _mediaTokenChangedNotificationName];
  if (_mediaTokenChangedNotificationName)
  {
    v5 = _mediaTokenChangedNotificationName;
    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter addObserver:self selector:sel__mediaTokenChanged_ name:v5 object:0 suspensionBehavior:2];

    _mediaTokenChangedNotificationName = v5;
  }
}

- (id)_mediaTokenChangedNotificationName
{
  _keychainAccessGroup = [(AMSMediaTokenServiceStore *)self _keychainAccessGroup];
  if (_keychainAccessGroup)
  {
    v4 = MEMORY[0x1E696AEC0];
    clientIdentifier = [(AMSMediaTokenServiceStore *)self clientIdentifier];
    v6 = [v4 stringWithFormat:@"com.apple.AppleMediaServices.mediaTokenChanged.%@.%@", _keychainAccessGroup, clientIdentifier];
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
  retrieveToken = self->_memoryMediaToken;
  if (!retrieveToken)
  {
    retrieveToken = [(AMSMediaTokenServiceKeychainStoreProtocol *)self->_keychainStore retrieveToken];
    if (!retrieveToken)
    {
      if (self->_patBasedToken)
      {
        retrieveToken = 0;
      }

      else
      {
        retrieveToken = [(AMSMediaTokenServiceStore *)self _mediaTokenFromUserDefaults];
        if (retrieveToken)
        {
          [(AMSMediaTokenServiceKeychainStoreProtocol *)self->_keychainStore storeToken:retrieveToken];
        }
      }
    }

    [(AMSMediaTokenServiceStore *)self _deleteMediaTokenFromUserDefaultsIfPresent];
    objc_storeStrong(&self->_memoryMediaToken, retrieveToken);
  }

  os_unfair_lock_unlock(&self->_accessLock);

  return retrieveToken;
}

- (void)_deleteMediaTokenFromUserDefaultsIfPresent
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = CFPreferencesCopyAppValue(@"AMSMediaTokens", @"com.apple.AppleMediaServices");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    clientIdentifier = [(AMSMediaTokenServiceStore *)self clientIdentifier];
    v6 = [v4 objectForKeyedSubscript:clientIdentifier];

    if (v6)
    {
      v7 = +[AMSLogConfig sharedMediaConfig];
      if (!v7)
      {
        v7 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v7 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = v9;
        clientIdentifier2 = [(AMSMediaTokenServiceStore *)self clientIdentifier];
        v15 = 138543618;
        v16 = v9;
        v17 = 2114;
        v18 = clientIdentifier2;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Removing previously stored media token from user defaults.", &v15, 0x16u);
      }

      v12 = [v4 mutableCopy];
      clientIdentifier3 = [(AMSMediaTokenServiceStore *)self clientIdentifier];
      [v12 setObject:0 forKeyedSubscript:clientIdentifier3];

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

- (AMSMediaTokenServiceStore)initWithClientIdentifier:(id)identifier keychainAccessGroup:(id)group patBasedToken:(BOOL)token
{
  tokenCopy = token;
  identifierCopy = identifier;
  v9 = AMSMediaTokenServiceStoreEffectiveKeychainAccessGroup(group);
  v10 = [[AMSMediaTokenServiceKeychainStore alloc] initWithClientIdentifier:identifierCopy keychainAccessGroup:v9];
  v11 = [(AMSMediaTokenServiceStore *)self initWithClientIdentifier:identifierCopy keychainStore:v10 patBasedToken:tokenCopy];

  return v11;
}

- (AMSMediaTokenServiceStore)initWithClientIdentifier:(id)identifier keychainStore:(id)store patBasedToken:(BOOL)token
{
  identifierCopy = identifier;
  storeCopy = store;
  v20.receiver = self;
  v20.super_class = AMSMediaTokenServiceStore;
  v10 = [(AMSMediaTokenServiceStore *)&v20 init];
  v11 = v10;
  if (v10)
  {
    v10->_accessLock._os_unfair_lock_opaque = 0;
    v12 = [identifierCopy copy];
    clientIdentifier = v11->_clientIdentifier;
    v11->_clientIdentifier = v12;

    keychainAccessGroup = [storeCopy keychainAccessGroup];
    keychainAccessGroup = v11->_keychainAccessGroup;
    v11->_keychainAccessGroup = keychainAccessGroup;

    objc_storeStrong(&v11->_keychainStore, store);
    v11->_patBasedToken = token;
    v16 = objc_opt_new();
    uUIDString = [v16 UUIDString];
    notificationObject = v11->_notificationObject;
    v11->_notificationObject = uUIDString;

    [(AMSMediaTokenServiceStore *)v11 _setupKeychainNotifications];
  }

  return v11;
}

- (AMSMediaTokenServiceStore)initWithClientIdentifier:(id)identifier keychainAccessGroup:(id)group usingAccessControlIdentifier:(BOOL)controlIdentifier patBasedToken:(BOOL)token
{
  result = [(AMSMediaTokenServiceStore *)self initWithClientIdentifier:identifier keychainAccessGroup:group patBasedToken:token];
  if (result)
  {
    result->_usingAccessControlIdentifier = controlIdentifier;
  }

  return result;
}

- (void)setKeychainAccessGroup:(id)group
{
  v23 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock_with_options();
  _keychainAccessGroup = [(AMSMediaTokenServiceStore *)self _keychainAccessGroup];
  [(AMSMediaTokenServiceStore *)self _teardownKeychainNotifications];
  v6 = [groupCopy copy];

  keychainAccessGroup = self->_keychainAccessGroup;
  self->_keychainAccessGroup = v6;

  _keychainAccessGroup2 = [(AMSMediaTokenServiceStore *)self _keychainAccessGroup];
  [(AMSMediaTokenServiceKeychainStoreProtocol *)self->_keychainStore setKeychainAccessGroup:_keychainAccessGroup2];
  memoryMediaToken = self->_memoryMediaToken;
  self->_memoryMediaToken = 0;

  [(AMSMediaTokenServiceStore *)self _setupKeychainNotifications];
  os_unfair_lock_unlock(&self->_accessLock);
  v10 = +[AMSLogConfig sharedMediaConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v10 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = v12;
    clientIdentifier = [(AMSMediaTokenServiceStore *)self clientIdentifier];
    v15 = 138544130;
    v16 = v12;
    v17 = 2114;
    v18 = clientIdentifier;
    v19 = 2112;
    v20 = _keychainAccessGroup;
    v21 = 2112;
    v22 = _keychainAccessGroup2;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Changed keychain access group from %@ to %@.", &v15, 0x2Au);
  }
}

- (void)storeToken:(id)token
{
  v17 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_lock_lock(&self->_accessLock);
  objc_storeStrong(&self->_memoryMediaToken, token);
  if (([(AMSMediaTokenServiceKeychainStoreProtocol *)self->_keychainStore storeToken:tokenCopy]& 1) != 0)
  {
    if (!self->_patBasedToken)
    {
      [(AMSMediaTokenServiceStore *)self _deleteMediaTokenFromUserDefaultsIfPresent];
    }

    _mediaTokenChangedNotificationName = [(AMSMediaTokenServiceStore *)self _mediaTokenChangedNotificationName];
    os_unfair_lock_unlock(&self->_accessLock);
    if (_mediaTokenChangedNotificationName)
    {
      v7 = +[AMSLogConfig sharedMediaConfig];
      if (!v7)
      {
        v7 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v7 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = v9;
        clientIdentifier = [(AMSMediaTokenServiceStore *)self clientIdentifier];
        v13 = 138543618;
        v14 = v9;
        v15 = 2114;
        v16 = clientIdentifier;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Posting media token changed notification.", &v13, 0x16u);
      }

      defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
      [defaultCenter postNotificationName:_mediaTokenChangedNotificationName object:self->_notificationObject];
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

  deleteToken = [(AMSMediaTokenServiceKeychainStoreProtocol *)self->_keychainStore deleteToken];
  if (!self->_patBasedToken)
  {
    [(AMSMediaTokenServiceStore *)self _deleteMediaTokenFromUserDefaultsIfPresent];
  }

  if (deleteToken)
  {
    _mediaTokenChangedNotificationName = [(AMSMediaTokenServiceStore *)self _mediaTokenChangedNotificationName];
    os_unfair_lock_unlock(&self->_accessLock);
    if (_mediaTokenChangedNotificationName)
    {
      v6 = +[AMSLogConfig sharedMediaConfig];
      if (!v6)
      {
        v6 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v6 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v8 = objc_opt_class();
        v9 = v8;
        clientIdentifier = [(AMSMediaTokenServiceStore *)self clientIdentifier];
        v12 = 138543618;
        v13 = v8;
        v14 = 2114;
        v15 = clientIdentifier;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Posting media token changed notification.", &v12, 0x16u);
      }

      defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
      [defaultCenter postNotificationName:_mediaTokenChangedNotificationName object:self->_notificationObject];
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
    clientIdentifier = [(AMSMediaTokenServiceStore *)self clientIdentifier];
    v6 = [v4 objectForKeyedSubscript:clientIdentifier];

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

        oSLogObject = [v9 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
        {
          v21 = v8;
          v11 = objc_opt_class();
          v20 = v11;
          clientIdentifier2 = [(AMSMediaTokenServiceStore *)self clientIdentifier];
          *buf = 138543874;
          v24 = v11;
          v8 = v21;
          v25 = 2114;
          v26 = clientIdentifier2;
          v27 = 2114;
          v28 = v21;
          _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to unarchive media token data. Error: %{public}@", buf, 0x20u);
        }
      }

      v13 = +[AMSLogConfig sharedMediaConfig];
      if (!v13)
      {
        v13 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v13 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v8;
        v16 = objc_opt_class();
        v17 = v16;
        clientIdentifier3 = [(AMSMediaTokenServiceStore *)self clientIdentifier];
        *buf = 138543618;
        v24 = v16;
        v8 = v15;
        v25 = 2114;
        v26 = clientIdentifier3;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Returning media token loaded from user defaults.", buf, 0x16u);
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

- (void)_mediaTokenChanged:(id)changed
{
  v16 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  object = [changedCopy object];

  LOBYTE(changedCopy) = [object isEqualToString:self->_notificationObject];
  if ((changedCopy & 1) == 0)
  {
    v6 = +[AMSLogConfig sharedMediaConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = v8;
      clientIdentifier = [(AMSMediaTokenServiceStore *)self clientIdentifier];
      v12 = 138543618;
      v13 = v8;
      v14 = 2114;
      v15 = clientIdentifier;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Received media token changed notification.", &v12, 0x16u);
    }

    os_unfair_lock_lock_with_options();
    memoryMediaToken = self->_memoryMediaToken;
    self->_memoryMediaToken = 0;

    os_unfair_lock_unlock(&self->_accessLock);
  }
}

- (void)_teardownKeychainNotifications
{
  _mediaTokenChangedNotificationName = [(AMSMediaTokenServiceStore *)self _mediaTokenChangedNotificationName];
  if (_mediaTokenChangedNotificationName)
  {
    v5 = _mediaTokenChangedNotificationName;
    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter removeObserver:self name:v5 object:0];

    _mediaTokenChangedNotificationName = v5;
  }
}

@end