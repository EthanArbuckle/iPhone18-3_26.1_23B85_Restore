@interface AXMDataRegressionModelSine
- (double)estimatedRadianFrequency;
- (id)modelDescription;
- (id)modelFunctionStringForParameters:(double *)a3 significantFigures:(int)a4;
- (id)partialDerivatives;
- (void)disqualifyModelIfNecessary;
- (void)getInitialParams:(double *)a3;
@end

@implementation AXMDataRegressionModelSine

- (id)modelDescription
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v3 = [v2 localizedStringForKey:@"chart.model.sinusoidal" value:&stru_1F23EA908 table:@"Accessibility"];

  return v3;
}

long double __43__AXMDataRegressionModelSine_modelFunction__block_invoke(double a1, uint64_t a2, double *a3)
{
  v3 = *a3;
  v4 = a3[3];
  return v4 + v3 * sin(a3[2] + a3[1] * a1);
}

- (void)disqualifyModelIfNecessary
{
  v3 = self->super._bestFitParameters[1];
  if (v3 > 0.0)
  {
    v5 = 6.28318531 / v3;
    v6 = max(self->super._x, self->super._n);
    v7 = v6 - min(self->super._x, self->super._n) < v5 * 0.666666667;

    [(AXMDataRegressionModel *)self setIsDisqualified:v7];
  }
}

- (void)getInitialParams:(double *)a3
{
  v5 = min(self->super._y, self->super._n);
  v6 = max(self->super._y, self->super._n) - v5;
  *a3 = v6 / 1.5;
  [(AXMDataRegressionModelSine *)self estimatedRadianFrequency];
  *(a3 + 1) = v7;
  a3[2] = 0.0;
  a3[3] = v5 + v6 * 0.5;
}

- (id)partialDerivatives
{
  v2 = [MEMORY[0x1E695DF70] array];
  [v2 addObject:&__block_literal_global_40_1];
  [v2 addObject:&__block_literal_global_42_1];
  [v2 addObject:&__block_literal_global_44_0];
  [v2 addObject:&__block_literal_global_46];
  v3 = [v2 copy];

  return v3;
}

- (id)modelFunctionStringForParameters:(double *)a3 significantFigures:(int)a4
{
  v6 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v6 setUsesSignificantDigits:1];
  [v6 setMaximumSignificantDigits:a4];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:*a3];
  v8 = [v6 stringFromNumber:v7];

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:a3[1]];
  v10 = [v6 stringFromNumber:v9];

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:a3[2]];
  v12 = [v6 stringFromNumber:v11];

  v13 = [MEMORY[0x1E696AD98] numberWithDouble:a3[3]];
  v14 = [v6 stringFromNumber:v13];

  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"y = %@ * sin(%@x + %@) + %@", v8, v10, v12, v14];

  return v15;
}

- (double)estimatedRadianFrequency
{
  v33[1] = *MEMORY[0x1E69E9840];
  v3 = [(AXMDataRegressionModel *)self sortDataPoints];
  MEMORY[0x1EEE9AC00](v3);
  v6 = v33 - v5;
  if (v4 >= 25)
  {
    v7 = 5;
  }

  else
  {
    v7 = (v4 / 5);
  }

  [(AXMDataRegressionModel *)self getSMA:v33 - v5 lookback:v7];
  n = self->super._n;
  if (n < 1)
  {
    v10 = 0;
    LODWORD(v11) = 0;
    v15 = -INFINITY;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    LODWORD(v11) = 0;
    v12 = -1.79769313e308;
    v13 = 1.79769313e308;
    do
    {
      v14 = *&v6[8 * v9];
      if (v14 < v13)
      {
        v13 = *&v6[8 * v9];
        v10 = v9;
      }

      if (v14 > v12)
      {
        v12 = *&v6[8 * v9];
        LODWORD(v11) = v9;
      }

      ++v9;
    }

    while (n != v9);
    v15 = v13 + (v12 - v13) * 0.5;
    if (v10 < v11)
    {
      v16 = 0;
      v17 = 0;
      v18 = v10;
      v19 = &v6[8 * v10];
      v20 = v11 - v10 + 1;
      do
      {
        v21 = *v19++;
        v22 = v21 > v15;
        v23 = v17 + (v22 & (v16 ^ 1));
        v24 = v22 | v16;
        v17 = v23 + ((v21 < v15) & v24);
        v16 = (v21 >= v15) & v24;
        --v20;
      }

      while (v20);
      v11 = v11;
      return 6.28318531 / (vabdd_f64(self->super._x[v11], self->super._x[v18]) / vcvtd_n_f64_s32(v17, 1uLL));
    }
  }

  v25 = 0;
  v17 = 0;
  v18 = v10;
  v11 = v11;
  v26 = v10 + 1;
  v27 = &v6[8 * v10];
  do
  {
    v28 = *v27--;
    v29 = v28 > v15;
    v30 = v17 + (v29 & (v25 ^ 1));
    v31 = v29 | v25;
    v17 = v30 + ((v28 < v15) & v31);
    v25 = (v28 >= v15) & v31;
    --v26;
  }

  while (v26 > v11);
  return 6.28318531 / (vabdd_f64(self->super._x[v11], self->super._x[v18]) / vcvtd_n_f64_s32(v17, 1uLL));
}

@end