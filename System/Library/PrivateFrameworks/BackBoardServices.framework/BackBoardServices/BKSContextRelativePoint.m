@interface BKSContextRelativePoint
- (BKSContextRelativePoint)initWithBSXPCCoder:(id)a3;
- (BKSContextRelativePoint)initWithPoint:(CGPoint)a3 contextID:(unsigned int)a4;
- (BOOL)isEqual:(id)a3;
- (CGPoint)point;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation BKSContextRelativePoint

- (CGPoint)point
{
  x = self->_point.x;
  y = self->_point.y;
  result.y = y;
  result.x = x;
  return result;
}

- (BKSContextRelativePoint)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  [v4 decodeCGPointForKey:@"point"];
  v6 = v5;
  v8 = v7;
  v9 = [v4 decodeInt64ForKey:@"contextID"];

  return [(BKSContextRelativePoint *)self initWithPoint:v9 contextID:v6, v8];
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  x = self->_point.x;
  y = self->_point.y;
  v6 = a3;
  [v6 encodeCGPoint:@"point" forKey:{x, y}];
  [v6 encodeInt64:self->_contextID forKey:@"contextID"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(BKSContextRelativePoint *)self contextID], v5 == [(BKSContextRelativePoint *)v4 contextID]))
    {
      [(BKSContextRelativePoint *)self point];
      [(BKSContextRelativePoint *)v4 point];
      v6 = BSPointEqualToPoint();
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BKSContextRelativePoint)initWithPoint:(CGPoint)a3 contextID:(unsigned int)a4
{
  y = a3.y;
  x = a3.x;
  v8.receiver = self;
  v8.super_class = BKSContextRelativePoint;
  result = [(BKSContextRelativePoint *)&v8 init];
  if (result)
  {
    result->_point.x = x;
    result->_point.y = y;
    result->_contextID = a4;
  }

  return result;
}

@end