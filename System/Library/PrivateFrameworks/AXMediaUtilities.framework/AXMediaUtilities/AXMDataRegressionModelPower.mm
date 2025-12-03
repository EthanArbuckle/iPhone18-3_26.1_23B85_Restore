@interface AXMDataRegressionModelPower
- (id)modelDescription;
- (id)modelFunctionStringForParameters:(double *)parameters significantFigures:(int)figures;
- (id)partialDerivatives;
- (void)getInitialParams:(double *)params;
@end

@implementation AXMDataRegressionModelPower

- (id)modelDescription
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v3 = [v2 localizedStringForKey:@"chart.model.power" value:&stru_1F23EA908 table:@"Accessibility"];

  return v3;
}

- (void)getInitialParams:(double *)params
{
  v5 = [(AXMDataRegressionModel *)self x];
  v6 = [(AXMDataRegressionModel *)self y];
  v7 = [(AXMDataRegressionModel *)self n];
  v8 = v7;
  v9 = malloc_type_malloc(8 * v7, 0x100004000313F17uLL);
  v10 = malloc_type_malloc(8 * v7, 0x100004000313F17uLL);
  if (v7 >= 1)
  {
    v11 = 0;
    do
    {
      v12 = v5[v11];
      v13 = log(v12);
      if (v12 == 0.0)
      {
        v13 = 0.0;
      }

      v9[v11] = v13;
      v14 = v6[v11];
      v15 = log(v14);
      if (v14 == 0.0)
      {
        v15 = 0.0;
      }

      v10[v11++] = v15;
    }

    while (v8 > v11);
  }

  v16 = covariance(v9, v10, v8);
  v17 = variance(v9, v8);
  v18 = variance(v10, v8);
  v19 = mean(v9, v8);
  v20 = mean(v10, v8);
  v21 = sqrt(v18) * (v16 / sqrt(v17 * v18)) / sqrt(v17);
  *params = exp(v20 - v21 * v19);
  params[1] = v21;
  free(v9);

  free(v10);
}

- (id)partialDerivatives
{
  array = [MEMORY[0x1E695DF70] array];
  [array addObject:&__block_literal_global_40_0];
  [array addObject:&__block_literal_global_42_0];
  v3 = [array copy];

  return v3;
}

long double __49__AXMDataRegressionModelPower_partialDerivatives__block_invoke_2(long double a1, uint64_t a2, uint64_t a3)
{
  v4 = *a3;
  v5 = v4 * pow(a1, *(a3 + 8));
  return log(a1) * v5;
}

- (id)modelFunctionStringForParameters:(double *)parameters significantFigures:(int)figures
{
  v6 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v6 setUsesSignificantDigits:1];
  [v6 setMaximumSignificantDigits:figures];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:*parameters];
  v8 = [v6 stringFromNumber:v7];

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:parameters[1]];
  v10 = [v6 stringFromNumber:v9];

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"y = %@ * x^%@", v8, v10];

  return v11;
}

@end