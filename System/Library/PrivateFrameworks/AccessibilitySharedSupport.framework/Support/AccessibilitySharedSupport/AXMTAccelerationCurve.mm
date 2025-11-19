@interface AXMTAccelerationCurve
- (AXMTAccelerationCurve)initWithAccelerationFactor:(double)a3 inflectionPoint:(double)a4;
- (CGPoint)mapVector:(CGPoint)a3;
- (double)mapScalar:(double)a3;
@end

@implementation AXMTAccelerationCurve

- (AXMTAccelerationCurve)initWithAccelerationFactor:(double)a3 inflectionPoint:(double)a4
{
  v7.receiver = self;
  v7.super_class = AXMTAccelerationCurve;
  result = [(AXMTAccelerationCurve *)&v7 init];
  if (result)
  {
    result->_accelerationFactor = a3;
    result->_inflectionPoint = a4;
  }

  return result;
}

- (double)mapScalar:(double)a3
{
  [(AXMTAccelerationCurve *)self inflectionPoint];
  v6 = a3 / v5;
  [(AXMTAccelerationCurve *)self accelerationFactor];

  return pow(v6, v7);
}

- (CGPoint)mapVector:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = sqrt(a3.y * a3.y + x * x);
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