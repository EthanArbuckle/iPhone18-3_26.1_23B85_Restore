@interface _MKJunctionElement
- (CGPoint)leftBasePoint;
- (CGPoint)leftEdgePointAtDistanceFromBase:(double)a3;
- (CGPoint)rightBasePoint;
- (CGPoint)rightEdgePointAtDistanceFromBase:(double)a3;
- (id)description;
@end

@implementation _MKJunctionElement

- (CGPoint)rightBasePoint
{
  x = self->_rightBasePoint.x;
  y = self->_rightBasePoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)leftBasePoint
{
  x = self->_leftBasePoint.x;
  y = self->_leftBasePoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.1f, %.1f}", *&self->_leftBasePoint.x, *&self->_leftBasePoint.y];
  v7 = NSStringFromCGPoint(self->_rightBasePoint);
  v8 = [v3 stringWithFormat:@"<%@: %p, leftBase: %@, rightBase: %@, angle: %f>", v5, self, v6, v7, *&self->_angle];

  return v8;
}

- (CGPoint)rightEdgePointAtDistanceFromBase:(double)a3
{
  [(_MKJunctionElement *)self rightBasePoint];
  v6 = v5;
  v8 = v7;
  [(_MKJunctionElement *)self angle];
  v10 = __sincos_stret(v9);
  v11 = v8 + a3 * v10.__sinval;
  v12 = v6 + a3 * v10.__cosval;
  result.y = v11;
  result.x = v12;
  return result;
}

- (CGPoint)leftEdgePointAtDistanceFromBase:(double)a3
{
  [(_MKJunctionElement *)self leftBasePoint];
  v6 = v5;
  v8 = v7;
  [(_MKJunctionElement *)self angle];
  v10 = __sincos_stret(v9);
  v11 = v8 + a3 * v10.__sinval;
  v12 = v6 + a3 * v10.__cosval;
  result.y = v11;
  result.x = v12;
  return result;
}

@end