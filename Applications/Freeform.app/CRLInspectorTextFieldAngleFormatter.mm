@interface CRLInspectorTextFieldAngleFormatter
- (CRLInspectorTextFieldAngleFormatter)init;
- (CRLInspectorTextFieldAngleFormatter)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)crlaxLocalizedDescriptionFromValue:(id)a3;
- (id)p_clampNumber:(id)a3 toMinimum:(id)a4 andMaximum:(id)a5 wasNumberClamped:(BOOL *)a6;
- (id)stringForObjectValue:(id)a3 originalValue:(id)a4;
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

- (CRLInspectorTextFieldAngleFormatter)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CRLInspectorTextFieldAngleFormatter;
  v3 = [(CRLInspectorTextFieldClampNumberFormatter *)&v6 initWithCoder:a3];
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

- (id)stringForObjectValue:(id)a3 originalValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = sub_100014370(v8, v6);
  v10 = v9;
  if (v9)
  {
    [v9 doubleValue];
    v12 = [NSNumber numberWithDouble:fmod(v11, 360.0)];

    v6 = v12;
  }

  v15.receiver = self;
  v15.super_class = CRLInspectorTextFieldAngleFormatter;
  v13 = [(CRLInspectorTextFieldClampNumberFormatter *)&v15 stringForObjectValue:v6 originalValue:v7];

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CRLInspectorTextFieldAngleFormatter;
  v4 = [(CRLInspectorTextFieldNumberFormatter *)&v6 copyWithZone:a3];
  [v4 setNormalizesAngle:{-[CRLInspectorTextFieldAngleFormatter normalizesAngle](self, "normalizesAngle")}];
  return v4;
}

- (id)p_clampNumber:(id)a3 toMinimum:(id)a4 andMaximum:(id)a5 wasNumberClamped:(BOOL *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (![(CRLInspectorTextFieldAngleFormatter *)self normalizesAngle])
  {
    v19.receiver = self;
    v19.super_class = CRLInspectorTextFieldAngleFormatter;
    v13 = [(CRLInspectorTextFieldClampNumberFormatter *)&v19 p_clampNumber:v10 toMinimum:v11 andMaximum:v12 wasNumberClamped:a6];
    goto LABEL_11;
  }

  v13 = v10;
  if ([v13 compare:&off_1018E3080] != -1 && objc_msgSend(v13, "compare:", &off_1018E3090) != 1)
  {
    v17 = 0;
    if (!a6)
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
  if (a6)
  {
LABEL_10:
    *a6 = v17;
  }

LABEL_11:

  return v13;
}

- (id)crlaxLocalizedDescriptionFromValue:(id)a3
{
  v4 = a3;
  v5 = CRLAccessibilityStringsDictKey(@"angle.unit.degrees");
  if (v5)
  {
    [v4 crl_CGFloatValue];
    v7 = v6;

    v8 = [NSString localizedStringWithFormat:v5, v7];
  }

  else
  {
    v8 = [(CRLInspectorTextFieldAngleFormatter *)self stringFromNumber:v4];
  }

  return v8;
}

@end