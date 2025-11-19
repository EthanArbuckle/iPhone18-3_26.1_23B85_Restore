@interface KNAnimParameterGroupSavedPathElement
- (CGPoint)cp1;
- (CGPoint)cp2;
- (CGPoint)toPoint;
- (KNAnimParameterGroupSavedPathElement)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation KNAnimParameterGroupSavedPathElement

- (KNAnimParameterGroupSavedPathElement)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = KNAnimParameterGroupSavedPathElement;
  v5 = [(KNAnimParameterGroupSavedPathElement *)&v16 init];
  if (v5)
  {
    v5->_elementType = [v4 decodeIntegerForKey:@"ele"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tv"];
    [v6 CGPointValue];
    v5->_toPoint.x = v7;
    v5->_toPoint.y = v8;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cp1"];
    [v9 CGPointValue];
    v5->_cp1.x = v10;
    v5->_cp1.y = v11;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cp2"];
    [v12 CGPointValue];
    v5->_cp2.x = v13;
    v5->_cp2.y = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[KNAnimParameterGroupSavedPathElement elementType](self forKey:{"elementType"), @"ele"}];
  [(KNAnimParameterGroupSavedPathElement *)self toPoint];
  v5 = [NSValue valueWithCGPoint:?];
  [v4 encodeObject:v5 forKey:@"tv"];

  [(KNAnimParameterGroupSavedPathElement *)self cp1];
  v6 = [NSValue valueWithCGPoint:?];
  [v4 encodeObject:v6 forKey:@"cp1"];

  [(KNAnimParameterGroupSavedPathElement *)self cp2];
  v7 = [NSValue valueWithCGPoint:?];
  [v4 encodeObject:v7 forKey:@"cp2"];
}

- (CGPoint)toPoint
{
  x = self->_toPoint.x;
  y = self->_toPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)cp1
{
  x = self->_cp1.x;
  y = self->_cp1.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)cp2
{
  x = self->_cp2.x;
  y = self->_cp2.y;
  result.y = y;
  result.x = x;
  return result;
}

@end