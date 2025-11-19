@interface BCOAuth2RequestFactory
+ (id)makeRequestObjectWithDictionary:(id)a3 version:(int64_t)a4;
@end

@implementation BCOAuth2RequestFactory

+ (id)makeRequestObjectWithDictionary:(id)a3 version:(int64_t)a4
{
  v5 = a3;
  v6 = off_278A0E338;
  if (a4 <= 1)
  {
    v6 = off_278A0E310;
  }

  v7 = [objc_alloc(*v6) _initWithDictionary:v5];

  return v7;
}

@end