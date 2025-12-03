@interface ARPlaneExtent
- (ARPlaneExtent)init;
- (ARPlaneExtent)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARPlaneExtent

- (ARPlaneExtent)init
{
  v3.receiver = self;
  v3.super_class = ARPlaneExtent;
  result = [(ARPlaneExtent *)&v3 init];
  if (result)
  {
    *&result->_rotationOnYAxis = 0xBF80000000000000;
    result->_height = -1.0;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  rotationOnYAxis = self->_rotationOnYAxis;
  coderCopy = coder;
  *&v5 = rotationOnYAxis;
  [coderCopy encodeFloat:@"rotationOnYAxis" forKey:v5];
  *&v6 = self->_width;
  [coderCopy encodeFloat:@"width" forKey:v6];
  *&v7 = self->_height;
  [coderCopy encodeFloat:@"height" forKey:v7];
}

- (ARPlaneExtent)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeFloatForKey:@"rotationOnYAxis"];
  self->_rotationOnYAxis = v5;
  [coderCopy decodeFloatForKey:@"width"];
  self->_width = v6;
  [coderCopy decodeFloatForKey:@"height"];
  v8 = v7;

  self->_height = v8;
  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    v6 = vabds_f32(self->_rotationOnYAxis, v5[2]) < 0.00000011921 && vabds_f32(self->_width, v5[3]) < 0.00000011921 && vabds_f32(self->_height, v5[4]) < 0.00000011921;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  [(ARPlaneExtent *)self rotationOnYAxis];
  v4[2] = v5;
  [(ARPlaneExtent *)self width];
  v4[3] = v6;
  [(ARPlaneExtent *)self height];
  v4[4] = v7;
  return v4;
}

@end