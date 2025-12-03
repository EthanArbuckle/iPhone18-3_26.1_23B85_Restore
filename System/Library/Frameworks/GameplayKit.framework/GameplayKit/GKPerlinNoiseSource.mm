@interface GKPerlinNoiseSource
- (double)valueAt:(GKPerlinNoiseSource *)self;
- (id)cloneModule;
@end

@implementation GKPerlinNoiseSource

- (double)valueAt:(GKPerlinNoiseSource *)self
{
  v13 = *v2;
  v15 = v2[1];
  [(GKCoherentNoiseSource *)self frequency];
  v12 = v4;
  if ([(GKCoherentNoiseSource *)self octaveCount]< 1)
  {
    return 0.0;
  }

  v5 = 0;
  v14 = vmulq_n_f64(v13, v12);
  v16 = vmulq_n_f64(v15, v12);
  v6 = 0.0;
  v7 = 1.0;
  do
  {
    seed = [(GKCoherentNoiseSource *)self seed];
    v17[0] = v14;
    v17[1] = v16;
    v6 = v6 + getGradientCoherentNoise(v17, v5 + seed) * v7;
    [(GKCoherentNoiseSource *)self lacunarity];
    v14 = vmulq_n_f64(v14, v9);
    v16 = vmulq_n_f64(v16, v9);
    [(GKPerlinNoiseSource *)self persistence];
    v7 = v10 * v7;
    ++v5;
  }

  while ([(GKCoherentNoiseSource *)self octaveCount]> v5);
  return v6;
}

- (id)cloneModule
{
  [(GKCoherentNoiseSource *)self frequency];
  v4 = v3;
  octaveCount = [(GKCoherentNoiseSource *)self octaveCount];
  [(GKPerlinNoiseSource *)self persistence];
  v7 = v6;
  [(GKCoherentNoiseSource *)self lacunarity];
  v9 = v8;
  seed = [(GKCoherentNoiseSource *)self seed];

  return [GKPerlinNoiseSource perlinNoiseSourceWithFrequency:octaveCount octaveCount:seed persistence:v4 lacunarity:v7 seed:v9];
}

@end