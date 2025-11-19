@interface AKCurvePoint
+ (id)pointWithX:(double)a3 y:(double)a4;
- (AKCurvePoint)initWithX:(double)a3 y:(double)a4;
- (CGPoint)CGPoint;
- (CGPoint)leftTangentPoint;
- (CGPoint)rightTangentPoint;
@end

@implementation AKCurvePoint

+ (id)pointWithX:(double)a3 y:(double)a4
{
  v4 = [[AKCurvePoint alloc] initWithX:a3 y:a4];

  return v4;
}

- (AKCurvePoint)initWithX:(double)a3 y:(double)a4
{
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v11 = 0;
  v7.receiver = self;
  v7.super_class = AKCurvePoint;
  v6 = [(AKCurvePoint *)&v7 init];
  v11 = v6;
  objc_storeStrong(&v11, v6);
  if (v6)
  {
    v11->_x = v9;
    v11->_y = v8;
  }

  v5 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(&v11, 0);
  return v5;
}

- (CGPoint)CGPoint
{
  x = self->_x;
  y = self->_y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)leftTangentPoint
{
  y = self->_leftTangentPoint.y;
  x = self->_leftTangentPoint.x;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)rightTangentPoint
{
  y = self->_rightTangentPoint.y;
  x = self->_rightTangentPoint.x;
  result.y = y;
  result.x = x;
  return result;
}

@end