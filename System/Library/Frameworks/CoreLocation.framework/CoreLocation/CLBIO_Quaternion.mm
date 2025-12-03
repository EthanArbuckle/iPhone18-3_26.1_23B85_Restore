@interface CLBIO_Quaternion
- (BOOL)isEqual:(id)equal;
- (CLBIO_Quaternion)initWithCoder:(id)coder;
- (CLBIO_Quaternion)initWithX:(double)x Y:(double)y Z:(double)z W:(double)w;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLBIO_Quaternion

- (CLBIO_Quaternion)initWithX:(double)x Y:(double)y Z:(double)z W:(double)w
{
  v11.receiver = self;
  v11.super_class = CLBIO_Quaternion;
  result = [(CLBIO_Quaternion *)&v11 init];
  if (result)
  {
    result->_X = x;
    result->_Y = y;
    result->_Z = z;
    result->_W = w;
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
    if (X == v7 && (Y = self->_Y, [equal Y], Y == v9) && (Z = self->_Z, objc_msgSend(equal, "Z"), Z == v11))
    {
      W = self->_W;
      [equal W];
      LOBYTE(v5) = W == v13;
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
  [(CLBIO_Quaternion *)self X];
  [(CLBIO_Quaternion *)self Y];
  [(CLBIO_Quaternion *)self Z];
  [(CLBIO_Quaternion *)self W];

  return MEMORY[0x1EEE66B58](v4, sel_initWithX_Y_Z_W_);
}

- (void)encodeWithCoder:(id)coder
{
  [(CLBIO_Quaternion *)self X];
  [coder encodeDouble:@"quaternionX" forKey:?];
  [(CLBIO_Quaternion *)self Y];
  [coder encodeDouble:@"quaternionY" forKey:?];
  [(CLBIO_Quaternion *)self Z];
  [coder encodeDouble:@"quaternionZ" forKey:?];
  [(CLBIO_Quaternion *)self W];

  [coder encodeDouble:@"quaternionW" forKey:?];
}

- (CLBIO_Quaternion)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = CLBIO_Quaternion;
  v4 = [(CLBIO_Quaternion *)&v10 init];
  if (v4)
  {
    [coder decodeDoubleForKey:@"quaternionX"];
    v4->_X = v5;
    [coder decodeDoubleForKey:@"quaternionY"];
    v4->_Y = v6;
    [coder decodeDoubleForKey:@"quaternionZ"];
    v4->_Z = v7;
    [coder decodeDoubleForKey:@"quaternionW"];
    v4->_W = v8;
  }

  return v4;
}

@end