@interface AXMDataRegressionModelExponential
- (id)modelDescription;
- (id)modelFunctionStringForParameters:(double *)parameters significantFigures:(int)figures;
- (id)partialDerivatives;
- (void)getInitialParams:(double *)params;
@end

@implementation AXMDataRegressionModelExponential

- (id)modelDescription
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v3 = [v2 localizedStringForKey:@"chart.model.exponential" value:&stru_1F23EA908 table:@"Accessibility"];

  return v3;
}

- (void)getInitialParams:(double *)params
{
  v5 = [(AXMDataRegressionModel *)self x];
  v6 = [(AXMDataRegressionModel *)self y];
  v7 = [(AXMDataRegressionModel *)self n];
  v8 = v7;
  v9 = malloc_type_malloc(8 * v7, 0x100004000313F17uLL);
  if (v7 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = v6[v10];
      v12 = log(v11);
      if (v11 == 0.0)
      {
        v12 = 0.0;
      }

      v9[v10++] = v12;
    }

    while (v8 > v10);
  }

  v13 = covariance(v5, v9, v8);
  v14 = variance(v5, v8);
  v15 = variance(v9, v8);
  v16 = mean(v5, v8);
  v17 = mean(v9, v8);
  v18 = sqrt(v15) * (v13 / sqrt(v14 * v15)) / sqrt(v14);
  *params = exp(v17 - v18 * v16);
  params[1] = v18;

  free(v9);
}

- (id)partialDerivatives
{
  array = [MEMORY[0x1E695DF70] array];
  [array addObject:&__block_literal_global_40];
  [array addObject:&__block_literal_global_42];
  v3 = [array copy];

  return v3;
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

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"y = %@ * e^(%@x)", v8, v10];

  return v11;
}

@end