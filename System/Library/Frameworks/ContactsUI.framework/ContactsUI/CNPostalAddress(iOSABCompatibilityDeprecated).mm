@interface CNPostalAddress(iOSABCompatibilityDeprecated)
+ (id)localizedAddressFormatDictionaryForCountryCode:()iOSABCompatibilityDeprecated;
@end

@implementation CNPostalAddress(iOSABCompatibilityDeprecated)

+ (id)localizedAddressFormatDictionaryForCountryCode:()iOSABCompatibilityDeprecated
{
  lowercaseString = [a3 lowercaseString];
  addressFormats = [MEMORY[0x1E69967B8] addressFormats];
  v5 = [addressFormats objectForKeyedSubscript:lowercaseString];

  return v5;
}

@end