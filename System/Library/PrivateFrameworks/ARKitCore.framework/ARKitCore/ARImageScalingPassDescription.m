@interface ARImageScalingPassDescription
- (ARImageScalingPassDescription)initWithSize:(CGSize)a3;
- (CGSize)size;
- (id)description;
@end

@implementation ARImageScalingPassDescription

- (ARImageScalingPassDescription)initWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6.receiver = self;
  v6.super_class = ARImageScalingPassDescription;
  result = [(ARImageScalingPassDescription *)&v6 init];
  if (result)
  {
    result->_size.width = width;
    result->_size.height = height;
    result->_pixelBufferFormat = 0;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  [(ARImageScalingPassDescription *)self size];
  v6 = v5;
  [(ARImageScalingPassDescription *)self size];
  v8 = v7;
  v9 = AROSTypeToString([(ARImageScalingPassDescription *)self pixelBufferFormat]);
  v10 = [v3 stringWithFormat:@"<%@ %p size=[%.1fx%.1f] format=%@", v4, self, v6, v8, v9];

  return v10;
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