@interface GKRotateNoiseModifier
- (GKRotateNoiseModifier)init;
- (GKRotateNoiseModifier)initWithInputModuleCount:(unint64_t)a3;
- (GKRotateNoiseModifier)initWithRadians:(GKRotateNoiseModifier *)self;
- (double)valueAt:(GKRotateNoiseModifier *)self;
- (id)cloneModule;
@end

@implementation GKRotateNoiseModifier

- (GKRotateNoiseModifier)init
{
  v3[0] = 0;
  v3[1] = 0;
  v4 = 0u;
  return [(GKRotateNoiseModifier *)self initWithRadians:v3];
}

- (GKRotateNoiseModifier)initWithInputModuleCount:(unint64_t)a3
{
  v4[0] = 0;
  v4[1] = 0;
  v5 = 0u;
  return [(GKRotateNoiseModifier *)self initWithRadians:v4];
}

- (GKRotateNoiseModifier)initWithRadians:(GKRotateNoiseModifier *)self
{
  v4 = v2[1];
  v5 = *v2;
  v6.receiver = self;
  v6.super_class = GKRotateNoiseModifier;
  result = [(GKNoiseModifier *)&v6 initWithInputModuleCount:1];
  if (result)
  {
    *result->_radians = v5;
    *&result->_radians[16] = v4;
  }

  return result;
}

- (double)valueAt:(GKRotateNoiseModifier *)self
{
  v17 = *v2;
  v19 = v2[1];
  v16 = *self->_radians;
  v4 = *&self->_radians[8];
  v5 = __sincos_stret(*&self->_radians[16]);
  v6 = __sincos_stret(*&v16);
  v7 = __sincos_stret(v4);
  v8.f64[0] = v6.__cosval * v7.__cosval;
  v8.f64[1] = -(v6.__sinval * v5.__cosval - v6.__cosval * v7.__sinval * v5.__sinval);
  v9.f64[0] = v6.__sinval * v7.__cosval;
  v9.f64[1] = v6.__cosval * v5.__cosval + v6.__sinval * v7.__sinval * v5.__sinval;
  v10.f64[0] = -v7.__sinval;
  v10.f64[1] = v7.__cosval * v5.__sinval;
  v11 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(COERCE_UNSIGNED_INT64(v6.__sinval * v5.__sinval + v6.__cosval * v7.__sinval * v5.__cosval), v17.f64[0]), COERCE_UNSIGNED_INT64(-(v6.__cosval * v5.__sinval - v6.__sinval * v7.__sinval * v5.__cosval)), v17, 1), COERCE_UNSIGNED_INT64(v7.__cosval * v5.__cosval), v19.f64[0]);
  v18 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v8, v17.f64[0]), v9, v17, 1), v10, v19.f64[0]);
  v20 = v11;
  v12 = [(NSMutableArray *)self->super._inputModules objectAtIndexedSubscript:0];
  v21[0] = v18;
  v21[1] = v20;
  [v12 valueAt:v21];
  v14 = v13;

  return v14;
}

- (id)cloneModule
{
  v3 = [GKRotateNoiseModifier alloc];
  v4 = *&self->_radians[16];
  v7[0] = *self->_radians;
  v7[1] = v4;
  v5 = [(GKRotateNoiseModifier *)v3 initWithRadians:v7];

  return v5;
}

@end