@interface AVPanGestureIncrement
+ (AVPanGestureIncrement)gestureIncrementWithTranslation:(CGPoint)translation velocity:(CGPoint)velocity timestamp:(double)timestamp hasMultipleTouches:(BOOL)touches;
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

+ (AVPanGestureIncrement)gestureIncrementWithTranslation:(CGPoint)translation velocity:(CGPoint)velocity timestamp:(double)timestamp hasMultipleTouches:(BOOL)touches
{
  y = velocity.y;
  x = velocity.x;
  v10 = translation.y;
  v11 = translation.x;
  v12 = objc_alloc_init(AVPanGestureIncrement);
  v12->_translation.y = v10;
  v12->_velocity.x = x;
  v12->_velocity.y = y;
  v12->_hasMultipleTouches = touches;
  v12->_timestamp = timestamp;
  v12->_translation.x = v11;

  return v12;
}

@end