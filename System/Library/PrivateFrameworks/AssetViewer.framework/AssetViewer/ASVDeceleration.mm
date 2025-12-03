@interface ASVDeceleration
- (ASVDeceleration)initWithVelocity:(float)velocity minEndDelta:(float)delta;
@end

@implementation ASVDeceleration

- (ASVDeceleration)initWithVelocity:(float)velocity minEndDelta:(float)delta
{
  v10.receiver = self;
  v10.super_class = ASVDeceleration;
  v6 = [(ASVDeceleration *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_velocity = velocity;
    v6->_minEndDelta = delta;
    v8 = CACurrentMediaTime();
    v7->_startTime = v8;
    v7->_currentTime = v8;
    v7->_previousTime = -1.0;
    v7->_frameCount = -1;
    v7->_isDecelerating = 1;
  }

  return v7;
}

@end