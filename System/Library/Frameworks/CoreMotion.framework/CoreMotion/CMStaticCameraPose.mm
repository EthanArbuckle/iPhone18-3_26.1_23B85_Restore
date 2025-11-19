@interface CMStaticCameraPose
- (CMStaticCameraPose)initWithIsStatic:(BOOL)a3 timeInStaticState:(double)a4 timeInMovingState:(double)a5 portraitAngle:(float)a6 portraitUpsideDownAngle:(float)a7 landscapeLeftAngle:(float)a8 landscapeRightAngle:(float)a9 faceUpAngle:(float)a10 faceDownAngle:(float)a11;
@end

@implementation CMStaticCameraPose

- (CMStaticCameraPose)initWithIsStatic:(BOOL)a3 timeInStaticState:(double)a4 timeInMovingState:(double)a5 portraitAngle:(float)a6 portraitUpsideDownAngle:(float)a7 landscapeLeftAngle:(float)a8 landscapeRightAngle:(float)a9 faceUpAngle:(float)a10 faceDownAngle:(float)a11
{
  v21.receiver = self;
  v21.super_class = CMStaticCameraPose;
  result = [(CMStaticCameraPose *)&v21 init];
  if (result)
  {
    result->_isStatic = a3;
    result->_timeInStaticState = a4;
    result->_timeInMovingState = a5;
    result->_portraitAngleDeg = a6;
    result->_portraitUpsideDownAngleDeg = a7;
    result->_landscapeLeftAngleDeg = a8;
    result->_landscapeRightAngleDeg = a9;
    result->_faceUpAngleDeg = a10;
    result->_faceDownAngleDeg = a11;
  }

  return result;
}

@end