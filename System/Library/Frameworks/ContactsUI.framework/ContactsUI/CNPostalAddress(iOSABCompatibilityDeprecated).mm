@interface CNPostalAddress(iOSABCompatibilityDeprecated)
+ (id)localizedAddressFormatDictionaryForCountryCode:()iOSABCompatibilityDeprecated;
@end

@implementation CNPostalAddress(iOSABCompatibilityDeprecated)

+ (id)localizedAddressFormatDictionaryForCountryCode:()iOSABCompatibilityDeprecated
{
  v3 = [a3 lowercaseString];
  v4 = [MEMORY[0x1E69967B8] addressFormats];
  v5 = [v4 objectForKeyedSubscript:v3];

  return v5;
}

@end