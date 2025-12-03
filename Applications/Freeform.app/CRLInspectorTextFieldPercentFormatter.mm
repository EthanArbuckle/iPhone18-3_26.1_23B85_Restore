@interface CRLInspectorTextFieldPercentFormatter
- (CRLInspectorTextFieldPercentFormatter)init;
- (CRLInspectorTextFieldPercentFormatter)initWithCoder:(id)coder;
- (id)p_clampNumber:(id)number toMinimum:(id)minimum andMaximum:(id)maximum wasNumberClamped:(BOOL *)clamped;
- (id)p_numberScaledWithMultiplerForNumber:(id)number;
- (id)p_numberUnscaledWithMultiplerForNumber:(id)number;
- (id)stringForObjectValue:(id)value;
- (void)p_commonInitPercentFormatter;
@end

@implementation CRLInspectorTextFieldPercentFormatter

- (void)p_commonInitPercentFormatter
{
  [(CRLInspectorTextFieldPercentFormatter *)self setNumberStyle:3];

  [(CRLInspectorTextFieldPercentFormatter *)self setMultiplier:&off_1018E3070];
}

- (CRLInspectorTextFieldPercentFormatter)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CRLInspectorTextFieldPercentFormatter;
  v3 = [(CRLInspectorTextFieldClampNumberFormatter *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(CRLInspectorTextFieldPercentFormatter *)v3 p_commonInitPercentFormatter];
  }

  return v4;
}

- (CRLInspectorTextFieldPercentFormatter)init
{
  v5.receiver = self;
  v5.super_class = CRLInspectorTextFieldPercentFormatter;
  v2 = [(CRLInspectorTextFieldClampNumberFormatter *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CRLInspectorTextFieldPercentFormatter *)v2 p_commonInitPercentFormatter];
  }

  return v3;
}

- (id)p_numberUnscaledWithMultiplerForNumber:(id)number
{
  numberCopy = number;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, numberCopy);

  multiplier = [(CRLInspectorTextFieldPercentFormatter *)self multiplier];
  v8 = multiplier;
  if (v6)
  {
    v9 = multiplier == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v13 = v6;
  }

  else
  {
    [v6 doubleValue];
    v11 = v10;
    [v8 doubleValue];
    v13 = [NSNumber numberWithDouble:v11 / v12];
  }

  v14 = v13;

  return v14;
}

- (id)p_numberScaledWithMultiplerForNumber:(id)number
{
  numberCopy = number;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, numberCopy);

  multiplier = [(CRLInspectorTextFieldPercentFormatter *)self multiplier];
  v8 = multiplier;
  if (v6)
  {
    v9 = multiplier == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v13 = v6;
  }

  else
  {
    [v6 doubleValue];
    v11 = v10;
    [v8 doubleValue];
    v13 = [NSNumber numberWithDouble:v11 * v12];
  }

  v14 = v13;

  return v14;
}

- (id)p_clampNumber:(id)number toMinimum:(id)minimum andMaximum:(id)maximum wasNumberClamped:(BOOL *)clamped
{
  maximumCopy = maximum;
  minimumCopy = minimum;
  v12 = [(CRLInspectorTextFieldPercentFormatter *)self p_numberScaledWithMultiplerForNumber:number];
  v16.receiver = self;
  v16.super_class = CRLInspectorTextFieldPercentFormatter;
  v13 = [(CRLInspectorTextFieldClampNumberFormatter *)&v16 p_clampNumber:v12 toMinimum:minimumCopy andMaximum:maximumCopy wasNumberClamped:clamped];

  v14 = [(CRLInspectorTextFieldPercentFormatter *)self p_numberUnscaledWithMultiplerForNumber:v13];

  return v14;
}

- (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, valueCopy);
  v7 = v6;
  if (v6)
  {
    [v6 doubleValue];
    v9 = v8;
    multiplier = [(CRLInspectorTextFieldPercentFormatter *)self multiplier];
    [multiplier doubleValue];
    *&v11 = v9 * v11;
    v12 = roundf(*&v11);

    if (v12 == 0.0 || fabsf(v12) < 0.01)
    {

      valueCopy = &off_1018E3080;
    }
  }

  v15.receiver = self;
  v15.super_class = CRLInspectorTextFieldPercentFormatter;
  v13 = [(CRLInspectorTextFieldClampNumberFormatter *)&v15 stringForObjectValue:valueCopy];

  return v13;
}

@end