@interface AMSMediaTokenService
+ (AMSBagKeySet)bagKeySet;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)_overrideOrClientIdentifier:(id)a3;
+ (id)createBagForSubProfile;
- (AMSMediaTokenService)initWithClientIdentifier:(id)a3 keychainAccessGroup:(id)a4 bag:(id)a5;
- (AMSMediaTokenService)initWithClientIdentifier:(id)a3 tokenStore:(id)a4 patBasedTokenStore:(id)a5 bag:(id)a6 fetcherClass:(Class)a7;
- (AMSURLSession)session;
- (BOOL)_shouldRefreshMediaToken:(id)a3 bagProperties:(id)a4;
- (BOOL)_shouldReturnMediaToken:(id)a3;
- (BOOL)usePATBasedToken:(id)a3;
- (NSString)keychainAccessGroup;
- (id)_fetchBagProperties;
- (id)_fetchToken:(id)a3 forceRefresh:(BOOL)a4;
- (id)_fetchTokenPromise:(id)a3 store:(id)a4;
- (id)_tokenRequestPromiseWithPrivateAccessToken:(id)a3;
- (id)cachedMediaToken:(id)a3;
- (id)fetchMediaToken:(BOOL)a3;
- (id)getCachedMediaToken:(BOOL)a3;
- (id)getPrivateAccessToken:(id)a3;
- (id)getPrivateAccessTokenChallenge;
- (void)_fetchPatBasedToken:(id)a3 cachedMediaToken:(id)a4 finishBlock:(id)a5;
- (void)_refreshMediaTokenIfNeeded:(id)a3 store:(id)a4 bagProperties:(id)a5;
- (void)invalidateMediaToken;
- (void)invalidateMediaToken:(id)a3;
- (void)invalidatePATMediaToken;
- (void)setCachedMediaToken:(id)a3 patBasedToken:(BOOL)a4;
- (void)setCachedMediaToken:(id)a3 store:(id)a4;
- (void)setKeychainAccessGroup:(id)a3;
- (void)setPrivateAccessTokenChallenge:(id)a3;
@end

@implementation AMSMediaTokenService

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(AMSBagKeySet);

  return v2;
}

- (id)_fetchBagProperties
{
  v27[6] = *MEMORY[0x1E69E9840];
  v25 = [(AMSMediaTokenService *)self bag];
  v24 = [v25 doubleForKey:@"token-service-backoff-interval"];
  v23 = [v24 valuePromise];
  v27[0] = v23;
  v22 = [(AMSMediaTokenService *)self bag];
  v21 = [v22 doubleForKey:@"token-service-backoff-max"];
  v20 = [v21 valuePromise];
  v27[1] = v20;
  v19 = [(AMSMediaTokenService *)self bag];
  v18 = [v19 BOOLForKey:@"token-service-enabled"];
  v16 = [v18 valuePromise];
  v27[2] = v16;
  v15 = [(AMSMediaTokenService *)self bag];
  v14 = [v15 doubleForKey:@"token-service-refresh-percentage"];
  v3 = [v14 valuePromise];
  v27[3] = v3;
  v4 = [(AMSMediaTokenService *)self bag];
  v5 = [v4 doubleForKey:@"token-service-refresh-time"];
  v6 = [v5 valuePromise];
  v27[4] = v6;
  v7 = [(AMSMediaTokenService *)self bag];
  v8 = [v7 arrayForKey:@"anonymous-rate-limiting-enabled-client-ids"];
  v9 = [v8 valuePromise];
  v10 = [v9 catchWithBlock:&__block_literal_global_118];
  v27[5] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:6];
  v17 = [AMSPromise promiseWithAll:v11];

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __43__AMSMediaTokenService__fetchBagProperties__block_invoke_2;
  v26[3] = &unk_1E73B3028;
  v26[4] = self;
  v12 = [v17 thenWithBlock:v26];

  return v12;
}

id __43__AMSMediaTokenService__fetchBagProperties__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 throttler];
  v5 = [v3 objectAtIndexedSubscript:0];
  [v5 doubleValue];
  v7 = v6;
  v8 = [v3 objectAtIndexedSubscript:1];
  [v8 doubleValue];
  [v4 setBaseSleepInterval:v7 maxSleepInterval:v9];

  v10 = [AMSMediaTokenServiceBagProperties alloc];
  v11 = [v3 objectAtIndexedSubscript:2];
  v12 = [v11 BOOLValue];
  v13 = [v3 objectAtIndexedSubscript:3];
  [v13 doubleValue];
  v15 = v14;
  v16 = [v3 objectAtIndexedSubscript:4];
  [v16 doubleValue];
  v18 = v17;
  v19 = [v3 objectAtIndexedSubscript:5];

  v20 = [(AMSMediaTokenServiceBagProperties *)v10 initWithEnabled:v12 refreshPercentage:v19 refreshTime:v15 anonymousRateLimitingClientIds:v18];
  v21 = [AMSPromise promiseWithResult:v20];

  return v21;
}

- (AMSMediaTokenService)initWithClientIdentifier:(id)a3 keychainAccessGroup:(id)a4 bag:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[AMSMediaTokenServiceStore alloc] initWithClientIdentifier:v10 keychainAccessGroup:v9 patBasedToken:0];
  v12 = [AMSMediaTokenServiceStore alloc];
  v13 = [@"PrivateAccessToken-" stringByAppendingString:v10];
  v14 = [(AMSMediaTokenServiceStore *)v12 initWithClientIdentifier:v13 keychainAccessGroup:v9 patBasedToken:1];

  v15 = [(AMSMediaTokenService *)self initWithClientIdentifier:v10 tokenStore:v11 patBasedTokenStore:v14 bag:v8 fetcherClass:objc_opt_class()];
  return v15;
}

- (AMSMediaTokenService)initWithClientIdentifier:(id)a3 tokenStore:(id)a4 patBasedTokenStore:(id)a5 bag:(id)a6 fetcherClass:(Class)a7
{
  v44 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v39.receiver = self;
  v39.super_class = AMSMediaTokenService;
  v16 = [(AMSMediaTokenService *)&v39 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_bag, a6);
    if (os_variant_has_internal_content())
    {
      v18 = [objc_opt_class() _overrideOrClientIdentifier:v12];
    }

    else
    {
      v18 = v12;
    }

    clientIdentifier = v17->_clientIdentifier;
    v17->_clientIdentifier = v18;

    v20 = [[AMSMediaTokenServiceThrottler alloc] initWithBaseSleepInterval:0.5 maxSleepInterval:30.0];
    throttler = v17->_throttler;
    v17->_throttler = v20;

    v22 = objc_alloc_init(AMSPromiseSerialQueue);
    tokenFetchPromiseSerialQueue = v17->_tokenFetchPromiseSerialQueue;
    v17->_tokenFetchPromiseSerialQueue = v22;

    v17->_accessLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v17->_tokenStore, a4);
    objc_storeStrong(&v17->_patBasedtokenStore, a5);
    objc_storeStrong(&v17->_privateAccessTokenFetcherClass, a7);
    v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v25 = dispatch_queue_create("com.apple.AppleMediaServices.AMSMediaTokenService", v24);
    patTokenFetchQueue = v17->_patTokenFetchQueue;
    v17->_patTokenFetchQueue = v25;

    if (!v15)
    {
      v27 = +[AMSUnitTests isRunningUnitTests];
      v28 = +[AMSLogConfig sharedMediaConfig];
      v29 = v28;
      if (v27)
      {
        if (!v28)
        {
          v29 = +[AMSLogConfig sharedConfig];
        }

        v30 = [v29 OSLogObject];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = objc_opt_class();
          v38 = v31;
          v32 = [(AMSMediaTokenService *)v17 clientIdentifier];
          *buf = 138543618;
          v41 = v31;
          v42 = 2114;
          v43 = v32;
          _os_log_impl(&dword_192869000, v30, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Bag is nil when initializing the media token service", buf, 0x16u);
        }

        v29 = [MEMORY[0x1E696AD88] defaultCenter];
        v33 = +[AMSLogConfig sharedMediaConfig];
        [v29 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v33 userInfo:0];
      }

      else
      {
        if (!v28)
        {
          v29 = +[AMSLogConfig sharedConfig];
        }

        v33 = [v29 OSLogObject];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
        {
          v34 = objc_opt_class();
          v35 = v34;
          v36 = [(AMSMediaTokenService *)v17 clientIdentifier];
          *buf = 138543618;
          v41 = v34;
          v42 = 2114;
          v43 = v36;
          _os_log_impl(&dword_192869000, v33, OS_LOG_TYPE_FAULT, "%{public}@: [%{public}@] Bag is nil when initializing the media token service", buf, 0x16u);
        }
      }
    }
  }

  return v17;
}

- (id)cachedMediaToken:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (os_variant_has_internal_content() && (+[AMSDefaults mediaTokenOverride], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
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
      v10 = [(AMSMediaTokenService *)self clientIdentifier];
      v11 = +[AMSDefaults mediaTokenOverride];
      v19 = 138543874;
      v20 = v8;
      v21 = 2114;
      v22 = v10;
      v23 = 2114;
      v24 = v11;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Overriding media token. Identifier: %{public}@", &v19, 0x20u);
    }

    v12 = [MEMORY[0x1E695DF00] distantFuture];
    [v12 timeIntervalSinceNow];
    v14 = v13;
    v15 = [AMSMediaToken alloc];
    v16 = +[AMSDefaults mediaTokenOverride];
    v17 = [(AMSMediaToken *)v15 initWithString:v16 expirationDate:v12 lifetime:v14];
  }

  else
  {
    v17 = [v4 retrieveToken];
  }

  return v17;
}

- (NSString)keychainAccessGroup
{
  v2 = [(AMSMediaTokenService *)self tokenStore];
  v3 = [v2 keychainAccessGroup];

  return v3;
}

- (AMSURLSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_session);
  }

  else
  {
    v4 = +[AMSURLSession defaultSession];
  }

  return v4;
}

- (void)setCachedMediaToken:(id)a3 store:(id)a4
{
  if (a3)
  {
    [a4 storeToken:?];
  }

  else
  {
    [a4 deleteToken];
  }
}

- (void)setCachedMediaToken:(id)a3 patBasedToken:(BOOL)a4
{
  v6 = a3;
  if (a4)
  {
    [(AMSMediaTokenService *)self patBasedtokenStore];
  }

  else
  {
    [(AMSMediaTokenService *)self tokenStore];
  }
  v7 = ;
  [(AMSMediaTokenService *)self setCachedMediaToken:v6 store:v7];
}

- (id)getCachedMediaToken:(BOOL)a3
{
  if (a3)
  {
    [(AMSMediaTokenService *)self patBasedtokenStore];
  }

  else
  {
    [(AMSMediaTokenService *)self tokenStore];
  }
  v4 = ;
  v5 = [(AMSMediaTokenService *)self cachedMediaToken:v4];

  return v5;
}

- (void)setKeychainAccessGroup:(id)a3
{
  v4 = a3;
  v5 = [(AMSMediaTokenService *)self tokenStore];
  [v5 setKeychainAccessGroup:v4];

  v6 = [(AMSMediaTokenService *)self patBasedtokenStore];
  [v6 setKeychainAccessGroup:v4];
}

- (id)fetchMediaToken:(BOOL)a3
{
  v5 = objc_alloc_init(AMSMutablePromise);
  v6 = [(AMSMediaTokenService *)self _fetchBagProperties];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__AMSMediaTokenService_fetchMediaToken___block_invoke;
  v10[3] = &unk_1E73B8FA8;
  v7 = v5;
  v11 = v7;
  v12 = self;
  v13 = a3;
  [v6 addFinishBlock:v10];

  v8 = v7;
  return v7;
}

void __40__AMSMediaTokenService_fetchMediaToken___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    [*(a1 + 32) finishWithError:a3];
  }

  else
  {
    if ([v5 isEnabled])
    {
      v7 = [*(a1 + 40) usePATBasedToken:v6];
      v8 = *(a1 + 40);
      if (v7)
      {
        [v8 patBasedtokenStore];
      }

      else
      {
        [v8 tokenStore];
      }
      v10 = ;
      v11 = [*(a1 + 40) cachedMediaToken:v10];
      v12 = [*(a1 + 40) _shouldReturnMediaToken:v11];
      v13 = *(a1 + 40);
      if (!v12 || (*(a1 + 48) & 1) != 0)
      {
        v14 = [v13 _fetchToken:v10 forceRefresh:(v12 | *(a1 + 48)) & 1];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __40__AMSMediaTokenService_fetchMediaToken___block_invoke_2;
        v15[3] = &unk_1E73B8F80;
        v16 = *(a1 + 32);
        [v14 addFinishBlock:v15];
      }

      else
      {
        [v13 _refreshMediaTokenIfNeeded:v11 store:v10 bagProperties:v6];
        [*(a1 + 32) finishWithResult:v11];
      }
    }

    else
    {
      v9 = *(a1 + 32);
      v10 = AMSError(400, @"Token Service Disabled", @"Bag value of token-service-enabled is false.", 0);
      [v9 finishWithError:v10];
    }
  }
}

- (void)setPrivateAccessTokenChallenge:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessLock);
  v5 = [v4 copy];

  privateAcessTokenChallenge = self->_privateAcessTokenChallenge;
  self->_privateAcessTokenChallenge = v5;

  os_unfair_lock_unlock(&self->_accessLock);
}

- (id)getPrivateAccessTokenChallenge
{
  os_unfair_lock_lock(&self->_accessLock);
  v3 = self->_privateAcessTokenChallenge;
  os_unfair_lock_unlock(&self->_accessLock);

  return v3;
}

- (void)invalidateMediaToken
{
  v3 = [(AMSMediaTokenService *)self tokenStore];
  [(AMSMediaTokenService *)self invalidateMediaToken:v3];
}

- (void)invalidatePATMediaToken
{
  v3 = [(AMSMediaTokenService *)self patBasedtokenStore];
  [(AMSMediaTokenService *)self invalidateMediaToken:v3];
}

- (void)invalidateMediaToken:(id)a3
{
  v4 = a3;
  v5 = [(AMSMediaTokenService *)self cachedMediaToken:v4];
  v6 = [v5 invalidCopy];

  [(AMSMediaTokenService *)self setCachedMediaToken:v6 store:v4];
}

+ (NSString)bagSubProfile
{
  if (_MergedGlobals_126 != -1)
  {
    dispatch_once(&_MergedGlobals_126, &__block_literal_global_84);
  }

  v3 = qword_1ED6E2DE8;

  return v3;
}

void __37__AMSMediaTokenService_bagSubProfile__block_invoke()
{
  v0 = qword_1ED6E2DE8;
  qword_1ED6E2DE8 = @"AMSMediaTokenService";
}

+ (NSString)bagSubProfileVersion
{
  if (qword_1ED6E2DF0 != -1)
  {
    dispatch_once(&qword_1ED6E2DF0, &__block_literal_global_110);
  }

  v3 = qword_1ED6E2DF8;

  return v3;
}

void __44__AMSMediaTokenService_bagSubProfileVersion__block_invoke()
{
  v0 = qword_1ED6E2DF8;
  qword_1ED6E2DF8 = @"1";
}

+ (id)createBagForSubProfile
{
  v2 = [objc_opt_class() bagSubProfile];
  v3 = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:v2 profileVersion:v3];

  return v4;
}

- (id)_fetchTokenPromise:(id)a3 store:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(AMSMediaTokenService *)self cachedMediaToken:v7];
  v9 = [(AMSMediaTokenService *)self throttler];
  v10 = [v9 shouldThrottle];

  if (v10)
  {
    v11 = objc_alloc_init(AMSMutablePromise);
    v12 = +[AMSLogConfig sharedMediaConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = v14;
      v16 = [(AMSMediaTokenService *)self clientIdentifier];
      *buf = 138543618;
      v24 = v14;
      v25 = 2114;
      v26 = v16;
      _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Token request throttled. Returning cached media token if available.", buf, 0x16u);
    }

    if (v8)
    {
      [(AMSMutablePromise *)v11 finishWithResult:v8];
    }

    else
    {
      v18 = AMSError(402, @"Token request throttled", @"Throttling to reduce server load.", 0);
      [(AMSMutablePromise *)v11 finishWithError:v18];
    }
  }

  else
  {
    v17 = [(AMSMediaTokenService *)self _tokenRequestPromiseWithPrivateAccessToken:v6];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __49__AMSMediaTokenService__fetchTokenPromise_store___block_invoke;
    v20[3] = &unk_1E73B8FF8;
    v20[4] = self;
    v21 = v8;
    v22 = v7;
    v11 = [v17 continueWithBlock:v20];
  }

  return v11;
}

id __49__AMSMediaTokenService__fetchTokenPromise_store___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v13 = +[AMSLogConfig sharedMediaConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = *(a1 + 32);
      v17 = v15;
      v18 = [v16 clientIdentifier];
      *buf = 138543874;
      v24 = v15;
      v25 = 2114;
      v26 = v18;
      v27 = 2114;
      v28 = v7;
      _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Token request encoding failed. Returning cached media token if available. Error: %{public}@", buf, 0x20u);
    }

    if (*(a1 + 40))
    {
      v12 = [AMSPromise promiseWithResult:?];
      goto LABEL_12;
    }

    v10 = AMSError(314, @"Token request encoding failed", @"The token request encoder finished with an error.", v7);
    v12 = [AMSPromise promiseWithError:v10];
  }

  else
  {
    v8 = [*(a1 + 32) throttler];
    [v8 throttle];

    v9 = [*(a1 + 32) session];
    v10 = [v9 dataTaskPromiseWithRequest:v5];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __49__AMSMediaTokenService__fetchTokenPromise_store___block_invoke_134;
    v20[3] = &unk_1E73B8FD0;
    v11 = *(a1 + 40);
    v20[4] = *(a1 + 32);
    v21 = v11;
    v22 = *(a1 + 48);
    v12 = [v10 continueWithBlock:v20];
  }

LABEL_12:

  return v12;
}

id __49__AMSMediaTokenService__fetchTokenPromise_store___block_invoke_134(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v12 = +[AMSLogConfig sharedMediaConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = *(a1 + 32);
      v16 = v14;
      v17 = [v15 clientIdentifier];
      *buf = 138543874;
      v30 = v14;
      v31 = 2114;
      v32 = v17;
      v33 = 2114;
      v34 = v7;
      _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Token result error. Returning cached media token if available. Error: %{public}@", buf, 0x20u);
    }

    if (*(a1 + 40))
    {
      v18 = [AMSPromise promiseWithResult:?];
      goto LABEL_21;
    }

    v9 = AMSError(301, @"Token result error", @"The token result promise finished with an error.", v7);
    v25 = [AMSPromise promiseWithError:v9];
  }

  else
  {
    v8 = [v5 object];
    v28 = 0;
    v9 = [AMSMediaTokenServiceDeserializer mediaTokenFromDictionary:v8 error:&v28];
    v7 = v28;

    if (v7 || !v9)
    {
      v19 = +[AMSLogConfig sharedMediaConfig];
      if (!v19)
      {
        v19 = +[AMSLogConfig sharedConfig];
      }

      v20 = [v19 OSLogObject];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = objc_opt_class();
        v22 = *(a1 + 32);
        v23 = v21;
        v24 = [v22 clientIdentifier];
        *buf = 138543874;
        v30 = v21;
        v31 = 2114;
        v32 = v24;
        v33 = 2114;
        v34 = v7;
        _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Token result could not be deserialized. Returning cached media token if available. Error: %{public}@", buf, 0x20u);
      }

      v11 = *(a1 + 40);
      if (!v11)
      {
        v27 = AMSError(301, @"Token result error", @"Token result could not be deserialized.", v7);
        v18 = [AMSPromise promiseWithError:v27];

        goto LABEL_20;
      }
    }

    else
    {
      v10 = [*(a1 + 32) throttler];
      [v10 reset];

      [*(a1 + 32) setCachedMediaToken:v9 store:*(a1 + 48)];
      v11 = v9;
    }

    v25 = [AMSPromise promiseWithResult:v11];
  }

  v18 = v25;
LABEL_20:

LABEL_21:

  return v18;
}

- (id)_fetchToken:(id)a3 forceRefresh:(BOOL)a4
{
  v6 = a3;
  v7 = [(AMSMediaTokenService *)self tokenFetchPromiseSerialQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__AMSMediaTokenService__fetchToken_forceRefresh___block_invoke;
  v11[3] = &unk_1E73B9020;
  v11[4] = self;
  v12 = v6;
  v13 = a4;
  v8 = v6;
  v9 = [v7 runPromiseBlock:v11];

  return v9;
}

void __49__AMSMediaTokenService__fetchToken_forceRefresh___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) cachedMediaToken:*(a1 + 40)];
  if ([*(a1 + 32) _shouldReturnMediaToken:v3] && (*(a1 + 48) & 1) == 0)
  {
    v8[2](v8, v3, 0);
  }

  else
  {
    v4 = [*(a1 + 40) patBasedToken];
    v5 = *(a1 + 32);
    if (v4)
    {
      [*(a1 + 32) _fetchPatBasedToken:*(a1 + 40) cachedMediaToken:v3 finishBlock:v8];
    }

    else
    {
      v6 = [*(a1 + 32) tokenStore];
      v7 = [v5 _fetchTokenPromise:0 store:v6];

      [v7 addFinishBlock:v8];
    }
  }
}

- (void)_fetchPatBasedToken:(id)a3 cachedMediaToken:(id)a4 finishBlock:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(AMSMediaTokenService *)self getPrivateAccessTokenChallenge];
  if (v11)
  {
    v12 = [(AMSMediaTokenService *)self getPrivateAccessToken:v11];
    v13 = [v12 promiseWithTimeout:30.0];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __73__AMSMediaTokenService__fetchPatBasedToken_cachedMediaToken_finishBlock___block_invoke;
    v20[3] = &unk_1E73B9070;
    v20[4] = self;
    v21 = v8;
    v22 = v10;
    [v13 addFinishBlock:v20];
  }

  else
  {
    v14 = +[AMSLogConfig sharedMediaConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = v16;
      v18 = [(AMSMediaTokenService *)self clientIdentifier];
      *buf = 138543618;
      v24 = v16;
      v25 = 2114;
      v26 = v18;
      _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Token request set to PAT, but no challenge is available.", buf, 0x16u);
    }

    if ([(AMSMediaTokenService *)self _shouldReturnMediaToken:v9])
    {
      (*(v10 + 2))(v10, v9, 0);
    }

    else
    {
      v19 = AMSError(406, @"Private Access Token", @"Private Access Token challenge is not available.", 0);
      (*(v10 + 2))(v10, 0, v19);
    }
  }
}

void __73__AMSMediaTokenService__fetchPatBasedToken_cachedMediaToken_finishBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = *(a1 + 32);
    v9 = [v5 ams_urlSafeBase64EncodedString];
    v10 = [v8 _fetchTokenPromise:v9 store:*(a1 + 40)];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __73__AMSMediaTokenService__fetchPatBasedToken_cachedMediaToken_finishBlock___block_invoke_2;
    v17[3] = &unk_1E73B9048;
    v11 = *(a1 + 48);
    v17[4] = *(a1 + 32);
    v18 = v11;
    [v10 addFinishBlock:v17];
  }

  else
  {
    if (v6)
    {
      v12 = +[AMSLogConfig sharedMediaConfig];
      if (!v12)
      {
        v12 = +[AMSLogConfig sharedConfig];
      }

      v13 = [v12 OSLogObject];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v20 = objc_opt_class();
        v21 = 2114;
        v22 = v7;
        v14 = v20;
        _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error fetching Private Access Token", buf, 0x16u);
      }
    }

    v15 = *(a1 + 32);
    v16 = [v15 tokenStore];
    v10 = [v15 _fetchTokenPromise:0 store:v16];

    [v10 addFinishBlock:*(a1 + 48)];
  }
}

void __73__AMSMediaTokenService__fetchPatBasedToken_cachedMediaToken_finishBlock___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    v5 = *(a1 + 32);
    v6 = [v5 tokenStore];
    v7 = [v5 _fetchTokenPromise:0 store:v6];

    [v7 addFinishBlock:*(a1 + 40)];
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

+ (id)_overrideOrClientIdentifier:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[AMSDefaults mediaClientIdOverrides];
  v5 = [v4 valueForKey:v3];
  v6 = v3;
  if (v5)
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
      v10 = AMSLogKey();
      v13 = 138544130;
      v14 = v9;
      v15 = 2114;
      v16 = v10;
      v17 = 2112;
      v18 = v3;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Client identifier was manually overridden in defaults. %@ is overridden with: %@. Use amstool to clear any overrides if you did not expect this.", &v13, 0x2Au);
    }

    v6 = v5;
  }

  v11 = v6;

  return v11;
}

- (void)_refreshMediaTokenIfNeeded:(id)a3 store:(id)a4 bagProperties:(id)a5
{
  v9 = a4;
  if ([(AMSMediaTokenService *)self _shouldRefreshMediaToken:a3 bagProperties:a5])
  {
    v8 = [(AMSMediaTokenService *)self _fetchToken:v9 forceRefresh:1];
  }
}

- (BOOL)_shouldRefreshMediaToken:(id)a3 bagProperties:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 && [v5 isValid] && (objc_msgSend(v5, "percentageOfLifetimeRemaining"), v8 = v7, objc_msgSend(v6, "refreshPercentage"), v8 >= v9))
  {
    [v6 refreshTime];
    v10 = [v5 willExpireWithin:?];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (BOOL)_shouldReturnMediaToken:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 isValid])
  {
    v5 = [v4 isExpired] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)_tokenRequestPromiseWithPrivateAccessToken:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AMSMediaTokenService *)self bag];

  if (v5)
  {
    v6 = @"sf-api-token-service-url";
    if (v4)
    {
      v7 = @"sf-api-token-service-url-for-pat";

      v6 = v7;
    }

    v8 = [(AMSMediaTokenService *)self bag];
    v9 = [v8 URLForKey:v6];
    v10 = [v9 valuePromise];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __67__AMSMediaTokenService__tokenRequestPromiseWithPrivateAccessToken___block_invoke;
    v18[3] = &unk_1E73B5D48;
    v18[4] = self;
    v19 = v4;
    v11 = [v10 thenWithBlock:v18];
  }

  else
  {
    v12 = +[AMSLogConfig sharedMediaConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = v14;
      v16 = [(AMSMediaTokenService *)self clientIdentifier];
      *buf = 138543618;
      v21 = v14;
      v22 = 2114;
      v23 = v16;
      _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Bag is nil when getting the token request", buf, 0x16u);
    }

    v6 = AMSError(200, @"Token request failed", @"No bag was provided.", 0);
    v11 = [AMSPromise promiseWithError:v6];
  }

  return v11;
}

id __67__AMSMediaTokenService__tokenRequestPromiseWithPrivateAccessToken___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) clientInfo];
  v5 = [AMSMappedBundleInfo accountMediaTypeInfoForProcessInfo:v4];

  if (!v5)
  {
    v6 = [*(a1 + 32) clientInfo];
    v5 = [AMSMappedBundleInfo bundleInfoForProcessInfo:v6];
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([*(a1 + 32) clientType] == 1)
  {
    v8 = @"other";
  }

  else
  {
    v8 = @"apple";
  }

  [v7 setObject:v8 forKeyedSubscript:@"clientClass"];
  v9 = [*(a1 + 32) clientIdentifier];
  [v7 setObject:v9 forKeyedSubscript:@"clientId"];

  v10 = +[AMSDevice productVersion];
  [v7 setObject:v10 forKeyedSubscript:@"osVersion"];

  v11 = +[AMSDevice operatingSystem];
  [v7 setObject:v11 forKeyedSubscript:@"os"];

  v12 = [v5 clientVersion];
  [v7 setObject:v12 forKeyedSubscript:@"productVersion"];

  [v7 setObject:@"2" forKeyedSubscript:@"version"];
  if (os_variant_has_internal_content())
  {
    [v7 setObject:@"internal" forKeyedSubscript:@"buildVariant"];
  }

  v13 = [MEMORY[0x1E695AC18] requestWithURL:v3];
  [v13 setHTTPMethod:@"GET"];
  v14 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v15 = [MEMORY[0x1E695DF00] date];
  v16 = [v14 stringFromDate:v15];

  [v13 addValue:v16 forHTTPHeaderField:@"x-request-timestamp"];
  v17 = [AMSURLRequestEncoder alloc];
  v18 = [*(a1 + 32) bag];
  v19 = [(AMSURLRequestEncoder *)v17 initWithBag:v18];

  v20 = [*(a1 + 32) account];
  [(AMSURLRequestEncoder *)v19 setAccount:v20];

  v21 = [*(a1 + 32) clientInfo];
  [(AMSURLRequestEncoder *)v19 setClientInfo:v21];

  [(AMSURLRequestEncoder *)v19 setMescalType:1];
  -[AMSURLRequestEncoder setUrlKnownToBeTrusted:](v19, "setUrlKnownToBeTrusted:", [*(a1 + 32) URLKnownToBeTrusted]);
  if (*(a1 + 40))
  {
    v22 = [*(a1 + 32) clientIdentifier];
    [v13 addValue:v22 forHTTPHeaderField:@"X-Apple-ClientId"];

    v23 = [@"PrivateToken token=" stringByAppendingString:*(a1 + 40)];
    [v13 addValue:v23 forHTTPHeaderField:@"Authorization"];
    [(AMSURLRequestEncoder *)v19 setExcludeIdentifierHeadersForAccount:1];
  }

  v24 = [(AMSURLRequestEncoder *)v19 requestByEncodingRequestAndReturnSigningErrors:v13 parameters:v7];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __67__AMSMediaTokenService__tokenRequestPromiseWithPrivateAccessToken___block_invoke_2;
  v27[3] = &unk_1E73B90B8;
  v28 = *(a1 + 40);
  v25 = [v24 continueWithBlock:v27];

  return v25;
}

id __67__AMSMediaTokenService__tokenRequestPromiseWithPrivateAccessToken___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [v5 signingErrors];
    v7 = [v8 ams_firstObjectPassingTest:&__block_literal_global_169];
  }

  if (v7)
  {
    v9 = [AMSPromise promiseWithError:v7];
  }

  else
  {
    if (*(a1 + 32))
    {
      v10 = [v5 request];
      v11 = [v10 mutableCopy];

      [v11 ams_removeAnisetteHeaders];
    }

    else
    {
      v11 = [v5 request];
    }

    v9 = [AMSPromise promiseWithResult:v11];
  }

  return v9;
}

- (BOOL)usePATBasedToken:(id)a3
{
  v4 = a3;
  if ((_os_feature_enabled_impl() & 1) != 0 || +[AMSUnitTests isRunningUnitTests])
  {
    v5 = [v4 anonymousRateLimitingClientIds];
    v6 = [(AMSMediaTokenService *)self clientIdentifier];
    v7 = [v5 containsObject:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)getPrivateAccessToken:(id)a3
{
  v4 = a3;
  v5 = [(AMSMediaTokenService *)self privateAccessTokenFetcherClass];
  v6 = [(AMSMediaTokenService *)self patTokenFetchQueue];
  v7 = [(objc_class *)v5 fetchTokenWithChallenge:v4 dispatchQueue:v6];

  return v7;
}

@end