@interface BCOAuth2RequestFactory
+ (id)makeRequestObjectWithDictionary:(id)dictionary version:(int64_t)version;
@end

@implementation BCOAuth2RequestFactory

+ (id)makeRequestObjectWithDictionary:(id)dictionary version:(int64_t)version
{
  dictionaryCopy = dictionary;
  v6 = off_278A0E338;
  if (version <= 1)
  {
    v6 = off_278A0E310;
  }

  v7 = [objc_alloc(*v6) _initWithDictionary:dictionaryCopy];

  return v7;
}

@end