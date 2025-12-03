@interface AMSCookieService
+ (AMSCookieService)sharedService;
+ (BOOL)_isEntitledForDirectCookieAccess;
- (AMSCookieService)init;
- (BOOL)_useInMemoryCacheForAccount:(id)account;
- (id)_cachedCookiePropertiesForAccount:(id)account;
- (id)getCookiePropertiesForAccount:(id)account cookieDatabaseOnly:(BOOL)only error:(id *)error;
- (void)_cacheCookieProperties:(id)properties forAccount:(id)account;
- (void)_registerForCookieChangeNotifications;
- (void)_unregisterFromCookieChangeNotifications;
- (void)cache:(id)cache willEvictObject:(id)object;
- (void)clearCookiePropertyCache;
- (void)clearCookiePropertyCacheForAccount:(id)account;
- (void)clearDanglingCookieDatabasesWithCompletion:(id)completion;
- (void)getCookieDatabasePathForAccount:(id)account withCompletion:(id)completion;
- (void)getCookiePropertiesForAccount:(id)account cookieDatabaseOnly:(BOOL)only withCompletion:(id)completion;
- (void)updateCookiesWithCookiePropertiesToAdd:(id)add cookiePropertiesToRemove:(id)remove forAccount:(id)account withCompletion:(id)completion;
@end

@implementation AMSCookieService

+ (BOOL)_isEntitledForDirectCookieAccess
{
  v2 = +[AMSProcessInfo currentProcess];
  isAMSAccountsDaemon = [v2 isAMSAccountsDaemon];

  return isAMSAccountsDaemon;
}

+ (AMSCookieService)sharedService
{
  if (_MergedGlobals_96 != -1)
  {
    dispatch_once(&_MergedGlobals_96, &__block_literal_global_34);
  }

  v3 = qword_1ED6E2848;

  return v3;
}

uint64_t __33__AMSCookieService_sharedService__block_invoke()
{
  qword_1ED6E2848 = objc_alloc_init(AMSCookieService);

  return MEMORY[0x1EEE66BB8]();
}

- (AMSCookieService)init
{
  v6.receiver = self;
  v6.super_class = AMSCookieService;
  v2 = [(AMSCookieService *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    inMemoryStorage = v2->_inMemoryStorage;
    v2->_inMemoryStorage = v3;

    [(NSCache *)v2->_inMemoryStorage setDelegate:v2];
    [(NSCache *)v2->_inMemoryStorage setName:@"AMSCookieService.inMemoryCache"];
    v2->_inMemoryStorageLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)_registerForCookieChangeNotifications
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = +[AMSLogConfig sharedAccountsCookiesConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v7 = AMSLogKey();
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    if (v7)
    {
      v10 = AMSLogKey();
      v2 = NSStringFromSelector(a2);
      [v8 stringWithFormat:@"%@: [%@] %@ ", v9, v10, v2];
    }

    else
    {
      v10 = NSStringFromSelector(a2);
      [v8 stringWithFormat:@"%@: %@ ", v9, v10];
    }
    v11 = ;
    *buf = 138543362;
    v28 = v11;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@Registering for cookie change notifications.", buf, 0xCu);
    if (v7)
    {

      v11 = v2;
    }
  }

  os_unfair_lock_assert_owner(&self->_inMemoryStorageLock);
  if ([(AMSCookieService *)self isObservingNotifications])
  {
    v12 = +[AMSLogConfig sharedAccountsCookiesConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v12 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
    {
      v14 = AMSLogKey();
      v15 = MEMORY[0x1E696AEC0];
      v16 = objc_opt_class();
      if (v14)
      {
        v17 = AMSLogKey();
        a2 = NSStringFromSelector(a2);
        [v15 stringWithFormat:@"%@: [%@] %@ ", v16, v17, a2];
      }

      else
      {
        v17 = NSStringFromSelector(a2);
        [v15 stringWithFormat:@"%@: %@ ", v16, v17];
      }
      v18 = ;
      *buf = 138543362;
      v28 = v18;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEBUG, "%{public}@We’re already registered, nothing to do.", buf, 0xCu);
      if (v14)
      {

        v18 = a2;
      }
    }
  }

  else
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, HandleCookiesChangedNotification, @"com.apple.AppleMediaServices.cookieschanged", 0, 0);
    v20 = +[AMSLogConfig sharedAccountsCookiesConfig];
    if (!v20)
    {
      v20 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject3 = [v20 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEBUG))
    {
      v22 = AMSLogKey();
      v23 = MEMORY[0x1E696AEC0];
      v24 = objc_opt_class();
      if (v22)
      {
        v25 = AMSLogKey();
        a2 = NSStringFromSelector(a2);
        [v23 stringWithFormat:@"%@: [%@] %@ ", v24, v25, a2];
      }

      else
      {
        v25 = NSStringFromSelector(a2);
        [v23 stringWithFormat:@"%@: %@ ", v24, v25];
      }
      v26 = ;
      *buf = 138543362;
      v28 = v26;
      _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEBUG, "%{public}@Registered for cookie change notifications.", buf, 0xCu);
      if (v22)
      {

        v26 = a2;
      }
    }

    [(AMSCookieService *)self setIsObservingNotifications:1];
  }
}

- (void)clearCookiePropertyCache
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = +[AMSLogConfig sharedAccountsCookiesConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = AMSLogKey();
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    if (v7)
    {
      v10 = AMSLogKey();
      v2 = NSStringFromSelector(a2);
      [v8 stringWithFormat:@"%@: [%@] %@ ", v9, v10, v2];
    }

    else
    {
      v10 = NSStringFromSelector(a2);
      [v8 stringWithFormat:@"%@: %@ ", v9, v10];
    }
    v11 = ;
    *buf = 138543362;
    v25 = v11;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Clearing cookie cache.", buf, 0xCu);
    if (v7)
    {

      v11 = v2;
    }
  }

  os_unfair_lock_assert_not_owner(&self->_inMemoryStorageLock);
  os_unfair_lock_lock(&self->_inMemoryStorageLock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__AMSCookieService_clearCookiePropertyCache__block_invoke;
  aBlock[3] = &unk_1E73B3680;
  aBlock[4] = self;
  v12 = _Block_copy(aBlock);
  inMemoryStorage = [(AMSCookieService *)self inMemoryStorage];
  [inMemoryStorage setDelegate:0];

  inMemoryStorage2 = [(AMSCookieService *)self inMemoryStorage];
  [inMemoryStorage2 removeAllObjects];

  inMemoryStorage3 = [(AMSCookieService *)self inMemoryStorage];
  [inMemoryStorage3 setDelegate:self];

  v16 = +[AMSLogConfig sharedAccountsCookiesConfig];
  if (!v16)
  {
    v16 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v16 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
  {
    v18 = AMSLogKey();
    v19 = MEMORY[0x1E696AEC0];
    v20 = objc_opt_class();
    if (v18)
    {
      v21 = AMSLogKey();
      a2 = NSStringFromSelector(a2);
      [v19 stringWithFormat:@"%@: [%@] %@ ", v20, v21, a2];
    }

    else
    {
      v21 = NSStringFromSelector(a2);
      [v19 stringWithFormat:@"%@: %@ ", v20, v21];
    }
    v22 = ;
    *buf = 138543362;
    v25 = v22;
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEBUG, "%{public}@Cache cleared. Unregistering from cookie change notifications.", buf, 0xCu);
    if (v18)
    {

      v22 = a2;
    }
  }

  [(AMSCookieService *)self _unregisterFromCookieChangeNotifications];
  v12[2](v12);
}

- (void)clearCookiePropertyCacheForAccount:(id)account
{
  v52 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v5 = +[AMSLogConfig sharedAccountsCookiesConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v7 = AMSLogKey();
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    if (v7)
    {
      v10 = AMSLogKey();
      v11 = NSStringFromSelector(a2);
      v3 = [v8 stringWithFormat:@"%@: [%@] %@ ", v9, v10, v11];
    }

    else
    {
      v10 = NSStringFromSelector(a2);
      v3 = [v8 stringWithFormat:@"%@: %@ ", v9, v10];
      v11 = v3;
    }

    identifier = [accountCopy identifier];
    v13 = AMSHashIfNeeded(identifier);
    *buf = 138543618;
    v49 = v3;
    v50 = 2114;
    v51 = v13;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@Clearing cookie cache for account with identifier: %{public}@", buf, 0x16u);

    if (v7)
    {
    }
  }

  os_unfair_lock_assert_not_owner(&self->_inMemoryStorageLock);
  os_unfair_lock_lock(&self->_inMemoryStorageLock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__AMSCookieService_clearCookiePropertyCacheForAccount___block_invoke;
  aBlock[3] = &unk_1E73B3680;
  aBlock[4] = self;
  v14 = _Block_copy(aBlock);
  inMemoryStorage = [(AMSCookieService *)self inMemoryStorage];
  [inMemoryStorage setDelegate:0];

  inMemoryStorage2 = [(AMSCookieService *)self inMemoryStorage];
  identifier2 = [accountCopy identifier];
  [inMemoryStorage2 removeObjectForKey:identifier2];

  inMemoryStorage3 = [(AMSCookieService *)self inMemoryStorage];
  [inMemoryStorage3 setDelegate:self];

  v19 = +[AMSLogConfig sharedAccountsCookiesConfig];
  if (!v19)
  {
    v19 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v19 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
  {
    v21 = AMSLogKey();
    v22 = MEMORY[0x1E696AEC0];
    v23 = objc_opt_class();
    if (v21)
    {
      v24 = AMSLogKey();
      v3 = NSStringFromSelector(a2);
      [v22 stringWithFormat:@"%@: [%@] %@ ", v23, v24, v3];
    }

    else
    {
      v24 = NSStringFromSelector(a2);
      [v22 stringWithFormat:@"%@: %@ ", v23, v24];
    }
    v25 = ;
    *buf = 138543362;
    v49 = v25;
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEBUG, "%{public}@Account entries removed from cache.", buf, 0xCu);
    if (v21)
    {

      v25 = v3;
    }
  }

  inMemoryStorage4 = [(AMSCookieService *)self inMemoryStorage];
  allObjects = [inMemoryStorage4 allObjects];
  v28 = [allObjects count] == 0;

  if (v28)
  {
    v37 = +[AMSLogConfig sharedAccountsCookiesConfig];
    if (!v37)
    {
      v37 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject3 = [v37 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEBUG))
    {
      v39 = AMSLogKey();
      v40 = MEMORY[0x1E696AEC0];
      if (v39)
      {
        v41 = objc_opt_class();
        v42 = AMSLogKey();
        v43 = NSStringFromSelector(a2);
        [v40 stringWithFormat:@"%@: [%@] %@ ", v41, v42, v43];
      }

      else
      {
        v43 = objc_opt_class();
        v42 = NSStringFromSelector(a2);
        [v40 stringWithFormat:@"%@: %@ ", v43, v42];
      }
      v44 = ;
      *buf = 138543362;
      v49 = v44;
      _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEBUG, "%{public}@Cache is now empty. Unregistering from cookie change notifications.", buf, 0xCu);
      if (v39)
      {

        v44 = v43;
      }
    }

    [(AMSCookieService *)self _unregisterFromCookieChangeNotifications];
  }

  else
  {
    v29 = +[AMSLogConfig sharedAccountsCookiesConfig];
    if (!v29)
    {
      v29 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject4 = [v29 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEBUG))
    {
      v31 = AMSLogKey();
      v32 = MEMORY[0x1E696AEC0];
      if (v31)
      {
        v33 = objc_opt_class();
        v34 = AMSLogKey();
        v35 = NSStringFromSelector(a2);
        [v32 stringWithFormat:@"%@: [%@] %@ ", v33, v34, v35];
      }

      else
      {
        v35 = objc_opt_class();
        v34 = NSStringFromSelector(a2);
        [v32 stringWithFormat:@"%@: %@ ", v35, v34];
      }
      v36 = ;
      *buf = 138543362;
      v49 = v36;
      _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_DEBUG, "%{public}@Cache is not empty. Not unregistering from cookie change notifications.", buf, 0xCu);
      if (v31)
      {

        v36 = v35;
      }
    }
  }

  v14[2](v14);
}

- (void)_cacheCookieProperties:(id)properties forAccount:(id)account
{
  v41 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  accountCopy = account;
  v6 = +[AMSLogConfig sharedAccountsCookiesConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v8 = AMSLogKey();
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    if (v8)
    {
      v11 = AMSLogKey();
      v12 = NSStringFromSelector(a2);
      v13 = [v9 stringWithFormat:@"%@: [%@] %@ ", v10, v11, v12];
    }

    else
    {
      v11 = NSStringFromSelector(a2);
      v13 = [v9 stringWithFormat:@"%@: %@ ", v10, v11];
      v12 = v13;
    }

    identifier = [accountCopy identifier];
    v15 = AMSHashIfNeeded(identifier);
    *buf = 138543618;
    v38 = v13;
    v39 = 2114;
    v40 = v15;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@Caching cookies for account with identifier: %{public}@", buf, 0x16u);

    if (v8)
    {
    }
  }

  os_unfair_lock_assert_not_owner(&self->_inMemoryStorageLock);
  os_unfair_lock_lock(&self->_inMemoryStorageLock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__AMSCookieService__cacheCookieProperties_forAccount___block_invoke;
  aBlock[3] = &unk_1E73B3680;
  aBlock[4] = self;
  v16 = _Block_copy(aBlock);
  inMemoryStorage = [(AMSCookieService *)self inMemoryStorage];
  identifier2 = [accountCopy identifier];
  [inMemoryStorage setObject:propertiesCopy forKey:identifier2];

  v19 = +[AMSLogConfig sharedAccountsCookiesConfig];
  if (!v19)
  {
    v19 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v19 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
  {
    v21 = AMSLogKey();
    v22 = MEMORY[0x1E696AEC0];
    v23 = objc_opt_class();
    if (v21)
    {
      v24 = AMSLogKey();
      identifier2 = NSStringFromSelector(a2);
      [v22 stringWithFormat:@"%@: [%@] %@ ", v23, v24, identifier2];
    }

    else
    {
      v24 = NSStringFromSelector(a2);
      [v22 stringWithFormat:@"%@: %@ ", v23, v24];
    }
    v25 = ;
    *buf = 138543362;
    v38 = v25;
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEBUG, "%{public}@Account cookies added to cache.", buf, 0xCu);
    if (v21)
    {

      v25 = identifier2;
    }
  }

  if (![(AMSCookieService *)self isObservingNotifications])
  {
    v26 = +[AMSLogConfig sharedAccountsCookiesConfig];
    if (!v26)
    {
      v26 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject3 = [v26 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEBUG))
    {
      v28 = AMSLogKey();
      v29 = MEMORY[0x1E696AEC0];
      v30 = objc_opt_class();
      if (v28)
      {
        v31 = AMSLogKey();
        identifier2 = NSStringFromSelector(a2);
        [v29 stringWithFormat:@"%@: [%@] %@ ", v30, v31, identifier2];
      }

      else
      {
        v31 = NSStringFromSelector(a2);
        [v29 stringWithFormat:@"%@: %@ ", v30, v31];
      }
      v32 = ;
      *buf = 138543362;
      v38 = v32;
      _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEBUG, "%{public}@We were not previously observing cookie change notifications, registering for them.", buf, 0xCu);
      if (v28)
      {

        v32 = identifier2;
      }
    }

    [(AMSCookieService *)self _registerForCookieChangeNotifications];
  }

  v16[2](v16);
}

- (id)_cachedCookiePropertiesForAccount:(id)account
{
  v51 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v4 = +[AMSLogConfig sharedAccountsCookiesConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v6 = AMSLogKey();
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    if (v6)
    {
      v9 = AMSLogKey();
      v10 = NSStringFromSelector(a2);
      v11 = [v7 stringWithFormat:@"%@: [%@] %@ ", v8, v9, v10];
    }

    else
    {
      v9 = NSStringFromSelector(a2);
      v11 = [v7 stringWithFormat:@"%@: %@ ", v8, v9];
      v10 = v11;
    }

    identifier = [accountCopy identifier];
    v13 = AMSHashIfNeeded(identifier);
    *buf = 138543618;
    v46 = v11;
    v47 = 2114;
    v48 = v13;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@Reading in-memory-cached cookies for account with identifier: %{public}@", buf, 0x16u);

    if (v6)
    {
    }
  }

  os_unfair_lock_assert_not_owner(&self->_inMemoryStorageLock);
  os_unfair_lock_lock(&self->_inMemoryStorageLock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__AMSCookieService__cachedCookiePropertiesForAccount___block_invoke;
  aBlock[3] = &unk_1E73B3680;
  aBlock[4] = self;
  v41 = _Block_copy(aBlock);
  inMemoryStorage = [(AMSCookieService *)self inMemoryStorage];
  identifier2 = [accountCopy identifier];
  v42 = [inMemoryStorage objectForKey:identifier2];

  if ([v42 count])
  {
    v16 = +[AMSLogConfig sharedAccountsCookiesConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v16 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
    {
      v18 = AMSLogKey();
      v19 = MEMORY[0x1E696AEC0];
      v20 = objc_opt_class();
      if (v18)
      {
        v21 = AMSLogKey();
        v22 = NSStringFromSelector(a2);
        v23 = [v19 stringWithFormat:@"%@: [%@] %@ ", v20, v21, v22];
      }

      else
      {
        v21 = NSStringFromSelector(a2);
        v23 = [v19 stringWithFormat:@"%@: %@ ", v20, v21];
        v22 = v23;
      }

      v30 = [v42 count];
      identifier3 = [accountCopy identifier];
      v32 = AMSHashIfNeeded(identifier3);
      v33 = v18;
      v34 = v21;
      v35 = v33;
      v36 = v33 == 0;
      *buf = 138543874;
      v46 = v23;
      v47 = 2048;
      v48 = v30;
      v49 = 2114;
      v50 = v32;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEBUG, "%{public}@Found %lu cookies for account with identifier: %{public}@", buf, 0x20u);

      if (!v36)
      {
      }
    }
  }

  else
  {
    v16 = +[AMSLogConfig sharedAccountsCookiesConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v16 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
    {
      v24 = AMSLogKey();
      v25 = MEMORY[0x1E696AEC0];
      v26 = objc_opt_class();
      if (v24)
      {
        v27 = AMSLogKey();
        v28 = NSStringFromSelector(a2);
        v29 = [v25 stringWithFormat:@"%@: [%@] %@ ", v26, v27, v28];
      }

      else
      {
        v27 = NSStringFromSelector(a2);
        v29 = [v25 stringWithFormat:@"%@: %@ ", v26, v27];
        v28 = v29;
      }

      identifier4 = [accountCopy identifier];
      v38 = AMSHashIfNeeded(identifier4);
      *buf = 138543618;
      v46 = v29;
      v47 = 2114;
      v48 = v38;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEBUG, "%{public}@Did not find any cached cookies for account with identifier: %{public}@.", buf, 0x16u);

      if (v24)
      {
      }
    }
  }

  v41[2]();

  return v42;
}

- (void)_unregisterFromCookieChangeNotifications
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = +[AMSLogConfig sharedAccountsCookiesConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v7 = AMSLogKey();
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    if (v7)
    {
      v10 = AMSLogKey();
      v2 = NSStringFromSelector(a2);
      [v8 stringWithFormat:@"%@: [%@] %@ ", v9, v10, v2];
    }

    else
    {
      v10 = NSStringFromSelector(a2);
      [v8 stringWithFormat:@"%@: %@ ", v9, v10];
    }
    v11 = ;
    *buf = 138543362;
    v28 = v11;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@Unregistering from cookie change notifications.", buf, 0xCu);
    if (v7)
    {

      v11 = v2;
    }
  }

  os_unfair_lock_assert_owner(&self->_inMemoryStorageLock);
  if ([(AMSCookieService *)self isObservingNotifications])
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.AppleMediaServices.cookieschanged", 0);
    v13 = +[AMSLogConfig sharedAccountsCookiesConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
    {
      v15 = AMSLogKey();
      v16 = MEMORY[0x1E696AEC0];
      v17 = objc_opt_class();
      if (v15)
      {
        v18 = AMSLogKey();
        a2 = NSStringFromSelector(a2);
        [v16 stringWithFormat:@"%@: [%@] %@ ", v17, v18, a2];
      }

      else
      {
        v18 = NSStringFromSelector(a2);
        [v16 stringWithFormat:@"%@: %@ ", v17, v18];
      }
      v19 = ;
      *buf = 138543362;
      v28 = v19;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEBUG, "%{public}@Unregistered from cookie change notifications.", buf, 0xCu);
      if (v15)
      {

        v19 = a2;
      }
    }

    [(AMSCookieService *)self setIsObservingNotifications:0];
  }

  else
  {
    v20 = +[AMSLogConfig sharedAccountsCookiesConfig];
    if (!v20)
    {
      v20 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject3 = [v20 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEBUG))
    {
      v22 = AMSLogKey();
      v23 = MEMORY[0x1E696AEC0];
      v24 = objc_opt_class();
      if (v22)
      {
        v25 = AMSLogKey();
        a2 = NSStringFromSelector(a2);
        [v23 stringWithFormat:@"%@: [%@] %@ ", v24, v25, a2];
      }

      else
      {
        v25 = NSStringFromSelector(a2);
        [v23 stringWithFormat:@"%@: %@ ", v24, v25];
      }
      v26 = ;
      *buf = 138543362;
      v28 = v26;
      _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEBUG, "%{public}@We weren’t registered, nothing to do.", buf, 0xCu);
      if (v22)
      {

        v26 = a2;
      }
    }
  }
}

- (BOOL)_useInMemoryCacheForAccount:(id)account
{
  accountCopy = account;
  if (([objc_opt_class() _currentUserIsSystemSetupUser] & 1) != 0 || +[AMSUnitTests isRunningUnitTests](AMSUnitTests, "isRunningUnitTests"))
  {
    ams_isEphemeralAccount = 1;
  }

  else
  {
    ams_isEphemeralAccount = [accountCopy ams_isEphemeralAccount];
  }

  return ams_isEphemeralAccount;
}

- (void)clearDanglingCookieDatabasesWithCompletion:(id)completion
{
  v40 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = NSClassFromString(&cfstr_Amsdcookieserv.isa);
  if (objc_opt_respondsToSelector())
  {
    v6 = [(objc_class *)v5 performSelector:sel_sharedService];
    [(AMSDaemonConnection *)v6 clearDanglingCookieDatabasesWithCompletion:completionCopy];
  }

  else
  {
    v6 = objc_alloc_init(AMSDaemonConnection);
    v35 = 0;
    v7 = [(AMSDaemonConnection *)v6 cookieServiceProxySyncWithError:&v35];
    v8 = v35;
    if (v8)
    {
      v9 = +[AMSUnitTests isRunningUnitTests];
      v10 = +[AMSLogConfig sharedAccountsCookiesConfig];
      defaultCenter = v10;
      if (v9)
      {
        if (!v10)
        {
          defaultCenter = +[AMSLogConfig sharedConfig];
        }

        oSLogObject = [defaultCenter OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
        {
          v13 = AMSLogKey();
          v14 = MEMORY[0x1E696AEC0];
          v15 = objc_opt_class();
          if (v13)
          {
            AMSLogKey();
            v30 = v14;
            v17 = v16 = v13;
            v32 = NSStringFromSelector(a2);
            v33 = v17;
            v28 = v17;
            v13 = v16;
            [v30 stringWithFormat:@"%@: [%@] %@ ", v15, v28, v32];
          }

          else
          {
            v33 = NSStringFromSelector(a2);
            [v14 stringWithFormat:@"%@: %@ ", v15, v33];
          }
          v18 = ;
          v26 = AMSLogableError(v8);
          *buf = 138543618;
          v37 = v18;
          v38 = 2114;
          v39 = v26;
          _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@Failed to get XPC proxy object for cookie service. error = %{public}@", buf, 0x16u);
          if (v13)
          {

            v18 = v32;
          }
        }

        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        oSLogObject2 = +[AMSLogConfig sharedAccountsCookiesConfig];
        [defaultCenter postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:oSLogObject2 userInfo:0];
      }

      else
      {
        if (!v10)
        {
          defaultCenter = +[AMSLogConfig sharedConfig];
        }

        oSLogObject2 = [defaultCenter OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_FAULT))
        {
          v20 = AMSLogKey();
          v21 = MEMORY[0x1E696AEC0];
          v22 = objc_opt_class();
          if (v20)
          {
            AMSLogKey();
            v31 = v21;
            v24 = v23 = v20;
            v32 = NSStringFromSelector(a2);
            v34 = v24;
            v29 = v24;
            v20 = v23;
            [v31 stringWithFormat:@"%@: [%@] %@ ", v22, v29, v32];
          }

          else
          {
            v34 = NSStringFromSelector(a2);
            [v21 stringWithFormat:@"%@: %@ ", v22, v34];
          }
          v25 = ;
          v27 = AMSLogableError(v8);
          *buf = 138543618;
          v37 = v25;
          v38 = 2114;
          v39 = v27;
          _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_FAULT, "%{public}@Failed to get XPC proxy object for cookie service. error = %{public}@", buf, 0x16u);
          if (v20)
          {

            v25 = v32;
          }
        }
      }

      completionCopy[2](completionCopy, 0, v8);
    }

    else
    {
      [v7 clearDanglingCookieDatabasesWithCompletion:completionCopy];
    }
  }
}

- (void)getCookieDatabasePathForAccount:(id)account withCompletion:(id)completion
{
  v75 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  completionCopy = completion;
  if ([objc_opt_class() _isEntitledForDirectCookieAccess])
  {
    v8 = NSClassFromString(&cfstr_Amsdcookieserv.isa);
    if (objc_opt_respondsToSelector())
    {
      v9 = [(objc_class *)v8 performSelector:sel_sharedService];
      if (v9)
      {
        v68[0] = MEMORY[0x1E69E9820];
        v68[1] = 3221225472;
        v68[2] = __67__AMSCookieService_getCookieDatabasePathForAccount_withCompletion___block_invoke;
        v68[3] = &unk_1E73B62D0;
        v68[4] = self;
        v70 = a2;
        v69 = completionCopy;
        [(AMSDaemonConnection *)v9 getCookieDatabasePathForAccount:accountCopy withCompletion:v68];
      }

      else
      {
        v41 = +[AMSUnitTests isRunningUnitTests];
        v42 = +[AMSLogConfig sharedAccountsCookiesConfig];
        defaultCenter = v42;
        if (v41)
        {
          if (!v42)
          {
            defaultCenter = +[AMSLogConfig sharedConfig];
          }

          oSLogObject = [defaultCenter OSLogObject];
          if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
          {
            v45 = AMSLogKey();
            v46 = MEMORY[0x1E696AEC0];
            v47 = objc_opt_class();
            if (v45)
            {
              v48 = AMSLogKey();
              v41 = NSStringFromSelector(a2);
              [v46 stringWithFormat:@"%@: [%@] %@ ", v47, v48, v41];
            }

            else
            {
              v48 = NSStringFromSelector(a2);
              [v46 stringWithFormat:@"%@: %@ ", v47, v48];
            }
            v49 = ;
            *buf = 138543362;
            *&buf[4] = v49;
            _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@Failed to get XPC proxy object for cookie service.", buf, 0xCu);
            if (v45)
            {

              v49 = v41;
            }
          }

          defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
          oSLogObject2 = +[AMSLogConfig sharedAccountsCookiesConfig];
          [defaultCenter postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:oSLogObject2 userInfo:0];
        }

        else
        {
          if (!v42)
          {
            defaultCenter = +[AMSLogConfig sharedConfig];
          }

          oSLogObject2 = [defaultCenter OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_FAULT))
          {
            v51 = AMSLogKey();
            v52 = MEMORY[0x1E696AEC0];
            v53 = objc_opt_class();
            if (v51)
            {
              v54 = AMSLogKey();
              v41 = NSStringFromSelector(a2);
              [v52 stringWithFormat:@"%@: [%@] %@ ", v53, v54, v41];
            }

            else
            {
              v54 = NSStringFromSelector(a2);
              [v52 stringWithFormat:@"%@: %@ ", v53, v54];
            }
            v55 = ;
            *buf = 138543362;
            *&buf[4] = v55;
            _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_FAULT, "%{public}@Failed to get XPC proxy object for cookie service.", buf, 0xCu);
            if (v51)
            {

              v55 = v41;
            }
          }
        }

        v58 = AMSError(0, 0, 0, 0);
        (*(completionCopy + 2))(completionCopy, 0, v58);

        v9 = 0;
      }
    }

    else
    {
      v20 = +[AMSUnitTests isRunningUnitTests];
      v21 = +[AMSLogConfig sharedAccountsCookiesConfig];
      defaultCenter2 = v21;
      if (v20)
      {
        if (!v21)
        {
          defaultCenter2 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject3 = [defaultCenter2 OSLogObject];
        if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
        {
          v24 = AMSLogKey();
          v25 = MEMORY[0x1E696AEC0];
          v26 = objc_opt_class();
          if (v24)
          {
            v27 = AMSLogKey();
            v20 = NSStringFromSelector(a2);
            [v25 stringWithFormat:@"%@: [%@] %@ ", v26, v27, v20];
          }

          else
          {
            v27 = NSStringFromSelector(a2);
            [v25 stringWithFormat:@"%@: %@ ", v26, v27];
          }
          v28 = ;
          *buf = 138543362;
          *&buf[4] = v28;
          _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@Process is entitled for direct cookie access, does not respond to sharedService selector", buf, 0xCu);
          if (v24)
          {

            v28 = v20;
          }
        }

        defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
        oSLogObject4 = +[AMSLogConfig sharedAccountsCookiesConfig];
        [defaultCenter2 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:oSLogObject4 userInfo:0];
      }

      else
      {
        if (!v21)
        {
          defaultCenter2 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject4 = [defaultCenter2 OSLogObject];
        if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_FAULT))
        {
          v36 = AMSLogKey();
          v37 = MEMORY[0x1E696AEC0];
          v38 = objc_opt_class();
          if (v36)
          {
            v39 = AMSLogKey();
            v20 = NSStringFromSelector(a2);
            [v37 stringWithFormat:@"%@: [%@] %@ ", v38, v39, v20];
          }

          else
          {
            v39 = NSStringFromSelector(a2);
            [v37 stringWithFormat:@"%@: %@ ", v38, v39];
          }
          v40 = ;
          *buf = 138543362;
          *&buf[4] = v40;
          _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_FAULT, "%{public}@Process is entitled for direct cookie access, does not respond to sharedService selector", buf, 0xCu);
          if (v36)
          {

            v40 = v20;
          }
        }
      }

      v9 = AMSError(0, @"Method Not Found", @"Either cookie service class is Nil or it does not respond to +sharedService.", 0);
      (*(completionCopy + 2))(completionCopy, 0, v9);
    }
  }

  else
  {
    v9 = objc_alloc_init(AMSDaemonConnection);
    v67 = 0;
    v61 = [(AMSDaemonConnection *)v9 cookieServiceProxySyncWithError:&v67];
    v10 = v67;
    if (v10)
    {
      v11 = +[AMSUnitTests isRunningUnitTests];
      v12 = +[AMSLogConfig sharedAccountsCookiesConfig];
      defaultCenter3 = v12;
      if (v11)
      {
        if (!v12)
        {
          defaultCenter3 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject5 = [defaultCenter3 OSLogObject];
        if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
        {
          v59 = AMSLogKey();
          v15 = MEMORY[0x1E696AEC0];
          v16 = objc_opt_class();
          if (v59)
          {
            v17 = AMSLogKey();
            v18 = NSStringFromSelector(a2);
            v19 = [v15 stringWithFormat:@"%@: [%@] %@ ", v16, v17, v18];
          }

          else
          {
            v17 = NSStringFromSelector(a2);
            v19 = [v15 stringWithFormat:@"%@: %@ ", v16, v17];
            v18 = v19;
          }

          v56 = AMSLogableError(v10);
          *buf = 138543618;
          *&buf[4] = v19;
          *&buf[12] = 2114;
          *&buf[14] = v56;
          _os_log_impl(&dword_192869000, oSLogObject5, OS_LOG_TYPE_ERROR, "%{public}@Failed to get XPC proxy object for cookie service. error = %{public}@", buf, 0x16u);
          if (v59)
          {
          }
        }

        defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
        oSLogObject6 = +[AMSLogConfig sharedAccountsCookiesConfig];
        [defaultCenter3 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:oSLogObject6 userInfo:0];
      }

      else
      {
        if (!v12)
        {
          defaultCenter3 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject6 = [defaultCenter3 OSLogObject];
        if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_FAULT))
        {
          v60 = AMSLogKey();
          v30 = MEMORY[0x1E696AEC0];
          v31 = objc_opt_class();
          if (v60)
          {
            v32 = AMSLogKey();
            v33 = NSStringFromSelector(a2);
            v34 = [v30 stringWithFormat:@"%@: [%@] %@ ", v31, v32, v33];
          }

          else
          {
            v32 = NSStringFromSelector(a2);
            v34 = [v30 stringWithFormat:@"%@: %@ ", v31, v32];
            v33 = v34;
          }

          v57 = AMSLogableError(v10);
          *buf = 138543618;
          *&buf[4] = v34;
          *&buf[12] = 2114;
          *&buf[14] = v57;
          _os_log_impl(&dword_192869000, oSLogObject6, OS_LOG_TYPE_FAULT, "%{public}@Failed to get XPC proxy object for cookie service. error = %{public}@", buf, 0x16u);
          if (v60)
          {
          }
        }
      }

      (*(completionCopy + 2))(completionCopy, 0, v10);
    }

    else
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v72 = __Block_byref_object_copy__20;
      v73 = __Block_byref_object_dispose__20;
      v74 = 0;
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __67__AMSCookieService_getCookieDatabasePathForAccount_withCompletion___block_invoke_30;
      v63[3] = &unk_1E73B62F8;
      v65 = buf;
      v66 = a2;
      v63[4] = self;
      v64 = completionCopy;
      [v61 getCookieDatabasePathForAccount:accountCopy withCompletion:v63];

      _Block_object_dispose(buf, 8);
    }
  }
}

void __67__AMSCookieService_getCookieDatabasePathForAccount_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSUnitTests isRunningUnitTests];
    v8 = 0x1E73B0000uLL;
    v9 = +[AMSLogConfig sharedAccountsCookiesConfig];
    v10 = v9;
    if (v7)
    {
      if (!v9)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      v11 = [v10 OSLogObject];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = AMSLogKey();
        v13 = MEMORY[0x1E696AEC0];
        v14 = objc_opt_class();
        if (v12)
        {
          v15 = AMSLogKey();
          v25 = NSStringFromSelector(*(a1 + 48));
          [v13 stringWithFormat:@"%@: [%@] %@ ", v14, v15, v25];
        }

        else
        {
          v15 = NSStringFromSelector(*(a1 + 48));
          [v13 stringWithFormat:@"%@: %@ ", v14, v15];
        }
        v16 = ;
        v23 = AMSLogableError(v6);
        *buf = 138543618;
        v27 = v16;
        v28 = 2114;
        v29 = v23;
        _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "%{public}@Process is entitled for direct cookie access, Failed to retrieve cookie database path. error = %{public}@", buf, 0x16u);
        if (v12)
        {

          v16 = v25;
        }
      }

      v10 = [MEMORY[0x1E696AD88] defaultCenter];
      v17 = +[AMSLogConfig sharedAccountsCookiesConfig];
      [v10 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v17 userInfo:0];
    }

    else
    {
      if (!v9)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      v17 = [v10 OSLogObject];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        v18 = AMSLogKey();
        v19 = MEMORY[0x1E696AEC0];
        v20 = objc_opt_class();
        if (v18)
        {
          v21 = AMSLogKey();
          v8 = NSStringFromSelector(*(a1 + 48));
          [v19 stringWithFormat:@"%@: [%@] %@ ", v20, v21, v8];
        }

        else
        {
          v21 = NSStringFromSelector(*(a1 + 48));
          [v19 stringWithFormat:@"%@: %@ ", v20, v21];
        }
        v22 = ;
        v24 = AMSLogableError(v6);
        *buf = 138543618;
        v27 = v22;
        v28 = 2114;
        v29 = v24;
        _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_FAULT, "%{public}@Process is entitled for direct cookie access, Failed to retrieve cookie database path. error = %{public}@", buf, 0x16u);
        if (v18)
        {

          v22 = v8;
        }
      }
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __67__AMSCookieService_getCookieDatabasePathForAccount_withCompletion___block_invoke_30(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = +[AMSUnitTests isRunningUnitTests];
    v8 = 0x1E73B0000uLL;
    v9 = +[AMSLogConfig sharedAccountsCookiesConfig];
    v10 = v9;
    if (v7)
    {
      if (!v9)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      v11 = [v10 OSLogObject];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = AMSLogKey();
        v13 = MEMORY[0x1E696AEC0];
        v14 = objc_opt_class();
        if (v12)
        {
          v15 = AMSLogKey();
          v25 = NSStringFromSelector(*(a1 + 56));
          [v13 stringWithFormat:@"%@: [%@] %@ ", v14, v15, v25];
        }

        else
        {
          v15 = NSStringFromSelector(*(a1 + 56));
          [v13 stringWithFormat:@"%@: %@ ", v14, v15];
        }
        v16 = ;
        v23 = AMSLogableError(v6);
        *buf = 138543618;
        v27 = v16;
        v28 = 2114;
        v29 = v23;
        _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to get cookies from cookie service over XPC. error = %{public}@", buf, 0x16u);
        if (v12)
        {

          v16 = v25;
        }
      }

      v10 = [MEMORY[0x1E696AD88] defaultCenter];
      v17 = +[AMSLogConfig sharedAccountsCookiesConfig];
      [v10 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v17 userInfo:0];
    }

    else
    {
      if (!v9)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      v17 = [v10 OSLogObject];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        v18 = AMSLogKey();
        v19 = MEMORY[0x1E696AEC0];
        v20 = objc_opt_class();
        if (v18)
        {
          v21 = AMSLogKey();
          v8 = NSStringFromSelector(*(a1 + 56));
          [v19 stringWithFormat:@"%@: [%@] %@ ", v20, v21, v8];
        }

        else
        {
          v21 = NSStringFromSelector(*(a1 + 56));
          [v19 stringWithFormat:@"%@: %@ ", v20, v21];
        }
        v22 = ;
        v24 = AMSLogableError(v6);
        *buf = 138543618;
        v27 = v22;
        v28 = 2114;
        v29 = v24;
        _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_FAULT, "%{public}@Failed to get cookies from cookie service over XPC. error = %{public}@", buf, 0x16u);
        if (v18)
        {

          v22 = v8;
        }
      }
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)getCookiePropertiesForAccount:(id)account cookieDatabaseOnly:(BOOL)only withCompletion:(id)completion
{
  onlyCopy = only;
  v11 = 0;
  completionCopy = completion;
  v9 = [(AMSCookieService *)self getCookiePropertiesForAccount:account cookieDatabaseOnly:onlyCopy error:&v11];
  v10 = v11;
  completionCopy[2](completionCopy, v9, v10);
}

- (id)getCookiePropertiesForAccount:(id)account cookieDatabaseOnly:(BOOL)only error:(id *)error
{
  onlyCopy = only;
  v110 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  if (onlyCopy || ([(AMSCookieService *)self _cachedCookiePropertiesForAccount:accountCopy], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v96 = 0;
    v97 = &v96;
    v98 = 0x3032000000;
    v99 = __Block_byref_object_copy__20;
    v100 = __Block_byref_object_dispose__20;
    v101 = 0;
    if ([objc_opt_class() _isEntitledForDirectCookieAccess])
    {
      v11 = NSClassFromString(&cfstr_Amsdcookieserv.isa);
      if (objc_opt_respondsToSelector())
      {
        v12 = [(objc_class *)v11 performSelector:sel_sharedService];
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v107 = __Block_byref_object_copy__20;
        v108 = __Block_byref_object_dispose__20;
        v109 = 0;
        v95[0] = MEMORY[0x1E69E9820];
        v95[1] = 3221225472;
        v95[2] = __75__AMSCookieService_getCookiePropertiesForAccount_cookieDatabaseOnly_error___block_invoke;
        v95[3] = &unk_1E73B6320;
        v95[4] = buf;
        v95[5] = &v96;
        [v12 getCookiePropertiesForAccount:accountCopy cookieDatabaseOnly:onlyCopy withCompletion:v95];
        if (*(*&buf[8] + 40))
        {
          if (+[AMSUnitTests isRunningUnitTests])
          {
            v13 = +[AMSLogConfig sharedAccountsCookiesConfig];
            if (!v13)
            {
              v13 = +[AMSLogConfig sharedConfig];
            }

            oSLogObject = [v13 OSLogObject];
            if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
            {
              v15 = AMSLogKey();
              v16 = MEMORY[0x1E696AEC0];
              v17 = objc_opt_class();
              if (v15)
              {
                v18 = AMSLogKey();
                v19 = NSStringFromSelector(a2);
                v20 = [v16 stringWithFormat:@"%@: [%@] %@ ", v17, v18, v19];
              }

              else
              {
                v18 = NSStringFromSelector(a2);
                v20 = [v16 stringWithFormat:@"%@: %@ ", v17, v18];
                v19 = v20;
              }

              v78 = AMSLogableError(*(*&buf[8] + 40));
              *v102 = 138543618;
              v103 = v20;
              v104 = 2114;
              v105 = v78;
              _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@Process is entitled for direct cookie access, Failed to retrieve cookies. error = %{public}@", v102, 0x16u);
              if (v15)
              {
              }
            }

            defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
            oSLogObject2 = +[AMSLogConfig sharedAccountsCookiesConfig];
            [defaultCenter postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:oSLogObject2 userInfo:0];
          }

          else
          {
            defaultCenter = +[AMSLogConfig sharedAccountsCookiesConfig];
            if (!defaultCenter)
            {
              defaultCenter = +[AMSLogConfig sharedConfig];
            }

            oSLogObject2 = [defaultCenter OSLogObject];
            if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_FAULT))
            {
              v61 = AMSLogKey();
              v62 = MEMORY[0x1E696AEC0];
              v63 = objc_opt_class();
              if (v61)
              {
                v64 = AMSLogKey();
                v65 = NSStringFromSelector(a2);
                v66 = [v62 stringWithFormat:@"%@: [%@] %@ ", v63, v64, v65];
              }

              else
              {
                v64 = NSStringFromSelector(a2);
                v66 = [v62 stringWithFormat:@"%@: %@ ", v63, v64];
                v65 = v66;
              }

              v79 = AMSLogableError(*(*&buf[8] + 40));
              *v102 = 138543618;
              v103 = v66;
              v104 = 2114;
              v105 = v79;
              _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_FAULT, "%{public}@Process is entitled for direct cookie access, Failed to retrieve cookies. error = %{public}@", v102, 0x16u);
              if (v61)
              {
              }
            }
          }

          if (error)
          {
            *error = *(*&buf[8] + 40);
          }
        }

        _Block_object_dispose(buf, 8);
      }

      else
      {
        if (+[AMSUnitTests isRunningUnitTests])
        {
          v33 = +[AMSLogConfig sharedAccountsCookiesConfig];
          if (!v33)
          {
            v33 = +[AMSLogConfig sharedConfig];
          }

          oSLogObject3 = [v33 OSLogObject];
          if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
          {
            v35 = AMSLogKey();
            v36 = MEMORY[0x1E696AEC0];
            v37 = objc_opt_class();
            if (v35)
            {
              v38 = AMSLogKey();
              a2 = NSStringFromSelector(a2);
              [v36 stringWithFormat:@"%@: [%@] %@ ", v37, v38, a2];
            }

            else
            {
              v38 = NSStringFromSelector(a2);
              [v36 stringWithFormat:@"%@: %@ ", v37, v38];
            }
            v39 = ;
            *buf = 138543362;
            *&buf[4] = v39;
            _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@Process is entitled for direct cookie access, does not respond to sharedService selector", buf, 0xCu);
            if (v35)
            {

              v39 = a2;
            }
          }

          defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
          oSLogObject4 = +[AMSLogConfig sharedAccountsCookiesConfig];
          [defaultCenter2 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:oSLogObject4 userInfo:0];
        }

        else
        {
          defaultCenter2 = +[AMSLogConfig sharedAccountsCookiesConfig];
          if (!defaultCenter2)
          {
            defaultCenter2 = +[AMSLogConfig sharedConfig];
          }

          oSLogObject4 = [defaultCenter2 OSLogObject];
          if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_FAULT))
          {
            v42 = AMSLogKey();
            v43 = MEMORY[0x1E696AEC0];
            v44 = objc_opt_class();
            if (v42)
            {
              v45 = AMSLogKey();
              a2 = NSStringFromSelector(a2);
              [v43 stringWithFormat:@"%@: [%@] %@ ", v44, v45, a2];
            }

            else
            {
              v45 = NSStringFromSelector(a2);
              [v43 stringWithFormat:@"%@: %@ ", v44, v45];
            }
            v46 = ;
            *buf = 138543362;
            *&buf[4] = v46;
            _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_FAULT, "%{public}@Process is entitled for direct cookie access, does not respond to sharedService selector", buf, 0xCu);
            if (v42)
            {

              v46 = a2;
            }
          }
        }

        if (error)
        {
          *error = AMSError(0, @"Method Not Found", @"Either cookie service class is Nil or it does not respond to +sharedService.", 0);
        }
      }
    }

    else if ([(AMSCookieService *)self _useInMemoryCacheForAccount:accountCopy])
    {
      v21 = [(AMSCookieService *)self _cachedCookiePropertiesForAccount:accountCopy];
      v22 = v21;
      if (v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = MEMORY[0x1E695E0F0];
      }

      objc_storeStrong(v97 + 5, v23);
    }

    else
    {
      v24 = objc_alloc_init(AMSDaemonConnection);
      v94 = 0;
      v92 = [(AMSDaemonConnection *)v24 cookieServiceProxySyncWithError:&v94];
      v25 = v94;
      if (v25)
      {
        v26 = v25;
        if (+[AMSUnitTests isRunningUnitTests])
        {
          v27 = +[AMSLogConfig sharedAccountsCookiesConfig];
          if (!v27)
          {
            v27 = +[AMSLogConfig sharedConfig];
          }

          oSLogObject5 = [v27 OSLogObject];
          if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
          {
            v88 = AMSLogKey();
            v29 = MEMORY[0x1E696AEC0];
            if (v88)
            {
              v30 = objc_opt_class();
              v84 = AMSLogKey();
              v31 = NSStringFromSelector(a2);
              v32 = [v29 stringWithFormat:@"%@: [%@] %@ ", v30, v84, v31];
            }

            else
            {
              v73 = objc_opt_class();
              v84 = NSStringFromSelector(a2);
              v32 = [v29 stringWithFormat:@"%@: %@ ", v73, v84];
              v31 = v32;
            }

            v74 = AMSLogableError(v26);
            *buf = 138543618;
            *&buf[4] = v32;
            *&buf[12] = 2114;
            *&buf[14] = v74;
            _os_log_impl(&dword_192869000, oSLogObject5, OS_LOG_TYPE_ERROR, "%{public}@Failed to get XPC proxy object for cookie service. error = %{public}@", buf, 0x16u);
            if (v88)
            {
            }
          }

          defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
          oSLogObject6 = +[AMSLogConfig sharedAccountsCookiesConfig];
          [defaultCenter3 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:oSLogObject6 userInfo:0];
        }

        else
        {
          defaultCenter3 = +[AMSLogConfig sharedAccountsCookiesConfig];
          if (!defaultCenter3)
          {
            defaultCenter3 = +[AMSLogConfig sharedConfig];
          }

          oSLogObject6 = [defaultCenter3 OSLogObject];
          if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_FAULT))
          {
            v90 = AMSLogKey();
            v55 = MEMORY[0x1E696AEC0];
            if (v90)
            {
              v56 = objc_opt_class();
              v86 = AMSLogKey();
              v57 = NSStringFromSelector(a2);
              v58 = [v55 stringWithFormat:@"%@: [%@] %@ ", v56, v86, v57];
            }

            else
            {
              v75 = objc_opt_class();
              v86 = NSStringFromSelector(a2);
              v58 = [v55 stringWithFormat:@"%@: %@ ", v75, v86];
              v57 = v58;
            }

            v76 = AMSLogableError(v26);
            *buf = 138543618;
            *&buf[4] = v58;
            *&buf[12] = 2114;
            *&buf[14] = v76;
            _os_log_impl(&dword_192869000, oSLogObject6, OS_LOG_TYPE_FAULT, "%{public}@Failed to get XPC proxy object for cookie service. error = %{public}@", buf, 0x16u);
            if (v90)
            {
            }
          }
        }

        if (error)
        {
          v77 = v26;
          *error = v26;
        }

        v10 = 0;
        goto LABEL_109;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v107 = __Block_byref_object_copy__20;
      v108 = __Block_byref_object_dispose__20;
      v109 = 0;
      v93[0] = MEMORY[0x1E69E9820];
      v93[1] = 3221225472;
      v93[2] = __75__AMSCookieService_getCookiePropertiesForAccount_cookieDatabaseOnly_error___block_invoke_32;
      v93[3] = &unk_1E73B6320;
      v93[4] = buf;
      v93[5] = &v96;
      [v92 getCookiePropertiesForAccount:accountCopy cookieDatabaseOnly:onlyCopy withCompletion:v93];

      if (*(*&buf[8] + 40))
      {
        if (+[AMSUnitTests isRunningUnitTests])
        {
          v47 = +[AMSLogConfig sharedAccountsCookiesConfig];
          if (!v47)
          {
            v47 = +[AMSLogConfig sharedConfig];
          }

          oSLogObject7 = [v47 OSLogObject];
          if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_ERROR))
          {
            v89 = AMSLogKey();
            v49 = MEMORY[0x1E696AEC0];
            v50 = objc_opt_class();
            if (v89)
            {
              v85 = AMSLogKey();
              v51 = NSStringFromSelector(a2);
              v52 = [v49 stringWithFormat:@"%@: [%@] %@ ", v50, v85, v51];
            }

            else
            {
              v85 = NSStringFromSelector(a2);
              v52 = [v49 stringWithFormat:@"%@: %@ ", v50, v85];
              v51 = v52;
            }

            v80 = AMSLogableError(*(*&buf[8] + 40));
            *v102 = 138543618;
            v103 = v52;
            v104 = 2114;
            v105 = v80;
            _os_log_impl(&dword_192869000, oSLogObject7, OS_LOG_TYPE_ERROR, "%{public}@Failed to get cookies from cookie service over XPC. error = %{public}@", v102, 0x16u);
            if (v89)
            {
            }
          }

          defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
          oSLogObject8 = +[AMSLogConfig sharedAccountsCookiesConfig];
          [defaultCenter4 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:oSLogObject8 userInfo:0];
        }

        else
        {
          defaultCenter4 = +[AMSLogConfig sharedAccountsCookiesConfig];
          if (!defaultCenter4)
          {
            defaultCenter4 = +[AMSLogConfig sharedConfig];
          }

          oSLogObject8 = [defaultCenter4 OSLogObject];
          if (os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_FAULT))
          {
            v91 = AMSLogKey();
            v69 = MEMORY[0x1E696AEC0];
            v70 = objc_opt_class();
            if (v91)
            {
              v87 = AMSLogKey();
              v71 = NSStringFromSelector(a2);
              v72 = [v69 stringWithFormat:@"%@: [%@] %@ ", v70, v87, v71];
            }

            else
            {
              v87 = NSStringFromSelector(a2);
              v72 = [v69 stringWithFormat:@"%@: %@ ", v70, v87];
              v71 = v72;
            }

            v81 = AMSLogableError(*(*&buf[8] + 40));
            *v102 = 138543618;
            v103 = v72;
            v104 = 2114;
            v105 = v81;
            _os_log_impl(&dword_192869000, oSLogObject8, OS_LOG_TYPE_FAULT, "%{public}@Failed to get cookies from cookie service over XPC. error = %{public}@", v102, 0x16u);
            if (v91)
            {
            }
          }
        }

        if (error)
        {
          *error = *(*&buf[8] + 40);
        }
      }

      if (!onlyCopy)
      {
        v82 = v97[5];
        if (v82)
        {
          [(AMSCookieService *)self _cacheCookieProperties:v82 forAccount:accountCopy];
        }

        else
        {
          [(AMSCookieService *)self clearCookiePropertyCacheForAccount:accountCopy];
        }
      }

      _Block_object_dispose(buf, 8);
    }

    v10 = v97[5];
LABEL_109:
    _Block_object_dispose(&v96, 8);
  }

  return v10;
}

void __75__AMSCookieService_getCookiePropertiesForAccount_cookieDatabaseOnly_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

void __75__AMSCookieService_getCookiePropertiesForAccount_cookieDatabaseOnly_error___block_invoke_32(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

- (void)updateCookiesWithCookiePropertiesToAdd:(id)add cookiePropertiesToRemove:(id)remove forAccount:(id)account withCompletion:(id)completion
{
  addCopy = add;
  removeCopy = remove;
  accountCopy = account;
  completionCopy = completion;
  if ([objc_opt_class() _isEntitledForDirectCookieAccess])
  {
    v14 = NSClassFromString(&cfstr_Amsdcookieserv.isa);
    NSSelectorFromString(&cfstr_Sharedservice.isa);
    if (objc_opt_respondsToSelector())
    {
      v15 = [(objc_class *)v14 performSelector:sel_sharedService];
      [v15 updateCookiesWithCookiePropertiesToAdd:addCopy cookiePropertiesToRemove:removeCopy forAccount:accountCopy withCompletion:completionCopy];
LABEL_12:
    }
  }

  else
  {
    if ([(AMSCookieService *)self _useInMemoryCacheForAccount:accountCopy])
    {
      os_unfair_lock_assert_not_owner(&self->_inMemoryStorageLock);
      os_unfair_lock_lock(&self->_inMemoryStorageLock);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __110__AMSCookieService_updateCookiesWithCookiePropertiesToAdd_cookiePropertiesToRemove_forAccount_withCompletion___block_invoke;
      aBlock[3] = &unk_1E73B3680;
      aBlock[4] = self;
      v15 = _Block_copy(aBlock);
      inMemoryStorage = [(AMSCookieService *)self inMemoryStorage];
      identifier = [accountCopy identifier];
      v18 = [inMemoryStorage objectForKey:identifier];
      v19 = [v18 mutableCopy];

      if (!v19)
      {
        v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
      }

      [v19 addObjectsFromArray:addCopy];
      [v19 removeObjectsInArray:removeCopy];
      if ([v19 count])
      {
        inMemoryStorage2 = [(AMSCookieService *)self inMemoryStorage];
        identifier3 = [v19 copy];
        identifier2 = [accountCopy identifier];
        [inMemoryStorage2 setObject:identifier3 forKey:identifier2];
      }

      else
      {
        inMemoryStorage2 = [(AMSCookieService *)self inMemoryStorage];
        identifier3 = [accountCopy identifier];
        [inMemoryStorage2 removeObjectForKey:identifier3];
      }

      completionCopy[2](completionCopy, 1, 0);
      v15[2](v15);
      goto LABEL_12;
    }

    [(AMSCookieService *)self clearCookiePropertyCacheForAccount:accountCopy];
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__20;
    v37 = __Block_byref_object_dispose__20;
    v38 = objc_alloc_init(AMSDaemonConnection);
    cookieServiceProxy = [v34[5] cookieServiceProxy];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __110__AMSCookieService_updateCookiesWithCookiePropertiesToAdd_cookiePropertiesToRemove_forAccount_withCompletion___block_invoke_2;
    v29[3] = &unk_1E73B6348;
    v30 = addCopy;
    v31 = removeCopy;
    v32 = accountCopy;
    v24 = [cookieServiceProxy thenWithBlock:v29];
    binaryPromiseAdapter = [v24 binaryPromiseAdapter];

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __110__AMSCookieService_updateCookiesWithCookiePropertiesToAdd_cookiePropertiesToRemove_forAccount_withCompletion___block_invoke_3;
    v26[3] = &unk_1E73B6370;
    v28 = &v33;
    v27 = completionCopy;
    [binaryPromiseAdapter resultWithCompletion:v26];

    _Block_object_dispose(&v33, 8);
  }
}

id __110__AMSCookieService_updateCookiesWithCookiePropertiesToAdd_cookiePropertiesToRemove_forAccount_withCompletion___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(AMSBinaryPromise);
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = [(AMSBinaryPromise *)v4 completionHandlerAdapter];
  [v3 updateCookiesWithCookiePropertiesToAdd:v5 cookiePropertiesToRemove:v6 forAccount:v7 withCompletion:v8];

  v9 = [(AMSBinaryPromise *)v4 promiseAdapter];

  return v9;
}

void __110__AMSCookieService_updateCookiesWithCookiePropertiesToAdd_cookiePropertiesToRemove_forAccount_withCompletion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
  v6 = a3;

  (*(*(a1 + 32) + 16))();
}

- (void)cache:(id)cache willEvictObject:(id)object
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = [AMSLogConfig sharedAccountsCookiesConfig:cache];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v7 = AMSLogKey();
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    if (v7)
    {
      v10 = AMSLogKey();
      a2 = NSStringFromSelector(a2);
      [v8 stringWithFormat:@"%@: [%@] %@ ", v9, v10, a2];
    }

    else
    {
      v10 = NSStringFromSelector(a2);
      [v8 stringWithFormat:@"%@: %@ ", v9, v10];
    }
    v11 = ;
    *buf = 138543362;
    v13 = v11;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@In-memory cache is evicting an object.", buf, 0xCu);
    if (v7)
    {

      v11 = a2;
    }
  }
}

@end