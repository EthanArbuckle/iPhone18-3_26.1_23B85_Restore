@interface NSUbiquitousKeyValueStore
+ (id)ams_encryptedAllPlatformsStoreWithIdentifier:(id)a3;
@end

@implementation NSUbiquitousKeyValueStore

+ (id)ams_encryptedAllPlatformsStoreWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[NSUbiquitousKeyValueStore alloc] initWithStoreIdentifier:v3 type:2];

  return v4;
}

@end