@interface CRLInspectorTextFieldLengthFormatter
- (BOOL)p_getObjectValue:(id *)value forString:(id)string withMinimum:(id)minimum andMaximum:(id)maximum originalValue:(id)originalValue errorDescription:(id *)description valueObjectWasAdjusted:(BOOL *)adjusted;
- (id)crl_numberFormatterForAnalysis;
- (id)crlaxLocalizedDescriptionFromValue:(id)value;
- (id)stringForObjectValue:(id)value;
@end

@implementation CRLInspectorTextFieldLengthFormatter

- (BOOL)p_getObjectValue:(id *)value forString:(id)string withMinimum:(id)minimum andMaximum:(id)maximum originalValue:(id)originalValue errorDescription:(id *)description valueObjectWasAdjusted:(BOOL *)adjusted
{
  stringCopy = string;
  minimumCopy = minimum;
  maximumCopy = maximum;
  originalValueCopy = originalValue;
  v17 = +[CRLRulerUnits instance];
  rulerUnits = [v17 rulerUnits];

  if (rulerUnits == 4)
  {
    v19 = &qword_101A35428;
    v38 = qword_101A35418;
    v20 = &qword_101A35430;
    v21 = &qword_101A35408;
    v22 = &v38;
  }

  else if (rulerUnits == 1)
  {
    v19 = &qword_101A35428;
    v39 = qword_101A35430;
    v20 = &qword_101A35418;
    v21 = &qword_101A35408;
    v22 = &v39;
  }

  else
  {
    v19 = &qword_101A35430;
    if (rulerUnits)
    {
      v37 = qword_101A35408;
      v20 = &qword_101A35418;
      v21 = &qword_101A35428;
      v22 = &v37;
    }

    else
    {
      v40 = qword_101A35428;
      v20 = &qword_101A35418;
      v21 = &qword_101A35408;
      v22 = &v40;
    }
  }

  v23 = *v20;
  v22[1] = *v21;
  v22[2] = v23;
  v22[3] = *v19;
  [NSArray arrayWithObjects:"arrayWithObjects:count:" count:?];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v24 = v35 = 0u;
  v25 = [v24 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v33;
    while (2)
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v33 != v27)
        {
          objc_enumerationMutation(v24);
        }

        if ([*(*(&v32 + 1) + 8 * i) p_getObjectValue:value forString:stringCopy withMinimum:minimumCopy andMaximum:maximumCopy originalValue:originalValueCopy errorDescription:description valueObjectWasAdjusted:adjusted])
        {
          v29 = 1;
          goto LABEL_18;
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }
  }

  v29 = 0;
LABEL_18:

  return v29;
}

- (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  v5 = +[CRLRulerUnits instance];
  rulerUnits = [v5 rulerUnits];

  v7 = objc_opt_class();
  v8 = sub_100014370(v7, valueCopy);
  if (v8)
  {
    [valueCopy doubleValue];
    v9 = [NSNumber numberWithDouble:?];

    valueCopy = v9;
  }

  valueBeforeEditing = [(CRLInspectorTextFieldClampNumberFormatter *)self valueBeforeEditing];
  if (rulerUnits > 4)
  {
    v11 = &qword_101A35408;
  }

  else
  {
    v11 = (&off_10186C838)[rulerUnits];
  }

  v12 = [*v11 stringForObjectValue:valueCopy originalValue:valueBeforeEditing];

  return v12;
}

- (id)crl_numberFormatterForAnalysis
{
  v2 = +[CRLRulerUnits instance];
  rulerUnits = [v2 rulerUnits];

  if (rulerUnits > 4)
  {
    v4 = &qword_101A35408;
  }

  else
  {
    v4 = (&off_10186C838)[rulerUnits];
  }

  v5 = *v4;

  return v5;
}

- (id)crlaxLocalizedDescriptionFromValue:(id)value
{
  valueCopy = value;
  v5 = objc_opt_class();
  crl_numberFormatterForAnalysis = [(CRLInspectorTextFieldLengthFormatter *)self crl_numberFormatterForAnalysis];
  v7 = [crl_numberFormatterForAnalysis copy];
  v8 = sub_100014370(v5, v7);

  crlaxValueFormat = [(CRLInspectorTextFieldAbstractNumberFormatter *)v8 crlaxValueFormat];

  if (crlaxValueFormat)
  {
    v10 = v8 == self;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138D01C();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138D030(v11, v12);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138D0DC();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v13);
    }

    v14 = [NSString stringWithUTF8String:"[CRLInspectorTextFieldLengthFormatter crlaxLocalizedDescriptionFromValue:]"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLInspectorFieldFormatters.m"];
    [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:586 isFatal:0 description:"Did not find a valid number formatter for accessible description."];

    v19.receiver = self;
    v19.super_class = CRLInspectorTextFieldLengthFormatter;
    v16 = [(CRLInspectorTextFieldAbstractNumberFormatter *)&v19 crlaxLocalizedDescriptionFromValue:valueCopy];
  }

  else
  {
    v16 = [(CRLInspectorTextFieldLengthFormatter *)v8 crlaxLocalizedDescriptionFromValue:valueCopy];
  }

  v17 = v16;

  return v17;
}

@end