@interface KNBuildAnvilSystem
- (double)p_anvilGlobalScale;
@end

@implementation KNBuildAnvilSystem

- (double)p_anvilGlobalScale
{
  [(KNBuildAnvilSystem *)self objectSize];
  [(KNBuildAnvilSystem *)self slideSize];
  TSDMixFloats();
  v4 = v3;
  [(KNBuildAnvilSystem *)self objectSize];
  return v4 * v5 / 7.0;
}

@end