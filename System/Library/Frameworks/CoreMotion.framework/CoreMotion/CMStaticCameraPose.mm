@interface CMStaticCameraPose
- (CMStaticCameraPose)initWithIsStatic:(BOOL)static timeInStaticState:(double)state timeInMovingState:(double)movingState portraitAngle:(float)angle portraitUpsideDownAngle:(float)downAngle landscapeLeftAngle:(float)leftAngle landscapeRightAngle:(float)rightAngle faceUpAngle:(float)self0 faceDownAngle:(float)self1;
@end

@implementation CMStaticCameraPose

- (CMStaticCameraPose)initWithIsStatic:(BOOL)static timeInStaticState:(double)state timeInMovingState:(double)movingState portraitAngle:(float)angle portraitUpsideDownAngle:(float)downAngle landscapeLeftAngle:(float)leftAngle landscapeRightAngle:(float)rightAngle faceUpAngle:(float)self0 faceDownAngle:(float)self1
{
  v21.receiver = self;
  v21.super_class = CMStaticCameraPose;
  result = [(CMStaticCameraPose *)&v21 init];
  if (result)
  {
    result->_isStatic = static;
    result->_timeInStaticState = state;
    result->_timeInMovingState = movingState;
    result->_portraitAngleDeg = angle;
    result->_portraitUpsideDownAngleDeg = downAngle;
    result->_landscapeLeftAngleDeg = leftAngle;
    result->_landscapeRightAngleDeg = rightAngle;
    result->_faceUpAngleDeg = upAngle;
    result->_faceDownAngleDeg = faceDownAngle;
  }

  return result;
}

@end