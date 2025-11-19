@interface HKCurrentLocaleCountryCodeProvider
- (id)currentCountryCode;
@end

@implementation HKCurrentLocaleCountryCodeProvider

- (id)currentCountryCode
{
  v2 = [MEMORY[0x1E695DF58] hk_testableCurrentLocale];
  v3 = [v2 countryCode];

  return v3;
}

@end