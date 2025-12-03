@interface CLBIO_DeltaVelocity
- (BOOL)isEqual:(id)equal;
- (CLBIO_DeltaVelocity)initWithCoder:(id)coder;
- (CLBIO_DeltaVelocity)initWithX:(double)x Y:(double)y Z:(double)z;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLBIO_DeltaVelocity

- (CLBIO_DeltaVelocity)initWithX:(double)x Y:(double)y Z:(double)z
{
  v9.receiver = self;
  v9.super_class = CLBIO_DeltaVelocity;
  result = [(CLBIO_DeltaVelocity *)&v9 init];
  if (result)
  {
    result->_X = x;
    result->_Y = y;
    result->_Z = z;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    X = self->_X;
    [equal X];
    if (X == v7 && (Y = self->_Y, [equal Y], Y == v9))
    {
      Z = self->_Z;
      [equal Z];
      LOBYTE(v5) = Z == v11;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  [(CLBIO_DeltaVelocity *)self X];
  [(CLBIO_DeltaVelocity *)self Y];
  [(CLBIO_DeltaVelocity *)self Z];

  return MEMORY[0x1EEE66B58](v4, sel_initWithX_Y_Z_);
}

- (void)encodeWithCoder:(id)coder
{
  [(CLBIO_DeltaVelocity *)self X];
  [coder encodeDouble:@"deltaVelocityX" forKey:?];
  [(CLBIO_DeltaVelocity *)self Y];
  [coder encodeDouble:@"deltaVelocityY" forKey:?];
  [(CLBIO_DeltaVelocity *)self Z];

  [coder encodeDouble:@"deltaVelocityZ" forKey:?];
}

- (CLBIO_DeltaVelocity)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = CLBIO_DeltaVelocity;
  v4 = [(CLBIO_DeltaVelocity *)&v9 init];
  if (v4)
  {
    [coder decodeDoubleForKey:@"deltaVelocityX"];
    v4->_X = v5;
    [coder decodeDoubleForKey:@"deltaVelocityY"];
    v4->_Y = v6;
    [coder decodeDoubleForKey:@"deltaVelocityZ"];
    v4->_Z = v7;
  }

  return v4;
}

@end