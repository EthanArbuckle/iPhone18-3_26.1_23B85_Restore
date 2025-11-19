@interface AVPanGestureIncrement
+ (AVPanGestureIncrement)gestureIncrementWithTranslation:(CGPoint)a3 velocity:(CGPoint)a4 timestamp:(double)a5 hasMultipleTouches:(BOOL)a6;
- (CGPoint)translation;
- (CGPoint)velocity;
@end

@implementation AVPanGestureIncrement

- (CGPoint)velocity
{
  x = self->_velocity.x;
  y = self->_velocity.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)translation
{
  x = self->_translation.x;
  y = self->_translation.y;
  result.y = y;
  result.x = x;
  return result;
}

+ (AVPanGestureIncrement)gestureIncrementWithTranslation:(CGPoint)a3 velocity:(CGPoint)a4 timestamp:(double)a5 hasMultipleTouches:(BOOL)a6
{
  y = a4.y;
  x = a4.x;
  v10 = a3.y;
  v11 = a3.x;
  v12 = objc_alloc_init(AVPanGestureIncrement);
  v12->_translation.y = v10;
  v12->_velocity.x = x;
  v12->_velocity.y = y;
  v12->_hasMultipleTouches = a6;
  v12->_timestamp = a5;
  v12->_translation.x = v11;

  return v12;
}

@end