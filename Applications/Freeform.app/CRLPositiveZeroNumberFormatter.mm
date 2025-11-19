@interface CRLPositiveZeroNumberFormatter
- (id)stringForObjectValue:(id)a3;
@end

@implementation CRLPositiveZeroNumberFormatter

- (id)stringForObjectValue:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 floatValue];
    v6 = v5;
    v7 = [(CRLPositiveZeroNumberFormatter *)self multiplier];
    [v7 floatValue];
    v9 = v8;

    v10 = v9 == 0.0 ? v6 : v6 * v9;
    v11 = pow(0.1, [(CRLPositiveZeroNumberFormatter *)self maximumFractionDigits]) * -0.5;
    if (v10 <= 0.0 && v10 > v11)
    {

      v4 = &off_1018E28E0;
    }
  }

  v15.receiver = self;
  v15.super_class = CRLPositiveZeroNumberFormatter;
  v13 = [(CRLPositiveZeroNumberFormatter *)&v15 stringForObjectValue:v4];

  return v13;
}

@end