@interface ASVVelocitySample3D
- (ASVVelocitySample3D)initWithStart:(ASVVelocitySample3D *)self end:(SEL)a2 deltaTime:(double)a3;
- (double)velocity;
@end

@implementation ASVVelocitySample3D

- (ASVVelocitySample3D)initWithStart:(ASVVelocitySample3D *)self end:(SEL)a2 deltaTime:(double)a3
{
  v5 = v4;
  v7 = *&a3;
  v8 = v3;
  v9.receiver = self;
  v9.super_class = ASVVelocitySample3D;
  result = [(ASVVelocitySample3D *)&v9 init];
  if (result)
  {
    *result->_start = v7;
    *result->_end = v8;
    result->_deltaTime = v5;
  }

  return result;
}

- (double)velocity
{
  [a1 deltaTime];
  v3 = v2;
  result = 0.0;
  if (v3 >= 0.00000011920929)
  {
    [a1 end];
    v8 = v5;
    [a1 start];
    v9 = vsubq_f32(v8, v6);
    [a1 deltaTime];
    *&v7 = v7;
    *&result = vdivq_f32(v9, vdupq_lane_s32(*&v7, 0)).u64[0];
  }

  return result;
}

@end