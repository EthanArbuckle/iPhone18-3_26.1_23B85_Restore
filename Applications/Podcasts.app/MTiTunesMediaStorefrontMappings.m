@interface MTiTunesMediaStorefrontMappings
+ (BOOL)isValidStorefrontCountryCode:(id)a3;
+ (id)storefrontIdentifierFromCountryCode:(id)a3;
@end

@implementation MTiTunesMediaStorefrontMappings

+ (id)storefrontIdentifierFromCountryCode:(id)a3
{
  v3 = a3;
  v4 = sub_100091DB8();
  v5 = [v3 uppercaseString];

  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

+ (BOOL)isValidStorefrontCountryCode:(id)a3
{
  v3 = a3;
  v4 = sub_100091DB8();
  v5 = [v3 uppercaseString];

  v6 = [v4 objectForKeyedSubscript:v5];
  LOBYTE(v3) = v6 != 0;

  return v3;
}

@end