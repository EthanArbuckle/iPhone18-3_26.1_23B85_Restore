@interface AMSFeatureFlagTask
+ (BOOL)_cacheResponse:(id)response error:(id *)error;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)_cacheDirectory;
+ (id)_cachePath;
+ (id)_deviceClass;
+ (id)cachedRemoteGroups;
+ (id)createBagForSubProfile;
+ (id)lastFetchedDate;
+ (void)_handleDeletedITFEsFromResponse:(id)response;
+ (void)clearCache;
- (id)_updateRemoteFeatureFlags;
- (id)perform;
@end

@implementation AMSFeatureFlagTask

+ (id)cachedRemoteGroups
{
  _cachePath = [self _cachePath];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [defaultManager fileExistsAtPath:_cachePath];

  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:_cachePath];
    if (v5)
    {
      v6 = [AMSFeatureFlagGroup groupsFromDomainData:v5 domain:@"AMPFlagRemote"];
      allValues = [v6 allValues];
    }

    else
    {
      allValues = 0;
    }
  }

  else
  {
    allValues = 0;
  }

  return allValues;
}

+ (id)_cachePath
{
  _cacheDirectory = [self _cacheDirectory];
  v3 = [_cacheDirectory URLByAppendingPathComponent:@"response.plist"];
  path = [v3 path];

  return path;
}

+ (id)_cacheDirectory
{
  ams_cachesDirectory = [MEMORY[0x1E695DFF8] ams_cachesDirectory];
  v3 = [ams_cachesDirectory URLByAppendingPathComponent:@"feature-flags" isDirectory:1];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v3 path];
  [defaultManager createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:0];

  return v3;
}

- (id)perform
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29__AMSFeatureFlagTask_perform__block_invoke;
  v4[3] = &unk_1E73B3588;
  v4[4] = self;
  v2 = [(AMSTask *)self performTaskWithPromiseBlock:v4];

  return v2;
}

+ (id)lastFetchedDate
{
  CFPreferencesAppSynchronize(@"com.apple.storeservices.itfe");
  v2 = CFPreferencesCopyAppValue(@"lastFetched", @"com.apple.storeservices.itfe");

  return v2;
}

+ (void)clearCache
{
  v22 = *MEMORY[0x1E69E9840];
  _cachePath = [self _cachePath];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [defaultManager fileExistsAtPath:_cachePath];

  if (v4)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v15 = 0;
    [defaultManager2 removeItemAtPath:_cachePath error:&v15];
    v6 = v15;

    v7 = +[AMSLogConfig sharedAccountsDaemonConfig];
    v8 = v7;
    if (v6)
    {
      if (!v7)
      {
        v8 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v8 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      v10 = objc_opt_class();
      v11 = v10;
      v12 = AMSLogKey();
      v13 = AMSLogableError(v6);
      *buf = 138543874;
      v17 = v10;
      v18 = 2114;
      v19 = v12;
      v20 = 2114;
      v21 = v13;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error when clearing server-side feature flag cache: %{public}@", buf, 0x20u);
    }

    else
    {
      if (!v7)
      {
        v8 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v8 OSLogObject];
      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      v14 = objc_opt_class();
      v11 = v14;
      v12 = AMSLogKey();
      *buf = 138543618;
      v17 = v14;
      v18 = 2114;
      v19 = v12;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully cleared server-side feature flag cache", buf, 0x16u);
    }

LABEL_12:
  }

  CFPreferencesSetAppValue(@"lastFetched", 0, @"com.apple.storeservices.itfe");
  CFPreferencesAppSynchronize(@"com.apple.storeservices.itfe");
}

- (id)_updateRemoteFeatureFlags
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = +[AMSLogConfig sharedAccountsDaemonConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = AMSLogKey();
    *buf = 138543618;
    v37 = v5;
    v38 = 2114;
    v39 = v7;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting server-side feature flag caching", buf, 0x16u);
  }

  [AMSEphemeralDefaults setSuppressEngagement:1];
  v8 = +[AMSFeatureFlagTask createBagForSubProfile];
  v9 = [v8 URLForKey:@"featureFlagUrl"];
  valuePromise = [v9 valuePromise];

  v10 = +[AMSProcessInfo currentProcess];
  v11 = objc_alloc_init(AMSBagActiveAccountProvider);
  accountMediaType = [v10 accountMediaType];
  v28 = v11;
  v13 = [(AMSBagActiveAccountProvider *)v11 bagStorefrontForAccountMediaType:accountMediaType];

  v14 = [AMSStorefrontSuffixAccessor storefrontSuffixWithClientInfo:v10];
  if ([v14 length] && (objc_msgSend(v13, "containsString:", v14) & 1) == 0)
  {
    v15 = [v13 stringByAppendingString:v14];

    v13 = v15;
  }

  v16 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v17 = +[AMSDevice operatingSystem];
  [v16 appendFormat:@"os=%@", v17];

  v18 = +[AMSDevice productVersion];
  [v16 appendFormat:@"&osVersion=%@", v18];

  _deviceClass = [objc_opt_class() _deviceClass];
  [v16 appendFormat:@"&deviceClass=%@", _deviceClass];

  if (v13)
  {
    [v16 appendFormat:@"&storefront=%@", v13];
  }

  uRLQueryAllowedCharacterSet = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
  v21 = [uRLQueryAllowedCharacterSet mutableCopy];

  [v21 removeCharactersInString:@"+"];
  v22 = [v16 stringByAddingPercentEncodingWithAllowedCharacters:v21];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __47__AMSFeatureFlagTask__updateRemoteFeatureFlags__block_invoke;
  v32[3] = &unk_1E73B7BE0;
  v33 = v22;
  v34 = v8;
  selfCopy = self;
  v23 = v8;
  v24 = v22;
  v25 = [valuePromise thenWithBlock:v32];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __47__AMSFeatureFlagTask__updateRemoteFeatureFlags__block_invoke_2;
  v31[3] = &unk_1E73B5BD8;
  v31[4] = self;
  [v25 addFinishBlock:v31];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __47__AMSFeatureFlagTask__updateRemoteFeatureFlags__block_invoke_80;
  v30[3] = &unk_1E73B3F48;
  v30[4] = self;
  v26 = [v25 thenWithBlock:v30];

  return v26;
}

id __47__AMSFeatureFlagTask__updateRemoteFeatureFlags__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AMSGenerateLogCorrelationKey();
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@?%@", v3, *(a1 + 32)];

  v6 = [MEMORY[0x1E695DFF8] URLWithString:v5];
  v7 = [MEMORY[0x1E695AC68] requestWithURL:v6];
  v8 = [[AMSURLRequest alloc] initWithRequest:v7 bag:*(a1 + 40)];
  [(AMSURLRequest *)v8 setHTTPMethod:@"GET"];
  v9 = [(AMSURLRequest *)v8 properties];
  [v9 setLogUUID:v4];

  v10 = AMSSetLogKey(v4);
  v11 = +[AMSURLSession minimalSession];
  [*(a1 + 48) setSession:v11];

  v12 = [*(a1 + 48) session];
  v13 = [v12 dataTaskPromiseWithRequest:v8];

  return v13;
}

void __47__AMSFeatureFlagTask__updateRemoteFeatureFlags__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[AMSLogConfig sharedAccountsDaemonConfig];
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = v8;
      v10 = AMSLogKey();
      v11 = AMSLogableError(v4);
      v13 = 138543874;
      v14 = v8;
      v15 = 2114;
      v16 = v10;
      v17 = 2114;
      v18 = v11;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error with requesting server-side feature flags: %{public}@", &v13, 0x20u);

LABEL_10:
    }
  }

  else
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v9 = v12;
      v10 = AMSLogKey();
      v13 = 138543618;
      v14 = v12;
      v15 = 2114;
      v16 = v10;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully received feature flag network response", &v13, 0x16u);
      goto LABEL_10;
    }
  }

  [*(a1 + 32) setSession:0];
}

id __47__AMSFeatureFlagTask__updateRemoteFeatureFlags__block_invoke_80(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AE40];
  v3 = [a2 data];
  v13 = 0;
  v4 = [v2 propertyListWithData:v3 options:0 format:0 error:&v13];
  v5 = v13;

  v12 = v5;
  v6 = [objc_opt_class() _cacheResponse:v4 error:&v12];
  v7 = v12;

  if (v6)
  {
    v8 = [AMSFeatureFlagGroup groupsFromDomainData:v4 domain:@"AMPFlagRemote"];
    v9 = [v8 allValues];

    [v9 makeObjectsPerformSelector:sel_activateITFEs];
    [objc_opt_class() _handleDeletedITFEsFromResponse:v4];
    v10 = [AMSPromise promiseWithResult:v9];
  }

  else
  {
    v10 = [AMSPromise promiseWithError:v7];
  }

  return v10;
}

+ (BOOL)_cacheResponse:(id)response error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v6 = [MEMORY[0x1E696AE40] dataWithPropertyList:response format:200 options:0 error:&v19];
  v7 = v19;
  v8 = v7 == 0;
  if (v7)
  {
    v9 = v7;
    v10 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v10 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v12 = AMSLogKey();
      v13 = AMSLogableError(v9);
      *buf = 138543874;
      selfCopy2 = self;
      v22 = 2114;
      v23 = v12;
      v24 = 2114;
      v25 = v13;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error with serializing feature flag response data: %{public}@", buf, 0x20u);

LABEL_11:
    }
  }

  else
  {
    _cachePath = [self _cachePath];
    v18 = 0;
    v15 = [v6 writeToFile:_cachePath options:1 error:&v18];
    v9 = v18;

    if (!v15)
    {
      v8 = 0;
      if (!error)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    CFPreferencesSetAppValue(@"lastFetched", [MEMORY[0x1E695DF00] date], @"com.apple.storeservices.itfe");
    CFPreferencesAppSynchronize(@"com.apple.storeservices.itfe");
    v10 = +[AMSLogConfig sharedAccountsDaemonConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v10 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v12 = AMSLogKey();
      *buf = 138543618;
      selfCopy2 = self;
      v22 = 2114;
      v23 = v12;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully cached feature flag response to disk", buf, 0x16u);
      goto LABEL_11;
    }
  }

  if (error)
  {
LABEL_13:
    v16 = v9;
    *error = v9;
  }

LABEL_14:

  return v8;
}

+ (void)_handleDeletedITFEsFromResponse:(id)response
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = [AMSFeatureFlagGroup groupsFromDomainData:response domain:@"AMPFlagRemote"];
  allValues = [v3 allValues];

  v5 = +[AMSFeatureFlagTask cachedRemoteGroups];
  if ([v5 count])
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    v7 = [MEMORY[0x1E695DFA8] set];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v8 = allValues;
    v9 = [v8 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v38;
      do
      {
        v12 = 0;
        do
        {
          if (*v38 != v11)
          {
            objc_enumerationMutation(v8);
          }

          allITFEs = [*(*(&v37 + 1) + 8 * v12) allITFEs];
          [v6 addObjectsFromArray:allITFEs];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v10);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v14 = v5;
    v15 = [v14 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v34;
      do
      {
        v18 = 0;
        do
        {
          if (*v34 != v17)
          {
            objc_enumerationMutation(v14);
          }

          allITFEs2 = [*(*(&v33 + 1) + 8 * v18) allITFEs];
          [v7 addObjectsFromArray:allITFEs2];

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v16);
    }

    [v7 minusSet:v6];
    v20 = +[AMSFeatureFlagITFE _flagGroupITFEs];
    v21 = +[AMSFeatureFlagITFE fetchCustomFeatures];
    allObjects = [v7 allObjects];
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __54__AMSFeatureFlagTask__handleDeletedITFEsFromResponse___block_invoke;
    v30 = &unk_1E73B7B88;
    v31 = v20;
    v32 = v21;
    v23 = v21;
    v24 = v20;
    v25 = [allObjects ams_filterUsingTest:&v27];
    v26 = [v25 valueForKeyPath:{@"value", v27, v28, v29, v30}];

    [AMSFeatureFlagITFE removeOrphanITFEValues:v26];
  }
}

uint64_t __54__AMSFeatureFlagTask__handleDeletedITFEsFromResponse___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:v3])
  {
    v4 = 0;
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = [v3 value];
    v4 = [v5 containsObject:v6] ^ 1;
  }

  return v4;
}

+ (id)_deviceClass
{
  if (+[AMSDevice deviceIsAudioAccessory])
  {
    return @"AudioAccessory";
  }

  if (+[AMSDevice deviceIsiPad](AMSDevice, "deviceIsiPad") || +[AMSDevice deviceIsiPadSimulator])
  {
    return @"iPad";
  }

  if (+[AMSDevice deviceIsiPhone](AMSDevice, "deviceIsiPhone") || +[AMSDevice deviceIsiPhoneSimulator])
  {
    return @"iPhone";
  }

  return 0;
}

+ (NSString)bagSubProfile
{
  if (_MergedGlobals_111 != -1)
  {
    dispatch_once(&_MergedGlobals_111, &__block_literal_global_61);
  }

  v3 = qword_1ED6E29D0;

  return v3;
}

void __35__AMSFeatureFlagTask_bagSubProfile__block_invoke()
{
  v0 = qword_1ED6E29D0;
  qword_1ED6E29D0 = @"AMSFeatureFlag";
}

+ (NSString)bagSubProfileVersion
{
  if (qword_1ED6E29D8 != -1)
  {
    dispatch_once(&qword_1ED6E29D8, &__block_literal_global_111);
  }

  v3 = qword_1ED6E29E0;

  return v3;
}

void __42__AMSFeatureFlagTask_bagSubProfileVersion__block_invoke()
{
  v0 = qword_1ED6E29E0;
  qword_1ED6E29E0 = @"1";
}

+ (id)createBagForSubProfile
{
  bagSubProfile = [objc_opt_class() bagSubProfile];
  bagSubProfileVersion = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:bagSubProfile profileVersion:bagSubProfileVersion];

  return v4;
}

@end