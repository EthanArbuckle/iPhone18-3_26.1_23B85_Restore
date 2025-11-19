@interface FKAIncrementalGestureState
- (CGPoint)startFingerControllerPoint;
@end

@implementation FKAIncrementalGestureState

- (CGPoint)startFingerControllerPoint
{
  x = self->_startFingerControllerPoint.x;
  y = self->_startFingerControllerPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end