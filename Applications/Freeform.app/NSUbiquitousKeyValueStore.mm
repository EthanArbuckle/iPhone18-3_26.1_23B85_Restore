@interface NSUbiquitousKeyValueStore
+ (id)crl_encryptedKVS;
@end

@implementation NSUbiquitousKeyValueStore

+ (id)crl_encryptedKVS
{
  v2 = [[NSUbiquitousKeyValueStore alloc] initWithStoreIdentifier:@"com.apple.freeform" type:2];

  return v2;
}

@end