@interface AKURLBag
+ (BOOL)looksLikeiForgotURLKey:(id)key;
+ (id)_currentBagsUnderLockWithBlock:(id)block;
+ (id)_requestEnvironmentsWithBag:(id)bag;
+ (id)bagForAltDSID:(id)d;
+ (id)sharedBag;
+ (unint64_t)IDMSEnvironmentFromBag:(id)bag;
+ (unint64_t)_IDMSEnvironmentFromString:(id)string;
+ (void)setSharedMemorySpaceBagProvider:(id)provider;
- (AKURLBag)initWithAltDSID:(id)d;
- (AKURLBagDictionaryProvider)bagProvider;
- (BOOL)IsInlineFlowSupportedConfig;
- (BOOL)disablePSCreateAndForgetLink;
- (BOOL)isAccountAccessTelemetryOptInEnabled;
- (BOOL)isBaaEnabledForKey:(id)key;
- (BOOL)isBackgroundiCloudSignInEnabled;
- (BOOL)isClientBackoffDisabled;
- (BOOL)isEasyStudentSignInDisabled;
- (BOOL)isFirstPartyURLEntitlementCheckDisabled;
- (BOOL)isMIDDriftTTRDisabled;
- (BOOL)isPasskeyCleanupDisabled;
- (BOOL)isPhoneNumberSupportedConfig;
- (BOOL)isSIWAForPAAChildEnabled;
- (BOOL)isSettingsInlineLogoViewDisabled;
- (BOOL)isTokenCacheDisabled;
- (BOOL)isTrustedDeviceListHashDisabled;
- (BOOL)requestNewURLBagIfNecessaryWithError:(id *)error;
- (NSArray)allKeys;
- (NSSet)allowListDomainsForSharingKey;
- (NSSet)appleIDAuthorizationURLs;
- (NSSet)appleOwnedDomains;
- (NSString)APSEnvironment;
- (NSString)baaCertIssuer;
- (NSString)continuationHeaderPrefix;
- (id)_configurationsFromCache:(BOOL)cache withError:(id *)error;
- (id)_requestEnvironmentsWithError:(id *)error;
- (id)_requestNewURLBagIfNecessaryWithError:(id *)error;
- (id)_urlAtKey:(id)key;
- (id)_urlAtKey:(id)key fromURLBag:(id)bag;
- (id)_urlBagFromCache:(BOOL)cache withError:(id *)error;
- (id)_urlConfigurationAtKey:(id)key fromURLBag:(id)bag;
- (id)configurationAtKey:(id)key;
- (id)configurationAtKey:(id)key fromCache:(BOOL)cache;
- (id)ttrConfigurationAtKey:(id)key;
- (id)urlAtKey:(id)key;
- (id)urlDictionaryAtKey:(id)key;
- (unint64_t)IDMSEnvironment;
- (unint64_t)baaValidity;
- (unint64_t)lastKnownIDMSEnvironment;
- (void)_fetchURLBagFromCache:(BOOL)cache withCompletion:(id)completion;
- (void)configurationValueForKey:(id)key completion:(id)completion;
- (void)configurationValueForKey:(id)key fromCache:(BOOL)cache completion:(id)completion;
- (void)environmentValueForKey:(id)key completion:(id)completion;
- (void)forceUpdateBagWithUrlSwitchData:(id)data completion:(id)completion;
- (void)grandSlamEndpointIdentifiersWithCompletion:(id)completion;
- (void)requestNewURLBagIfNecessaryWithCompletion:(id)completion;
- (void)urlConfigurationForKey:(id)key fromCache:(BOOL)cache completion:(id)completion;
- (void)urlForKey:(id)key completion:(id)completion;
- (void)urlForKey:(id)key fromCache:(BOOL)cache completion:(id)completion;
@end

@implementation AKURLBag

- (AKURLBagDictionaryProvider)bagProvider
{
  location[2] = self;
  location[1] = a2;
  location[0] = MEMORY[0x1E69E5928](self->_bagProvider);
  if (location[0])
  {
    v5 = MEMORY[0x1E69E5928](location[0]);
  }

  else
  {
    v5 = MEMORY[0x1E69E5928](__sharedMemorySpaceBagProvider);
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

+ (id)sharedBag
{
  v5 = &sharedBag_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_29);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedBag_sharedURLBag;

  return v2;
}

- (unint64_t)lastKnownIDMSEnvironment
{
  v3 = +[AKConfiguration sharedConfiguration];
  lastKnownIDMSEnvironment = [v3 lastKnownIDMSEnvironment];
  MEMORY[0x1E69E5920](v3);
  return lastKnownIDMSEnvironment;
}

- (unint64_t)baaValidity
{
  v5[2] = self;
  v5[1] = a2;
  v5[0] = [(AKURLBag *)self baaConfiguration];
  v3 = [v5[0] objectForKeyedSubscript:@"cert-validity-in-days"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];
  MEMORY[0x1E69E5920](v3);
  objc_storeStrong(v5, 0);
  return unsignedIntegerValue;
}

- (BOOL)isClientBackoffDisabled
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(AKURLBag *)self configurationAtKey:@"clientBackoffDisabled"];
  if (location[0])
  {
    v4 = [location[0] BOOLValue] & 1;
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong(location, 0);
  return v4 & 1;
}

+ (id)bagForAltDSID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  if ([location[0] length])
  {
    v5 = selfCopy;
    v6 = MEMORY[0x1E69E9820];
    v7 = -1073741824;
    v8 = 0;
    v9 = __26__AKURLBag_bagForAltDSID___block_invoke;
    v10 = &unk_1E73D77A0;
    v11 = MEMORY[0x1E69E5928](location[0]);
    sharedBag = [v5 _currentBagsUnderLockWithBlock:&v6];
    objc_storeStrong(&v11, 0);
  }

  else
  {
    sharedBag = [selfCopy sharedBag];
  }

  v12 = 1;
  objc_storeStrong(location, 0);
  v3 = sharedBag;

  return v3;
}

id __26__AKURLBag_bagForAltDSID___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5[1] = a1;
  v5[0] = [location[0] objectForKeyedSubscript:a1[4]];
  if (!v5[0])
  {
    v5[0] = [[AKURLBag alloc] initWithAltDSID:a1[4]];
    MEMORY[0x1E69E5920](0);
    [location[0] setObject:v5[0] forKeyedSubscript:a1[4]];
  }

  v3 = MEMORY[0x1E69E5928](v5[0]);
  objc_storeStrong(v5, 0);
  objc_storeStrong(location, 0);

  return v3;
}

uint64_t __21__AKURLBag_sharedBag__block_invoke()
{
  v0 = objc_alloc_init(AKURLBag);
  v1 = sharedBag_sharedURLBag;
  sharedBag_sharedURLBag = v0;
  return MEMORY[0x1E69E5920](v1);
}

+ (id)_currentBagsUnderLockWithBlock:(id)block
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, block);
  v8 = &_currentBagsUnderLockWithBlock__onceToken;
  v7 = 0;
  objc_storeStrong(&v7, &__block_literal_global_421);
  if (*v8 != -1)
  {
    dispatch_once(v8, v7);
  }

  objc_storeStrong(&v7, 0);
  os_unfair_lock_lock(&_currentBagsUnderLockWithBlock__lock);
  v5 = (*(location[0] + 2))(location[0], _currentBagsUnderLockWithBlock__currentBags);
  os_unfair_lock_unlock(&_currentBagsUnderLockWithBlock__lock);
  v4 = MEMORY[0x1E69E5928](v5);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);

  return v4;
}

uint64_t __43__AKURLBag__currentBagsUnderLockWithBlock___block_invoke()
{
  _currentBagsUnderLockWithBlock__lock = 0;
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = _currentBagsUnderLockWithBlock__currentBags;
  _currentBagsUnderLockWithBlock__currentBags = v0;
  return MEMORY[0x1E69E5920](v1);
}

- (AKURLBag)initWithAltDSID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = AKURLBag;
  v6 = [(AKURLBag *)&v7 init];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    objc_storeStrong(&selfCopy->_altDSID, location[0]);
  }

  v5 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

+ (void)setSharedMemorySpaceBagProvider:(id)provider
{
  v6 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, provider);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "AKURLBag SharedMemorySpaceBagProvider ==> %@", v5, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(&__sharedMemorySpaceBagProvider, location[0]);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

+ (BOOL)looksLikeiForgotURLKey:(id)key
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v4 = 1;
  if (([location[0] isEqualToString:@"iForgotAppleIdLocked"] & 1) == 0)
  {
    v4 = 1;
    if (([location[0] isEqualToString:@"iForgot"] & 1) == 0)
    {
      v4 = [location[0] isEqualToString:@"iForgotResetNotification"];
    }
  }

  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (BOOL)isPhoneNumberSupportedConfig
{
  v3 = [(AKURLBag *)self configurationAtKey:@"is-phone-number-supported"];
  bOOLValue = [v3 BOOLValue];
  MEMORY[0x1E69E5920](v3);
  return bOOLValue;
}

- (BOOL)isBackgroundiCloudSignInEnabled
{
  v3 = [(AKURLBag *)self configurationAtKey:@"background-iCloud-SignIn-enable"];
  bOOLValue = [v3 BOOLValue];
  MEMORY[0x1E69E5920](v3);
  return bOOLValue;
}

- (BOOL)disablePSCreateAndForgetLink
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(AKURLBag *)self configurationAtKey:@"disablePSCreateAndForgetLink"];
  if (location[0])
  {
    v4 = [location[0] BOOLValue] & 1;
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (NSSet)appleOwnedDomains
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = [(AKURLBag *)self configurationAtKey:@"appleOwnedDomains" fromCache:1];
  v5 = [v3 setWithArray:?];
  MEMORY[0x1E69E5920](v4);

  return v5;
}

- (void)grandSlamEndpointIdentifiersWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  [(AKURLBag *)selfCopy configurationValueForKey:@"gsEndpointIdentifiers" fromCache:1 completion:location[0]];
  objc_storeStrong(location, 0);
}

- (NSSet)appleIDAuthorizationURLs
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = [(AKURLBag *)self configurationAtKey:@"appleIDAuthorizationUrls" fromCache:1];
  v5 = [v3 setWithArray:?];
  MEMORY[0x1E69E5920](v4);

  return v5;
}

- (NSString)APSEnvironment
{
  v3 = [(AKURLBag *)self _requestEnvironmentsWithError:0];
  v4 = [v3 objectForKeyedSubscript:@"apsEnv"];
  MEMORY[0x1E69E5920](v3);

  return v4;
}

- (unint64_t)IDMSEnvironment
{
  v5[2] = self;
  v5[1] = a2;
  v3 = [(AKURLBag *)self _requestEnvironmentsWithError:?];
  v5[0] = [v3 objectForKeyedSubscript:@"idmsEnv"];
  MEMORY[0x1E69E5920](v3);
  v4 = [objc_opt_class() _IDMSEnvironmentFromString:v5[0]];
  objc_storeStrong(v5, 0);
  return v4;
}

- (BOOL)IsInlineFlowSupportedConfig
{
  v3 = [(AKURLBag *)self configurationAtKey:@"is-in-line-flow-supported"];
  bOOLValue = [v3 BOOLValue];
  MEMORY[0x1E69E5920](v3);
  return bOOLValue;
}

- (BOOL)isSettingsInlineLogoViewDisabled
{
  v3 = [(AKURLBag *)self configurationAtKey:@"settingsInlineLogoViewDisabled"];
  bOOLValue = [v3 BOOLValue];
  MEMORY[0x1E69E5920](v3);
  return bOOLValue;
}

- (BOOL)isEasyStudentSignInDisabled
{
  v3 = [(AKURLBag *)self configurationAtKey:@"easyStudentSignInDisabled"];
  bOOLValue = [v3 BOOLValue];
  MEMORY[0x1E69E5920](v3);
  return bOOLValue;
}

- (NSString)continuationHeaderPrefix
{
  v5 = [(AKURLBag *)self configurationAtKey:@"continuation-header-prefix"];
  if (v5)
  {
    v2 = MEMORY[0x1E69E5928](v5);
  }

  else
  {
    v2 = MEMORY[0x1E69E5928](@"X-Apple-I-Cont");
  }

  v4 = v2;
  MEMORY[0x1E69E5920](v5);

  return v4;
}

+ (unint64_t)IDMSEnvironmentFromBag:(id)bag
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, bag);
  v4 = [selfCopy _requestEnvironmentsWithBag:location[0]];
  v6 = [v4 objectForKeyedSubscript:@"idmsEnv"];
  MEMORY[0x1E69E5920](v4);
  v5 = [selfCopy _IDMSEnvironmentFromString:v6];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return v5;
}

+ (unint64_t)_IDMSEnvironmentFromString:(id)string
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, string);
  if ([location[0] isEqual:@"IdMS1"])
  {
    v5 = 1;
  }

  else if ([location[0] isEqual:@"IdMS2"])
  {
    v5 = 2;
  }

  else if ([location[0] isEqual:@"IdMS3"])
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong(location, 0);
  return v5;
}

- (id)configurationAtKey:(id)key
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v4 = [(AKURLBag *)selfCopy configurationAtKey:location[0] fromCache:0];
  objc_storeStrong(location, 0);

  return v4;
}

- (id)configurationAtKey:(id)key fromCache:(BOOL)cache
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  if (location[0])
  {
    v6 = [(AKURLBag *)selfCopy _configurationsFromCache:cache withError:0];
    v10 = [v6 objectForKeyedSubscript:location[0]];
    MEMORY[0x1E69E5920](v6);
  }

  else
  {
    v10 = 0;
  }

  objc_storeStrong(location, 0);
  v4 = v10;

  return v4;
}

- (id)ttrConfigurationAtKey:(id)key
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v7 = [(AKURLBag *)selfCopy configurationAtKey:@"ttr-cfgs"];
  v4 = objc_opt_class();
  v5 = [v7 objectForKeyedSubscript:location[0]];
  v6 = _AKSafeCast_13(v4, v5);
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (void)requestNewURLBagIfNecessaryWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3 = selfCopy;
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __54__AKURLBag_requestNewURLBagIfNecessaryWithCompletion___block_invoke;
  v8 = &unk_1E73D3538;
  v9 = MEMORY[0x1E69E5928](location[0]);
  [(AKURLBag *)v3 _fetchURLBagFromCache:0 withCompletion:?];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __54__AKURLBag_requestNewURLBagIfNecessaryWithCompletion___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  if (a1[4])
  {
    (*(a1[4] + 16))(a1[4], location[0] != 0, v5);
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)requestNewURLBagIfNecessaryWithError:(id *)error
{
  v3 = [(AKURLBag *)self _requestNewURLBagIfNecessaryWithError:error];
  v5 = v3 != 0;
  MEMORY[0x1E69E5920](v3);
  return v5;
}

- (void)configurationValueForKey:(id)key completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v5 = 0;
  objc_storeStrong(&v5, completion);
  [(AKURLBag *)selfCopy configurationValueForKey:location[0] fromCache:0 completion:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)configurationValueForKey:(id)key fromCache:(BOOL)cache completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  cacheCopy = cache;
  v11 = 0;
  objc_storeStrong(&v11, completion);
  v8 = selfCopy;
  v7 = cacheCopy;
  v9 = MEMORY[0x1E69E5928](location[0]);
  v10 = MEMORY[0x1E69E5928](v11);
  [(AKURLBag *)v8 _fetchURLBagFromCache:v7 withCompletion:?];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void __58__AKURLBag_configurationValueForKey_fromCache_completion___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  v10[1] = a1;
  if (location[0])
  {
    v10[0] = [location[0] objectForKeyedSubscript:@"cfgs"];
    v9 = [v10[0] objectForKeyedSubscript:a1[4]];
    if (v9)
    {
      if (a1[5])
      {
        (*(a1[5] + 16))();
      }
    }

    else if (a1[5])
    {
      v5 = a1[5];
      v6 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7097];
      (*(v5 + 16))(v5, 0);
      MEMORY[0x1E69E5920](v6);
    }

    objc_storeStrong(&v9, 0);
    objc_storeStrong(v10, 0);
  }

  else if (a1[5])
  {
    v3 = a1[5];
    v4 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7122 underlyingError:v11];
    (*(v3 + 16))(v3, 0);
    MEMORY[0x1E69E5920](v4);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)urlForKey:(id)key completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v5 = 0;
  objc_storeStrong(&v5, completion);
  [(AKURLBag *)selfCopy urlForKey:location[0] fromCache:0 completion:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (id)urlDictionaryAtKey:(id)key
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  if (location[0])
  {
    v7 = [(AKURLBag *)selfCopy _requestNewURLBagIfNecessaryWithError:?];
    v5 = objc_opt_class();
    v6 = [v7 objectForKeyedSubscript:location[0]];
    v10 = _AKSafeCast_13(v5, v6);
    MEMORY[0x1E69E5920](v6);
    objc_storeStrong(&v7, 0);
  }

  else
  {
    v10 = 0;
  }

  objc_storeStrong(location, 0);
  v3 = v10;

  return v3;
}

- (void)urlForKey:(id)key fromCache:(BOOL)cache completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  cacheCopy = cache;
  v11 = 0;
  objc_storeStrong(&v11, completion);
  v9 = selfCopy;
  v7 = location[0];
  v8 = cacheCopy;
  v10 = MEMORY[0x1E69E5928](v11);
  [(AKURLBag *)v9 urlConfigurationForKey:v7 fromCache:v8 completion:?];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void __43__AKURLBag_urlForKey_fromCache_completion___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  if (a1[4])
  {
    v3 = (a1[4] + 16);
    v4 = [location[0] url];
    (*v3)();
    MEMORY[0x1E69E5920](v4);
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)urlConfigurationForKey:(id)key fromCache:(BOOL)cache completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  cacheCopy = cache;
  v19 = 0;
  objc_storeStrong(&v19, completion);
  v18 = _AKLogSystem();
  v17 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v23, location[0]);
    _os_log_impl(&dword_193225000, v18, v17, "urlConfigurationForKey: %@", v23, 0xCu);
  }

  objc_storeStrong(&v18, 0);
  v6 = selfCopy;
  v5 = cacheCopy;
  v9 = MEMORY[0x1E69E9820];
  v10 = -1073741824;
  v11 = 0;
  v12 = __56__AKURLBag_urlConfigurationForKey_fromCache_completion___block_invoke;
  v13 = &unk_1E73D6340;
  v14 = MEMORY[0x1E69E5928](selfCopy);
  v15 = MEMORY[0x1E69E5928](location[0]);
  v16 = MEMORY[0x1E69E5928](v19);
  [(AKURLBag *)v6 _fetchURLBagFromCache:v5 withCompletion:&v9];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

void __56__AKURLBag_urlConfigurationForKey_fromCache_completion___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13 = 0;
  objc_storeStrong(&v13, a3);
  v12[1] = a1;
  if (location[0])
  {
    v8 = a1[4];
    v7 = a1[5];
    v9 = [location[0] objectForKeyedSubscript:@"urls"];
    v12[0] = [v8 _urlConfigurationAtKey:v7 fromURLBag:?];
    MEMORY[0x1E69E5920](v9);
    if (v12[0])
    {
      if (a1[6])
      {
        (*(a1[6] + 16))();
      }
    }

    else if (a1[6])
    {
      v5 = a1[6];
      v6 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7097];
      (*(v5 + 16))(v5, 0);
      MEMORY[0x1E69E5920](v6);
    }

    objc_storeStrong(v12, 0);
  }

  else if (a1[6])
  {
    v3 = a1[6];
    v4 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7122 underlyingError:v13];
    (*(v3 + 16))(v3, 0);
    MEMORY[0x1E69E5920](v4);
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (id)urlAtKey:(id)key
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v4 = [(AKURLBag *)selfCopy _urlAtKey:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_urlAtKey:(id)key
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  if (location[0])
  {
    v5 = [(AKURLBag *)selfCopy _requestNewURLBagIfNecessaryWithError:?];
    v8 = [(AKURLBag *)selfCopy _urlAtKey:location[0] fromURLBag:v5];
    objc_storeStrong(&v5, 0);
  }

  else
  {
    v8 = 0;
  }

  objc_storeStrong(location, 0);
  v3 = v8;

  return v3;
}

- (id)_urlAtKey:(id)key fromURLBag:(id)bag
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v8 = 0;
  objc_storeStrong(&v8, bag);
  v6 = [(AKURLBag *)selfCopy _urlConfigurationAtKey:location[0] fromURLBag:v8];
  v7 = [v6 url];
  MEMORY[0x1E69E5920](v6);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v7;
}

- (id)_urlConfigurationAtKey:(id)key fromURLBag:(id)bag
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v11 = 0;
  objc_storeStrong(&v11, bag);
  v8 = [v11 objectForKeyedSubscript:location[0]];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  MEMORY[0x1E69E5920](v8);
  if (isKindOfClass)
  {
    v10 = [v11 objectForKeyedSubscript:location[0]];
    v4 = [AKURLConfiguration alloc];
    v13 = [(AKURLConfiguration *)v4 initWithDictionary:v10];
    objc_storeStrong(&v10, 0);
  }

  else
  {
    v13 = 0;
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  v5 = v13;

  return v5;
}

- (BOOL)isBaaEnabledForKey:(id)key
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  if (location[0])
  {
    v8 = +[AKDevice currentDevice];
    v9 = 0;
    if ([v8 isInternalBuild])
    {
      v9 = [location[0] isEqualToString:@"postData"];
    }

    MEMORY[0x1E69E5920](v8);
    if (v9)
    {
      v16 = 1;
      v13 = 1;
    }

    else
    {
      isBaaEnabled = 0;
      v11 = [(AKURLBag *)selfCopy _requestNewURLBagIfNecessaryWithError:0];
      v6 = [v11 objectForKeyedSubscript:location[0]];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      MEMORY[0x1E69E5920](v6);
      if (isKindOfClass)
      {
        v10 = [v11 objectForKeyedSubscript:location[0]];
        v3 = [AKURLConfiguration alloc];
        v5 = [(AKURLConfiguration *)v3 initWithDictionary:v10];
        isBaaEnabled = [(AKURLConfiguration *)v5 isBaaEnabled];
        MEMORY[0x1E69E5920](v5);
        objc_storeStrong(&v10, 0);
      }

      v16 = isBaaEnabled;
      v13 = 1;
      objc_storeStrong(&v11, 0);
    }
  }

  else
  {
    v16 = 0;
    v13 = 1;
  }

  objc_storeStrong(location, 0);
  return v16 & 1;
}

- (NSString)baaCertIssuer
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = [(AKURLBag *)self baaConfiguration];
  v3 = [v4[0] objectForKeyedSubscript:@"cert-to-use"];
  objc_storeStrong(v4, 0);

  return v3;
}

- (id)_requestNewURLBagIfNecessaryWithError:(id *)error
{
  v4 = [(AKURLBag *)self _urlBagFromCache:0 withError:error];
  v5 = [v4 objectForKeyedSubscript:@"urls"];
  MEMORY[0x1E69E5920](v4);

  return v5;
}

- (void)environmentValueForKey:(id)key completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v13 = 0;
  objc_storeStrong(&v13, completion);
  v5 = selfCopy;
  v6 = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __46__AKURLBag_environmentValueForKey_completion___block_invoke;
  v10 = &unk_1E73D4BA0;
  v11 = MEMORY[0x1E69E5928](location[0]);
  v12 = MEMORY[0x1E69E5928](v13);
  [(AKURLBag *)v5 _fetchURLBagFromCache:0 withCompletion:?];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void __46__AKURLBag_environmentValueForKey_completion___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  v10[1] = a1;
  if (location[0])
  {
    v10[0] = [location[0] objectForKeyedSubscript:@"env"];
    v9 = [v10[0] objectForKeyedSubscript:a1[4]];
    if (v9)
    {
      if (a1[5])
      {
        (*(a1[5] + 16))();
      }
    }

    else if (a1[5])
    {
      v5 = a1[5];
      v6 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7097];
      (*(v5 + 16))(v5, 0);
      MEMORY[0x1E69E5920](v6);
    }

    objc_storeStrong(&v9, 0);
    objc_storeStrong(v10, 0);
  }

  else if (a1[5])
  {
    v3 = a1[5];
    v4 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7122 underlyingError:v11];
    (*(v3 + 16))(v3, 0);
    MEMORY[0x1E69E5920](v4);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (id)_requestEnvironmentsWithError:(id *)error
{
  v4 = objc_opt_class();
  v5 = [(AKURLBag *)self _urlBagFromCache:0 withError:error];
  v6 = [v4 _requestEnvironmentsWithBag:?];
  MEMORY[0x1E69E5920](v5);

  return v6;
}

+ (id)_requestEnvironmentsWithBag:(id)bag
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, bag);
  v4 = [location[0] objectForKeyedSubscript:@"env"];
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_configurationsFromCache:(BOOL)cache withError:(id *)error
{
  v5 = [(AKURLBag *)self _urlBagFromCache:cache withError:error];
  v6 = [v5 objectForKeyedSubscript:@"cfgs"];
  MEMORY[0x1E69E5920](v5);

  return v6;
}

- (id)_urlBagFromCache:(BOOL)cache withError:(id *)error
{
  selfCopy = self;
  v14 = a2;
  cacheCopy = cache;
  v12[1] = error;
  bagProvider = [(AKURLBag *)self bagProvider];
  MEMORY[0x1E69E5920](bagProvider);
  if (bagProvider)
  {
    bagProvider2 = [(AKURLBag *)selfCopy bagProvider];
    altDSID = [(AKURLBag *)selfCopy altDSID];
    v16 = [AKURLBagDictionaryProvider urlBagFromCache:bagProvider2 altDSID:"urlBagFromCache:altDSID:error:" error:cacheCopy];
    MEMORY[0x1E69E5920](altDSID);
    MEMORY[0x1E69E5920](bagProvider2);
  }

  else
  {
    v12[0] = objc_alloc_init(AKAppleIDAuthenticationController);
    v7 = v12[0];
    v6 = cacheCopy;
    altDSID2 = [(AKURLBag *)selfCopy altDSID];
    v16 = [v7 _urlBagFromCache:v6 altDSID:? withError:?];
    MEMORY[0x1E69E5920](altDSID2);
    objc_storeStrong(v12, 0);
  }

  v4 = v16;

  return v4;
}

- (void)_fetchURLBagFromCache:(BOOL)cache withCompletion:(id)completion
{
  selfCopy = self;
  v20 = a2;
  cacheCopy = cache;
  location = 0;
  objc_storeStrong(&location, completion);
  if (cacheCopy)
  {
    bagProvider = [(AKURLBag *)selfCopy bagProvider];
    MEMORY[0x1E69E5920](bagProvider);
    if (bagProvider)
    {
      bagProvider2 = [(AKURLBag *)selfCopy bagProvider];
      altDSID = [(AKURLBag *)selfCopy altDSID];
      [AKURLBagDictionaryProvider fetchURLBagForAltDSID:bagProvider2 fromCache:"fetchURLBagForAltDSID:fromCache:completion:" completion:?];
      MEMORY[0x1E69E5920](altDSID);
      MEMORY[0x1E69E5920](bagProvider2);
    }

    else
    {
      v17 = 0;
      v15 = 0;
      v9 = [(AKURLBag *)selfCopy _urlBagFromCache:1 withError:&v15];
      objc_storeStrong(&v17, v15);
      v16 = v9;
      if (location)
      {
        (*(location + 2))(location, v16, v17);
      }

      objc_storeStrong(&v16, 0);
      objc_storeStrong(&v17, 0);
    }

    v14 = 0;
  }

  else
  {
    bagProvider3 = [(AKURLBag *)selfCopy bagProvider];
    MEMORY[0x1E69E5920](bagProvider3);
    if (bagProvider3)
    {
      bagProvider4 = [(AKURLBag *)selfCopy bagProvider];
      altDSID2 = [(AKURLBag *)selfCopy altDSID];
      [AKURLBagDictionaryProvider fetchURLBagForAltDSID:bagProvider4 completion:"fetchURLBagForAltDSID:completion:"];
      MEMORY[0x1E69E5920](altDSID2);
      MEMORY[0x1E69E5920](bagProvider4);
      v14 = 1;
    }

    else
    {
      v13 = objc_alloc_init(AKAppleIDAuthenticationController);
      v4 = v13;
      altDSID3 = [(AKURLBag *)selfCopy altDSID];
      [AKAppleIDAuthenticationController fetchURLBagForAltDSID:v4 completion:"fetchURLBagForAltDSID:completion:"];
      MEMORY[0x1E69E5920](altDSID3);
      v14 = 1;
      objc_storeStrong(&v13, 0);
    }
  }

  objc_storeStrong(&location, 0);
}

- (void)forceUpdateBagWithUrlSwitchData:(id)data completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v11 = 0;
  objc_storeStrong(&v11, completion);
  bagProvider = [(AKURLBag *)selfCopy bagProvider];
  MEMORY[0x1E69E5920](bagProvider);
  if (bagProvider)
  {
    bagProvider = selfCopy->_bagProvider;
    altDSID = [(AKURLBag *)selfCopy altDSID];
    [AKURLBagDictionaryProvider forceURLBagUpdateForAltDSID:"forceURLBagUpdateForAltDSID:urlSwitchData:completion:" urlSwitchData:? completion:?];
    MEMORY[0x1E69E5920](altDSID);
  }

  else
  {
    v10 = objc_alloc_init(AKAppleIDAuthenticationController);
    v4 = v10;
    altDSID2 = [(AKURLBag *)selfCopy altDSID];
    [AKAppleIDAuthenticationController forceURLBagUpdateForAltDSID:v4 urlSwitchData:"forceURLBagUpdateForAltDSID:urlSwitchData:completion:" completion:?];
    MEMORY[0x1E69E5920](altDSID2);
    objc_storeStrong(&v10, 0);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)isPasskeyCleanupDisabled
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(AKURLBag *)self configurationAtKey:@"passkeyCleanupDisabled"];
  if (location[0])
  {
    v4 = [location[0] BOOLValue] & 1;
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (BOOL)isFirstPartyURLEntitlementCheckDisabled
{
  v3 = objc_opt_class();
  v5 = [(AKURLBag *)self configurationAtKey:@"firstPartyURLEntitlementCheckDisabled"];
  v4 = _AKSafeCast_13(v3, v5);
  bOOLValue = [v4 BOOLValue];
  MEMORY[0x1E69E5920](v4);
  MEMORY[0x1E69E5920](v5);
  return bOOLValue;
}

- (BOOL)isTokenCacheDisabled
{
  v3 = objc_opt_class();
  v5 = [(AKURLBag *)self configurationAtKey:@"tokenCacheDisabled"];
  v4 = _AKSafeCast_13(v3, v5);
  bOOLValue = [v4 BOOLValue];
  MEMORY[0x1E69E5920](v4);
  MEMORY[0x1E69E5920](v5);
  return bOOLValue;
}

- (BOOL)isMIDDriftTTRDisabled
{
  v3 = objc_opt_class();
  v5 = [(AKURLBag *)self configurationAtKey:@"midDriftTTRDisabled"];
  v4 = _AKSafeCast_13(v3, v5);
  bOOLValue = [v4 BOOLValue];
  MEMORY[0x1E69E5920](v4);
  MEMORY[0x1E69E5920](v5);
  return bOOLValue;
}

- (NSArray)allKeys
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = [(AKURLBag *)self _requestNewURLBagIfNecessaryWithError:?];
  allKeys = [v4[0] allKeys];
  objc_storeStrong(v4, 0);

  return allKeys;
}

- (BOOL)isTrustedDeviceListHashDisabled
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(AKURLBag *)self configurationAtKey:@"trustedDeviceListHashDisabled"];
  if (location[0])
  {
    v4 = [location[0] BOOLValue] & 1;
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (NSSet)allowListDomainsForSharingKey
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = [(AKURLBag *)self configurationAtKey:@"allowListDomainsForSharingKey" fromCache:1];
  v5 = [v3 setWithArray:?];
  MEMORY[0x1E69E5920](v4);

  return v5;
}

- (BOOL)isSIWAForPAAChildEnabled
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(AKURLBag *)self configurationAtKey:@"EnableSIWAChildAgeAttestation" fromCache:1];
  if (location[0])
  {
    v4 = [location[0] BOOLValue] & 1;
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (BOOL)isAccountAccessTelemetryOptInEnabled
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(AKURLBag *)self configurationAtKey:@"enableAccountAccessOptIn" fromCache:1];
  if (location[0])
  {
    v4 = [location[0] BOOLValue] & 1;
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong(location, 0);
  return v4 & 1;
}

@end