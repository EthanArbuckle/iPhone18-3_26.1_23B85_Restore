@interface GKCircleObstacle
+ (GKCircleObstacle)obstacleWithRadius:(float)radius;
- (GKCircleObstacle)initWithRadius:(float)radius;
- (id).cxx_construct;
- (vector_float2)position;
- (void)setPosition:(vector_float2)position;
@end

@implementation GKCircleObstacle

+ (GKCircleObstacle)obstacleWithRadius:(float)radius
{
  v4 = [GKCircleObstacle alloc];
  *&v5 = radius;
  v6 = [(GKCircleObstacle *)v4 initWithRadius:v5];

  return v6;
}

- (GKCircleObstacle)initWithRadius:(float)radius
{
  v8.receiver = self;
  v8.super_class = GKCircleObstacle;
  v4 = [(GKCircleObstacle *)&v8 init];
  v6 = v4;
  if (v4)
  {
    *&v5 = radius;
    [(GKCircleObstacle *)v4 setRadius:v5];
    [(GKCircleObstacle *)v6 setPosition:0.0];
  }

  return v6;
}

- (void)setPosition:(vector_float2)position
{
  LODWORD(self->_obstacle.center.x) = position.i32[0];
  self->_obstacle.center.y = 0.0;
  LODWORD(self->_obstacle.center.z) = position.i32[1];
}

- (vector_float2)position
{
  result.i32[0] = LODWORD(self->_obstacle.center.x);
  result.i32[1] = LODWORD(self->_obstacle.center.z);
  return result;
}

- (id).cxx_construct
{
  *(self + 1) = &unk_284B50078;
  *(self + 4) = 1065353216;
  v2 = dword_27DF48758;
  *(self + 20) = _static_vec3_zero;
  *(self + 7) = v2;
  return self;
}

@end