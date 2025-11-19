@interface MSStickerBrowserViewLayoutSpec
+ (MSStickerBrowserViewLayoutSpec)specWithSizeClass:(int64_t)a3 interfaceOrientation:(int64_t)a4;
- (CGSize)itemSize;
- (MSStickerBrowserViewLayoutSpec)initWithSize:(int64_t)a3 interfaceOrientation:(int64_t)a4;
- (UIEdgeInsets)sectionInset;
@end

@implementation MSStickerBrowserViewLayoutSpec

+ (MSStickerBrowserViewLayoutSpec)specWithSizeClass:(int64_t)a3 interfaceOrientation:(int64_t)a4
{
  v6 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v6 _referenceBounds];

  v7 = [objc_alloc(objc_opt_class()) initWithSize:a3 interfaceOrientation:a4];

  return v7;
}

- (MSStickerBrowserViewLayoutSpec)initWithSize:(int64_t)a3 interfaceOrientation:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = MSStickerBrowserViewLayoutSpec;
  result = [(MSStickerBrowserViewLayoutSpec *)&v7 init];
  if (result)
  {
    result->_stickerSize = a3;
    result->_interfaceOrientation = a4;
  }

  return result;
}

- (UIEdgeInsets)sectionInset
{
  v2 = 8.0;
  v3 = 16.0;
  v4 = 8.0;
  v5 = 16.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGSize)itemSize
{
  width = self->_itemSize.width;
  height = self->_itemSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end