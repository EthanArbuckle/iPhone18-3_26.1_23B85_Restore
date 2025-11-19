@interface ASVDeceleration
- (ASVDeceleration)initWithVelocity:(float)a3 minEndDelta:(float)a4;
@end

@implementation ASVDeceleration

- (ASVDeceleration)initWithVelocity:(float)a3 minEndDelta:(float)a4
{
  v10.receiver = self;
  v10.super_class = ASVDeceleration;
  v6 = [(ASVDeceleration *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_velocity = a3;
    v6->_minEndDelta = a4;
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