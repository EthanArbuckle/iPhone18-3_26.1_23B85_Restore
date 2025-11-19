@interface TCSwitchDescriptor
- (CGPoint)offset;
- (CGSize)size;
- (TCSwitchDescriptor)init;
@end

@implementation TCSwitchDescriptor

- (TCSwitchDescriptor)init
{
  v3.receiver = self;
  v3.super_class = TCSwitchDescriptor;
  result = [(TCSwitchDescriptor *)&v3 init];
  if (result)
  {
    result->_highlightDuration = 0.100000001;
    result->_anchor = 0;
    result->_anchorCoordinateSystem = 0;
  }

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

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end