@interface AXMDataRegressionModelLogarithmic
- (id)modelDescription;
- (id)modelFunctionStringForParameters:(double *)a3 significantFigures:(int)a4;
- (id)partialDerivatives;
@end

@implementation AXMDataRegressionModelLogarithmic

- (id)modelDescription
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v3 = [v2 localizedStringForKey:@"chart.model.logarithmic" value:&stru_1F23EA908 table:@"Accessibility"];

  return v3;
}

long double __50__AXMDataRegressionModelLogarithmic_modelFunction__block_invoke(long double a1, uint64_t a2, double *a3)
{
  v3 = *a3;
  v4 = a3[1];
  return v4 + v3 * log(a1);
}

- (id)partialDerivatives
{
  v2 = [MEMORY[0x1E695DF70] array];
  [v2 addObject:&__block_literal_global_40_3];
  [v2 addObject:&__block_literal_global_42_3];
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

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"y = %@ * ln(x) + %@", v8, v10];

  return v11;
}

@end