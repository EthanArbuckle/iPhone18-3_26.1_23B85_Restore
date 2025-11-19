@interface TCDirectionPadDescriptor
- (CGPoint)offset;
- (CGSize)size;
- (TCDirectionPadDescriptor)init;
@end

@implementation TCDirectionPadDescriptor

- (TCDirectionPadDescriptor)init
{
  v6.receiver = self;
  v6.super_class = TCDirectionPadDescriptor;
  v2 = [(TCDirectionPadDescriptor *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_highlightDuration = 0.100000001;
    v2->_anchor = 0;
    v2->_anchorCoordinateSystem = 0;
    compositeLabel = v2->_compositeLabel;
    v2->_compositeLabel = 0;
  }

  return v3;
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