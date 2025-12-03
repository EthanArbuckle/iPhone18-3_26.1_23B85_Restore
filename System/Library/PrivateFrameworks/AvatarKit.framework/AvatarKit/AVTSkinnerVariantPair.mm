@interface AVTSkinnerVariantPair
- (uint64_t)originalSkinner;
- (void)setOriginalSkinner:(uint64_t)skinner;
@end

@implementation AVTSkinnerVariantPair

- (uint64_t)originalSkinner
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (void)setOriginalSkinner:(uint64_t)skinner
{
  if (skinner)
  {
    objc_storeStrong((skinner + 8), a2);
  }
}

@end