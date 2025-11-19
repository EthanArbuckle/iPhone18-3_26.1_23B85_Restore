@interface GKTurbulenceNoiseModifier
- (double)valueAt:(GKTurbulenceNoiseModifier *)self;
- (id)cloneModule;
- (void)dealloc;
@end

@implementation GKTurbulenceNoiseModifier

- (void)dealloc
{
  perlin = self->_perlin;
  v4 = self->_perlin[0];
  self->_perlin[0] = 0;

  v5 = perlin[1];
  perlin[1] = 0;

  v6 = perlin[2];
  perlin[2] = 0;

  v7.receiver = self;
  v7.super_class = GKTurbulenceNoiseModifier;
  [(GKTurbulenceNoiseModifier *)&v7 dealloc];
}

- (double)valueAt:(GKTurbulenceNoiseModifier *)self
{
  v4 = *v2;
  v22 = *v2;
  v24 = v2[1];
  perlin = self->_perlin;
  v6 = self->_perlin[0];
  v4.f64[0] = 0.8;
  v26 = vaddq_f64(*v2, xmmword_2389FBD40);
  v27 = vaddq_f64(v24, v4);
  [(GKPerlinNoiseSource *)v6 valueAt:&v26];
  v21 = v7;
  v8 = perlin[1];
  v9.f64[1] = v22.f64[1];
  v9.f64[0] = 0.15;
  v26 = vaddq_f64(v22, xmmword_2389FBD50);
  v27 = vaddq_f64(v24, v9);
  [(GKPerlinNoiseSource *)v8 valueAt:&v26];
  v20 = v10;
  v11 = perlin[2];
  v12.f64[1] = v22.f64[1];
  v12.f64[0] = 0.33;
  v26 = vaddq_f64(v22, xmmword_2389FBD60);
  v27 = vaddq_f64(v24, v12);
  [(GKPerlinNoiseSource *)v11 valueAt:&v26];
  v13.f64[1] = *(&v20 + 1);
  v14.f64[0] = v21;
  *&v14.f64[1] = v20;
  v13.f64[0] = self->_power;
  v23 = vmulq_f64(v13, v15);
  v25 = vmulq_n_f64(v14, v13.f64[0]);
  v16 = [(NSMutableArray *)self->super._inputModules objectAtIndexedSubscript:0];
  v26 = v25;
  v27 = v23;
  [v16 valueAt:&v26];
  v18 = v17;

  return v18;
}

- (id)cloneModule
{
  v2 = [[GKTurbulenceNoiseModifier alloc] initWithFrequency:self->_seed power:self->_frequency roughness:self->_power seed:self->_roughness];

  return v2;
}

@end