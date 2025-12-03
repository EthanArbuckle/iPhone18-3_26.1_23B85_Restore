@interface _HKDaemonPreferences
+ (BOOL)_BOOLValueForKey:(id)key;
+ (BOOL)isGenerateDemoDataSet;
+ (BOOL)setValue:(id)value forKey:(id)key;
+ (BOOL)shouldGenerateDemoData;
+ (id)_safePreferenceForKey:(id)key expectedReturnClass:(Class)class;
+ (id)valueForKey:(id)key;
@end

@implementation _HKDaemonPreferences

+ (BOOL)isGenerateDemoDataSet
{
  v3 = [self _BOOLValueForKey:@"HealthDemoDataGenerateKey"];
  if (v3)
  {

    LOBYTE(v3) = [self usingDemoDataDatabase];
  }

  return v3;
}

+ (BOOL)shouldGenerateDemoData
{
  if (HKIsUnitTesting())
  {
    return 0;
  }

  if ([self isGenerateDemoDataSet])
  {
    return 1;
  }

  return [self isStoreDemoModeSet];
}

+ (id)valueForKey:(id)key
{
  if (key)
  {
    v4 = CFPreferencesCopyAppValue(key, @"com.apple.healthd");
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)setValue:(id)value forKey:(id)key
{
  if (key)
  {
    return [self _setPreferenceValue:value forKey:?];
  }

  else
  {
    return 0;
  }
}

+ (BOOL)_BOOLValueForKey:(id)key
{
  keyCopy = key;
  v5 = [self _safePreferenceForKey:keyCopy expectedReturnClass:objc_opt_class()];

  if (v5)
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (id)_safePreferenceForKey:(id)key expectedReturnClass:(Class)class
{
  v4 = [self valueForKey:key];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end