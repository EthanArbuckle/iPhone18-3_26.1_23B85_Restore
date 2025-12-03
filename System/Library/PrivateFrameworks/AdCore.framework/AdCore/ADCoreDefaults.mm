@interface ADCoreDefaults
+ (id)factoryDefaults;
+ (id)sharedInstance;
+ (void)addFactoryDefaults:(id)defaults;
- (ADCoreDefaults)init;
- (BOOL)BOOLForKey:(id)key;
- (BOOL)defaultIsSetForKey:(id)key;
- (double)doubleForKey:(id)key;
- (id)_defaultValueForKey:(id)key valueClass:(Class)class;
- (id)arrayForKey:(id)key;
- (id)stringForKey:(id)key;
- (int64_t)integerForKey:(id)key;
- (void)_setDefaultValue:(id)value forKey:(id)key;
- (void)setDouble:(double)double forKey:(id)key;
- (void)setInteger:(int64_t)integer forKey:(id)key;
@end

@implementation ADCoreDefaults

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__ADCoreDefaults_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

void __32__ADCoreDefaults_sharedInstance__block_invoke(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = &OBJC_METACLASS___ADCoreDefaults;
  v1 = [objc_msgSendSuper2(&v3 allocWithZone_];
  v2 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v1;
}

- (ADCoreDefaults)init
{
  v22.receiver = self;
  v22.super_class = ADCoreDefaults;
  v2 = [(ADCoreDefaults *)&v22 init];
  if (v2)
  {
    v3 = CPCopySharedResourcesPreferencesDomainForDomain();
    v2->_defaultsBundleID = v3;
    if (!v3)
    {
      abort();
    }

    out_token = 0;
    v4 = dispatch_queue_create("com.apple.adPlatforms.AdCoreNotificationQueue", 0);
    v5 = _AdCoreNotificationQueue;
    _AdCoreNotificationQueue = v4;

    v6 = _AdCoreNotificationQueue;
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __22__ADCoreDefaults_init__block_invoke;
    v19 = &unk_278C55600;
    v7 = v2;
    v20 = v7;
    notify_register_dispatch("com.apple.iad.defaultsDidChange", &out_token, v6, &v16);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = v7[1];
    v7[1] = v8;

    [v7[1] setObject:&unk_285104B90 forKeyedSubscript:{@"ServerRetryBackoffGain", v16, v17, v18, v19}];
    [v7[1] setObject:&unk_285104E88 forKeyedSubscript:@"LocationGridSpacing"];
    [v7[1] setObject:@"https://iadsdk.apple.com/adserver" forKeyedSubscript:@"AdServerURL"];
    [v7[1] setObject:@"https://cf.iadsdk.apple.com/adserver" forKeyedSubscript:@"ConfigurationAdServerURL"];
    [v7[1] setObject:@"https://ut.iadsdk.apple.com/adserver" forKeyedSubscript:@"TargetingAdServerURL"];
    [v7[1] setObject:&unk_285104BA8 forKeyedSubscript:@"adprivacydSegmentInterval"];
    [v7[1] setObject:&unk_285104BC0 forKeyedSubscript:@"adprivacydMaxSegmentSendInterval"];
    [v7[1] setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"StocksEnabled"];
    [v7[1] setObject:@"https://partiality.itunes.apple.com/WebObjects/MZPartiality.woa/wa/IAD/segment" forKeyedSubscript:@"partiality-segment"];
    [v7[1] setObject:@"https://partiality.itunes.apple.com/WebObjects/MZPartiality.woa/wa/IAD/optIn" forKeyedSubscript:@"partiality-opt-in"];
    [v7[1] setObject:@"https://partiality.itunes.apple.com/WebObjects/MZPartiality.woa/wa/IAD/optOut" forKeyedSubscript:@"partiality-opt-out"];
    v10 = MGGetBoolAnswer();
    v11 = v7[1];
    if (v10)
    {
      v12 = MEMORY[0x277CBEC28];
      [v11 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"EnableRequestedTemplate"];
      [v7[1] setObject:@"http://vp25q03ad-app037.iad.apple.com:7888" forKeyedSubscript:@"contentProxyServerURL"];
      [v7[1] setObject:&stru_2850FB348 forKeyedSubscript:@"ToroAlgoID"];
      [v7[1] setObject:@"none" forKeyedSubscript:@"ToroRequestedText"];
      [v7[1] setObject:@"regular" forKeyedSubscript:@"ToroRequestedIcon"];
      [v7[1] setObject:@"regular" forKeyedSubscript:@"ToroTemplateType"];
      v13 = MEMORY[0x277CBEC38];
      [v7[1] setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"ToroTestClient"];
      [v7[1] setObject:v12 forKeyedSubscript:@"ForceNonAdLocale"];
      [v7[1] setObject:v12 forKeyedSubscript:@"ForceSegmentDataRetrieval"];
      [v7[1] setObject:v12 forKeyedSubscript:@"adprivacydSimulateCrashOnLateXPC"];
      [v7[1] setObject:&unk_285104BD8 forKeyedSubscript:@"adprivacydLateXPCIntervalSeconds"];
      [v7[1] setObject:v12 forKeyedSubscript:@"iAdAttributionOverridesEnabled"];
      [v7[1] setObject:v12 forKeyedSubscript:@"iAdAttributionSendTrue"];
      [v7[1] setObject:v13 forKeyedSubscript:@"iAdAttributionSendClickTime"];
      [v7[1] setObject:&stru_2850FB348 forKeyedSubscript:@"AttributionClickTimeOverride"];
      [v7[1] setObject:v13 forKeyedSubscript:@"iAdAttributionSendMetadata"];
      [v7[1] setObject:&stru_2850FB348 forKeyedSubscript:@"AttributionClickMetadataOverride"];
      [v7[1] setObject:&stru_2850FB348 forKeyedSubscript:@"DeviceKnowledgeScheduleOverride"];
      v14 = @"adForceConsumerStatus";
    }

    else
    {
      [v11 setObject:@"https://iadsdk.apple.com/adserver" forKeyedSubscript:@"AdServerURL"];
      [v7[1] setObject:@"https://cf.iadsdk.apple.com/adserver" forKeyedSubscript:@"ConfigurationAdServerURL"];
      [v7[1] setObject:@"http://vp25q03ad-app037.iad.apple.com:7888" forKeyedSubscript:@"contentProxyServerURL"];
      [v7[1] setObject:&unk_285104E98 forKeyedSubscript:@"AppDeveloperAdFillRate"];
      [v7[1] setObject:@"none" forKeyedSubscript:@"ToroRequestedText"];
      [v7[1] setObject:@"regular" forKeyedSubscript:@"ToroRequestedIcon"];
      [v7[1] setObject:@"regular" forKeyedSubscript:@"ToroTemplateType"];
      [v7[1] setObject:@"0" forKeyedSubscript:@"adprivacydSegmentIntervalOverride"];
      [v7[1] setObject:@"0" forKeyedSubscript:@"adprivacydMaxSegmentSendIntervalOverride"];
      v14 = @"iAdAttributionOverridesEnabled";
    }

    [v7[1] setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v14];
  }

  return v2;
}

uint64_t __22__ADCoreDefaults_init__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) defaultsBundleID];

  return CFPreferencesAppSynchronize(v1);
}

+ (void)addFactoryDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v4 = +[ADCoreDefaults sharedInstance];
  [v4[1] addEntriesFromDictionary:defaultsCopy];
}

+ (id)factoryDefaults
{
  v2 = +[ADCoreDefaults sharedInstance];
  v3 = [v2[1] copy];

  return v3;
}

- (id)_defaultValueForKey:(id)key valueClass:(Class)class
{
  keyCopy = key;
  v5 = +[ADCoreDefaults sharedInstance];
  v6 = CFPreferencesCopyAppValue(keyCopy, v5[2]);

  if (!v6)
  {
    v7 = +[ADCoreDefaults sharedInstance];
    v6 = [v7[1] objectForKeyedSubscript:keyCopy];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v6 = 0;
  }

  return v6;
}

- (void)_setDefaultValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  v7 = +[ADCoreDefaults sharedInstance];
  CFPreferencesSetAppValue(keyCopy, valueCopy, v7[2]);

  v8 = +[ADCoreDefaults sharedInstance];
  CFPreferencesAppSynchronize(v8[2]);
}

- (BOOL)defaultIsSetForKey:(id)key
{
  keyCopy = key;
  v4 = +[ADCoreDefaults sharedInstance];
  v5 = CFPreferencesCopyAppValue(keyCopy, v4[2]);

  if (!v5)
  {
    v6 = +[ADCoreDefaults sharedInstance];
    v5 = [v6[1] objectForKeyedSubscript:keyCopy];
  }

  return v5 != 0;
}

- (BOOL)BOOLForKey:(id)key
{
  keyCopy = key;
  v5 = [(ADCoreDefaults *)self _defaultValueForKey:keyCopy valueClass:objc_opt_class()];

  bOOLValue = [v5 BOOLValue];
  return bOOLValue;
}

- (int64_t)integerForKey:(id)key
{
  keyCopy = key;
  v5 = [(ADCoreDefaults *)self _defaultValueForKey:keyCopy valueClass:objc_opt_class()];

  integerValue = [v5 integerValue];
  return integerValue;
}

- (void)setInteger:(int64_t)integer forKey:(id)key
{
  v6 = MEMORY[0x277CCABB0];
  keyCopy = key;
  v8 = [v6 numberWithInteger:integer];
  [(ADCoreDefaults *)self _setDefaultValue:v8 forKey:keyCopy];
}

- (double)doubleForKey:(id)key
{
  keyCopy = key;
  v5 = [(ADCoreDefaults *)self _defaultValueForKey:keyCopy valueClass:objc_opt_class()];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setDouble:(double)double forKey:(id)key
{
  v6 = MEMORY[0x277CCABB0];
  keyCopy = key;
  v8 = [v6 numberWithDouble:double];
  [(ADCoreDefaults *)self _setDefaultValue:v8 forKey:keyCopy];
}

- (id)stringForKey:(id)key
{
  keyCopy = key;
  v5 = [(ADCoreDefaults *)self _defaultValueForKey:keyCopy valueClass:objc_opt_class()];

  return v5;
}

- (id)arrayForKey:(id)key
{
  keyCopy = key;
  v5 = [(ADCoreDefaults *)self _defaultValueForKey:keyCopy valueClass:objc_opt_class()];

  return v5;
}

@end