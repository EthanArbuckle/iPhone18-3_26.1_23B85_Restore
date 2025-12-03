@interface CLBIO_DeltaPosition
- (BOOL)isEqual:(id)equal;
- (CLBIO_DeltaPosition)initWithCoder:(id)coder;
- (CLBIO_DeltaPosition)initWithX:(double)x Y:(double)y Z:(double)z;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLBIO_DeltaPosition

- (CLBIO_DeltaPosition)initWithX:(double)x Y:(double)y Z:(double)z
{
  v9.receiver = self;
  v9.super_class = CLBIO_DeltaPosition;
  result = [(CLBIO_DeltaPosition *)&v9 init];
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
  [(CLBIO_DeltaPosition *)self X];
  [(CLBIO_DeltaPosition *)self Y];
  [(CLBIO_DeltaPosition *)self Z];

  return MEMORY[0x1EEE66B58](v4, sel_initWithX_Y_Z_);
}

- (void)encodeWithCoder:(id)coder
{
  [(CLBIO_DeltaPosition *)self X];
  [coder encodeDouble:@"deltaPositionX" forKey:?];
  [(CLBIO_DeltaPosition *)self Y];
  [coder encodeDouble:@"deltaPositionY" forKey:?];
  [(CLBIO_DeltaPosition *)self Z];

  [coder encodeDouble:@"deltaPositionZ" forKey:?];
}

- (CLBIO_DeltaPosition)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = CLBIO_DeltaPosition;
  v4 = [(CLBIO_DeltaPosition *)&v9 init];
  if (v4)
  {
    [coder decodeDoubleForKey:@"deltaPositionX"];
    v4->_X = v5;
    [coder decodeDoubleForKey:@"deltaPositionY"];
    v4->_Y = v6;
    [coder decodeDoubleForKey:@"deltaPositionZ"];
    v4->_Z = v7;
  }

  return v4;
}

@end