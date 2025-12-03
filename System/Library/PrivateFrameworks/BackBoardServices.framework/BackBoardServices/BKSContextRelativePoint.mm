@interface BKSContextRelativePoint
- (BKSContextRelativePoint)initWithBSXPCCoder:(id)coder;
- (BKSContextRelativePoint)initWithPoint:(CGPoint)point contextID:(unsigned int)d;
- (BOOL)isEqual:(id)equal;
- (CGPoint)point;
- (void)encodeWithBSXPCCoder:(id)coder;
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

- (BKSContextRelativePoint)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeCGPointForKey:@"point"];
  v6 = v5;
  v8 = v7;
  v9 = [coderCopy decodeInt64ForKey:@"contextID"];

  return [(BKSContextRelativePoint *)self initWithPoint:v9 contextID:v6, v8];
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  x = self->_point.x;
  y = self->_point.y;
  coderCopy = coder;
  [coderCopy encodeCGPoint:@"point" forKey:{x, y}];
  [coderCopy encodeInt64:self->_contextID forKey:@"contextID"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(BKSContextRelativePoint *)self contextID], v5 == [(BKSContextRelativePoint *)equalCopy contextID]))
    {
      [(BKSContextRelativePoint *)self point];
      [(BKSContextRelativePoint *)equalCopy point];
      v6 = BSPointEqualToPoint();
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BKSContextRelativePoint)initWithPoint:(CGPoint)point contextID:(unsigned int)d
{
  y = point.y;
  x = point.x;
  v8.receiver = self;
  v8.super_class = BKSContextRelativePoint;
  result = [(BKSContextRelativePoint *)&v8 init];
  if (result)
  {
    result->_point.x = x;
    result->_point.y = y;
    result->_contextID = d;
  }

  return result;
}

@end