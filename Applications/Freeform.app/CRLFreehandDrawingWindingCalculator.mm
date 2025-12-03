@interface CRLFreehandDrawingWindingCalculator
- (BOOL)isWindingClockwise;
- (void)addPoint:(CGPoint)point;
@end

@implementation CRLFreehandDrawingWindingCalculator

- (void)addPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (self->_hasPoints)
  {
    v6 = self->_lastInputPoints[0].x;
    v7 = sub_10011F31C(self->_lastInputPoints[1].x, self->_lastInputPoints[1].y, v6);
    v9 = v8;
    v10 = sub_10011F31C(x, y, v6);
    v12 = sub_10011FBE4(v7, v9, v10, v11) + self->_totalCrossProduct;
    self->_lastInputPoints[0] = self->_lastInputPoints[1];
    self->_lastInputPoints[1].x = x;
    self->_lastInputPoints[1].y = y;
    self->_totalCrossProduct = v12;
  }

  else
  {
    self->_lastInputPoints[1] = point;
    self->_lastInputPoints[0] = self->_lastInputPoints[1];
    self->_hasPoints = 1;
  }
}

- (BOOL)isWindingClockwise
{
  if (!self->_hasPoints)
  {
    v5 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"Can't compute path winding if the calculator doesn't have any points" userInfo:0, v2, v3];
    objc_exception_throw(v5);
  }

  return self->_totalCrossProduct < 0.0;
}

@end