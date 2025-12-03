@interface MSStickerBrowserViewLayoutSpecSmall
- (CGSize)itemSize;
@end

@implementation MSStickerBrowserViewLayoutSpecSmall

- (CGSize)itemSize
{
  stickerSize = [(MSStickerBrowserViewLayoutSpec *)self stickerSize];
  v3 = 85.0;
  if (!stickerSize)
  {
    v3 = 60.0;
  }

  if (stickerSize == 2)
  {
    v3 = 136.0;
  }

  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

@end