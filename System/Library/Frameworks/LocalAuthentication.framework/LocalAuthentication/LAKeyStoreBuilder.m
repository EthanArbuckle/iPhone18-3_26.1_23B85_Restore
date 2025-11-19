@interface LAKeyStoreBuilder
+ (id)buildKeyStore;
@end

@implementation LAKeyStoreBuilder

+ (id)buildKeyStore
{
  v2 = objc_alloc_init(_LAKeyStore);

  return v2;
}

@end