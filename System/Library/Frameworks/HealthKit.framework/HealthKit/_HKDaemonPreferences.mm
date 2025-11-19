@interface _HKDaemonPreferences
+ (BOOL)_BOOLValueForKey:(id)a3;
+ (BOOL)isGenerateDemoDataSet;
+ (BOOL)setValue:(id)a3 forKey:(id)a4;
+ (BOOL)shouldGenerateDemoData;
+ (id)_safePreferenceForKey:(id)a3 expectedReturnClass:(Class)a4;
+ (id)valueForKey:(id)a3;
@end

@implementation _HKDaemonPreferences

+ (BOOL)isGenerateDemoDataSet
{
  v3 = [a1 _BOOLValueForKey:@"HealthDemoDataGenerateKey"];
  if (v3)
  {

    LOBYTE(v3) = [a1 usingDemoDataDatabase];
  }

  return v3;
}

+ (BOOL)shouldGenerateDemoData
{
  if (HKIsUnitTesting())
  {
    return 0;
  }

  if ([a1 isGenerateDemoDataSet])
  {
    return 1;
  }

  return [a1 isStoreDemoModeSet];
}

+ (id)valueForKey:(id)a3
{
  if (a3)
  {
    v4 = CFPreferencesCopyAppValue(a3, @"com.apple.healthd");
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)setValue:(id)a3 forKey:(id)a4
{
  if (a4)
  {
    return [a1 _setPreferenceValue:a3 forKey:?];
  }

  else
  {
    return 0;
  }
}

+ (BOOL)_BOOLValueForKey:(id)a3
{
  v4 = a3;
  v5 = [a1 _safePreferenceForKey:v4 expectedReturnClass:objc_opt_class()];

  if (v5)
  {
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_safePreferenceForKey:(id)a3 expectedReturnClass:(Class)a4
{
  v4 = [a1 valueForKey:a3];
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