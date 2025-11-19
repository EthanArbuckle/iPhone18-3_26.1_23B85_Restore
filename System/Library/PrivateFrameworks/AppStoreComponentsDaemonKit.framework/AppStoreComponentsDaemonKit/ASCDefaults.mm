@interface ASCDefaults
+ (ASCDefaults)daemonDefaults;
- (ASCDefaults)initWithBundleID:(id)a3;
- (BOOL)disableShutdownTimer;
- (BOOL)enableWebInspector;
- (BOOL)forceRightToLeftLayout;
- (BOOL)forceStandaloneWatch;
- (BOOL)isEqual:(id)a3;
- (BOOL)preferInternalJS;
- (NSNumber)overlaysLoadTimeout;
- (NSNumber)overlaysRateLimitRequestsPerSecond;
- (NSNumber)overlaysRateLimitTimeWindow;
- (NSString)debugPackageURL;
- (NSString)jsVersion;
- (NSString)storefrontLocaleID;
- (id)description;
- (id)objectForKey:(id)a3;
- (unint64_t)hash;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setObject:(id)a3 forKey:(id)a4;
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

- (ASCDefaults)initWithBundleID:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ASCDefaults;
  v5 = [(ASCDefaults *)&v14 init];
  if (v5)
  {
    v6 = [v4 copy];
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (ASCDefaultsKVOContext == a6)
  {
    v11 = *MEMORY[0x277CCA2F0];
    v12 = a3;
    v15 = [a5 objectForKeyedSubscript:v11];
    v13 = [[ASCCacheValue alloc] initWithValue:v15];
    v14 = [(ASCDefaults *)self cachedValues];
    [v14 setObject:v13 forKey:v12];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = ASCDefaults;
    v10 = a3;
    [(ASCDefaults *)&v16 observeValueForKeyPath:v10 ofObject:a4 change:a5 context:a6];
  }
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ASCDefaults *)self bundleID];
  CFPreferencesSetAppValue(v6, v7, v8);
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(ASCDefaults *)self cachedValues];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [v6 value];
  }

  else
  {
    v8 = [(ASCDefaults *)self bundleID];
    v7 = CFPreferencesCopyAppValue(v4, v8);

    v9 = [[ASCCacheValue alloc] initWithValue:v7];
    v10 = [(ASCDefaults *)self cachedValues];
    [v10 setObject:v9 forKey:v4];
  }

  return v7;
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
  v6 = [v5 BOOLValue];

  return v6;
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
  v6 = [v5 BOOLValue];

  return v6;
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
  v6 = [v5 BOOLValue];

  return v6;
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
  v6 = [v5 BOOLValue];

  return v6;
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
  v6 = [v5 BOOLValue];

  return v6;
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
  v4 = [(ASCDefaults *)self bundleID];
  [(ASCHasher *)v3 combineObject:v4];

  v5 = [(ASCHasher *)v3 finalizeHash];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
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
    v8 = [(ASCDefaults *)self bundleID];
    v9 = [v7 bundleID];
    v10 = v9;
    if (v8 && v9)
    {
      v11 = [v8 isEqual:v9];
    }

    else
    {
      v11 = v8 == v9;
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
  v4 = [(ASCDefaults *)self bundleID];
  [(ASCDescriber *)v3 addObject:v4 withName:@"bundleID"];

  v5 = [(ASCDescriber *)v3 finalizeDescription];

  return v5;
}

@end