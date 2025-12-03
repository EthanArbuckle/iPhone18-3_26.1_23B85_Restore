@interface ARCoachingBasicSpring
- (ARCoachingBasicSpring)initWithTension:(float)tension friction:(float)friction;
- (void)setInput:(float)input velocity:(float)velocity;
- (void)stepWithDeltaTime:(double)time;
@end

@implementation ARCoachingBasicSpring

- (ARCoachingBasicSpring)initWithTension:(float)tension friction:(float)friction
{
  v11.receiver = self;
  v11.super_class = ARCoachingBasicSpring;
  v6 = [(ARCoachingBasicSpring *)&v11 init];
  v8 = v6;
  if (v6)
  {
    *&v7 = tension;
    [(ARCoachingBasicSpring *)v6 setTension:v7];
    *&v9 = friction;
    [(ARCoachingBasicSpring *)v8 setFriction:v9];
    *&v8->_target = 0;
    v8->_position = 0.0;
  }

  return v8;
}

- (void)stepWithDeltaTime:(double)time
{
  [(ARCoachingBasicSpring *)self tension];
  v6 = v5;
  v7 = self->_position - self->_target;
  [(ARCoachingBasicSpring *)self friction];
  v9 = self->_velocity + (-(v8 * self->_velocity) - (v6 * v7)) * time;
  v10 = self->_position + v9 * time;
  self->_velocity = v9;
  self->_position = v10;
}

- (void)setInput:(float)input velocity:(float)velocity
{
  self->_velocity = velocity;
  self->_position = input;
  self->_target = input;
}

@end