@interface LPiTunesMediaStorefrontMappings
+ (BOOL)isValidStorefrontCountryCode:(id)code;
+ (id)storefrontIdentifierFromCountryCode:(id)code;
@end

@implementation LPiTunesMediaStorefrontMappings

+ (id)storefrontIdentifierFromCountryCode:(id)code
{
  codeCopy = code;
  v4 = countryCodeToStorefrontMapping();
  uppercaseString = [codeCopy uppercaseString];
  v6 = [v4 objectForKeyedSubscript:uppercaseString];

  return v6;
}

+ (BOOL)isValidStorefrontCountryCode:(id)code
{
  codeCopy = code;
  v4 = countryCodeToStorefrontMapping();
  uppercaseString = [codeCopy uppercaseString];
  v6 = [v4 objectForKeyedSubscript:uppercaseString];
  v7 = v6 != 0;

  return v7;
}

@end