@interface HKUserDefaultsDataSource
+ (id)ageGatingDataSource;
+ (id)privacyPreferencesDataSource;
+ (id)respiratoryPreferencesDataSource;
+ (id)sharedHealthPreferencesDataSource;
- (HKUserDefaultsDataSource)initWithUserDefaults:(id)a3;
- (id)makeAndRegisterBridgedObserverForKey:(id)a3 handle:(id)a4;
@end

@implementation HKUserDefaultsDataSource

- (HKUserDefaultsDataSource)initWithUserDefaults:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKUserDefaultsDataSource;
  v6 = [(HKObserverBridge *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userDefaults, a3);
  }

  return v7;
}

+ (id)privacyPreferencesDataSource
{
  v2 = [a1 alloc];
  v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.nanolifestyle.privacy"];
  v4 = [v2 initWithUserDefaults:v3];

  return v4;
}

+ (id)respiratoryPreferencesDataSource
{
  v2 = [a1 alloc];
  v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.private.health.respiratory"];
  v4 = [v2 initWithUserDefaults:v3];

  return v4;
}

+ (id)ageGatingDataSource
{
  v2 = [a1 alloc];
  v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.private.health.age-gating"];
  v4 = [v2 initWithUserDefaults:v3];

  return v4;
}

+ (id)sharedHealthPreferencesDataSource
{
  v2 = [a1 alloc];
  v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.health.shared"];
  v4 = [v2 initWithUserDefaults:v3];

  return v4;
}

- (id)makeAndRegisterBridgedObserverForKey:(id)a3 handle:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[_HKUserDefaultsBridgedObserver alloc] initWithHandle:v6];

  [(NSUserDefaults *)self->_userDefaults addObserver:v8 forKeyPath:v7 options:1 context:0];

  return v8;
}

@end