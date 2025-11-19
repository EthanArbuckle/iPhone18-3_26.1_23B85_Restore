@interface LAKeyStoreItemBuilder
+ (id)buildNullGenericPassword;
+ (id)buildNullKey;
@end

@implementation LAKeyStoreItemBuilder

+ (id)buildNullGenericPassword
{
  v2 = objc_alloc_init(_LAKeyStoreGenericPasswordNull);

  return v2;
}

+ (id)buildNullKey
{
  v2 = objc_alloc_init(_LAKeyStoreKeyNull);

  return v2;
}

@end