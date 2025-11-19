@interface CRLInspectorTextFieldClampNumberFormatter
+ (id)formatterWithMinValue:(id)a3 maxValue:(id)a4;
- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 errorDescription:(id *)a5;
- (BOOL)p_getObjectValue:(id *)a3 forString:(id)a4 withMinimum:(id)a5 andMaximum:(id)a6 originalValue:(id)a7 errorDescription:(id *)a8 valueObjectWasAdjusted:(BOOL *)a9;
- (BOOL)p_textShouldBeginEditingWithContent:(id)a3;
- (BOOL)textFieldShouldBeginEditing:(id)a3;
- (CRLInspectorTextFieldClampNumberFormatter)init;
- (CRLInspectorTextFieldClampNumberFormatter)initWithCoder:(id)a3;
- (id)p_clampNumber:(id)a3 toMinimum:(id)a4 andMaximum:(id)a5 wasNumberClamped:(BOOL *)a6;
- (id)stringForObjectValue:(id)a3 originalValue:(id)a4;
- (void)p_commonInitClampNumberFormatter;
@end

@implementation CRLInspectorTextFieldClampNumberFormatter

+ (id)formatterWithMinValue:(id)a3 maxValue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 formatter];
  [v8 setMinimum:v7];

  [v8 setMaximum:v6];

  return v8;
}

- (void)p_commonInitClampNumberFormatter
{
  [(CRLInspectorTextFieldClampNumberFormatter *)self setLenient:1];

  [(CRLInspectorTextFieldAbstractNumberFormatter *)self setCrlaxRulerUnitType:5];
}

- (CRLInspectorTextFieldClampNumberFormatter)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CRLInspectorTextFieldClampNumberFormatter;
  v3 = [(CRLInspectorTextFieldClampNumberFormatter *)&v6 initWithCoder:a3];
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

- (id)p_clampNumber:(id)a3 toMinimum:(id)a4 andMaximum:(id)a5 wasNumberClamped:(BOOL *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v9;
  if (v10 && v11)
  {
    if ([v10 compare:v11] != -1 && objc_msgSend(v10, "compare:", v11))
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
        v31 = v10;
        v32 = 2112;
        v33 = v11;
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
      [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:135 isFatal:0 description:"invalid minimum %@ and maximum %@", v10, v11];
    }
  }

  else if (!v10)
  {
    goto LABEL_16;
  }

  if ([v12 compare:v10] != -1)
  {
LABEL_16:
    v18 = 0;
    v19 = v12;
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v19 = v10;

  v18 = 1;
  if (!v11)
  {
    goto LABEL_21;
  }

LABEL_19:
  if ([v19 compare:v11] == 1)
  {
    v20 = v11;

    v18 = 1;
    v19 = v20;
  }

LABEL_21:
  if (a6)
  {
    *a6 = v18;
  }

  return v19;
}

- (id)stringForObjectValue:(id)a3 originalValue:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = CRLInspectorTextFieldClampNumberFormatter;
  v7 = [(CRLPositiveZeroNumberFormatter *)&v10 stringForObjectValue:a3];
  v8 = v7;
  if (a3 && !v7)
  {
    if (!v6)
    {
      v6 = &stru_1018BCA28;
    }

    v8 = [(__CFString *)v6 description];
  }

  return v8;
}

- (BOOL)p_getObjectValue:(id *)a3 forString:(id)a4 withMinimum:(id)a5 andMaximum:(id)a6 originalValue:(id)a7 errorDescription:(id *)a8 valueObjectWasAdjusted:(BOOL *)a9
{
  v14 = a9;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a4;
  v19 = [(CRLInspectorTextFieldClampNumberFormatter *)self minimum];
  v20 = [(CRLInspectorTextFieldClampNumberFormatter *)self maximum];
  [(CRLInspectorTextFieldClampNumberFormatter *)self setMinimum:0];
  [(CRLInspectorTextFieldClampNumberFormatter *)self setMaximum:0];
  v28.receiver = self;
  v28.super_class = CRLInspectorTextFieldClampNumberFormatter;
  v29 = 0;
  v21 = [(CRLInspectorTextFieldClampNumberFormatter *)&v28 getObjectValue:a3 forString:v18 errorDescription:&v29];

  v22 = v29;
  [(CRLInspectorTextFieldClampNumberFormatter *)self setMinimum:v19];
  [(CRLInspectorTextFieldClampNumberFormatter *)self setMaximum:v20];
  v27 = 0;
  if (a3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v24 = *a3;
    if (isKindOfClass)
    {
      *a3 = [(CRLInspectorTextFieldClampNumberFormatter *)self p_clampNumber:v24 toMinimum:v15 andMaximum:v16 wasNumberClamped:&v27];
      v14 = a9;
    }

    else
    {
      v14 = a9;
      if (!v24 && (!v21 || ![(CRLInspectorTextFieldAbstractNumberFormatter *)self inspectorTextFieldAllowsNilObjectValue]))
      {
        v25 = v17;
        *a3 = v17;
        v27 = 1;
      }
    }
  }

  if (v14)
  {
    *v14 = v27;
  }

  return v21;
}

- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 errorDescription:(id *)a5
{
  v8 = a4;
  v9 = [(CRLInspectorTextFieldClampNumberFormatter *)self minimum];
  v10 = [(CRLInspectorTextFieldClampNumberFormatter *)self maximum];
  [(CRLInspectorTextFieldClampNumberFormatter *)self p_getObjectValue:a3 forString:v8 withMinimum:v9 andMaximum:v10 originalValue:self->mValueBeforeEditing errorDescription:a5 valueObjectWasAdjusted:0];

  return 1;
}

- (BOOL)p_textShouldBeginEditingWithContent:(id)a3
{
  v4 = a3;
  v14 = 0;
  v5 = [(CRLInspectorTextFieldClampNumberFormatter *)self getObjectValue:&v14 forString:v4 errorDescription:0];
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
      sub_10138CF38(v4, v7, v8);
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
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:221 isFatal:0 description:"invalid initial string %@", v4];
  }

  mValueBeforeEditing = self->mValueBeforeEditing;
  self->mValueBeforeEditing = v6;

  return 1;
}

- (BOOL)textFieldShouldBeginEditing:(id)a3
{
  v4 = [a3 text];
  LOBYTE(self) = [(CRLInspectorTextFieldClampNumberFormatter *)self p_textShouldBeginEditingWithContent:v4];

  return self;
}

@end