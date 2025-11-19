@interface GKSphereObstacle
+ (GKSphereObstacle)obstacleWithRadius:(float)radius;
- (GKSphereObstacle)initWithRadius:(float)radius;
- (id).cxx_construct;
- (vector_float3)position;
@end

@implementation GKSphereObstacle

+ (GKSphereObstacle)obstacleWithRadius:(float)radius
{
  v4 = [GKSphereObstacle alloc];
  *&v5 = radius;
  v6 = [(GKSphereObstacle *)v4 initWithRadius:v5];

  return v6;
}

- (GKSphereObstacle)initWithRadius:(float)radius
{
  v8.receiver = self;
  v8.super_class = GKSphereObstacle;
  v4 = [(GKSphereObstacle *)&v8 init];
  v6 = v4;
  if (v4)
  {
    *&v5 = radius;
    [(GKSphereObstacle *)v4 setRadius:v5];
    [(GKSphereObstacle *)v6 setPosition:0.0];
  }

  return v6;
}

- (vector_float3)position
{
  v2 = *&self->_obstacle.center.x;
  z = self->_obstacle.center.z;
  result.i64[1] = a2;
  result.i64[0] = self;
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