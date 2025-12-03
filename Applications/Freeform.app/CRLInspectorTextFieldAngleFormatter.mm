@interface CRLInspectorTextFieldAngleFormatter
- (CRLInspectorTextFieldAngleFormatter)init;
- (CRLInspectorTextFieldAngleFormatter)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)crlaxLocalizedDescriptionFromValue:(id)value;
- (id)p_clampNumber:(id)number toMinimum:(id)minimum andMaximum:(id)maximum wasNumberClamped:(BOOL *)clamped;
- (id)stringForObjectValue:(id)value originalValue:(id)originalValue;
- (void)p_commonInitAngleFormatter;
@end

@implementation CRLInspectorTextFieldAngleFormatter

- (void)p_commonInitAngleFormatter
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"0.#°-0.#°" value:0 table:0];;
  [(CRLInspectorTextFieldAngleFormatter *)self crl_setFormat:v4];

  self->_normalizesAngle = 1;

  [(CRLInspectorTextFieldAngleFormatter *)self setMaximumFractionDigits:0];
}

- (CRLInspectorTextFieldAngleFormatter)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CRLInspectorTextFieldAngleFormatter;
  v3 = [(CRLInspectorTextFieldClampNumberFormatter *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(CRLInspectorTextFieldAngleFormatter *)v3 p_commonInitAngleFormatter];
  }

  return v4;
}

- (CRLInspectorTextFieldAngleFormatter)init
{
  v5.receiver = self;
  v5.super_class = CRLInspectorTextFieldAngleFormatter;
  v2 = [(CRLInspectorTextFieldClampNumberFormatter *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CRLInspectorTextFieldAngleFormatter *)v2 p_commonInitAngleFormatter];
  }

  return v3;
}

- (id)stringForObjectValue:(id)value originalValue:(id)originalValue
{
  valueCopy = value;
  originalValueCopy = originalValue;
  v8 = objc_opt_class();
  v9 = sub_100014370(v8, valueCopy);
  v10 = v9;
  if (v9)
  {
    [v9 doubleValue];
    v12 = [NSNumber numberWithDouble:fmod(v11, 360.0)];

    valueCopy = v12;
  }

  v15.receiver = self;
  v15.super_class = CRLInspectorTextFieldAngleFormatter;
  v13 = [(CRLInspectorTextFieldClampNumberFormatter *)&v15 stringForObjectValue:valueCopy originalValue:originalValueCopy];

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CRLInspectorTextFieldAngleFormatter;
  v4 = [(CRLInspectorTextFieldNumberFormatter *)&v6 copyWithZone:zone];
  [v4 setNormalizesAngle:{-[CRLInspectorTextFieldAngleFormatter normalizesAngle](self, "normalizesAngle")}];
  return v4;
}

- (id)p_clampNumber:(id)number toMinimum:(id)minimum andMaximum:(id)maximum wasNumberClamped:(BOOL *)clamped
{
  numberCopy = number;
  minimumCopy = minimum;
  maximumCopy = maximum;
  if (![(CRLInspectorTextFieldAngleFormatter *)self normalizesAngle])
  {
    v19.receiver = self;
    v19.super_class = CRLInspectorTextFieldAngleFormatter;
    v13 = [(CRLInspectorTextFieldClampNumberFormatter *)&v19 p_clampNumber:numberCopy toMinimum:minimumCopy andMaximum:maximumCopy wasNumberClamped:clamped];
    goto LABEL_11;
  }

  v13 = numberCopy;
  if ([v13 compare:&off_1018E3080] != -1 && objc_msgSend(v13, "compare:", &off_1018E3090) != 1)
  {
    v17 = 0;
    if (!clamped)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  [v13 doubleValue];
  v15 = fmod(v14, 360.0);
  if (v15 < 0.0)
  {
    v15 = v15 + 360.0;
  }

  v16 = [NSNumber numberWithDouble:v15];

  v17 = 1;
  v13 = v16;
  if (clamped)
  {
LABEL_10:
    *clamped = v17;
  }

LABEL_11:

  return v13;
}

- (id)crlaxLocalizedDescriptionFromValue:(id)value
{
  valueCopy = value;
  v5 = CRLAccessibilityStringsDictKey(@"angle.unit.degrees");
  if (v5)
  {
    [valueCopy crl_CGFloatValue];
    v7 = v6;

    v8 = [NSString localizedStringWithFormat:v5, v7];
  }

  else
  {
    v8 = [(CRLInspectorTextFieldAngleFormatter *)self stringFromNumber:valueCopy];
  }

  return v8;
}

@end