@interface GKRidgedNoiseSource
- (double)valueAt:(GKRidgedNoiseSource *)self;
- (id)cloneModule;
@end

@implementation GKRidgedNoiseSource

- (double)valueAt:(GKRidgedNoiseSource *)self
{
  v14 = *v2;
  v16 = v2[1];
  [(GKCoherentNoiseSource *)self frequency];
  v13 = v4;
  if ([(GKCoherentNoiseSource *)self octaveCount]< 1)
  {
    return -1.0;
  }

  v5 = 0;
  v15 = vmulq_n_f64(v14, v13);
  v17 = vmulq_n_f64(v16, v13);
  v6 = 0.0;
  v7 = 1.0;
  do
  {
    seed = [(GKCoherentNoiseSource *)self seed];
    v18[0] = v15;
    v18[1] = v17;
    v9 = fabs(getGradientCoherentNoise(v18, v5 + seed));
    v10 = (1.0 - v9) * (1.0 - v9) * v7;
    v7 = fmax(fmin(v10 + v10, 1.0), 0.0);
    v6 = v6 + v10 * self->m_weights[v5];
    [(GKCoherentNoiseSource *)self lacunarity];
    v15 = vmulq_n_f64(v15, v11);
    v17 = vmulq_n_f64(v17, v11);
    ++v5;
  }

  while ([(GKCoherentNoiseSource *)self octaveCount]> v5);
  return v6 * 1.25 + -1.0;
}

- (id)cloneModule
{
  [(GKCoherentNoiseSource *)self frequency];
  v4 = v3;
  octaveCount = [(GKCoherentNoiseSource *)self octaveCount];
  [(GKCoherentNoiseSource *)self lacunarity];
  v7 = v6;
  seed = [(GKCoherentNoiseSource *)self seed];

  return [GKRidgedNoiseSource ridgedNoiseSourceWithFrequency:octaveCount octaveCount:seed lacunarity:v4 seed:v7];
}

@end