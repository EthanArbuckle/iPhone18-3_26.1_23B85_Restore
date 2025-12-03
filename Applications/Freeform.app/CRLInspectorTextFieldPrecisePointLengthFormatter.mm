@interface CRLInspectorTextFieldPrecisePointLengthFormatter
- (BOOL)p_getObjectValue:(id *)value forString:(id)string withMinimum:(id)minimum andMaximum:(id)maximum originalValue:(id)originalValue errorDescription:(id *)description valueObjectWasAdjusted:(BOOL *)adjusted;
- (id)stringForObjectValue:(id)value;
@end

@implementation CRLInspectorTextFieldPrecisePointLengthFormatter

- (BOOL)p_getObjectValue:(id *)value forString:(id)string withMinimum:(id)minimum andMaximum:(id)maximum originalValue:(id)originalValue errorDescription:(id *)description valueObjectWasAdjusted:(BOOL *)adjusted
{
  stringCopy = string;
  minimumCopy = minimum;
  maximumCopy = maximum;
  originalValueCopy = originalValue;
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

        if ([*(*(&v25 + 1) + 8 * i) p_getObjectValue:value forString:stringCopy withMinimum:minimumCopy andMaximum:maximumCopy originalValue:originalValueCopy errorDescription:description valueObjectWasAdjusted:adjusted])
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

- (id)stringForObjectValue:(id)value
{
  v4 = qword_101A35410;
  valueCopy = value;
  valueBeforeEditing = [(CRLInspectorTextFieldClampNumberFormatter *)self valueBeforeEditing];
  v7 = [v4 stringForObjectValue:valueCopy originalValue:valueBeforeEditing];

  return v7;
}

@end