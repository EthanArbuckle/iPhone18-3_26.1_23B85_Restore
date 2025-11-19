@interface GKBillowNoiseSource
- (double)valueAt:(GKBillowNoiseSource *)self;
- (id)cloneModule;
@end

@implementation GKBillowNoiseSource

- (double)valueAt:(GKBillowNoiseSource *)self
{
  v14 = *v2;
  v16 = v2[1];
  [(GKCoherentNoiseSource *)self frequency];
  v13 = v4;
  if ([(GKCoherentNoiseSource *)self octaveCount]< 1)
  {
    return 0.5;
  }

  v5 = 0;
  v15 = vmulq_n_f64(v14, v13);
  v17 = vmulq_n_f64(v16, v13);
  v6 = 0.0;
  v7 = 1.0;
  do
  {
    v8 = [(GKCoherentNoiseSource *)self seed];
    v18[0] = v15;
    v18[1] = v17;
    v9 = fabs(getGradientCoherentNoise(v18, v5 + v8));
    v6 = v6 - (v7 - (v9 + v9) * v7);
    [(GKCoherentNoiseSource *)self lacunarity];
    v15 = vmulq_n_f64(v15, v10);
    v17 = vmulq_n_f64(v17, v10);
    [(GKBillowNoiseSource *)self persistence];
    v7 = v11 * v7;
    ++v5;
  }

  while ([(GKCoherentNoiseSource *)self octaveCount]> v5);
  return v6 + 0.5;
}

- (id)cloneModule
{
  [(GKCoherentNoiseSource *)self frequency];
  v4 = v3;
  v5 = [(GKCoherentNoiseSource *)self octaveCount];
  [(GKBillowNoiseSource *)self persistence];
  v7 = v6;
  [(GKCoherentNoiseSource *)self lacunarity];
  v9 = v8;
  v10 = [(GKCoherentNoiseSource *)self seed];

  return [GKBillowNoiseSource billowNoiseSourceWithFrequency:v5 octaveCount:v10 persistence:v4 lacunarity:v7 seed:v9];
}

@end