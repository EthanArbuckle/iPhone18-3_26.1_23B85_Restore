@interface NSCoder(ObjectCache)
- (id)hm_decodeAndCacheStringForKey:()ObjectCache;
- (id)hm_decodeAndCacheTruncatedNameStringForKey:()ObjectCache;
- (id)hm_decodeAndCacheUUIDForKey:()ObjectCache;
- (id)hm_decodeAndCacheUUIDFromStringForKey:()ObjectCache;
- (id)hm_decodeHMAccessoryCategoryAndCacheForKey:()ObjectCache;
@end

@implementation NSCoder(ObjectCache)

- (id)hm_decodeHMAccessoryCategoryAndCacheForKey:()ObjectCache
{
  v4 = a3;
  v5 = [a1 decodeObjectOfClass:objc_opt_class() forKey:v4];

  v6 = [HMFObjectCacheHMAccessoryCategory cachedInstanceForHMAccessoryCategory:v5];

  return v6;
}

- (id)hm_decodeAndCacheTruncatedNameStringForKey:()ObjectCache
{
  v4 = a3;
  v5 = [a1 decodeObjectOfClass:objc_opt_class() forKey:v4];

  v6 = MEMORY[0x1E69A2A20];
  v7 = [v5 hm_truncatedNameString];
  v8 = [v6 hmf_cachedInstanceForString:v7];

  return v8;
}

- (id)hm_decodeAndCacheStringForKey:()ObjectCache
{
  v4 = a3;
  v5 = [a1 decodeObjectOfClass:objc_opt_class() forKey:v4];

  v6 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:v5];

  return v6;
}

- (id)hm_decodeAndCacheUUIDFromStringForKey:()ObjectCache
{
  v4 = a3;
  v5 = [a1 decodeObjectOfClass:objc_opt_class() forKey:v4];

  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v5];
  v7 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:v6];

  return v7;
}

- (id)hm_decodeAndCacheUUIDForKey:()ObjectCache
{
  v4 = a3;
  v5 = [a1 decodeObjectOfClass:objc_opt_class() forKey:v4];

  v6 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:v5];

  return v6;
}

@end