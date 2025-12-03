@interface CRLPositiveZeroNumberFormatter
- (id)stringForObjectValue:(id)value;
@end

@implementation CRLPositiveZeroNumberFormatter

- (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  if (objc_opt_respondsToSelector())
  {
    [valueCopy floatValue];
    v6 = v5;
    multiplier = [(CRLPositiveZeroNumberFormatter *)self multiplier];
    [multiplier floatValue];
    v9 = v8;

    v10 = v9 == 0.0 ? v6 : v6 * v9;
    v11 = pow(0.1, [(CRLPositiveZeroNumberFormatter *)self maximumFractionDigits]) * -0.5;
    if (v10 <= 0.0 && v10 > v11)
    {

      valueCopy = &off_1018E28E0;
    }
  }

  v15.receiver = self;
  v15.super_class = CRLPositiveZeroNumberFormatter;
  v13 = [(CRLPositiveZeroNumberFormatter *)&v15 stringForObjectValue:valueCopy];

  return v13;
}

@end