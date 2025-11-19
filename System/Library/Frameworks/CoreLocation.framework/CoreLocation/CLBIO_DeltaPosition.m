@interface CLBIO_DeltaPosition
- (BOOL)isEqual:(id)a3;
- (CLBIO_DeltaPosition)initWithCoder:(id)a3;
- (CLBIO_DeltaPosition)initWithX:(double)a3 Y:(double)a4 Z:(double)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLBIO_DeltaPosition

- (CLBIO_DeltaPosition)initWithX:(double)a3 Y:(double)a4 Z:(double)a5
{
  v9.receiver = self;
  v9.super_class = CLBIO_DeltaPosition;
  result = [(CLBIO_DeltaPosition *)&v9 init];
  if (result)
  {
    result->_X = a3;
    result->_Y = a4;
    result->_Z = a5;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    X = self->_X;
    [a3 X];
    if (X == v7 && (Y = self->_Y, [a3 Y], Y == v9))
    {
      Z = self->_Z;
      [a3 Z];
      LOBYTE(v5) = Z == v11;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  [(CLBIO_DeltaPosition *)self X];
  [(CLBIO_DeltaPosition *)self Y];
  [(CLBIO_DeltaPosition *)self Z];

  return MEMORY[0x1EEE66B58](v4, sel_initWithX_Y_Z_);
}

- (void)encodeWithCoder:(id)a3
{
  [(CLBIO_DeltaPosition *)self X];
  [a3 encodeDouble:@"deltaPositionX" forKey:?];
  [(CLBIO_DeltaPosition *)self Y];
  [a3 encodeDouble:@"deltaPositionY" forKey:?];
  [(CLBIO_DeltaPosition *)self Z];

  [a3 encodeDouble:@"deltaPositionZ" forKey:?];
}

- (CLBIO_DeltaPosition)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = CLBIO_DeltaPosition;
  v4 = [(CLBIO_DeltaPosition *)&v9 init];
  if (v4)
  {
    [a3 decodeDoubleForKey:@"deltaPositionX"];
    v4->_X = v5;
    [a3 decodeDoubleForKey:@"deltaPositionY"];
    v4->_Y = v6;
    [a3 decodeDoubleForKey:@"deltaPositionZ"];
    v4->_Z = v7;
  }

  return v4;
}

@end