@interface ASTUICapturedGazeEnrollmentPoint
- (CGPoint)groundTruthPoint;
- (CGPoint)predictedPoint;
@end

@implementation ASTUICapturedGazeEnrollmentPoint

- (CGPoint)groundTruthPoint
{
  x = self->_groundTruthPoint.x;
  y = self->_groundTruthPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)predictedPoint
{
  x = self->_predictedPoint.x;
  y = self->_predictedPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end