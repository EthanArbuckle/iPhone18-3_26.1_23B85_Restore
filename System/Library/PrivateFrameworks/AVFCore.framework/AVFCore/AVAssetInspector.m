@interface AVAssetInspector
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration;
- (AVDisplayCriteria)preferredDisplayCriteria;
- (CGAffineTransform)preferredTransform;
- (CGSize)maximumVideoResolution;
- (CGSize)naturalSize;
@end

@implementation AVAssetInspector

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration
{
  v6 = objc_opt_class();
  result = AVRequestConcreteImplementation(self, a3, v6);
  *retstr = **&MEMORY[0x1E6960C70];
  return result;
}

- (CGAffineTransform)preferredTransform
{
  v3 = MEMORY[0x1E695EFD0];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v4;
  *&retstr->tx = *(v3 + 32);
  return self;
}

- (CGSize)naturalSize
{
  v2 = 0.0;
  v3 = 0.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)maximumVideoResolution
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (AVDisplayCriteria)preferredDisplayCriteria
{
  v2 = [[AVDisplayCriteria alloc] initWithRefreshRate:0 videoDynamicRange:0.0];

  return v2;
}

@end