@interface AVTSkinnerVariantPair
- (uint64_t)originalSkinner;
- (void)setOriginalSkinner:(uint64_t)a1;
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

- (void)setOriginalSkinner:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

@end