@interface CRLInspectorTextFieldLengthFormatter
- (BOOL)p_getObjectValue:(id *)a3 forString:(id)a4 withMinimum:(id)a5 andMaximum:(id)a6 originalValue:(id)a7 errorDescription:(id *)a8 valueObjectWasAdjusted:(BOOL *)a9;
- (id)crl_numberFormatterForAnalysis;
- (id)crlaxLocalizedDescriptionFromValue:(id)a3;
- (id)stringForObjectValue:(id)a3;
@end

@implementation CRLInspectorTextFieldLengthFormatter

- (BOOL)p_getObjectValue:(id *)a3 forString:(id)a4 withMinimum:(id)a5 andMaximum:(id)a6 originalValue:(id)a7 errorDescription:(id *)a8 valueObjectWasAdjusted:(BOOL *)a9
{
  v31 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = +[CRLRulerUnits instance];
  v18 = [v17 rulerUnits];

  if (v18 == 4)
  {
    v19 = &qword_101A35428;
    v38 = qword_101A35418;
    v20 = &qword_101A35430;
    v21 = &qword_101A35408;
    v22 = &v38;
  }

  else if (v18 == 1)
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
    if (v18)
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

        if ([*(*(&v32 + 1) + 8 * i) p_getObjectValue:a3 forString:v31 withMinimum:v14 andMaximum:v15 originalValue:v16 errorDescription:a8 valueObjectWasAdjusted:a9])
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

- (id)stringForObjectValue:(id)a3
{
  v4 = a3;
  v5 = +[CRLRulerUnits instance];
  v6 = [v5 rulerUnits];

  v7 = objc_opt_class();
  v8 = sub_100014370(v7, v4);
  if (v8)
  {
    [v4 doubleValue];
    v9 = [NSNumber numberWithDouble:?];

    v4 = v9;
  }

  v10 = [(CRLInspectorTextFieldClampNumberFormatter *)self valueBeforeEditing];
  if (v6 > 4)
  {
    v11 = &qword_101A35408;
  }

  else
  {
    v11 = (&off_10186C838)[v6];
  }

  v12 = [*v11 stringForObjectValue:v4 originalValue:v10];

  return v12;
}

- (id)crl_numberFormatterForAnalysis
{
  v2 = +[CRLRulerUnits instance];
  v3 = [v2 rulerUnits];

  if (v3 > 4)
  {
    v4 = &qword_101A35408;
  }

  else
  {
    v4 = (&off_10186C838)[v3];
  }

  v5 = *v4;

  return v5;
}

- (id)crlaxLocalizedDescriptionFromValue:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(CRLInspectorTextFieldLengthFormatter *)self crl_numberFormatterForAnalysis];
  v7 = [v6 copy];
  v8 = sub_100014370(v5, v7);

  v9 = [(CRLInspectorTextFieldAbstractNumberFormatter *)v8 crlaxValueFormat];

  if (v9)
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
    v16 = [(CRLInspectorTextFieldAbstractNumberFormatter *)&v19 crlaxLocalizedDescriptionFromValue:v4];
  }

  else
  {
    v16 = [(CRLInspectorTextFieldLengthFormatter *)v8 crlaxLocalizedDescriptionFromValue:v4];
  }

  v17 = v16;

  return v17;
}

@end