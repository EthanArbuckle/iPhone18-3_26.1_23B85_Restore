@interface TCThumbstickDescriptor
- (CGPoint)offset;
- (CGSize)size;
- (CGSize)stickSize;
- (TCThumbstickDescriptor)init;
@end

@implementation TCThumbstickDescriptor

- (TCThumbstickDescriptor)init
{
  v3.receiver = self;
  v3.super_class = TCThumbstickDescriptor;
  result = [(TCThumbstickDescriptor *)&v3 init];
  if (result)
  {
    result->_highlightDuration = 0.100000001;
    result->_anchor = 0;
    result->_anchorCoordinateSystem = 0;
  }

  return result;
}

- (CGSize)stickSize
{
  width = self->_stickSize.width;
  height = self->_stickSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)offset
{
  x = self->_offset.x;
  y = self->_offset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end