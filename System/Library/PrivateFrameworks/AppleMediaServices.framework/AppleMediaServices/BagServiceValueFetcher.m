@interface BagServiceValueFetcher
- (BOOL)isLoaded;
- (NSString)key;
@end

@implementation BagServiceValueFetcher

- (NSString)key
{
  v2 = sub_192C5DE04();

  return v2;
}

- (BOOL)isLoaded
{
  v2 = self;
  v3 = sub_192C5DED0();

  return v3;
}

@end