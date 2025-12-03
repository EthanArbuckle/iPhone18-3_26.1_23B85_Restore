@interface NSUbiquitousKeyValueStore
+ (id)ams_encryptedAllPlatformsStoreWithIdentifier:(id)identifier;
@end

@implementation NSUbiquitousKeyValueStore

+ (id)ams_encryptedAllPlatformsStoreWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[NSUbiquitousKeyValueStore alloc] initWithStoreIdentifier:identifierCopy type:2];

  return v4;
}

@end