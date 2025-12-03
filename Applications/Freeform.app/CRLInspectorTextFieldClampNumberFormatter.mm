@interface CRLInspectorTextFieldClampNumberFormatter
+ (id)formatterWithMinValue:(id)value maxValue:(id)maxValue;
- (BOOL)getObjectValue:(id *)value forString:(id)string errorDescription:(id *)description;
- (BOOL)p_getObjectValue:(id *)value forString:(id)string withMinimum:(id)minimum andMaximum:(id)maximum originalValue:(id)originalValue errorDescription:(id *)description valueObjectWasAdjusted:(BOOL *)adjusted;
- (BOOL)p_textShouldBeginEditingWithContent:(id)content;
- (BOOL)textFieldShouldBeginEditing:(id)editing;
- (CRLInspectorTextFieldClampNumberFormatter)init;
- (CRLInspectorTextFieldClampNumberFormatter)initWithCoder:(id)coder;
- (id)p_clampNumber:(id)number toMinimum:(id)minimum andMaximum:(id)maximum wasNumberClamped:(BOOL *)clamped;
- (id)stringForObjectValue:(id)value originalValue:(id)originalValue;
- (void)p_commonInitClampNumberFormatter;
@end

@implementation CRLInspectorTextFieldClampNumberFormatter

+ (id)formatterWithMinValue:(id)value maxValue:(id)maxValue
{
  maxValueCopy = maxValue;
  valueCopy = value;
  formatter = [self formatter];
  [formatter setMinimum:valueCopy];

  [formatter setMaximum:maxValueCopy];

  return formatter;
}

- (void)p_commonInitClampNumberFormatter
{
  [(CRLInspectorTextFieldClampNumberFormatter *)self setLenient:1];

  [(CRLInspectorTextFieldAbstractNumberFormatter *)self setCrlaxRulerUnitType:5];
}

- (CRLInspectorTextFieldClampNumberFormatter)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CRLInspectorTextFieldClampNumberFormatter;
  v3 = [(CRLInspectorTextFieldClampNumberFormatter *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(CRLInspectorTextFieldClampNumberFormatter *)v3 p_commonInitClampNumberFormatter];
  }

  return v4;
}

- (CRLInspectorTextFieldClampNumberFormatter)init
{
  v5.receiver = self;
  v5.super_class = CRLInspectorTextFieldClampNumberFormatter;
  v2 = [(CRLInspectorTextFieldAbstractNumberFormatter *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CRLInspectorTextFieldClampNumberFormatter *)v2 p_commonInitClampNumberFormatter];
  }

  return v3;
}

- (id)p_clampNumber:(id)number toMinimum:(id)minimum andMaximum:(id)maximum wasNumberClamped:(BOOL *)clamped
{
  numberCopy = number;
  minimumCopy = minimum;
  maximumCopy = maximum;
  v12 = numberCopy;
  if (minimumCopy && maximumCopy)
  {
    if ([minimumCopy compare:maximumCopy] != -1 && objc_msgSend(minimumCopy, "compare:", maximumCopy))
    {
      v13 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10138CED4();
      }

      v14 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        *buf = 67110402;
        v23 = v13;
        v24 = 2082;
        v25 = "[CRLInspectorTextFieldClampNumberFormatter p_clampNumber:toMinimum:andMaximum:wasNumberClamped:]";
        v26 = 2082;
        v27 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLInspectorFieldFormatters.m";
        v28 = 1024;
        v29 = 135;
        v30 = 2112;
        v31 = minimumCopy;
        v32 = 2112;
        v33 = maximumCopy;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid minimum %@ and maximum %@", buf, 0x36u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10138CEE8();
      }

      v15 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v15);
      }

      v16 = [NSString stringWithUTF8String:"[CRLInspectorTextFieldClampNumberFormatter p_clampNumber:toMinimum:andMaximum:wasNumberClamped:]"];
      v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLInspectorFieldFormatters.m"];
      [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:135 isFatal:0 description:"invalid minimum %@ and maximum %@", minimumCopy, maximumCopy];
    }
  }

  else if (!minimumCopy)
  {
    goto LABEL_16;
  }

  if ([v12 compare:minimumCopy] != -1)
  {
LABEL_16:
    v18 = 0;
    v19 = v12;
    if (!maximumCopy)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v19 = minimumCopy;

  v18 = 1;
  if (!maximumCopy)
  {
    goto LABEL_21;
  }

LABEL_19:
  if ([v19 compare:maximumCopy] == 1)
  {
    v20 = maximumCopy;

    v18 = 1;
    v19 = v20;
  }

LABEL_21:
  if (clamped)
  {
    *clamped = v18;
  }

  return v19;
}

- (id)stringForObjectValue:(id)value originalValue:(id)originalValue
{
  originalValueCopy = originalValue;
  v10.receiver = self;
  v10.super_class = CRLInspectorTextFieldClampNumberFormatter;
  v7 = [(CRLPositiveZeroNumberFormatter *)&v10 stringForObjectValue:value];
  v8 = v7;
  if (value && !v7)
  {
    if (!originalValueCopy)
    {
      originalValueCopy = &stru_1018BCA28;
    }

    v8 = [(__CFString *)originalValueCopy description];
  }

  return v8;
}

- (BOOL)p_getObjectValue:(id *)value forString:(id)string withMinimum:(id)minimum andMaximum:(id)maximum originalValue:(id)originalValue errorDescription:(id *)description valueObjectWasAdjusted:(BOOL *)adjusted
{
  adjustedCopy3 = adjusted;
  minimumCopy = minimum;
  maximumCopy = maximum;
  originalValueCopy = originalValue;
  stringCopy = string;
  minimum = [(CRLInspectorTextFieldClampNumberFormatter *)self minimum];
  maximum = [(CRLInspectorTextFieldClampNumberFormatter *)self maximum];
  [(CRLInspectorTextFieldClampNumberFormatter *)self setMinimum:0];
  [(CRLInspectorTextFieldClampNumberFormatter *)self setMaximum:0];
  v28.receiver = self;
  v28.super_class = CRLInspectorTextFieldClampNumberFormatter;
  v29 = 0;
  v21 = [(CRLInspectorTextFieldClampNumberFormatter *)&v28 getObjectValue:value forString:stringCopy errorDescription:&v29];

  v22 = v29;
  [(CRLInspectorTextFieldClampNumberFormatter *)self setMinimum:minimum];
  [(CRLInspectorTextFieldClampNumberFormatter *)self setMaximum:maximum];
  v27 = 0;
  if (value)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v24 = *value;
    if (isKindOfClass)
    {
      *value = [(CRLInspectorTextFieldClampNumberFormatter *)self p_clampNumber:v24 toMinimum:minimumCopy andMaximum:maximumCopy wasNumberClamped:&v27];
      adjustedCopy3 = adjusted;
    }

    else
    {
      adjustedCopy3 = adjusted;
      if (!v24 && (!v21 || ![(CRLInspectorTextFieldAbstractNumberFormatter *)self inspectorTextFieldAllowsNilObjectValue]))
      {
        v25 = originalValueCopy;
        *value = originalValueCopy;
        v27 = 1;
      }
    }
  }

  if (adjustedCopy3)
  {
    *adjustedCopy3 = v27;
  }

  return v21;
}

- (BOOL)getObjectValue:(id *)value forString:(id)string errorDescription:(id *)description
{
  stringCopy = string;
  minimum = [(CRLInspectorTextFieldClampNumberFormatter *)self minimum];
  maximum = [(CRLInspectorTextFieldClampNumberFormatter *)self maximum];
  [(CRLInspectorTextFieldClampNumberFormatter *)self p_getObjectValue:value forString:stringCopy withMinimum:minimum andMaximum:maximum originalValue:self->mValueBeforeEditing errorDescription:description valueObjectWasAdjusted:0];

  return 1;
}

- (BOOL)p_textShouldBeginEditingWithContent:(id)content
{
  contentCopy = content;
  v14 = 0;
  v5 = [(CRLInspectorTextFieldClampNumberFormatter *)self getObjectValue:&v14 forString:contentCopy errorDescription:0];
  v6 = v14;
  if ((v5 & 1) == 0)
  {
    v7 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138CF10();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10138CF38(contentCopy, v7, v8);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138CFF4();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLInspectorTextFieldClampNumberFormatter p_textShouldBeginEditingWithContent:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLInspectorFieldFormatters.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:221 isFatal:0 description:"invalid initial string %@", contentCopy];
  }

  mValueBeforeEditing = self->mValueBeforeEditing;
  self->mValueBeforeEditing = v6;

  return 1;
}

- (BOOL)textFieldShouldBeginEditing:(id)editing
{
  text = [editing text];
  LOBYTE(self) = [(CRLInspectorTextFieldClampNumberFormatter *)self p_textShouldBeginEditingWithContent:text];

  return self;
}

@end