@interface ASCDefaults
+ (ASCDefaults)daemonDefaults;
- (ASCDefaults)initWithBundleID:(id)d;
- (BOOL)disableShutdownTimer;
- (BOOL)enableWebInspector;
- (BOOL)forceRightToLeftLayout;
- (BOOL)forceStandaloneWatch;
- (BOOL)isEqual:(id)equal;
- (BOOL)preferInternalJS;
- (NSNumber)overlaysLoadTimeout;
- (NSNumber)overlaysRateLimitRequestsPerSecond;
- (NSNumber)overlaysRateLimitTimeWindow;
- (NSString)debugPackageURL;
- (NSString)jsVersion;
- (NSString)storefrontLocaleID;
- (id)description;
- (id)objectForKey:(id)key;
- (unint64_t)hash;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation ASCDefaults

+ (ASCDefaults)daemonDefaults
{
  if (daemonDefaults_onceToken != -1)
  {
    +[ASCDefaults daemonDefaults];
  }

  v3 = daemonDefaults_daemonDefaults;

  return v3;
}

uint64_t __29__ASCDefaults_daemonDefaults__block_invoke()
{
  daemonDefaults_daemonDefaults = [[ASCDefaults alloc] initWithBundleID:@"com.apple.AppStoreComponents"];

  return MEMORY[0x2821F96F8]();
}

- (ASCDefaults)initWithBundleID:(id)d
{
  dCopy = d;
  v14.receiver = self;
  v14.super_class = ASCDefaults;
  v5 = [(ASCDefaults *)&v14 init];
  if (v5)
  {
    v6 = [dCopy copy];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEA78]);
    cachedValues = v5->_cachedValues;
    v5->_cachedValues = v8;

    v10 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:v5->_bundleID];
    userDefaults = v5->_userDefaults;
    v5->_userDefaults = v10;

    for (i = 0; i != 11; ++i)
    {
      [(NSUserDefaults *)v5->_userDefaults addObserver:v5 forKeyPath:ASCDefaultsKeys[i] options:1 context:ASCDefaultsKVOContext];
    }
  }

  return v5;
}

- (void)dealloc
{
  for (i = 0; i != 11; ++i)
  {
    [(NSUserDefaults *)self->_userDefaults removeObserver:self forKeyPath:ASCDefaultsKeys[i] context:ASCDefaultsKVOContext];
  }

  v4.receiver = self;
  v4.super_class = ASCDefaults;
  [(ASCDefaults *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (ASCDefaultsKVOContext == context)
  {
    v11 = *MEMORY[0x277CCA2F0];
    pathCopy = path;
    v15 = [change objectForKeyedSubscript:v11];
    v13 = [[ASCCacheValue alloc] initWithValue:v15];
    cachedValues = [(ASCDefaults *)self cachedValues];
    [cachedValues setObject:v13 forKey:pathCopy];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = ASCDefaults;
    pathCopy2 = path;
    [(ASCDefaults *)&v16 observeValueForKeyPath:pathCopy2 ofObject:object change:change context:context];
  }
}

- (void)setObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  bundleID = [(ASCDefaults *)self bundleID];
  CFPreferencesSetAppValue(keyCopy, objectCopy, bundleID);
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  cachedValues = [(ASCDefaults *)self cachedValues];
  v6 = [cachedValues objectForKey:keyCopy];

  if (v6)
  {
    value = [v6 value];
  }

  else
  {
    bundleID = [(ASCDefaults *)self bundleID];
    value = CFPreferencesCopyAppValue(keyCopy, bundleID);

    v9 = [[ASCCacheValue alloc] initWithValue:value];
    cachedValues2 = [(ASCDefaults *)self cachedValues];
    [cachedValues2 setObject:v9 forKey:keyCopy];
  }

  return value;
}

- (NSString)storefrontLocaleID
{
  objc_opt_class();
  v3 = [(ASCDefaults *)self objectForKey:@"ASCLocaleID"];
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (BOOL)forceRightToLeftLayout
{
  objc_opt_class();
  v3 = [(ASCDefaults *)self objectForKey:@"ASCForceRightToLeftLayout"];
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (BOOL)disableShutdownTimer
{
  objc_opt_class();
  v3 = [(ASCDefaults *)self objectForKey:@"ASCDisableShutdownTimer"];
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (NSNumber)overlaysRateLimitRequestsPerSecond
{
  objc_opt_class();
  v3 = [(ASCDefaults *)self objectForKey:@"ASCPreferenceKeyOverlaysRateLimitRequestsPerSecond"];
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (NSNumber)overlaysRateLimitTimeWindow
{
  objc_opt_class();
  v3 = [(ASCDefaults *)self objectForKey:@"ASCPreferenceKeyOverlaysRateLimitTimeWindow"];
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (NSNumber)overlaysLoadTimeout
{
  objc_opt_class();
  v3 = [(ASCDefaults *)self objectForKey:@"ASCPreferenceKeyOverlaysLoadTimeout"];
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (BOOL)enableWebInspector
{
  objc_opt_class();
  v3 = [(ASCDefaults *)self objectForKey:@"ASCEnableWebInspector"];
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (BOOL)forceStandaloneWatch
{
  objc_opt_class();
  v3 = [(ASCDefaults *)self objectForKey:@"ASCForceStandaloneWatch"];
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (NSString)debugPackageURL
{
  objc_opt_class();
  v3 = [(ASCDefaults *)self objectForKey:@"ASCDebugJavaScriptPackageURL"];
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (BOOL)preferInternalJS
{
  objc_opt_class();
  v3 = [(ASCDefaults *)self objectForKey:@"ASCPreferInternalJS"];
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (NSString)jsVersion
{
  objc_opt_class();
  v3 = [(ASCDefaults *)self objectForKey:@"ASCJavaScriptVersion"];
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  bundleID = [(ASCDefaults *)self bundleID];
  [(ASCHasher *)v3 combineObject:bundleID];

  finalizeHash = [(ASCHasher *)v3 finalizeHash];
  return finalizeHash;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = equalCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    bundleID = [(ASCDefaults *)self bundleID];
    bundleID2 = [v7 bundleID];
    v10 = bundleID2;
    if (bundleID && bundleID2)
    {
      v11 = [bundleID isEqual:bundleID2];
    }

    else
    {
      v11 = bundleID == bundleID2;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  bundleID = [(ASCDefaults *)self bundleID];
  [(ASCDescriber *)v3 addObject:bundleID withName:@"bundleID"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end