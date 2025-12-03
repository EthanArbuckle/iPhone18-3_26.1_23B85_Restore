@interface MSStickerBrowserViewLayoutSpec
+ (MSStickerBrowserViewLayoutSpec)specWithSizeClass:(int64_t)class interfaceOrientation:(int64_t)orientation;
- (CGSize)itemSize;
- (MSStickerBrowserViewLayoutSpec)initWithSize:(int64_t)size interfaceOrientation:(int64_t)orientation;
- (UIEdgeInsets)sectionInset;
@end

@implementation MSStickerBrowserViewLayoutSpec

+ (MSStickerBrowserViewLayoutSpec)specWithSizeClass:(int64_t)class interfaceOrientation:(int64_t)orientation
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen _referenceBounds];

  v7 = [objc_alloc(objc_opt_class()) initWithSize:class interfaceOrientation:orientation];

  return v7;
}

- (MSStickerBrowserViewLayoutSpec)initWithSize:(int64_t)size interfaceOrientation:(int64_t)orientation
{
  v7.receiver = self;
  v7.super_class = MSStickerBrowserViewLayoutSpec;
  result = [(MSStickerBrowserViewLayoutSpec *)&v7 init];
  if (result)
  {
    result->_stickerSize = size;
    result->_interfaceOrientation = orientation;
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