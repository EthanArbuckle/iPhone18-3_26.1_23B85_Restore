@interface CLBIO_Quaternion
- (BOOL)isEqual:(id)a3;
- (CLBIO_Quaternion)initWithCoder:(id)a3;
- (CLBIO_Quaternion)initWithX:(double)a3 Y:(double)a4 Z:(double)a5 W:(double)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLBIO_Quaternion

- (CLBIO_Quaternion)initWithX:(double)a3 Y:(double)a4 Z:(double)a5 W:(double)a6
{
  v11.receiver = self;
  v11.super_class = CLBIO_Quaternion;
  result = [(CLBIO_Quaternion *)&v11 init];
  if (result)
  {
    result->_X = a3;
    result->_Y = a4;
    result->_Z = a5;
    result->_W = a6;
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
    if (X == v7 && (Y = self->_Y, [a3 Y], Y == v9) && (Z = self->_Z, objc_msgSend(a3, "Z"), Z == v11))
    {
      W = self->_W;
      [a3 W];
      LOBYTE(v5) = W == v13;
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
  [(CLBIO_Quaternion *)self X];
  [(CLBIO_Quaternion *)self Y];
  [(CLBIO_Quaternion *)self Z];
  [(CLBIO_Quaternion *)self W];

  return MEMORY[0x1EEE66B58](v4, sel_initWithX_Y_Z_W_);
}

- (void)encodeWithCoder:(id)a3
{
  [(CLBIO_Quaternion *)self X];
  [a3 encodeDouble:@"quaternionX" forKey:?];
  [(CLBIO_Quaternion *)self Y];
  [a3 encodeDouble:@"quaternionY" forKey:?];
  [(CLBIO_Quaternion *)self Z];
  [a3 encodeDouble:@"quaternionZ" forKey:?];
  [(CLBIO_Quaternion *)self W];

  [a3 encodeDouble:@"quaternionW" forKey:?];
}

- (CLBIO_Quaternion)initWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = CLBIO_Quaternion;
  v4 = [(CLBIO_Quaternion *)&v10 init];
  if (v4)
  {
    [a3 decodeDoubleForKey:@"quaternionX"];
    v4->_X = v5;
    [a3 decodeDoubleForKey:@"quaternionY"];
    v4->_Y = v6;
    [a3 decodeDoubleForKey:@"quaternionZ"];
    v4->_Z = v7;
    [a3 decodeDoubleForKey:@"quaternionW"];
    v4->_W = v8;
  }

  return v4;
}

@end