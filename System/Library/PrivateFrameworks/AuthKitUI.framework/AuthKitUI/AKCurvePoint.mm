@interface AKCurvePoint
+ (id)pointWithX:(double)x y:(double)y;
- (AKCurvePoint)initWithX:(double)x y:(double)y;
- (CGPoint)CGPoint;
- (CGPoint)leftTangentPoint;
- (CGPoint)rightTangentPoint;
@end

@implementation AKCurvePoint

+ (id)pointWithX:(double)x y:(double)y
{
  v4 = [[AKCurvePoint alloc] initWithX:x y:y];

  return v4;
}

- (AKCurvePoint)initWithX:(double)x y:(double)y
{
  v10 = a2;
  xCopy = x;
  yCopy = y;
  v11 = 0;
  v7.receiver = self;
  v7.super_class = AKCurvePoint;
  v6 = [(AKCurvePoint *)&v7 init];
  v11 = v6;
  objc_storeStrong(&v11, v6);
  if (v6)
  {
    v11->_x = xCopy;
    v11->_y = yCopy;
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