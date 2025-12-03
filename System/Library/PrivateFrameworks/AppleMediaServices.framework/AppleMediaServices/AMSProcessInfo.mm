@interface AMSProcessInfo
+ (AMSProcessInfo)currentProcess;
+ (BOOL)BOOLForEntitlement:(id)entitlement;
+ (BOOL)BOOLForMachLookupAccess:(id)access;
+ (BOOL)hasValue:(id)value inArrayForEntitlement:(id)entitlement;
+ (NSString)defaultMediaTypeForCurrentProcess;
+ (id)_bundleForIdentifier:(id)identifier record:(id)record;
+ (id)_bundleRecordForIdentifier:(id)identifier;
+ (id)_cachedProcessInfoForIdentifier:(id)identifier;
+ (id)_currentProcessBundleIdentifier;
+ (id)arrayForEntitlement:(id)entitlement;
+ (id)stringForEntitlement:(id)entitlement;
+ (id)valueForEntitlement:(id)entitlement;
+ (void)_accessProcessInfoCache:(id)cache;
+ (void)_cacheProcessInfo:(id)info;
+ (void)copyPropertiesFrom:(id)from to:(id)to;
+ (void)setDefaultMediaTypeForCurrentProcess:(id)process;
- (AMSProcessInfo)init;
- (AMSProcessInfo)initWithBundleIdentifier:(id)identifier;
- (AMSProcessInfo)initWithCoder:(id)coder;
- (BOOL)isAMSAccountsDaemon;
- (BOOL)isAccountsDaemon;
- (BOOL)isEqual:(id)equal;
- (NSString)partnerHeader;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)generateConfigurationFromBagContract:(id)contract;
- (void)_setComputedPropertiesForBundleIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
- (void)setBundleIdentifier:(id)identifier;
- (void)setPartnerHeader:(id)header;
@end

@implementation AMSProcessInfo

+ (NSString)defaultMediaTypeForCurrentProcess
{
  os_unfair_lock_assert_not_owner(&_MergedGlobals_143);
  if (+[AMSUnitTests isRunningUnitTests])
  {
    v3 = [AMSProcessInfo alloc];
    _currentProcessBundleIdentifier = [self _currentProcessBundleIdentifier];
    v5 = [(AMSProcessInfo *)v3 initWithBundleIdentifier:_currentProcessBundleIdentifier];

    accountMediaType = [(AMSProcessInfo *)v5 accountMediaType];
  }

  else
  {
    os_unfair_lock_lock(&_MergedGlobals_143);
    v7 = qword_1ED6E3058;
    if (!qword_1ED6E3058)
    {
      v8 = +[AMSProcessInfo currentProcess];
      accountMediaType2 = [v8 accountMediaType];
      v10 = [accountMediaType2 copy];
      v11 = qword_1ED6E3058;
      qword_1ED6E3058 = v10;

      v7 = qword_1ED6E3058;
    }

    accountMediaType = [v7 copy];
    os_unfair_lock_unlock(&_MergedGlobals_143);
  }

  return accountMediaType;
}

+ (AMSProcessInfo)currentProcess
{
  v2 = +[AMSProcessInfo _currentProcessBundleIdentifier];
  v3 = [[AMSProcessInfo alloc] initWithBundleIdentifier:v2];
  executableName = [(AMSProcessInfo *)v3 executableName];
  v5 = [executableName length];

  if (!v5)
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];
    [(AMSProcessInfo *)v3 setExecutableName:processName];

    v8 = MEMORY[0x1E696AD98];
    processInfo2 = [MEMORY[0x1E696AE30] processInfo];
    v10 = [v8 numberWithInt:{objc_msgSend(processInfo2, "processIdentifier")}];
    [(AMSProcessInfo *)v3 setProcessIdentifier:v10];
  }

  return v3;
}

+ (id)_currentProcessBundleIdentifier
{
  if (qword_1ED6E3088 != -1)
  {
    dispatch_once(&qword_1ED6E3088, &__block_literal_global_91_0);
  }

  v3 = qword_1ED6E3080;

  return v3;
}

void __49__AMSProcessInfo__currentProcessBundleIdentifier__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  v2 = qword_1ED6E3080;
  qword_1ED6E3080 = v1;

  if (!qword_1ED6E3080)
  {
    MainBundle = CFBundleGetMainBundle();
    if (MainBundle)
    {
      InfoDictionary = CFBundleGetInfoDictionary(MainBundle);
      if (InfoDictionary)
      {
        v17 = CFDictionaryGetValue(InfoDictionary, *MEMORY[0x1E695E4F0]);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }

        v19 = qword_1ED6E3080;
        qword_1ED6E3080 = v18;
      }
    }
  }

  v3 = [MEMORY[0x1E696AE30] processInfo];
  v4 = [v3 processName];
  v5 = [v4 isEqualToString:@"amsaccountsd"];

  if (v5)
  {
    v6 = qword_1ED6E3080;
    qword_1ED6E3080 = @"com.apple.amsaccountsd";
  }

  if (!qword_1ED6E3080)
  {
    v7 = [MEMORY[0x1E696AE30] processInfo];
    v8 = [v7 processName];
    v9 = [v8 isEqualToString:@"amstool"];

    if (v9)
    {
      v10 = qword_1ED6E3080;
      qword_1ED6E3080 = @"amstool";
    }

    if (!qword_1ED6E3080)
    {
      v11 = [MEMORY[0x1E696AE30] processInfo];
      v12 = [v11 processName];
      v13 = [v12 isEqualToString:@"amstoold"];

      if (v13)
      {
        v14 = qword_1ED6E3080;
        qword_1ED6E3080 = @"amstoold";
      }
    }
  }
}

- (AMSProcessInfo)init
{
  v9.receiver = self;
  v9.super_class = AMSProcessInfo;
  v2 = [(AMSProcessInfo *)&v9 init];
  v3 = v2;
  if (v2)
  {
    clientVersion = v2->_clientVersion;
    v2->_clientVersion = @"0.0";

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.AppleMediaServices.AMSClientInfo", v5);
    internalQueue = v3->_internalQueue;
    v3->_internalQueue = v6;
  }

  return v3;
}

- (BOOL)isAccountsDaemon
{
  bundleIdentifier = [(AMSProcessInfo *)self bundleIdentifier];
  v3 = [bundleIdentifier isEqualToString:@"com.apple.accountsd"];

  return v3;
}

- (BOOL)isAMSAccountsDaemon
{
  bundleIdentifier = [(AMSProcessInfo *)self bundleIdentifier];
  v3 = [bundleIdentifier isEqualToString:@"com.apple.amsaccountsd"];

  return v3;
}

- (NSString)partnerHeader
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__55;
  v10 = __Block_byref_object_dispose__55;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__AMSProcessInfo_partnerHeader__block_invoke;
  v5[3] = &unk_1E73B3EA8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __31__AMSProcessInfo_partnerHeader__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 16) copy];

  return MEMORY[0x1EEE66BB8]();
}

- (AMSProcessInfo)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [(AMSProcessInfo *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifier, identifier);
    v8 = [AMSProcessInfo _cachedProcessInfoForIdentifier:identifierCopy];
    if (v8)
    {
      [AMSProcessInfo copyPropertiesFrom:v8 to:v7];
    }

    else
    {
      [(AMSProcessInfo *)v7 _setComputedPropertiesForBundleIdentifier:identifierCopy];
      v9 = [(AMSProcessInfo *)v7 copy];
      [AMSProcessInfo _cacheProcessInfo:v9];
    }
  }

  return v7;
}

- (void)setPartnerHeader:(id)header
{
  headerCopy = header;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__AMSProcessInfo_setPartnerHeader___block_invoke;
  block[3] = &unk_1E73BABE0;
  block[4] = self;
  v6 = headerCopy;
  v12 = v6;
  v13 = &v14;
  dispatch_sync(internalQueue, block);
  if (*(v15 + 24) == 1)
  {
    v7 = objc_alloc(MEMORY[0x1E695DF20]);
    null = v6;
    if (!v6)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v9 = [v7 initWithObjectsAndKeys:{null, @"ISClientValueParameter", 0}];
    if (!v6)
    {
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"ISClientPartnerHeaderChangedNotification" object:self userInfo:v9];
  }

  _Block_object_dispose(&v14, 8);
}

void __35__AMSProcessInfo_setPartnerHeader___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 16);
  if (v3 != v2 && ([v3 isEqual:?] & 1) == 0)
  {
    v4 = [*(a1 + 40) copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = v4;

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

+ (id)arrayForEntitlement:(id)entitlement
{
  v28 = *MEMORY[0x1E69E9840];
  entitlementCopy = entitlement;
  v6 = [self valueForEntitlement:entitlementCopy];
  v7 = v6;
  if (!v6)
  {
    v10 = +[AMSLogConfig sharedConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v10 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_21;
    }

    v12 = AMSLogKey();
    v13 = MEMORY[0x1E696AEC0];
    v14 = objc_opt_class();
    if (v12)
    {
      v15 = AMSLogKey();
      a2 = NSStringFromSelector(a2);
      [v13 stringWithFormat:@"%@: [%@] %@ ", v14, v15, a2];
    }

    else
    {
      v15 = NSStringFromSelector(a2);
      [v13 stringWithFormat:@"%@: %@ ", v14, v15];
    }
    v16 = ;
    v19 = AMSHashIfNeeded(entitlementCopy);
    *buf = 138543618;
    v25 = v16;
    v26 = 2114;
    v27 = v19;
    v20 = "%{public}@Did not find entitlement named %{public}@";
    v21 = oSLogObject;
    v22 = OS_LOG_TYPE_DEBUG;
    goto LABEL_18;
  }

  v8 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;

    goto LABEL_22;
  }

  v10 = +[AMSLogConfig sharedConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v10 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v12 = AMSLogKey();
    v17 = MEMORY[0x1E696AEC0];
    v18 = objc_opt_class();
    if (v12)
    {
      v15 = AMSLogKey();
      a2 = NSStringFromSelector(a2);
      [v17 stringWithFormat:@"%@: [%@] %@ ", v18, v15, a2];
    }

    else
    {
      v15 = NSStringFromSelector(a2);
      [v17 stringWithFormat:@"%@: %@ ", v18, v15];
    }
    v16 = ;
    v19 = AMSHashIfNeeded(entitlementCopy);
    *buf = 138543618;
    v25 = v16;
    v26 = 2114;
    v27 = v19;
    v20 = "%{public}@Entitlement fetch failed. Value is not an array. entitlementName = %{public}@";
    v21 = oSLogObject;
    v22 = OS_LOG_TYPE_ERROR;
LABEL_18:
    _os_log_impl(&dword_192869000, v21, v22, v20, buf, 0x16u);
    if (v12)
    {

      v16 = a2;
    }
  }

LABEL_21:

  v9 = 0;
LABEL_22:

  return v9;
}

+ (BOOL)BOOLForEntitlement:(id)entitlement
{
  v31 = *MEMORY[0x1E69E9840];
  entitlementCopy = entitlement;
  v6 = [self valueForEntitlement:entitlementCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {

      v16 = +[AMSLogConfig sharedConfig];
      if (!v16)
      {
        v16 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v16 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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
        v25 = AMSHashIfNeeded(entitlementCopy);
        *buf = 138543618;
        v28 = v22;
        v29 = 2114;
        v30 = v25;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@Entitlement fetch failed. Value is not a BOOLean. entitlementName = %{public}@", buf, 0x16u);
        if (v18)
        {

          v22 = a2;
        }
      }

      v9 = 0;
    }

    bOOLValue = [v9 BOOLValue];
  }

  else
  {
    v9 = +[AMSLogConfig sharedConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
    {
      v11 = AMSLogKey();
      v12 = MEMORY[0x1E696AEC0];
      v13 = objc_opt_class();
      if (v11)
      {
        v14 = AMSLogKey();
        a2 = NSStringFromSelector(a2);
        [v12 stringWithFormat:@"%@: [%@] %@ ", v13, v14, a2];
      }

      else
      {
        v14 = NSStringFromSelector(a2);
        [v12 stringWithFormat:@"%@: %@ ", v13, v14];
      }
      v15 = ;
      v23 = AMSHashIfNeeded(entitlementCopy);
      *buf = 138543618;
      v28 = v15;
      v29 = 2114;
      v30 = v23;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEBUG, "%{public}@Did not find entitlement named %{public}@", buf, 0x16u);
      if (v11)
      {

        v15 = a2;
      }
    }

    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (BOOL)BOOLForMachLookupAccess:(id)access
{
  if (!access)
  {
    return 0;
  }

  accessCopy = access;
  getpid();
  [accessCopy UTF8String];

  return sandbox_check() == 0;
}

+ (BOOL)hasValue:(id)value inArrayForEntitlement:(id)entitlement
{
  valueCopy = value;
  v7 = [self arrayForEntitlement:entitlement];
  LOBYTE(self) = [v7 containsObject:valueCopy];

  return self;
}

+ (void)setDefaultMediaTypeForCurrentProcess:(id)process
{
  v13 = *MEMORY[0x1E69E9840];
  processCopy = process;
  os_unfair_lock_assert_not_owner(&_MergedGlobals_143);
  v5 = +[AMSLogConfig sharedAccountsConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    selfCopy = self;
    v11 = 2114;
    v12 = processCopy;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Setting the default media type for the process. defaultMediaType = %{public}@", &v9, 0x16u);
  }

  os_unfair_lock_lock_with_options();
  v7 = [processCopy copy];
  v8 = qword_1ED6E3058;
  qword_1ED6E3058 = v7;

  os_unfair_lock_unlock(&_MergedGlobals_143);
}

+ (id)stringForEntitlement:(id)entitlement
{
  v28 = *MEMORY[0x1E69E9840];
  entitlementCopy = entitlement;
  v6 = [self valueForEntitlement:entitlementCopy];
  v7 = v6;
  if (!v6)
  {
    v10 = +[AMSLogConfig sharedConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v10 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_21;
    }

    v12 = AMSLogKey();
    v13 = MEMORY[0x1E696AEC0];
    v14 = objc_opt_class();
    if (v12)
    {
      v15 = AMSLogKey();
      a2 = NSStringFromSelector(a2);
      [v13 stringWithFormat:@"%@: [%@] %@ ", v14, v15, a2];
    }

    else
    {
      v15 = NSStringFromSelector(a2);
      [v13 stringWithFormat:@"%@: %@ ", v14, v15];
    }
    v16 = ;
    v19 = AMSHashIfNeeded(entitlementCopy);
    *buf = 138543618;
    v25 = v16;
    v26 = 2114;
    v27 = v19;
    v20 = "%{public}@Did not find entitlement named %{public}@";
    v21 = oSLogObject;
    v22 = OS_LOG_TYPE_DEBUG;
    goto LABEL_18;
  }

  v8 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;

    goto LABEL_22;
  }

  v10 = +[AMSLogConfig sharedConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v10 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v12 = AMSLogKey();
    v17 = MEMORY[0x1E696AEC0];
    v18 = objc_opt_class();
    if (v12)
    {
      v15 = AMSLogKey();
      a2 = NSStringFromSelector(a2);
      [v17 stringWithFormat:@"%@: [%@] %@ ", v18, v15, a2];
    }

    else
    {
      v15 = NSStringFromSelector(a2);
      [v17 stringWithFormat:@"%@: %@ ", v18, v15];
    }
    v16 = ;
    v19 = AMSHashIfNeeded(entitlementCopy);
    *buf = 138543618;
    v25 = v16;
    v26 = 2114;
    v27 = v19;
    v20 = "%{public}@Entitlement fetch failed. Value is not a string. entitlementName = %{public}@";
    v21 = oSLogObject;
    v22 = OS_LOG_TYPE_ERROR;
LABEL_18:
    _os_log_impl(&dword_192869000, v21, v22, v20, buf, 0x16u);
    if (v12)
    {

      v16 = a2;
    }
  }

LABEL_21:

  v9 = 0;
LABEL_22:

  return v9;
}

+ (id)valueForEntitlement:(id)entitlement
{
  v17 = *MEMORY[0x1E69E9840];
  entitlementCopy = entitlement;
  if (entitlementCopy && (v5 = SecTaskCreateFromSelf(0)) != 0)
  {
    v6 = v5;
    error = 0;
    v7 = SecTaskCopyValueForEntitlement(v5, entitlementCopy, &error);
    if (error)
    {
      v8 = +[AMSLogConfig sharedConfig];
      if (!v8)
      {
        v8 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v8 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v10 = AMSLogableError(error);
        *buf = 138543618;
        selfCopy = self;
        v15 = 2114;
        v16 = v10;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Entitlement fetch failed with error: %{public}@", buf, 0x16u);
      }

      CFRelease(error);
    }

    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setBundleIdentifier:(id)identifier
{
  objc_storeStrong(&self->_bundleIdentifier, identifier);
  identifierCopy = identifier;
  [(AMSProcessInfo *)self _setComputedPropertiesForBundleIdentifier:identifierCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  executableName = [(AMSProcessInfo *)self executableName];
  bundleIdentifier = [(AMSProcessInfo *)self bundleIdentifier];
  clientVersion = [(AMSProcessInfo *)self clientVersion];
  accountMediaType = [(AMSProcessInfo *)self accountMediaType];
  proxyAppBundleID = [(AMSProcessInfo *)self proxyAppBundleID];
  treatmentNamespace = [(AMSProcessInfo *)self treatmentNamespace];
  userAgentSuffix = [(AMSProcessInfo *)self userAgentSuffix];
  v11 = [v3 stringWithFormat:@"<AMSProcessInfo: %p name = %@ | bundleIdentifier = %@ | clientVersion = %@ | mediaType = %@ | proxyAppBundleID = %@ | treatmentNamespace = %@ | userAgentSuffix = %@>", self, executableName, bundleIdentifier, clientVersion, accountMediaType, proxyAppBundleID, treatmentNamespace, userAgentSuffix];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
    v11 = 0;
    userAgentSuffix = equalCopy;
    goto LABEL_9;
  }

  v6 = equalCopy;

  if (!v6)
  {
    goto LABEL_68;
  }

  accountMediaType = [(AMSProcessInfo *)self accountMediaType];
  if (accountMediaType || ([v6 accountMediaType], (treatmentNamespace2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    accountMediaType2 = [(AMSProcessInfo *)self accountMediaType];
    accountMediaType3 = [v6 accountMediaType];
    v10 = [accountMediaType2 isEqual:accountMediaType3];

    if (accountMediaType)
    {

      if (!v10)
      {
        goto LABEL_68;
      }
    }

    else
    {

      if ((v10 & 1) == 0)
      {
        goto LABEL_68;
      }
    }
  }

  auditTokenData = [(AMSProcessInfo *)self auditTokenData];
  if (auditTokenData || ([v6 auditTokenData], (treatmentNamespace2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    auditTokenData2 = [(AMSProcessInfo *)self auditTokenData];
    auditTokenData3 = [v6 auditTokenData];
    v16 = [auditTokenData2 isEqual:auditTokenData3];

    if (auditTokenData)
    {

      if (!v16)
      {
        goto LABEL_68;
      }
    }

    else
    {

      if ((v16 & 1) == 0)
      {
        goto LABEL_68;
      }
    }
  }

  bundleIdentifier = [(AMSProcessInfo *)self bundleIdentifier];
  if (bundleIdentifier || ([v6 bundleIdentifier], (treatmentNamespace2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    bundleIdentifier2 = [(AMSProcessInfo *)self bundleIdentifier];
    bundleIdentifier3 = [v6 bundleIdentifier];
    v20 = [bundleIdentifier2 isEqual:bundleIdentifier3];

    if (bundleIdentifier)
    {

      if (!v20)
      {
        goto LABEL_68;
      }
    }

    else
    {

      if ((v20 & 1) == 0)
      {
        goto LABEL_68;
      }
    }
  }

  bundleURL = [(AMSProcessInfo *)self bundleURL];
  if (bundleURL || ([v6 bundleURL], (treatmentNamespace2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    bundleURL2 = [(AMSProcessInfo *)self bundleURL];
    bundleURL3 = [v6 bundleURL];
    v24 = [bundleURL2 isEqual:bundleURL3];

    if (bundleURL)
    {

      if (!v24)
      {
        goto LABEL_68;
      }
    }

    else
    {

      if ((v24 & 1) == 0)
      {
        goto LABEL_68;
      }
    }
  }

  clientVersion = [(AMSProcessInfo *)self clientVersion];
  if (clientVersion || ([v6 clientVersion], (treatmentNamespace2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    clientVersion2 = [(AMSProcessInfo *)self clientVersion];
    clientVersion3 = [v6 clientVersion];
    v28 = [clientVersion2 isEqual:clientVersion3];

    if (clientVersion)
    {

      if (!v28)
      {
        goto LABEL_68;
      }
    }

    else
    {

      if ((v28 & 1) == 0)
      {
        goto LABEL_68;
      }
    }
  }

  executableName = [(AMSProcessInfo *)self executableName];
  if (executableName || ([v6 executableName], (treatmentNamespace2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    executableName2 = [(AMSProcessInfo *)self executableName];
    executableName3 = [v6 executableName];
    v32 = [executableName2 isEqual:executableName3];

    if (executableName)
    {

      if (!v32)
      {
        goto LABEL_68;
      }
    }

    else
    {

      if ((v32 & 1) == 0)
      {
        goto LABEL_68;
      }
    }
  }

  localizedName = [(AMSProcessInfo *)self localizedName];
  if (localizedName || ([v6 localizedName], (treatmentNamespace2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    localizedName2 = [(AMSProcessInfo *)self localizedName];
    localizedName3 = [v6 localizedName];
    v36 = [localizedName2 isEqual:localizedName3];

    if (localizedName)
    {

      if (!v36)
      {
        goto LABEL_68;
      }
    }

    else
    {

      if ((v36 & 1) == 0)
      {
        goto LABEL_68;
      }
    }
  }

  partnerHeader = [(AMSProcessInfo *)self partnerHeader];
  if (partnerHeader || ([v6 partnerHeader], (treatmentNamespace2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    partnerHeader2 = [(AMSProcessInfo *)self partnerHeader];
    partnerHeader3 = [v6 partnerHeader];
    v40 = [partnerHeader2 isEqual:partnerHeader3];

    if (partnerHeader)
    {

      if (!v40)
      {
        goto LABEL_68;
      }
    }

    else
    {

      if ((v40 & 1) == 0)
      {
        goto LABEL_68;
      }
    }
  }

  proxyAppBundleID = [(AMSProcessInfo *)self proxyAppBundleID];
  if (proxyAppBundleID || ([v6 proxyAppBundleID], (treatmentNamespace2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    proxyAppBundleID2 = [(AMSProcessInfo *)self proxyAppBundleID];
    proxyAppBundleID3 = [v6 proxyAppBundleID];
    v44 = [proxyAppBundleID2 isEqual:proxyAppBundleID3];

    if (proxyAppBundleID)
    {

      if (!v44)
      {
        goto LABEL_68;
      }
    }

    else
    {

      if ((v44 & 1) == 0)
      {
        goto LABEL_68;
      }
    }
  }

  treatmentNamespace = [(AMSProcessInfo *)self treatmentNamespace];
  if (!treatmentNamespace)
  {
    treatmentNamespace2 = [v6 treatmentNamespace];
    if (!treatmentNamespace2)
    {
      goto LABEL_63;
    }
  }

  treatmentNamespace3 = [(AMSProcessInfo *)self treatmentNamespace];
  treatmentNamespace4 = [v6 treatmentNamespace];
  v48 = [treatmentNamespace3 isEqual:treatmentNamespace4];

  if (treatmentNamespace)
  {

    if (v48)
    {
      goto LABEL_63;
    }

LABEL_68:
    v11 = 0;
    goto LABEL_69;
  }

  if ((v48 & 1) == 0)
  {
    goto LABEL_68;
  }

LABEL_63:
  userAgentSuffix = [(AMSProcessInfo *)self userAgentSuffix];
  if (!userAgentSuffix)
  {
    treatmentNamespace2 = [v6 userAgentSuffix];
    if (!treatmentNamespace2)
    {
      v11 = 1;
LABEL_71:

      goto LABEL_9;
    }
  }

  userAgentSuffix2 = [(AMSProcessInfo *)self userAgentSuffix];
  userAgentSuffix3 = [v6 userAgentSuffix];
  v11 = [userAgentSuffix2 isEqual:userAgentSuffix3];

  if (!userAgentSuffix)
  {
    goto LABEL_71;
  }

LABEL_9:

LABEL_69:
  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(AMSProcessInfo);
  [AMSProcessInfo copyPropertiesFrom:self to:v4];
  return v4;
}

+ (void)copyPropertiesFrom:(id)from to:(id)to
{
  v5 = *(from + 3);
  toCopy = to;
  fromCopy = from;
  v8 = [v5 copy];
  v9 = toCopy[3];
  toCopy[3] = v8;

  v10 = [fromCopy[4] copy];
  v11 = toCopy[4];
  toCopy[4] = v10;

  v12 = [fromCopy[5] copy];
  v13 = toCopy[5];
  toCopy[5] = v12;

  v14 = [fromCopy[6] copy];
  v15 = toCopy[6];
  toCopy[6] = v14;

  v16 = [fromCopy[7] copy];
  v17 = toCopy[7];
  toCopy[7] = v16;

  v18 = [fromCopy[8] copy];
  v19 = toCopy[8];
  toCopy[8] = v18;

  v20 = [fromCopy[9] copy];
  v21 = toCopy[9];
  toCopy[9] = v20;

  v22 = [fromCopy[2] copy];
  v23 = toCopy[2];
  toCopy[2] = v22;

  v24 = [fromCopy[14] copy];
  v25 = toCopy[14];
  toCopy[14] = v24;

  v26 = [fromCopy[10] copy];
  v27 = toCopy[10];
  toCopy[10] = v26;

  v28 = [fromCopy[11] copy];
  v29 = toCopy[11];
  toCopy[11] = v28;

  v30 = fromCopy[12];
  v31 = [v30 copy];
  v32 = toCopy[12];
  toCopy[12] = v31;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accountMediaType = [(AMSProcessInfo *)self accountMediaType];
  [coderCopy encodeObject:accountMediaType forKey:@"mediaType"];

  auditTokenData = [(AMSProcessInfo *)self auditTokenData];
  [coderCopy encodeObject:auditTokenData forKey:@"auditTokenData"];

  bundleIdentifier = [(AMSProcessInfo *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleID"];

  bundleURL = [(AMSProcessInfo *)self bundleURL];
  [coderCopy encodeObject:bundleURL forKey:@"bundleURL"];

  clientVersion = [(AMSProcessInfo *)self clientVersion];
  [coderCopy encodeObject:clientVersion forKey:@"clientVersion"];

  executableName = [(AMSProcessInfo *)self executableName];
  [coderCopy encodeObject:executableName forKey:@"executableName"];

  localizedName = [(AMSProcessInfo *)self localizedName];
  [coderCopy encodeObject:localizedName forKey:@"localizedName"];

  partnerHeader = [(AMSProcessInfo *)self partnerHeader];
  [coderCopy encodeObject:partnerHeader forKey:@"partnerHeader"];

  processIdentifier = [(AMSProcessInfo *)self processIdentifier];
  [coderCopy encodeObject:processIdentifier forKey:@"processIdentifier"];

  proxyAppBundleID = [(AMSProcessInfo *)self proxyAppBundleID];
  [coderCopy encodeObject:proxyAppBundleID forKey:@"proxyAppBundleID"];

  treatmentNamespace = [(AMSProcessInfo *)self treatmentNamespace];
  [coderCopy encodeObject:treatmentNamespace forKey:@"treatmentNamespace"];

  userAgentSuffix = [(AMSProcessInfo *)self userAgentSuffix];
  [coderCopy encodeObject:userAgentSuffix forKey:@"userAgentSuffix"];
}

- (AMSProcessInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AMSProcessInfo *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaType"];
    accountMediaType = v5->_accountMediaType;
    v5->_accountMediaType = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"auditTokenData"];
    auditTokenData = v5->_auditTokenData;
    v5->_auditTokenData = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleURL"];
    bundleURL = v5->_bundleURL;
    v5->_bundleURL = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientVersion"];
    clientVersion = v5->_clientVersion;
    v5->_clientVersion = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"executableName"];
    executableName = v5->_executableName;
    v5->_executableName = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedName"];
    localizedName = v5->_localizedName;
    v5->_localizedName = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"partnerHeader"];
    partnerHeader = v5->_partnerHeader;
    v5->_partnerHeader = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"processIdentifier"];
    processIdentifier = v5->_processIdentifier;
    v5->_processIdentifier = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proxyAppBundleID"];
    proxyAppBundleID = v5->_proxyAppBundleID;
    v5->_proxyAppBundleID = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"treatmentNamespace"];
    treatmentNamespace = v5->_treatmentNamespace;
    v5->_treatmentNamespace = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userAgentSuffix"];
    userAgentSuffix = v5->_userAgentSuffix;
    v5->_userAgentSuffix = v28;
  }

  return v5;
}

+ (id)_bundleForIdentifier:(id)identifier record:(id)record
{
  recordCopy = record;
  if (identifier)
  {
    identifierCopy = identifier;
    _currentProcessBundleIdentifier = [self _currentProcessBundleIdentifier];
    v9 = [_currentProcessBundleIdentifier isEqualToString:identifierCopy];

    if (!v9)
    {
      goto LABEL_7;
    }

    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    if (mainBundle)
    {
LABEL_14:
      identifier = mainBundle;

      goto LABEL_15;
    }

    MainBundle = CFBundleGetMainBundle();
    if (MainBundle && (v12 = CFBundleCopyBundleURL(MainBundle)) != 0)
    {
      v13 = v12;
      v14 = MEMORY[0x1E696AAE8];
      path = [(__CFURL *)v12 path];
      mainBundle = [v14 bundleWithPath:path];

      CFRelease(v13);
    }

    else
    {
LABEL_7:
      mainBundle = 0;
    }

    if (recordCopy && !mainBundle)
    {
      v16 = [recordCopy URL];
      if (v16)
      {
        mainBundle = [MEMORY[0x1E696AAE8] bundleWithURL:v16];
      }

      else
      {
        mainBundle = 0;
      }
    }

    goto LABEL_14;
  }

LABEL_15:

  return identifier;
}

+ (id)_bundleRecordForIdentifier:(id)identifier
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = +[AMSProcessInfo _currentProcessBundleIdentifier];
  v6 = v5;
  if (identifierCopy)
  {
    if (!v5)
    {
LABEL_8:
      v17 = 0;
      bundleRecordForCurrentProcess = [MEMORY[0x1E6963620] bundleRecordWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:&v17];
      v8 = v17;
      if (bundleRecordForCurrentProcess)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }
  }

  else
  {
    identifierCopy = v5;
    if (!identifierCopy)
    {
      v8 = 0;
      goto LABEL_11;
    }
  }

  if (![identifierCopy isEqualToString:v6])
  {
    goto LABEL_8;
  }

  bundleRecordForCurrentProcess = [MEMORY[0x1E6963620] bundleRecordForCurrentProcess];
  v8 = 0;
  if (bundleRecordForCurrentProcess)
  {
    goto LABEL_21;
  }

LABEL_11:
  v9 = +[AMSLogConfig sharedConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v11 = AMSLogKey();
    v12 = MEMORY[0x1E696AEC0];
    v13 = objc_opt_class();
    v14 = v13;
    if (v11)
    {
      self = AMSLogKey();
      [v12 stringWithFormat:@"%@: [%@] ", v14, self];
    }

    else
    {
      [v12 stringWithFormat:@"%@: ", v13];
    }
    selfCopy = ;
    *buf = 138543618;
    v19 = selfCopy;
    v20 = 2114;
    v21 = v8;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@Failed to fetch bundle record, error: %{public}@", buf, 0x16u);
    if (v11)
    {

      selfCopy = self;
    }
  }

  bundleRecordForCurrentProcess = 0;
LABEL_21:

  return bundleRecordForCurrentProcess;
}

+ (void)_cacheProcessInfo:(id)info
{
  infoCopy = info;
  bundleIdentifier = [infoCopy bundleIdentifier];

  if (bundleIdentifier)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __36__AMSProcessInfo__cacheProcessInfo___block_invoke;
    v6[3] = &unk_1E73BAC08;
    v7 = infoCopy;
    [self _accessProcessInfoCache:v6];
  }
}

void __36__AMSProcessInfo__cacheProcessInfo___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 bundleIdentifier];
  [v3 setObject:v2 forKey:v4];
}

+ (id)_cachedProcessInfoForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[AMSUnitTests isRunningUnitTests];
  v6 = 0;
  if (identifierCopy && !v5)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__55;
    v15 = __Block_byref_object_dispose__55;
    v16 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50__AMSProcessInfo__cachedProcessInfoForIdentifier___block_invoke;
    v8[3] = &unk_1E73BAC30;
    v10 = &v11;
    v9 = identifierCopy;
    [self _accessProcessInfoCache:v8];
    v6 = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  return v6;
}

uint64_t __50__AMSProcessInfo__cachedProcessInfoForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 40) = [a2 objectForKey:*(a1 + 32)];

  return MEMORY[0x1EEE66BB8]();
}

+ (void)_accessProcessInfoCache:(id)cache
{
  cacheCopy = cache;
  if (qword_1ED6E3060 != -1)
  {
    dispatch_once(&qword_1ED6E3060, &__block_literal_global_112);
  }

  v4 = qword_1ED6E3068;
  if (qword_1ED6E3070 != -1)
  {
    dispatch_once(&qword_1ED6E3070, &__block_literal_global_88_2);
  }

  v5 = qword_1ED6E3078;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__AMSProcessInfo__accessProcessInfoCache___block_invoke_3;
  v9[3] = &unk_1E73B43F0;
  v10 = v4;
  v11 = cacheCopy;
  v6 = v4;
  v7 = cacheCopy;
  v8 = v5;
  dispatch_sync(v8, v9);
}

uint64_t __42__AMSProcessInfo__accessProcessInfoCache___block_invoke()
{
  qword_1ED6E3068 = [[AMSLRUCache alloc] initWithMaxSize:20];

  return MEMORY[0x1EEE66BB8]();
}

void __42__AMSProcessInfo__accessProcessInfoCache___block_invoke_2()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.AMSProcessInfo", v2);
  v1 = qword_1ED6E3078;
  qword_1ED6E3078 = v0;
}

- (void)_setComputedPropertiesForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_autoreleasePoolPush();
  v6 = [AMSProcessInfo _bundleRecordForIdentifier:identifierCopy];
  v59[0] = 0;
  v59[1] = v59;
  v59[2] = 0x3032000000;
  v59[3] = __Block_byref_object_copy__55;
  v59[4] = __Block_byref_object_dispose__55;
  v60 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__AMSProcessInfo__setComputedPropertiesForBundleIdentifier___block_invoke;
  aBlock[3] = &unk_1E73BAC58;
  v58 = v59;
  v7 = identifierCopy;
  v56 = v7;
  v8 = v6;
  v57 = v8;
  v9 = _Block_copy(aBlock);
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __60__AMSProcessInfo__setComputedPropertiesForBundleIdentifier___block_invoke_2;
  v52[3] = &unk_1E73BAC80;
  v10 = v8;
  v53 = v10;
  v11 = v9;
  v54 = v11;
  v12 = _Block_copy(v52);
  v13 = [v10 URL];
  v14 = v13;
  context = v5;
  v51 = v7;
  if (v13)
  {
    bundleURL = v13;
  }

  else
  {
    v16 = v11[2](v11);
    bundleURL = [v16 bundleURL];
  }

  executableURL = [v10 executableURL];
  lastPathComponent = [executableURL lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
  v20 = stringByDeletingPathExtension;
  if (stringByDeletingPathExtension)
  {
    v21 = stringByDeletingPathExtension;
  }

  else
  {
    v22 = objc_opt_class();
    v21 = v12[2](v12, *MEMORY[0x1E695E4E8], v22);
  }

  v23 = v21;

  localizedName = [v10 localizedName];
  v25 = localizedName;
  if (localizedName)
  {
    v26 = localizedName;
  }

  else
  {
    v27 = objc_opt_class();
    v26 = v12[2](v12, *MEMORY[0x1E695E120], v27);
  }

  v28 = v26;

  v29 = objc_opt_class();
  v30 = v12[2](v12, *MEMORY[0x1E695E148], v29);
  v31 = v30;
  if (v30)
  {
    v32 = v30;
  }

  else
  {
    v33 = objc_opt_class();
    v32 = v12[2](v12, *MEMORY[0x1E695E500], v33);
  }

  v34 = v32;

  if (self->_bundleURL)
  {
    bundleURL = self->_bundleURL;
  }

  else
  {
    bundleURL = bundleURL;
  }

  objc_storeStrong(&self->_bundleURL, bundleURL);
  if (self->_executableName)
  {
    executableName = self->_executableName;
  }

  else
  {
    executableName = v23;
  }

  objc_storeStrong(&self->_executableName, executableName);
  if (self->_localizedName)
  {
    localizedName = self->_localizedName;
  }

  else
  {
    localizedName = v28;
  }

  objc_storeStrong(&self->_localizedName, localizedName);
  processIdentifier = self->_processIdentifier;
  if (processIdentifier)
  {
    v39 = processIdentifier;
    processInfo = self->_processIdentifier;
    self->_processIdentifier = v39;
  }

  else
  {
    v41 = MEMORY[0x1E696AD98];
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    v42 = [v41 numberWithInt:{objc_msgSend(processInfo, "processIdentifier")}];
    v43 = self->_processIdentifier;
    self->_processIdentifier = v42;
  }

  clientVersion = self->_clientVersion;
  if (!clientVersion || [(NSString *)clientVersion isEqualToString:@"0.0"])
  {
    objc_storeStrong(&self->_clientVersion, v34);
  }

  _Block_object_dispose(v59, 8);
  objc_autoreleasePoolPop(context);
  v45 = [AMSMappedBundleInfo bundleInfoForProcessInfo:self];
  mappedBundleInfo = self->_mappedBundleInfo;
  self->_mappedBundleInfo = v45;

  accountMediaType = self->_accountMediaType;
  if (accountMediaType)
  {
    accountMediaType = accountMediaType;
  }

  else
  {
    accountMediaType = [(AMSMappedBundleInfo *)self->_mappedBundleInfo accountMediaType];
  }

  v49 = self->_accountMediaType;
  self->_accountMediaType = accountMediaType;
}

id __60__AMSProcessInfo__setComputedPropertiesForBundleIdentifier___block_invoke(void *a1)
{
  v2 = *(a1[6] + 8);
  v3 = *(v2 + 40);
  if (v3)
  {
    v4 = v3;
    v5 = *(v2 + 40);
    *(v2 + 40) = v4;
  }

  else
  {
    v6 = [AMSProcessInfo _bundleForIdentifier:a1[4] record:a1[5]];
    v7 = *(a1[6] + 8);
    v5 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  v8 = *(*(a1[6] + 8) + 40);

  return v8;
}

id __60__AMSProcessInfo__setComputedPropertiesForBundleIdentifier___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) infoDictionary];
  v7 = [v6 objectForKey:a2 ofClass:a3];

  if (!v7)
  {
    v8 = (*(*(a1 + 40) + 16))();
    v9 = [v8 infoDictionary];
    v7 = [v9 objectForKeyedSubscript:a2];
  }

  return v7;
}

- (id)generateConfigurationFromBagContract:(id)contract
{
  v4 = MEMORY[0x1E695AC80];
  contractCopy = contract;
  v6 = [[AMSContractBagShim alloc] initWithBagContract:contractCopy];

  v7 = [v4 ams_configurationWithProcessInfo:self bag:v6];

  return v7;
}

@end