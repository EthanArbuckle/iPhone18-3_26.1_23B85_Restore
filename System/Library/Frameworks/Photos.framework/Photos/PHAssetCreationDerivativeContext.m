@interface PHAssetCreationDerivativeContext
- (CGSize)assetOrientedImageSize;
- (CGSize)embeddedThumbnailSize;
@end

@implementation PHAssetCreationDerivativeContext

- (CGSize)embeddedThumbnailSize
{
  width = self->_embeddedThumbnailSize.width;
  height = self->_embeddedThumbnailSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)assetOrientedImageSize
{
  width = self->_assetOrientedImageSize.width;
  height = self->_assetOrientedImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end