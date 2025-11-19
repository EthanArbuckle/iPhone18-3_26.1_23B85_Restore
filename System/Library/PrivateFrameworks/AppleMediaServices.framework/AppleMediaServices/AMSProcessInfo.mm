@interface AMSProcessInfo
+ (AMSProcessInfo)currentProcess;
+ (BOOL)BOOLForEntitlement:(id)a3;
+ (BOOL)BOOLForMachLookupAccess:(id)a3;
+ (BOOL)hasValue:(id)a3 inArrayForEntitlement:(id)a4;
+ (NSString)defaultMediaTypeForCurrentProcess;
+ (id)_bundleForIdentifier:(id)a3 record:(id)a4;
+ (id)_bundleRecordForIdentifier:(id)a3;
+ (id)_cachedProcessInfoForIdentifier:(id)a3;
+ (id)_currentProcessBundleIdentifier;
+ (id)arrayForEntitlement:(id)a3;
+ (id)stringForEntitlement:(id)a3;
+ (id)valueForEntitlement:(id)a3;
+ (void)_accessProcessInfoCache:(id)a3;
+ (void)_cacheProcessInfo:(id)a3;
+ (void)copyPropertiesFrom:(id)a3 to:(id)a4;
+ (void)setDefaultMediaTypeForCurrentProcess:(id)a3;
- (AMSProcessInfo)init;
- (AMSProcessInfo)initWithBundleIdentifier:(id)a3;
- (AMSProcessInfo)initWithCoder:(id)a3;
- (BOOL)isAMSAccountsDaemon;
- (BOOL)isAccountsDaemon;
- (BOOL)isEqual:(id)a3;
- (NSString)partnerHeader;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)generateConfigurationFromBagContract:(id)a3;
- (void)_setComputedPropertiesForBundleIdentifier:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setBundleIdentifier:(id)a3;
- (void)setPartnerHeader:(id)a3;
@end

@implementation AMSProcessInfo

+ (NSString)defaultMediaTypeForCurrentProcess
{
  os_unfair_lock_assert_not_owner(&_MergedGlobals_143);
  if (+[AMSUnitTests isRunningUnitTests])
  {
    v3 = [AMSProcessInfo alloc];
    v4 = [a1 _currentProcessBundleIdentifier];
    v5 = [(AMSProcessInfo *)v3 initWithBundleIdentifier:v4];

    v6 = [(AMSProcessInfo *)v5 accountMediaType];
  }

  else
  {
    os_unfair_lock_lock(&_MergedGlobals_143);
    v7 = qword_1ED6E3058;
    if (!qword_1ED6E3058)
    {
      v8 = +[AMSProcessInfo currentProcess];
      v9 = [v8 accountMediaType];
      v10 = [v9 copy];
      v11 = qword_1ED6E3058;
      qword_1ED6E3058 = v10;

      v7 = qword_1ED6E3058;
    }

    v6 = [v7 copy];
    os_unfair_lock_unlock(&_MergedGlobals_143);
  }

  return v6;
}

+ (AMSProcessInfo)currentProcess
{
  v2 = +[AMSProcessInfo _currentProcessBundleIdentifier];
  v3 = [[AMSProcessInfo alloc] initWithBundleIdentifier:v2];
  v4 = [(AMSProcessInfo *)v3 executableName];
  v5 = [v4 length];

  if (!v5)
  {
    v6 = [MEMORY[0x1E696AE30] processInfo];
    v7 = [v6 processName];
    [(AMSProcessInfo *)v3 setExecutableName:v7];

    v8 = MEMORY[0x1E696AD98];
    v9 = [MEMORY[0x1E696AE30] processInfo];
    v10 = [v8 numberWithInt:{objc_msgSend(v9, "processIdentifier")}];
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
  v2 = [(AMSProcessInfo *)self bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.accountsd"];

  return v3;
}

- (BOOL)isAMSAccountsDaemon
{
  v2 = [(AMSProcessInfo *)self bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.amsaccountsd"];

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

- (AMSProcessInfo)initWithBundleIdentifier:(id)a3
{
  v5 = a3;
  v6 = [(AMSProcessInfo *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifier, a3);
    v8 = [AMSProcessInfo _cachedProcessInfoForIdentifier:v5];
    if (v8)
    {
      [AMSProcessInfo copyPropertiesFrom:v8 to:v7];
    }

    else
    {
      [(AMSProcessInfo *)v7 _setComputedPropertiesForBundleIdentifier:v5];
      v9 = [(AMSProcessInfo *)v7 copy];
      [AMSProcessInfo _cacheProcessInfo:v9];
    }
  }

  return v7;
}

- (void)setPartnerHeader:(id)a3
{
  v4 = a3;
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
  v6 = v4;
  v12 = v6;
  v13 = &v14;
  dispatch_sync(internalQueue, block);
  if (*(v15 + 24) == 1)
  {
    v7 = objc_alloc(MEMORY[0x1E695DF20]);
    v8 = v6;
    if (!v6)
    {
      v8 = [MEMORY[0x1E695DFB0] null];
    }

    v9 = [v7 initWithObjectsAndKeys:{v8, @"ISClientValueParameter", 0}];
    if (!v6)
    {
    }

    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 postNotificationName:@"ISClientPartnerHeaderChangedNotification" object:self userInfo:v9];
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

+ (id)arrayForEntitlement:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a1 valueForEntitlement:v5];
  v7 = v6;
  if (!v6)
  {
    v10 = +[AMSLogConfig sharedConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
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
    v19 = AMSHashIfNeeded(v5);
    *buf = 138543618;
    v25 = v16;
    v26 = 2114;
    v27 = v19;
    v20 = "%{public}@Did not find entitlement named %{public}@";
    v21 = v11;
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

  v11 = [v10 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
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
    v19 = AMSHashIfNeeded(v5);
    *buf = 138543618;
    v25 = v16;
    v26 = 2114;
    v27 = v19;
    v20 = "%{public}@Entitlement fetch failed. Value is not an array. entitlementName = %{public}@";
    v21 = v11;
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

+ (BOOL)BOOLForEntitlement:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a1 valueForEntitlement:v5];
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

      v17 = [v16 OSLogObject];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
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
        v25 = AMSHashIfNeeded(v5);
        *buf = 138543618;
        v28 = v22;
        v29 = 2114;
        v30 = v25;
        _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_ERROR, "%{public}@Entitlement fetch failed. Value is not a BOOLean. entitlementName = %{public}@", buf, 0x16u);
        if (v18)
        {

          v22 = a2;
        }
      }

      v9 = 0;
    }

    v24 = [v9 BOOLValue];
  }

  else
  {
    v9 = +[AMSLogConfig sharedConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
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
      v23 = AMSHashIfNeeded(v5);
      *buf = 138543618;
      v28 = v15;
      v29 = 2114;
      v30 = v23;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Did not find entitlement named %{public}@", buf, 0x16u);
      if (v11)
      {

        v15 = a2;
      }
    }

    v24 = 0;
  }

  return v24;
}

+ (BOOL)BOOLForMachLookupAccess:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  getpid();
  [v3 UTF8String];

  return sandbox_check() == 0;
}

+ (BOOL)hasValue:(id)a3 inArrayForEntitlement:(id)a4
{
  v6 = a3;
  v7 = [a1 arrayForEntitlement:a4];
  LOBYTE(a1) = [v7 containsObject:v6];

  return a1;
}

+ (void)setDefaultMediaTypeForCurrentProcess:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_assert_not_owner(&_MergedGlobals_143);
  v5 = +[AMSLogConfig sharedAccountsConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = a1;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Setting the default media type for the process. defaultMediaType = %{public}@", &v9, 0x16u);
  }

  os_unfair_lock_lock_with_options();
  v7 = [v4 copy];
  v8 = qword_1ED6E3058;
  qword_1ED6E3058 = v7;

  os_unfair_lock_unlock(&_MergedGlobals_143);
}

+ (id)stringForEntitlement:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a1 valueForEntitlement:v5];
  v7 = v6;
  if (!v6)
  {
    v10 = +[AMSLogConfig sharedConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
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
    v19 = AMSHashIfNeeded(v5);
    *buf = 138543618;
    v25 = v16;
    v26 = 2114;
    v27 = v19;
    v20 = "%{public}@Did not find entitlement named %{public}@";
    v21 = v11;
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

  v11 = [v10 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
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
    v19 = AMSHashIfNeeded(v5);
    *buf = 138543618;
    v25 = v16;
    v26 = 2114;
    v27 = v19;
    v20 = "%{public}@Entitlement fetch failed. Value is not a string. entitlementName = %{public}@";
    v21 = v11;
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

+ (id)valueForEntitlement:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4 && (v5 = SecTaskCreateFromSelf(0)) != 0)
  {
    v6 = v5;
    error = 0;
    v7 = SecTaskCopyValueForEntitlement(v5, v4, &error);
    if (error)
    {
      v8 = +[AMSLogConfig sharedConfig];
      if (!v8)
      {
        v8 = +[AMSLogConfig sharedConfig];
      }

      v9 = [v8 OSLogObject];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = AMSLogableError(error);
        *buf = 138543618;
        v14 = a1;
        v15 = 2114;
        v16 = v10;
        _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@: Entitlement fetch failed with error: %{public}@", buf, 0x16u);
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

- (void)setBundleIdentifier:(id)a3
{
  objc_storeStrong(&self->_bundleIdentifier, a3);
  v5 = a3;
  [(AMSProcessInfo *)self _setComputedPropertiesForBundleIdentifier:v5];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(AMSProcessInfo *)self executableName];
  v5 = [(AMSProcessInfo *)self bundleIdentifier];
  v6 = [(AMSProcessInfo *)self clientVersion];
  v7 = [(AMSProcessInfo *)self accountMediaType];
  v8 = [(AMSProcessInfo *)self proxyAppBundleID];
  v9 = [(AMSProcessInfo *)self treatmentNamespace];
  v10 = [(AMSProcessInfo *)self userAgentSuffix];
  v11 = [v3 stringWithFormat:@"<AMSProcessInfo: %p name = %@ | bundleIdentifier = %@ | clientVersion = %@ | mediaType = %@ | proxyAppBundleID = %@ | treatmentNamespace = %@ | userAgentSuffix = %@>", self, v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
    v11 = 0;
    v12 = v5;
    goto LABEL_9;
  }

  v6 = v5;

  if (!v6)
  {
    goto LABEL_68;
  }

  v7 = [(AMSProcessInfo *)self accountMediaType];
  if (v7 || ([v6 accountMediaType], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = [(AMSProcessInfo *)self accountMediaType];
    v9 = [v6 accountMediaType];
    v10 = [v8 isEqual:v9];

    if (v7)
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

  v13 = [(AMSProcessInfo *)self auditTokenData];
  if (v13 || ([v6 auditTokenData], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v14 = [(AMSProcessInfo *)self auditTokenData];
    v15 = [v6 auditTokenData];
    v16 = [v14 isEqual:v15];

    if (v13)
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

  v17 = [(AMSProcessInfo *)self bundleIdentifier];
  if (v17 || ([v6 bundleIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v18 = [(AMSProcessInfo *)self bundleIdentifier];
    v19 = [v6 bundleIdentifier];
    v20 = [v18 isEqual:v19];

    if (v17)
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

  v21 = [(AMSProcessInfo *)self bundleURL];
  if (v21 || ([v6 bundleURL], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v22 = [(AMSProcessInfo *)self bundleURL];
    v23 = [v6 bundleURL];
    v24 = [v22 isEqual:v23];

    if (v21)
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

  v25 = [(AMSProcessInfo *)self clientVersion];
  if (v25 || ([v6 clientVersion], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v26 = [(AMSProcessInfo *)self clientVersion];
    v27 = [v6 clientVersion];
    v28 = [v26 isEqual:v27];

    if (v25)
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

  v29 = [(AMSProcessInfo *)self executableName];
  if (v29 || ([v6 executableName], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v30 = [(AMSProcessInfo *)self executableName];
    v31 = [v6 executableName];
    v32 = [v30 isEqual:v31];

    if (v29)
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

  v33 = [(AMSProcessInfo *)self localizedName];
  if (v33 || ([v6 localizedName], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v34 = [(AMSProcessInfo *)self localizedName];
    v35 = [v6 localizedName];
    v36 = [v34 isEqual:v35];

    if (v33)
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

  v37 = [(AMSProcessInfo *)self partnerHeader];
  if (v37 || ([v6 partnerHeader], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v38 = [(AMSProcessInfo *)self partnerHeader];
    v39 = [v6 partnerHeader];
    v40 = [v38 isEqual:v39];

    if (v37)
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

  v41 = [(AMSProcessInfo *)self proxyAppBundleID];
  if (v41 || ([v6 proxyAppBundleID], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v42 = [(AMSProcessInfo *)self proxyAppBundleID];
    v43 = [v6 proxyAppBundleID];
    v44 = [v42 isEqual:v43];

    if (v41)
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

  v45 = [(AMSProcessInfo *)self treatmentNamespace];
  if (!v45)
  {
    v3 = [v6 treatmentNamespace];
    if (!v3)
    {
      goto LABEL_63;
    }
  }

  v46 = [(AMSProcessInfo *)self treatmentNamespace];
  v47 = [v6 treatmentNamespace];
  v48 = [v46 isEqual:v47];

  if (v45)
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
  v12 = [(AMSProcessInfo *)self userAgentSuffix];
  if (!v12)
  {
    v3 = [v6 userAgentSuffix];
    if (!v3)
    {
      v11 = 1;
LABEL_71:

      goto LABEL_9;
    }
  }

  v49 = [(AMSProcessInfo *)self userAgentSuffix];
  v50 = [v6 userAgentSuffix];
  v11 = [v49 isEqual:v50];

  if (!v12)
  {
    goto LABEL_71;
  }

LABEL_9:

LABEL_69:
  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(AMSProcessInfo);
  [AMSProcessInfo copyPropertiesFrom:self to:v4];
  return v4;
}

+ (void)copyPropertiesFrom:(id)a3 to:(id)a4
{
  v5 = *(a3 + 3);
  v6 = a4;
  v7 = a3;
  v8 = [v5 copy];
  v9 = v6[3];
  v6[3] = v8;

  v10 = [v7[4] copy];
  v11 = v6[4];
  v6[4] = v10;

  v12 = [v7[5] copy];
  v13 = v6[5];
  v6[5] = v12;

  v14 = [v7[6] copy];
  v15 = v6[6];
  v6[6] = v14;

  v16 = [v7[7] copy];
  v17 = v6[7];
  v6[7] = v16;

  v18 = [v7[8] copy];
  v19 = v6[8];
  v6[8] = v18;

  v20 = [v7[9] copy];
  v21 = v6[9];
  v6[9] = v20;

  v22 = [v7[2] copy];
  v23 = v6[2];
  v6[2] = v22;

  v24 = [v7[14] copy];
  v25 = v6[14];
  v6[14] = v24;

  v26 = [v7[10] copy];
  v27 = v6[10];
  v6[10] = v26;

  v28 = [v7[11] copy];
  v29 = v6[11];
  v6[11] = v28;

  v30 = v7[12];
  v31 = [v30 copy];
  v32 = v6[12];
  v6[12] = v31;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AMSProcessInfo *)self accountMediaType];
  [v4 encodeObject:v5 forKey:@"mediaType"];

  v6 = [(AMSProcessInfo *)self auditTokenData];
  [v4 encodeObject:v6 forKey:@"auditTokenData"];

  v7 = [(AMSProcessInfo *)self bundleIdentifier];
  [v4 encodeObject:v7 forKey:@"bundleID"];

  v8 = [(AMSProcessInfo *)self bundleURL];
  [v4 encodeObject:v8 forKey:@"bundleURL"];

  v9 = [(AMSProcessInfo *)self clientVersion];
  [v4 encodeObject:v9 forKey:@"clientVersion"];

  v10 = [(AMSProcessInfo *)self executableName];
  [v4 encodeObject:v10 forKey:@"executableName"];

  v11 = [(AMSProcessInfo *)self localizedName];
  [v4 encodeObject:v11 forKey:@"localizedName"];

  v12 = [(AMSProcessInfo *)self partnerHeader];
  [v4 encodeObject:v12 forKey:@"partnerHeader"];

  v13 = [(AMSProcessInfo *)self processIdentifier];
  [v4 encodeObject:v13 forKey:@"processIdentifier"];

  v14 = [(AMSProcessInfo *)self proxyAppBundleID];
  [v4 encodeObject:v14 forKey:@"proxyAppBundleID"];

  v15 = [(AMSProcessInfo *)self treatmentNamespace];
  [v4 encodeObject:v15 forKey:@"treatmentNamespace"];

  v16 = [(AMSProcessInfo *)self userAgentSuffix];
  [v4 encodeObject:v16 forKey:@"userAgentSuffix"];
}

- (AMSProcessInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AMSProcessInfo *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mediaType"];
    accountMediaType = v5->_accountMediaType;
    v5->_accountMediaType = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"auditTokenData"];
    auditTokenData = v5->_auditTokenData;
    v5->_auditTokenData = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleURL"];
    bundleURL = v5->_bundleURL;
    v5->_bundleURL = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientVersion"];
    clientVersion = v5->_clientVersion;
    v5->_clientVersion = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"executableName"];
    executableName = v5->_executableName;
    v5->_executableName = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedName"];
    localizedName = v5->_localizedName;
    v5->_localizedName = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"partnerHeader"];
    partnerHeader = v5->_partnerHeader;
    v5->_partnerHeader = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"processIdentifier"];
    processIdentifier = v5->_processIdentifier;
    v5->_processIdentifier = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyAppBundleID"];
    proxyAppBundleID = v5->_proxyAppBundleID;
    v5->_proxyAppBundleID = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"treatmentNamespace"];
    treatmentNamespace = v5->_treatmentNamespace;
    v5->_treatmentNamespace = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userAgentSuffix"];
    userAgentSuffix = v5->_userAgentSuffix;
    v5->_userAgentSuffix = v28;
  }

  return v5;
}

+ (id)_bundleForIdentifier:(id)a3 record:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = a3;
    v8 = [a1 _currentProcessBundleIdentifier];
    v9 = [v8 isEqualToString:v7];

    if (!v9)
    {
      goto LABEL_7;
    }

    v10 = [MEMORY[0x1E696AAE8] mainBundle];
    if (v10)
    {
LABEL_14:
      a3 = v10;

      goto LABEL_15;
    }

    MainBundle = CFBundleGetMainBundle();
    if (MainBundle && (v12 = CFBundleCopyBundleURL(MainBundle)) != 0)
    {
      v13 = v12;
      v14 = MEMORY[0x1E696AAE8];
      v15 = [(__CFURL *)v12 path];
      v10 = [v14 bundleWithPath:v15];

      CFRelease(v13);
    }

    else
    {
LABEL_7:
      v10 = 0;
    }

    if (v6 && !v10)
    {
      v16 = [v6 URL];
      if (v16)
      {
        v10 = [MEMORY[0x1E696AAE8] bundleWithURL:v16];
      }

      else
      {
        v10 = 0;
      }
    }

    goto LABEL_14;
  }

LABEL_15:

  return a3;
}

+ (id)_bundleRecordForIdentifier:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[AMSProcessInfo _currentProcessBundleIdentifier];
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
LABEL_8:
      v17 = 0;
      v7 = [MEMORY[0x1E6963620] bundleRecordWithBundleIdentifier:v4 allowPlaceholder:1 error:&v17];
      v8 = v17;
      if (v7)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v4 = v5;
    if (!v4)
    {
      v8 = 0;
      goto LABEL_11;
    }
  }

  if (![v4 isEqualToString:v6])
  {
    goto LABEL_8;
  }

  v7 = [MEMORY[0x1E6963620] bundleRecordForCurrentProcess];
  v8 = 0;
  if (v7)
  {
    goto LABEL_21;
  }

LABEL_11:
  v9 = +[AMSLogConfig sharedConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  v10 = [v9 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = AMSLogKey();
    v12 = MEMORY[0x1E696AEC0];
    v13 = objc_opt_class();
    v14 = v13;
    if (v11)
    {
      a1 = AMSLogKey();
      [v12 stringWithFormat:@"%@: [%@] ", v14, a1];
    }

    else
    {
      [v12 stringWithFormat:@"%@: ", v13];
    }
    v15 = ;
    *buf = 138543618;
    v19 = v15;
    v20 = 2114;
    v21 = v8;
    _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_INFO, "%{public}@Failed to fetch bundle record, error: %{public}@", buf, 0x16u);
    if (v11)
    {

      v15 = a1;
    }
  }

  v7 = 0;
LABEL_21:

  return v7;
}

+ (void)_cacheProcessInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __36__AMSProcessInfo__cacheProcessInfo___block_invoke;
    v6[3] = &unk_1E73BAC08;
    v7 = v4;
    [a1 _accessProcessInfoCache:v6];
  }
}

void __36__AMSProcessInfo__cacheProcessInfo___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 bundleIdentifier];
  [v3 setObject:v2 forKey:v4];
}

+ (id)_cachedProcessInfoForIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[AMSUnitTests isRunningUnitTests];
  v6 = 0;
  if (v4 && !v5)
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
    v9 = v4;
    [a1 _accessProcessInfoCache:v8];
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

+ (void)_accessProcessInfoCache:(id)a3
{
  v3 = a3;
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
  v11 = v3;
  v6 = v4;
  v7 = v3;
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

- (void)_setComputedPropertiesForBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [AMSProcessInfo _bundleRecordForIdentifier:v4];
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
  v7 = v4;
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
    v15 = v13;
  }

  else
  {
    v16 = v11[2](v11);
    v15 = [v16 bundleURL];
  }

  v17 = [v10 executableURL];
  v18 = [v17 lastPathComponent];
  v19 = [v18 stringByDeletingPathExtension];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v22 = objc_opt_class();
    v21 = v12[2](v12, *MEMORY[0x1E695E4E8], v22);
  }

  v23 = v21;

  v24 = [v10 localizedName];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
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
    bundleURL = v15;
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
    v40 = self->_processIdentifier;
    self->_processIdentifier = v39;
  }

  else
  {
    v41 = MEMORY[0x1E696AD98];
    v40 = [MEMORY[0x1E696AE30] processInfo];
    v42 = [v41 numberWithInt:{objc_msgSend(v40, "processIdentifier")}];
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
    v48 = accountMediaType;
  }

  else
  {
    v48 = [(AMSMappedBundleInfo *)self->_mappedBundleInfo accountMediaType];
  }

  v49 = self->_accountMediaType;
  self->_accountMediaType = v48;
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

- (id)generateConfigurationFromBagContract:(id)a3
{
  v4 = MEMORY[0x1E695AC80];
  v5 = a3;
  v6 = [[AMSContractBagShim alloc] initWithBagContract:v5];

  v7 = [v4 ams_configurationWithProcessInfo:self bag:v6];

  return v7;
}

@end