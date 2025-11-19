@interface SteppingSignSizeAttributes
- (CGSize)size;
- (SteppingSignSizeAttributes)initWithSize:(CGSize)a3 signToPageControlDistance:(double)a4;
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

- (SteppingSignSizeAttributes)initWithSize:(CGSize)a3 signToPageControlDistance:(double)a4
{
  height = a3.height;
  width = a3.width;
  v8.receiver = self;
  v8.super_class = SteppingSignSizeAttributes;
  result = [(SteppingSignSizeAttributes *)&v8 init];
  if (result)
  {
    result->_size.width = width;
    result->_size.height = height;
    result->_signToPageControlDistance = a4;
  }

  return result;
}

@end