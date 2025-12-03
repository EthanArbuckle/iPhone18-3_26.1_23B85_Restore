@interface MSStickerBrowserViewLayoutSpecStandard
- (CGSize)itemSize;
@end

@implementation MSStickerBrowserViewLayoutSpecStandard

- (CGSize)itemSize
{
  stickerSize = [(MSStickerBrowserViewLayoutSpec *)self stickerSize];
  v3 = dbl_1CAE1BDE0[stickerSize == 0];
  if (stickerSize == 2)
  {
    v3 = 163.0;
  }

  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

@end