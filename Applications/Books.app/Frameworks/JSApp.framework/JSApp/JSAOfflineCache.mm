@interface JSAOfflineCache
+ (NSString)cachePath;
- (JSAOfflineCache)init;
@end

@implementation JSAOfflineCache

+ (NSString)cachePath
{
  v2 = sub_8437C();

  return v2;
}

- (JSAOfflineCache)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for OfflineCache();
  return [(JSAOfflineCache *)&v3 init];
}

@end