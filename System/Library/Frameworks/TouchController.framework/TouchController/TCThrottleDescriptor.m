@interface TCThrottleDescriptor
- (CGPoint)offset;
- (CGSize)indicatorSize;
- (CGSize)size;
- (CGSize)throttleSize;
- (TCThrottleDescriptor)init;
@end

@implementation TCThrottleDescriptor

- (TCThrottleDescriptor)init
{
  v3.receiver = self;
  v3.super_class = TCThrottleDescriptor;
  result = [(TCThrottleDescriptor *)&v3 init];
  if (result)
  {
    result->_highlightDuration = 0.100000001;
    result->_anchor = 0;
    result->_anchorCoordinateSystem = 0;
  }

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

- (CGSize)indicatorSize
{
  width = self->_indicatorSize.width;
  height = self->_indicatorSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)throttleSize
{
  width = self->_throttleSize.width;
  height = self->_throttleSize.height;
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