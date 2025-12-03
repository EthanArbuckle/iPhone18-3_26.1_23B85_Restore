@interface AXMTAccelerationCurve
- (AXMTAccelerationCurve)initWithAccelerationFactor:(double)factor inflectionPoint:(double)point;
- (CGPoint)mapVector:(CGPoint)vector;
- (double)mapScalar:(double)scalar;
@end

@implementation AXMTAccelerationCurve

- (AXMTAccelerationCurve)initWithAccelerationFactor:(double)factor inflectionPoint:(double)point
{
  v7.receiver = self;
  v7.super_class = AXMTAccelerationCurve;
  result = [(AXMTAccelerationCurve *)&v7 init];
  if (result)
  {
    result->_accelerationFactor = factor;
    result->_inflectionPoint = point;
  }

  return result;
}

- (double)mapScalar:(double)scalar
{
  [(AXMTAccelerationCurve *)self inflectionPoint];
  v6 = scalar / v5;
  [(AXMTAccelerationCurve *)self accelerationFactor];

  return pow(v6, v7);
}

- (CGPoint)mapVector:(CGPoint)vector
{
  y = vector.y;
  x = vector.x;
  v5 = sqrt(vector.y * vector.y + x * x);
  [(AXMTAccelerationCurve *)self mapScalar:v5];
  v7 = v6 / v5;
  v8 = 0.0;
  if (v5 != 0.0)
  {
    v8 = v7;
  }

  v9 = x * v8;
  v10 = y * v8;
  result.y = v10;
  result.x = v9;
  return result;
}

@end