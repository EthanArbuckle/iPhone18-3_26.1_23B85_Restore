@interface CRLInspectorTextFieldPrecisePointLengthFormatter
- (BOOL)p_getObjectValue:(id *)a3 forString:(id)a4 withMinimum:(id)a5 andMaximum:(id)a6 originalValue:(id)a7 errorDescription:(id *)a8 valueObjectWasAdjusted:(BOOL *)a9;
- (id)stringForObjectValue:(id)a3;
@end

@implementation CRLInspectorTextFieldPrecisePointLengthFormatter

- (BOOL)p_getObjectValue:(id *)a3 forString:(id)a4 withMinimum:(id)a5 andMaximum:(id)a6 originalValue:(id)a7 errorDescription:(id *)a8 valueObjectWasAdjusted:(BOOL *)a9
{
  v24 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v30[0] = qword_101A35410;
  v30[1] = qword_101A35420;
  v30[2] = qword_101A35428;
  v30[3] = qword_101A35430;
  [NSArray arrayWithObjects:v30 count:4];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v17 = v28 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    while (2)
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v17);
        }

        if ([*(*(&v25 + 1) + 8 * i) p_getObjectValue:a3 forString:v24 withMinimum:v14 andMaximum:v15 originalValue:v16 errorDescription:a8 valueObjectWasAdjusted:a9])
        {
          v22 = 1;
          goto LABEL_11;
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  v22 = 0;
LABEL_11:

  return v22;
}

- (id)stringForObjectValue:(id)a3
{
  v4 = qword_101A35410;
  v5 = a3;
  v6 = [(CRLInspectorTextFieldClampNumberFormatter *)self valueBeforeEditing];
  v7 = [v4 stringForObjectValue:v5 originalValue:v6];

  return v7;
}

@end