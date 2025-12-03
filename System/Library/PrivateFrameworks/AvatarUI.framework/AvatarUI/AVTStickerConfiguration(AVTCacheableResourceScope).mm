@interface AVTStickerConfiguration(AVTCacheableResourceScope)
- (id)cacheableResourceAssociatedIdentifier;
- (unint64_t)cacheableResourceAssociatedCost;
@end

@implementation AVTStickerConfiguration(AVTCacheableResourceScope)

- (id)cacheableResourceAssociatedIdentifier
{
  v1 = MEMORY[0x1E696AEC0];
  name = [self name];
  v3 = [v1 stringWithFormat:@"_%@", name];

  return v3;
}

- (unint64_t)cacheableResourceAssociatedCost
{
  [self size];
  v3 = v2;
  [self size];
  return (v3 * v4);
}

@end