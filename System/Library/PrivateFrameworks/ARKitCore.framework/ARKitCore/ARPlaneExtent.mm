@interface ARPlaneExtent
- (ARPlaneExtent)init;
- (ARPlaneExtent)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  rotationOnYAxis = self->_rotationOnYAxis;
  v8 = a3;
  *&v5 = rotationOnYAxis;
  [v8 encodeFloat:@"rotationOnYAxis" forKey:v5];
  *&v6 = self->_width;
  [v8 encodeFloat:@"width" forKey:v6];
  *&v7 = self->_height;
  [v8 encodeFloat:@"height" forKey:v7];
}

- (ARPlaneExtent)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeFloatForKey:@"rotationOnYAxis"];
  self->_rotationOnYAxis = v5;
  [v4 decodeFloatForKey:@"width"];
  self->_width = v6;
  [v4 decodeFloatForKey:@"height"];
  v8 = v7;

  self->_height = v8;
  return self;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = vabds_f32(self->_rotationOnYAxis, v5[2]) < 0.00000011921 && vabds_f32(self->_width, v5[3]) < 0.00000011921 && vabds_f32(self->_height, v5[4]) < 0.00000011921;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  [(ARPlaneExtent *)self rotationOnYAxis];
  v4[2] = v5;
  [(ARPlaneExtent *)self width];
  v4[3] = v6;
  [(ARPlaneExtent *)self height];
  v4[4] = v7;
  return v4;
}

@end