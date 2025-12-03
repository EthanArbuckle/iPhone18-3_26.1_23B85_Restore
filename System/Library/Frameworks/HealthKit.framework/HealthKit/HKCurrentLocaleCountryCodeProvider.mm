@interface HKCurrentLocaleCountryCodeProvider
- (id)currentCountryCode;
@end

@implementation HKCurrentLocaleCountryCodeProvider

- (id)currentCountryCode
{
  hk_testableCurrentLocale = [MEMORY[0x1E695DF58] hk_testableCurrentLocale];
  countryCode = [hk_testableCurrentLocale countryCode];

  return countryCode;
}

@end