@interface AEGridOverlayLayoutInfo
- (AEGridOverlayLayoutInfo)initWithGradientImageSize:(CGSize)size;
- (CGSize)_gradientImageSize;
- (CGSize)tileSystemLayoutSizeFittingSize:(CGSize)size;
@end

@implementation AEGridOverlayLayoutInfo

- (CGSize)_gradientImageSize
{
  width = self->__gradientImageSize.width;
  height = self->__gradientImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)tileSystemLayoutSizeFittingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(AEGridOverlayLayoutInfo *)self _gradientImageSize];
  if (v5 >= height)
  {
    v5 = height;
  }

  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (AEGridOverlayLayoutInfo)initWithGradientImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6.receiver = self;
  v6.super_class = AEGridOverlayLayoutInfo;
  result = [(AEGridOverlayLayoutInfo *)&v6 init];
  if (result)
  {
    result->__gradientImageSize.width = width;
    result->__gradientImageSize.height = height;
  }

  return result;
}

@end