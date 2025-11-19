@interface CNPhotosPosterConfigurationReaderFaceRectResult
- (CGRect)faceRect;
@end

@implementation CNPhotosPosterConfigurationReaderFaceRectResult

- (CGRect)faceRect
{
  x = self->_faceRect.origin.x;
  y = self->_faceRect.origin.y;
  width = self->_faceRect.size.width;
  height = self->_faceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end