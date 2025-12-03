@interface CRLInspectorTextFieldAbstractNumberFormatter
+ (id)formatter;
- (CRLInspectorTextFieldAbstractNumberFormatter)init;
- (id)crlaxLocalizedDescriptionFromValue:(id)value;
@end

@implementation CRLInspectorTextFieldAbstractNumberFormatter

+ (id)formatter
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (CRLInspectorTextFieldAbstractNumberFormatter)init
{
  v5.receiver = self;
  v5.super_class = CRLInspectorTextFieldAbstractNumberFormatter;
  v2 = [(CRLInspectorTextFieldAbstractNumberFormatter *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CRLInspectorTextFieldAbstractNumberFormatter *)v2 setRoundingMode:6];
  }

  return v3;
}

- (id)crlaxLocalizedDescriptionFromValue:(id)value
{
  valueCopy = value;
  v5 = valueCopy;
  if (self->mTSAXValueFormat)
  {
    v6 = [(CRLInspectorTextFieldAbstractNumberFormatter *)self copy];
    numberFormat = [(CRLAccessibilityValueFormat *)self->mTSAXValueFormat numberFormat];
    [v6 crl_setFormat:numberFormat];

    v8 = [v6 stringFromNumber:v5];
    unitStringsDictKey = [(CRLAccessibilityValueFormat *)self->mTSAXValueFormat unitStringsDictKey];
    [v5 floatValue];
    v11 = [NSString localizedStringWithFormat:unitStringsDictKey, v8, v10];
  }

  else
  {
    mTSAXRulerUnitType = self->mTSAXRulerUnitType;
    if (mTSAXRulerUnitType == 5)
    {
      [(CRLInspectorTextFieldAbstractNumberFormatter *)self stringFromNumber:valueCopy];
    }

    else
    {
      [valueCopy crl_CGFloatValue];
      [CRLRulerUnitsAccessibility crlaxLocalizedDescriptionForUnits:mTSAXRulerUnitType value:?];
    }
    v11 = ;
  }

  return v11;
}

@end