@interface AFConnectionEntitlementCache
+ (id)sharedCache;
- (AFConnectionEntitlementCache)init;
@end

@implementation AFConnectionEntitlementCache

- (AFConnectionEntitlementCache)init
{
  v8.receiver = self;
  v8.super_class = AFConnectionEntitlementCache;
  v2 = [(AFConnectionEntitlementCache *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    cache = v2->_cache;
    v2->_cache = v3;

    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    bundleIDToPIDMap = v2->_bundleIDToPIDMap;
    v2->_bundleIDToPIDMap = v5;
  }

  return v2;
}

+ (id)sharedCache
{
  if (sharedCache_onceToken != -1)
  {
    dispatch_once(&sharedCache_onceToken, &__block_literal_global_411);
  }

  v3 = sharedCache_sCache;

  return v3;
}

void __43__AFConnectionEntitlementCache_sharedCache__block_invoke()
{
  v0 = objc_alloc_init(AFConnectionEntitlementCache);
  v1 = sharedCache_sCache;
  sharedCache_sCache = v0;
}

@end