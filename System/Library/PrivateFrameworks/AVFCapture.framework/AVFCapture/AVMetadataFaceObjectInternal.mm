@interface AVMetadataFaceObjectInternal
- (CGRect)leftEyeBounds;
- (CGRect)rightEyeBounds;
@end

@implementation AVMetadataFaceObjectInternal

- (CGRect)leftEyeBounds
{
  x = self->_leftEyeBounds.origin.x;
  y = self->_leftEyeBounds.origin.y;
  width = self->_leftEyeBounds.size.width;
  height = self->_leftEyeBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)rightEyeBounds
{
  x = self->_rightEyeBounds.origin.x;
  y = self->_rightEyeBounds.origin.y;
  width = self->_rightEyeBounds.size.width;
  height = self->_rightEyeBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end