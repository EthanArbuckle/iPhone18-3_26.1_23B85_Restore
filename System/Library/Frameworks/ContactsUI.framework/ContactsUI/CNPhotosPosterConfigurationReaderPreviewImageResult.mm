@interface CNPhotosPosterConfigurationReaderPreviewImageResult
- (CGSize)imageSize;
@end

@implementation CNPhotosPosterConfigurationReaderPreviewImageResult

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end