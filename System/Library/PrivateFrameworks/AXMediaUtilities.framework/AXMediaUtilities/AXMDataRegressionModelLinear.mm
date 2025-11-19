@interface AXMDataRegressionModelLinear
- (double)fitDataWithModelParams:(double *)a3 finalParams:(double *)a4;
- (id)modelDescription;
- (id)modelFunctionStringForParameters:(double *)a3 significantFigures:(int)a4;
- (id)partialDerivatives;
@end

@implementation AXMDataRegressionModelLinear

- (id)modelDescription
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v3 = [v2 localizedStringForKey:@"chart.model.linear" value:&stru_1F23EA908 table:@"Accessibility"];

  return v3;
}

- (double)fitDataWithModelParams:(double *)a3 finalParams:(double *)a4
{
  v6 = [(AXMDataRegressionModel *)self x];
  v7 = [(AXMDataRegressionModel *)self y];
  v8 = [(AXMDataRegressionModel *)self n];
  v9 = covariance(v6, v7, v8);
  v10 = variance(v6, v8);
  v11 = variance(v7, v8);
  v12 = mean(v6, v8);
  v13 = mean(v7, v8);
  v14 = sqrt(v11) * (v9 / sqrt(v10 * v11)) / sqrt(v10);
  *a4 = v14;
  a4[1] = v13 - v14 * v12;
  v15 = malloc_type_malloc(8 * v8, 0x100004000313F17uLL);
  [(AXMDataRegressionModel *)self getResidualsVector:a4 result:v15];
  if (v8 < 1)
  {
    v21 = 0.0;
  }

  else
  {
    v16 = 0.0;
    v17 = 1;
    v18 = v15;
    do
    {
      v19 = *v18++;
      v16 = v16 + v19 * v19;
    }

    while (v8 > v17++);
    v21 = v16 * 0.5;
  }

  self->super._error = v21;
  [(AXMDataRegressionModel *)self computeScore];
  self->_rSquared = rsquared(v6, v7, v8);
  memcpy(self->super._bestFitParameters, a4, 8 * [(AXMDataRegressionModelLinear *)self modelParameterCount]);
  free(v15);
  return v21;
}

- (id)partialDerivatives
{
  v2 = [MEMORY[0x1E695DF70] array];
  [v2 addObject:&__block_literal_global_40_2];
  [v2 addObject:&__block_literal_global_42_2];
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

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"y = %@x + %@", v8, v10];

  return v11;
}

@end