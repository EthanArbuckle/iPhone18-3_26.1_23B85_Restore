@interface ASVVelocitySample2D
- (ASVVelocitySample2D)initWithStart:(ASVVelocitySample2D *)self end:(SEL)end deltaTime:(double)time;
- (uint64_t)velocity;
@end

@implementation ASVVelocitySample2D

- (ASVVelocitySample2D)initWithStart:(ASVVelocitySample2D *)self end:(SEL)end deltaTime:(double)time
{
  v5 = v4;
  v6 = v3;
  v9.receiver = self;
  v9.super_class = ASVVelocitySample2D;
  result = [(ASVVelocitySample2D *)&v9 init];
  if (result)
  {
    *result->_start = time;
    *result->_end = v6;
    result->_deltaTime = v5;
  }

  return result;
}

- (uint64_t)velocity
{
  result = [self deltaTime];
  if (v3 >= 0.00000011920929)
  {
    [self end];
    [self start];
    return [self deltaTime];
  }

  return result;
}

@end