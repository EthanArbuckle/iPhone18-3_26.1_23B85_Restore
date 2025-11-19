@interface ASVVelocitySample2D
- (ASVVelocitySample2D)initWithStart:(ASVVelocitySample2D *)self end:(SEL)a2 deltaTime:(double)a3;
- (uint64_t)velocity;
@end

@implementation ASVVelocitySample2D

- (ASVVelocitySample2D)initWithStart:(ASVVelocitySample2D *)self end:(SEL)a2 deltaTime:(double)a3
{
  v5 = v4;
  v6 = v3;
  v9.receiver = self;
  v9.super_class = ASVVelocitySample2D;
  result = [(ASVVelocitySample2D *)&v9 init];
  if (result)
  {
    *result->_start = a3;
    *result->_end = v6;
    result->_deltaTime = v5;
  }

  return result;
}

- (uint64_t)velocity
{
  result = [a1 deltaTime];
  if (v3 >= 0.00000011920929)
  {
    [a1 end];
    [a1 start];
    return [a1 deltaTime];
  }

  return result;
}

@end