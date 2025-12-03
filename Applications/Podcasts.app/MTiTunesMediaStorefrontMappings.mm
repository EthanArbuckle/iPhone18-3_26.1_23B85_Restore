@interface MTiTunesMediaStorefrontMappings
+ (BOOL)isValidStorefrontCountryCode:(id)code;
+ (id)storefrontIdentifierFromCountryCode:(id)code;
@end

@implementation MTiTunesMediaStorefrontMappings

+ (id)storefrontIdentifierFromCountryCode:(id)code
{
  codeCopy = code;
  v4 = sub_100091DB8();
  uppercaseString = [codeCopy uppercaseString];

  v6 = [v4 objectForKeyedSubscript:uppercaseString];

  return v6;
}

+ (BOOL)isValidStorefrontCountryCode:(id)code
{
  codeCopy = code;
  v4 = sub_100091DB8();
  uppercaseString = [codeCopy uppercaseString];

  v6 = [v4 objectForKeyedSubscript:uppercaseString];
  LOBYTE(codeCopy) = v6 != 0;

  return codeCopy;
}

@end