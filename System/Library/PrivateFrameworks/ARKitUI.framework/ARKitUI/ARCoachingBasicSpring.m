@interface ARCoachingBasicSpring
- (ARCoachingBasicSpring)initWithTension:(float)a3 friction:(float)a4;
- (void)setInput:(float)a3 velocity:(float)a4;
- (void)stepWithDeltaTime:(double)a3;
@end

@implementation ARCoachingBasicSpring

- (ARCoachingBasicSpring)initWithTension:(float)a3 friction:(float)a4
{
  v11.receiver = self;
  v11.super_class = ARCoachingBasicSpring;
  v6 = [(ARCoachingBasicSpring *)&v11 init];
  v8 = v6;
  if (v6)
  {
    *&v7 = a3;
    [(ARCoachingBasicSpring *)v6 setTension:v7];
    *&v9 = a4;
    [(ARCoachingBasicSpring *)v8 setFriction:v9];
    *&v8->_target = 0;
    v8->_position = 0.0;
  }

  return v8;
}

- (void)stepWithDeltaTime:(double)a3
{
  [(ARCoachingBasicSpring *)self tension];
  v6 = v5;
  v7 = self->_position - self->_target;
  [(ARCoachingBasicSpring *)self friction];
  v9 = self->_velocity + (-(v8 * self->_velocity) - (v6 * v7)) * a3;
  v10 = self->_position + v9 * a3;
  self->_velocity = v9;
  self->_position = v10;
}

- (void)setInput:(float)a3 velocity:(float)a4
{
  self->_velocity = a4;
  self->_position = a3;
  self->_target = a3;
}

@end