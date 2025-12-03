@interface AMSUserAgent
+ (id)_sharedCache;
+ (id)cachedUserAgentForBundleIdentifier:(id)identifier;
+ (id)userAgentForProcessInfo:(id)info;
+ (void)cacheUserAgent:(id)agent forBundleIdentifier:(id)identifier;
- (AMSUserAgent)initWithProcessInfo:(id)info;
- (NSString)clientName;
- (NSString)clientVersion;
- (id)_compiledAMSUserAgentShouldCache:(BOOL *)cache;
- (id)_iOSComponentBuildVersion;
- (id)_iOSComponentClientInfo;
- (id)_iOSComponentDeviceModel;
- (id)_iOSComponentHardwarePlatform;
- (id)_iOSComponentProductVersion;
- (id)_initWithProcessInfo:(id)info deviceInfoProvider:(id)provider;
- (id)_sharedComponentFairPlayDeviceType;
- (id)_sharedComponentFrameworkVersion;
- (id)_sharedComponentParentheticalWithFairPlayDeviceType:(id)type;
- (id)_sharedComponentParentheticalWithFairPlayDeviceType:(id)type productType:(id)productType;
- (id)_userAgentSuffix;
- (void)setClientName:(id)name;
- (void)setClientVersion:(id)version;
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
  processInfo = [(AMSUserAgent *)self processInfo];
  userAgentSuffix = [processInfo userAgentSuffix];
  if (userAgentSuffix)
  {
    processInfo2 = [(AMSUserAgent *)self processInfo];
    userAgentSuffix2 = [processInfo2 userAgentSuffix];
  }

  else
  {
    userAgentSuffix2 = &stru_1F071BA78;
  }

  return userAgentSuffix2;
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
    dword_1ED6E3254 = [MEMORY[0x1E696AEC0] stringWithFormat:@"dt:%lu", dword_1ED6E3254];
  }

  else
  {
    dword_1ED6E3254 = 0;
  }

  return dword_1ED6E3254;
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
  deviceInfoProvider = [(AMSUserAgent *)self deviceInfoProvider];
  productVersion = [deviceInfoProvider productVersion];

  if ([productVersion length])
  {
    deviceInfoProvider2 = [(AMSUserAgent *)self deviceInfoProvider];
    deviceIsAppleWatch = [deviceInfoProvider2 deviceIsAppleWatch];

    v8 = deviceIsAppleWatch ? @"watchOS/%@" : @"iOS/%@";
    [(__CFString *)v3 appendFormat:v8, productVersion];
    deviceInfoProvider3 = [(AMSUserAgent *)self deviceInfoProvider];
    deviceIsAppleTV = [deviceInfoProvider3 deviceIsAppleTV];

    if (deviceIsAppleTV)
    {
      [(__CFString *)v3 appendFormat:@" AppleTV/%@", productVersion];
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
  bundleInfo = [(AMSUserAgent *)self bundleInfo];
  clientName = [bundleInfo clientName];
  bundleInfo2 = [(AMSUserAgent *)self bundleInfo];
  clientVersion = [bundleInfo2 clientVersion];
  v8 = [v3 stringWithFormat:@"%@/%@", clientName, clientVersion];

  return v8;
}

- (id)_iOSComponentDeviceModel
{
  deviceInfoProvider = [(AMSUserAgent *)self deviceInfoProvider];
  productType = [deviceInfoProvider productType];

  if ([productType length])
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"model/%@", productType];
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
  deviceInfoProvider = [(AMSUserAgent *)self deviceInfoProvider];
  hardwarePlatform = [deviceInfoProvider hardwarePlatform];

  if ([hardwarePlatform length])
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hwp/%@", hardwarePlatform];
  }

  else
  {
    v4 = &stru_1F071BA78;
  }

  return v4;
}

- (id)_iOSComponentBuildVersion
{
  deviceInfoProvider = [(AMSUserAgent *)self deviceInfoProvider];
  buildVersion = [deviceInfoProvider buildVersion];

  if ([buildVersion length])
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"build/%@", buildVersion];
  }

  else
  {
    v4 = &stru_1F071BA78;
  }

  return v4;
}

- (id)_sharedComponentFrameworkVersion
{
  ams_AppleMediaServicesBundle = [MEMORY[0x1E696AAE8] ams_AppleMediaServicesBundle];
  infoDictionary = [ams_AppleMediaServicesBundle infoDictionary];
  v4 = [infoDictionary objectForKey:@"CFBundleVersion"];

  if (![(__CFString *)v4 length])
  {

    v4 = @"1";
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"AMS/%@", v4];

  return v5;
}

- (AMSUserAgent)initWithProcessInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  if (!infoCopy)
  {
    v5 = +[AMSProcessInfo currentProcess];
  }

  v6 = objc_opt_new();
  v7 = [(AMSUserAgent *)self _initWithProcessInfo:v5 deviceInfoProvider:v6];

  if (!infoCopy)
  {
  }

  return v7;
}

- (id)_initWithProcessInfo:(id)info deviceInfoProvider:(id)provider
{
  infoCopy = info;
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = AMSUserAgent;
  v9 = [(AMSUserAgent *)&v13 init];
  if (v9)
  {
    v10 = [AMSMappedBundleInfo bundleInfoForProcessInfo:infoCopy];
    bundleInfo = v9->_bundleInfo;
    v9->_bundleInfo = v10;

    objc_storeStrong(&v9->_processInfo, info);
    objc_storeStrong(&v9->_deviceInfoProvider, provider);
  }

  return v9;
}

- (NSString)clientName
{
  bundleInfo = [(AMSUserAgent *)self bundleInfo];
  clientName = [bundleInfo clientName];

  return clientName;
}

- (NSString)clientVersion
{
  bundleInfo = [(AMSUserAgent *)self bundleInfo];
  clientVersion = [bundleInfo clientVersion];

  return clientVersion;
}

- (void)setClientName:(id)name
{
  nameCopy = name;
  bundleInfo = [(AMSUserAgent *)self bundleInfo];
  [bundleInfo setClientName:nameCopy];
}

- (void)setClientVersion:(id)version
{
  versionCopy = version;
  bundleInfo = [(AMSUserAgent *)self bundleInfo];
  [bundleInfo setClientVersion:versionCopy];
}

+ (id)cachedUserAgentForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _sharedCache = [self _sharedCache];
  v6 = [_sharedCache objectForKey:identifierCopy];

  return v6;
}

+ (void)cacheUserAgent:(id)agent forBundleIdentifier:(id)identifier
{
  agentCopy = agent;
  identifierCopy = identifier;
  _sharedCache = [self _sharedCache];
  [_sharedCache setObject:agentCopy forKey:identifierCopy];
}

+ (id)userAgentForProcessInfo:(id)info
{
  infoCopy = info;
  v6 = MEMORY[0x1E696AEC0];
  bundleIdentifier = [infoCopy bundleIdentifier];
  processName = bundleIdentifier;
  if (!bundleIdentifier)
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];
  }

  accountMediaType = [infoCopy accountMediaType];
  v10 = [v6 stringWithFormat:@"%@-%@", processName, accountMediaType];

  if (!bundleIdentifier)
  {
  }

  userAgentSuffix = [infoCopy userAgentSuffix];

  if (userAgentSuffix)
  {
    v12 = MEMORY[0x1E696AEC0];
    userAgentSuffix2 = [infoCopy userAgentSuffix];
    v14 = [v12 stringWithFormat:@"%@-%@", v10, userAgentSuffix2];

    v10 = v14;
  }

  v15 = [self cachedUserAgentForBundleIdentifier:v10];
  v16 = [v15 mutableCopy];

  if ([(__CFString *)v16 length])
  {
    v17 = v16;
  }

  else
  {
    v22 = 0;
    v18 = [[AMSUserAgent alloc] initWithProcessInfo:infoCopy];
    v17 = [(AMSUserAgent *)v18 _compileAndShouldCache:&v22];

    if (v22 == 1)
    {
      [self cacheUserAgent:v17 forBundleIdentifier:v10];
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

- (id)_compiledAMSUserAgentShouldCache:(BOOL *)cache
{
  v17[8] = *MEMORY[0x1E69E9840];
  _sharedComponentFairPlayDeviceType = [(AMSUserAgent *)self _sharedComponentFairPlayDeviceType];
  _iOSComponentClientInfo = [(AMSUserAgent *)self _iOSComponentClientInfo];
  v17[0] = _iOSComponentClientInfo;
  _iOSComponentProductVersion = [(AMSUserAgent *)self _iOSComponentProductVersion];
  v17[1] = _iOSComponentProductVersion;
  _iOSComponentDeviceModel = [(AMSUserAgent *)self _iOSComponentDeviceModel];
  v17[2] = _iOSComponentDeviceModel;
  _iOSComponentHardwarePlatform = [(AMSUserAgent *)self _iOSComponentHardwarePlatform];
  v17[3] = _iOSComponentHardwarePlatform;
  _iOSComponentBuildVersion = [(AMSUserAgent *)self _iOSComponentBuildVersion];
  v17[4] = _iOSComponentBuildVersion;
  v10 = [(AMSUserAgent *)self _sharedComponentParentheticalWithFairPlayDeviceType:_sharedComponentFairPlayDeviceType];
  v17[5] = v10;
  _sharedComponentFrameworkVersion = [(AMSUserAgent *)self _sharedComponentFrameworkVersion];
  v17[6] = _sharedComponentFrameworkVersion;
  _userAgentSuffix = [(AMSUserAgent *)self _userAgentSuffix];
  v17[7] = _userAgentSuffix;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:8];

  if (cache)
  {
    *cache = _sharedComponentFairPlayDeviceType != 0;
  }

  v14 = [v13 ams_nonEmptyComponentsJoinedByString:@" "];

  return v14;
}

- (id)_sharedComponentParentheticalWithFairPlayDeviceType:(id)type
{
  typeCopy = type;
  deviceInfoProvider = [(AMSUserAgent *)self deviceInfoProvider];
  productType = [deviceInfoProvider productType];

  v7 = [(AMSUserAgent *)self _sharedComponentParentheticalWithFairPlayDeviceType:typeCopy productType:productType];

  return v7;
}

- (id)_sharedComponentParentheticalWithFairPlayDeviceType:(id)type productType:(id)productType
{
  typeCopy = type;
  productTypeCopy = productType;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([productTypeCopy hasPrefix:@"iPad"])
  {
    v8 = @"5";
  }

  else if ([productTypeCopy hasPrefix:@"iPhone"] & 1) != 0 || (objc_msgSend(productTypeCopy, "hasPrefix:", @"Watch"))
  {
    v8 = @"6";
  }

  else if ([productTypeCopy hasPrefix:@"RealityDevice"])
  {
    v8 = @"7";
  }

  else if (([productTypeCopy hasPrefix:@"AppleTV"] & 1) != 0 || objc_msgSend(productTypeCopy, "hasPrefix:", @"iProd"))
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

  if ([typeCopy length])
  {
    [v7 addObject:typeCopy];
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