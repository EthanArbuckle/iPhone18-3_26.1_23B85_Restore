@interface AMSUserAgent
+ (id)_sharedCache;
+ (id)cachedUserAgentForBundleIdentifier:(id)a3;
+ (id)userAgentForProcessInfo:(id)a3;
+ (void)cacheUserAgent:(id)a3 forBundleIdentifier:(id)a4;
- (AMSUserAgent)initWithProcessInfo:(id)a3;
- (NSString)clientName;
- (NSString)clientVersion;
- (id)_compiledAMSUserAgentShouldCache:(BOOL *)a3;
- (id)_iOSComponentBuildVersion;
- (id)_iOSComponentClientInfo;
- (id)_iOSComponentDeviceModel;
- (id)_iOSComponentHardwarePlatform;
- (id)_iOSComponentProductVersion;
- (id)_initWithProcessInfo:(id)a3 deviceInfoProvider:(id)a4;
- (id)_sharedComponentFairPlayDeviceType;
- (id)_sharedComponentFrameworkVersion;
- (id)_sharedComponentParentheticalWithFairPlayDeviceType:(id)a3;
- (id)_sharedComponentParentheticalWithFairPlayDeviceType:(id)a3 productType:(id)a4;
- (id)_userAgentSuffix;
- (void)setClientName:(id)a3;
- (void)setClientVersion:(id)a3;
@end

@implementation AMSUserAgent

+ (id)_sharedCache
{
  if (qword_1ED6E3258 != -1)
  {
    dispatch_once(&qword_1ED6E3258, &__block_literal_global_150);
  }

  v3 = qword_1ED6E3260;

  return v3;
}

- (id)_userAgentSuffix
{
  v3 = [(AMSUserAgent *)self processInfo];
  v4 = [v3 userAgentSuffix];
  if (v4)
  {
    v5 = [(AMSUserAgent *)self processInfo];
    v6 = [v5 userAgentSuffix];
  }

  else
  {
    v6 = &stru_1F071BA78;
  }

  return v6;
}

uint64_t __28__AMSUserAgent__sharedCache__block_invoke()
{
  qword_1ED6E3260 = [[AMSLRUCache alloc] initWithMaxSize:20];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_sharedComponentFairPlayDeviceType
{
  if (qword_1ED6E3268 != -1)
  {
    dispatch_once(&qword_1ED6E3268, &__block_literal_global_38_1);
  }

  if (_MergedGlobals_161 == 1)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"dt:%lu", dword_1ED6E3254];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

BOOL __50__AMSUserAgent__sharedComponentFairPlayDeviceType__block_invoke()
{
  _MergedGlobals_161 = 0;
  dword_1ED6E3254 = 0;
  result = AMSFairPlayGetDeviceType(&dword_1ED6E3254);
  _MergedGlobals_161 = result;
  return result;
}

- (id)_iOSComponentProductVersion
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = [(AMSUserAgent *)self deviceInfoProvider];
  v5 = [v4 productVersion];

  if ([v5 length])
  {
    v6 = [(AMSUserAgent *)self deviceInfoProvider];
    v7 = [v6 deviceIsAppleWatch];

    v8 = v7 ? @"watchOS/%@" : @"iOS/%@";
    [(__CFString *)v3 appendFormat:v8, v5];
    v9 = [(AMSUserAgent *)self deviceInfoProvider];
    v10 = [v9 deviceIsAppleTV];

    if (v10)
    {
      [(__CFString *)v3 appendFormat:@" AppleTV/%@", v5];
    }
  }

  if (v3)
  {
    v11 = v3;
  }

  else
  {
    v11 = &stru_1F071BA78;
  }

  v12 = v11;

  return v11;
}

- (id)_iOSComponentClientInfo
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(AMSUserAgent *)self bundleInfo];
  v5 = [v4 clientName];
  v6 = [(AMSUserAgent *)self bundleInfo];
  v7 = [v6 clientVersion];
  v8 = [v3 stringWithFormat:@"%@/%@", v5, v7];

  return v8;
}

- (id)_iOSComponentDeviceModel
{
  v2 = [(AMSUserAgent *)self deviceInfoProvider];
  v3 = [v2 productType];

  if ([v3 length])
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"model/%@", v3];
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &stru_1F071BA78;
  }

  v6 = v5;

  return v5;
}

- (id)_iOSComponentHardwarePlatform
{
  v2 = [(AMSUserAgent *)self deviceInfoProvider];
  v3 = [v2 hardwarePlatform];

  if ([v3 length])
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hwp/%@", v3];
  }

  else
  {
    v4 = &stru_1F071BA78;
  }

  return v4;
}

- (id)_iOSComponentBuildVersion
{
  v2 = [(AMSUserAgent *)self deviceInfoProvider];
  v3 = [v2 buildVersion];

  if ([v3 length])
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"build/%@", v3];
  }

  else
  {
    v4 = &stru_1F071BA78;
  }

  return v4;
}

- (id)_sharedComponentFrameworkVersion
{
  v2 = [MEMORY[0x1E696AAE8] ams_AppleMediaServicesBundle];
  v3 = [v2 infoDictionary];
  v4 = [v3 objectForKey:@"CFBundleVersion"];

  if (![(__CFString *)v4 length])
  {

    v4 = @"1";
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AMS/%@", v4];

  return v5;
}

- (AMSUserAgent)initWithProcessInfo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v5 = +[AMSProcessInfo currentProcess];
  }

  v6 = objc_opt_new();
  v7 = [(AMSUserAgent *)self _initWithProcessInfo:v5 deviceInfoProvider:v6];

  if (!v4)
  {
  }

  return v7;
}

- (id)_initWithProcessInfo:(id)a3 deviceInfoProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = AMSUserAgent;
  v9 = [(AMSUserAgent *)&v13 init];
  if (v9)
  {
    v10 = [AMSMappedBundleInfo bundleInfoForProcessInfo:v7];
    bundleInfo = v9->_bundleInfo;
    v9->_bundleInfo = v10;

    objc_storeStrong(&v9->_processInfo, a3);
    objc_storeStrong(&v9->_deviceInfoProvider, a4);
  }

  return v9;
}

- (NSString)clientName
{
  v2 = [(AMSUserAgent *)self bundleInfo];
  v3 = [v2 clientName];

  return v3;
}

- (NSString)clientVersion
{
  v2 = [(AMSUserAgent *)self bundleInfo];
  v3 = [v2 clientVersion];

  return v3;
}

- (void)setClientName:(id)a3
{
  v5 = a3;
  v4 = [(AMSUserAgent *)self bundleInfo];
  [v4 setClientName:v5];
}

- (void)setClientVersion:(id)a3
{
  v5 = a3;
  v4 = [(AMSUserAgent *)self bundleInfo];
  [v4 setClientVersion:v5];
}

+ (id)cachedUserAgentForBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 _sharedCache];
  v6 = [v5 objectForKey:v4];

  return v6;
}

+ (void)cacheUserAgent:(id)a3 forBundleIdentifier:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [a1 _sharedCache];
  [v7 setObject:v8 forKey:v6];
}

+ (id)userAgentForProcessInfo:(id)a3
{
  v5 = a3;
  v6 = MEMORY[0x1E696AEC0];
  v7 = [v5 bundleIdentifier];
  v8 = v7;
  if (!v7)
  {
    v3 = [MEMORY[0x1E696AE30] processInfo];
    v8 = [v3 processName];
  }

  v9 = [v5 accountMediaType];
  v10 = [v6 stringWithFormat:@"%@-%@", v8, v9];

  if (!v7)
  {
  }

  v11 = [v5 userAgentSuffix];

  if (v11)
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = [v5 userAgentSuffix];
    v14 = [v12 stringWithFormat:@"%@-%@", v10, v13];

    v10 = v14;
  }

  v15 = [a1 cachedUserAgentForBundleIdentifier:v10];
  v16 = [v15 mutableCopy];

  if ([(__CFString *)v16 length])
  {
    v17 = v16;
  }

  else
  {
    v22 = 0;
    v18 = [[AMSUserAgent alloc] initWithProcessInfo:v5];
    v17 = [(AMSUserAgent *)v18 _compileAndShouldCache:&v22];

    if (v22 == 1)
    {
      [a1 cacheUserAgent:v17 forBundleIdentifier:v10];
    }
  }

  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = &stru_1F071BA78;
  }

  v20 = v19;

  return v19;
}

- (id)_compiledAMSUserAgentShouldCache:(BOOL *)a3
{
  v17[8] = *MEMORY[0x1E69E9840];
  v16 = [(AMSUserAgent *)self _sharedComponentFairPlayDeviceType];
  v5 = [(AMSUserAgent *)self _iOSComponentClientInfo];
  v17[0] = v5;
  v6 = [(AMSUserAgent *)self _iOSComponentProductVersion];
  v17[1] = v6;
  v7 = [(AMSUserAgent *)self _iOSComponentDeviceModel];
  v17[2] = v7;
  v8 = [(AMSUserAgent *)self _iOSComponentHardwarePlatform];
  v17[3] = v8;
  v9 = [(AMSUserAgent *)self _iOSComponentBuildVersion];
  v17[4] = v9;
  v10 = [(AMSUserAgent *)self _sharedComponentParentheticalWithFairPlayDeviceType:v16];
  v17[5] = v10;
  v11 = [(AMSUserAgent *)self _sharedComponentFrameworkVersion];
  v17[6] = v11;
  v12 = [(AMSUserAgent *)self _userAgentSuffix];
  v17[7] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:8];

  if (a3)
  {
    *a3 = v16 != 0;
  }

  v14 = [v13 ams_nonEmptyComponentsJoinedByString:@" "];

  return v14;
}

- (id)_sharedComponentParentheticalWithFairPlayDeviceType:(id)a3
{
  v4 = a3;
  v5 = [(AMSUserAgent *)self deviceInfoProvider];
  v6 = [v5 productType];

  v7 = [(AMSUserAgent *)self _sharedComponentParentheticalWithFairPlayDeviceType:v4 productType:v6];

  return v7;
}

- (id)_sharedComponentParentheticalWithFairPlayDeviceType:(id)a3 productType:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v6 hasPrefix:@"iPad"])
  {
    v8 = @"5";
  }

  else if ([v6 hasPrefix:@"iPhone"] & 1) != 0 || (objc_msgSend(v6, "hasPrefix:", @"Watch"))
  {
    v8 = @"6";
  }

  else if ([v6 hasPrefix:@"RealityDevice"])
  {
    v8 = @"7";
  }

  else if (([v6 hasPrefix:@"AppleTV"] & 1) != 0 || objc_msgSend(v6, "hasPrefix:", @"iProd"))
  {
    v8 = @"3";
  }

  else
  {
    v8 = &stru_1F071BA78;
  }

  if ([(__CFString *)v8 length])
  {
    [v7 addObject:v8];
  }

  if ([v5 length])
  {
    [v7 addObject:v5];
  }

  if ([v7 count])
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = [v7 componentsJoinedByString:@" "];;
    v11 = [v9 stringWithFormat:@"(%@)", v10];
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = &stru_1F071BA78;
  }

  v13 = v12;

  return v12;
}

@end