@interface SteppingSignSizeAttributes
- (CGSize)size;
- (SteppingSignSizeAttributes)initWithSize:(CGSize)size signToPageControlDistance:(double)distance;
@end

@implementation SteppingSignSizeAttributes

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (SteppingSignSizeAttributes)initWithSize:(CGSize)size signToPageControlDistance:(double)distance
{
  height = size.height;
  width = size.width;
  v8.receiver = self;
  v8.super_class = SteppingSignSizeAttributes;
  result = [(SteppingSignSizeAttributes *)&v8 init];
  if (result)
  {
    result->_size.width = width;
    result->_size.height = height;
    result->_signToPageControlDistance = distance;
  }

  return result;
}

@end