@interface NSUserDefaults(HKLocalCountrySetProvider)
+ (id)hk_localCountrySetOverrideUserDefaults;
- (HKCountrySet)hk_countrySetForKey:()HKLocalCountrySetProvider;
- (void)hk_setCountrySet:()HKLocalCountrySetProvider forKey:;
@end

@implementation NSUserDefaults(HKLocalCountrySetProvider)

+ (id)hk_localCountrySetOverrideUserDefaults
{
  if (+[_HKBehavior isAppleInternalInstall])
  {
    v2 = [[a1 alloc] initWithSuiteName:@"com.apple.private.health.local-country-set-override"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (HKCountrySet)hk_countrySetForKey:()HKLocalCountrySetProvider
{
  v3 = [a1 hk_safeDictionaryIfExistsForKeyPath:a3 error:0];
  if (v3)
  {
    v4 = [[HKCountrySet alloc] initWithDictionaryRepresentation:v3 provenance:100];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)hk_setCountrySet:()HKLocalCountrySetProvider forKey:
{
  v6 = a4;
  v7 = [a3 dictionaryRepresentation];
  [a1 setObject:v7 forKey:v6];
}

@end