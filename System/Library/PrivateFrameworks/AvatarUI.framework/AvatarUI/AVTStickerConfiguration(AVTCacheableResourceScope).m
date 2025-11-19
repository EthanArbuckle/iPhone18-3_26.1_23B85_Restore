@interface AVTStickerConfiguration(AVTCacheableResourceScope)
- (id)cacheableResourceAssociatedIdentifier;
- (unint64_t)cacheableResourceAssociatedCost;
@end

@implementation AVTStickerConfiguration(AVTCacheableResourceScope)

- (id)cacheableResourceAssociatedIdentifier
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = [a1 name];
  v3 = [v1 stringWithFormat:@"_%@", v2];

  return v3;
}

- (unint64_t)cacheableResourceAssociatedCost
{
  [a1 size];
  v3 = v2;
  [a1 size];
  return (v3 * v4);
}

@end