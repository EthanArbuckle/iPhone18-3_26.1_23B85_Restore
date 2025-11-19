@interface AXMVisionScreenRecognitionOptions
- (CGRect)fullRect;
@end

@implementation AXMVisionScreenRecognitionOptions

- (CGRect)fullRect
{
  x = self->_fullRect.origin.x;
  y = self->_fullRect.origin.y;
  width = self->_fullRect.size.width;
  height = self->_fullRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end