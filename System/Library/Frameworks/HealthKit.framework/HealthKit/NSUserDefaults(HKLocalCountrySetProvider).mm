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
    v2 = [[self alloc] initWithSuiteName:@"com.apple.private.health.local-country-set-override"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (HKCountrySet)hk_countrySetForKey:()HKLocalCountrySetProvider
{
  v3 = [self hk_safeDictionaryIfExistsForKeyPath:a3 error:0];
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
  dictionaryRepresentation = [a3 dictionaryRepresentation];
  [self setObject:dictionaryRepresentation forKey:v6];
}

@end