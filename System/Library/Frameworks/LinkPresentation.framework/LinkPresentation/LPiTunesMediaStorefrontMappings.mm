@interface LPiTunesMediaStorefrontMappings
+ (BOOL)isValidStorefrontCountryCode:(id)a3;
+ (id)storefrontIdentifierFromCountryCode:(id)a3;
@end

@implementation LPiTunesMediaStorefrontMappings

+ (id)storefrontIdentifierFromCountryCode:(id)a3
{
  v3 = a3;
  v4 = countryCodeToStorefrontMapping();
  v5 = [v3 uppercaseString];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

+ (BOOL)isValidStorefrontCountryCode:(id)a3
{
  v3 = a3;
  v4 = countryCodeToStorefrontMapping();
  v5 = [v3 uppercaseString];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = v6 != 0;

  return v7;
}

@end