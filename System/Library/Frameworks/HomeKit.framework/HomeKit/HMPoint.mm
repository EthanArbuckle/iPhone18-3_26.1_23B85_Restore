@interface HMPoint
- (BOOL)isEqual:(id)equal;
- (CGPoint)point;
- (HMPoint)initWithCoder:(id)coder;
- (HMPoint)initWithPoint:(CGPoint)point;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMPoint

- (CGPoint)point
{
  objc_copyStruct(v4, &self->_point, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (HMPoint)initWithCoder:(id)coder
{
  [coder decodePointForKey:@"HMC.p.ck.point"];

  return [(HMPoint *)self initWithPoint:?];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(HMPoint *)self point];
  [coderCopy encodePoint:@"HMC.p.ck.point" forKey:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      [(HMPoint *)self point];
      v8 = v7;
      v10 = v9;
      [(HMPoint *)v6 point];
      v16.x = v11;
      v16.y = v12;
      v15.x = v8;
      v15.y = v10;
      v13 = NSEqualPoints(v15, v16);
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  v2 = [(HMPoint *)self description];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  [(HMPoint *)self point];
  v5 = NSStringFromPoint(v9);
  v6 = [v3 stringWithFormat:@"<%@ %@>", v4, v5];

  return v6;
}

- (HMPoint)initWithPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6.receiver = self;
  v6.super_class = HMPoint;
  result = [(HMPoint *)&v6 init];
  if (result)
  {
    result->_point.x = x;
    result->_point.y = y;
  }

  return result;
}

@end