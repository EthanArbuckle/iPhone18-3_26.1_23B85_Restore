@interface HKUserDefaultsDataSource
+ (id)ageGatingDataSource;
+ (id)privacyPreferencesDataSource;
+ (id)respiratoryPreferencesDataSource;
+ (id)sharedHealthPreferencesDataSource;
- (HKUserDefaultsDataSource)initWithUserDefaults:(id)defaults;
- (id)makeAndRegisterBridgedObserverForKey:(id)key handle:(id)handle;
@end

@implementation HKUserDefaultsDataSource

- (HKUserDefaultsDataSource)initWithUserDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v9.receiver = self;
  v9.super_class = HKUserDefaultsDataSource;
  v6 = [(HKObserverBridge *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userDefaults, defaults);
  }

  return v7;
}

+ (id)privacyPreferencesDataSource
{
  v2 = [self alloc];
  v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.nanolifestyle.privacy"];
  v4 = [v2 initWithUserDefaults:v3];

  return v4;
}

+ (id)respiratoryPreferencesDataSource
{
  v2 = [self alloc];
  v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.private.health.respiratory"];
  v4 = [v2 initWithUserDefaults:v3];

  return v4;
}

+ (id)ageGatingDataSource
{
  v2 = [self alloc];
  v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.private.health.age-gating"];
  v4 = [v2 initWithUserDefaults:v3];

  return v4;
}

+ (id)sharedHealthPreferencesDataSource
{
  v2 = [self alloc];
  v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.health.shared"];
  v4 = [v2 initWithUserDefaults:v3];

  return v4;
}

- (id)makeAndRegisterBridgedObserverForKey:(id)key handle:(id)handle
{
  handleCopy = handle;
  keyCopy = key;
  v8 = [[_HKUserDefaultsBridgedObserver alloc] initWithHandle:handleCopy];

  [(NSUserDefaults *)self->_userDefaults addObserver:v8 forKeyPath:keyCopy options:1 context:0];

  return v8;
}

@end