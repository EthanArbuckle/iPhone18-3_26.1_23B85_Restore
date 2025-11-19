@interface CKConstantValueExpressionValidator
- (BOOL)validate:(id)a3 error:(id *)a4;
- (CKConstantValueExpressionValidator)initWithValidator:(id)a3;
- (id)CKPropertiesDescription;
@end

@implementation CKConstantValueExpressionValidator

- (CKConstantValueExpressionValidator)initWithValidator:(id)a3
{
  v7.receiver = self;
  v7.super_class = CKConstantValueExpressionValidator;
  v3 = a3;
  v4 = [(CKConstantValueExpressionValidator *)&v7 init];
  objc_msgSend_setValidator_(v4, v5, v3, v7.receiver, v7.super_class);

  return v4;
}

- (BOOL)validate:(id)a3 error:(id *)a4
{
  v38[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a4)
    {
      v11 = MEMORY[0x1E696ABC0];
      v37[0] = *MEMORY[0x1E696A578];
      v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, @"<%@> is not an expression", v6);
      v37[1] = @"ck_isComparisonError";
      v38[0] = v12;
      v38[1] = MEMORY[0x1E695E118];
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v14, v38, v37, 2);
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  if (objc_msgSend_expressionType(v6, v7, v8))
  {
    if (a4)
    {
      v11 = MEMORY[0x1E696ABC0];
      v35[0] = *MEMORY[0x1E696A578];
      v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9, @"<%@> is not a constantValue expression", v6);
      v35[1] = @"ck_isComparisonError";
      v36[0] = v12;
      v36[1] = MEMORY[0x1E695E118];
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v13, v36, v35, 2);
      v15 = LABEL_7:;
      v17 = objc_msgSend_errorWithDomain_code_userInfo_(v11, v16, @"CKErrorDomain", 12, v15);

      goto LABEL_8;
    }

    goto LABEL_15;
  }

  v20 = objc_msgSend_constantValue(v6, v9, v10);

  if (!v20)
  {
    if (a4)
    {
      v11 = MEMORY[0x1E696ABC0];
      v33[0] = *MEMORY[0x1E696A578];
      v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v21, @"%@ is not a valid constant value", v6);
      v33[1] = @"ck_isComparisonError";
      v34[0] = v12;
      v34[1] = MEMORY[0x1E695E118];
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v29, v34, v33, 2);
      goto LABEL_7;
    }

LABEL_15:
    v19 = 0;
LABEL_16:
    v17 = 0;
    goto LABEL_17;
  }

  v23 = objc_msgSend_validator(self, v21, v22);
  v27 = objc_msgSend_constantValue(v6, v24, v25);
  if (!a4)
  {
    v19 = objc_msgSend_validate_error_(v23, v26, v27, 0);

    goto LABEL_16;
  }

  v32 = 0;
  v28 = objc_msgSend_validate_error_(v23, v26, v27, &v32);
  v17 = v32;

  if (v28)
  {
    v19 = 1;
    goto LABEL_17;
  }

LABEL_8:
  v18 = v17;
  v19 = 0;
  *a4 = v17;
LABEL_17:

  v30 = *MEMORY[0x1E69E9840];
  return v19 & 1;
}

- (id)CKPropertiesDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_msgSend_validator(self, a2, v2);
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"validator=%@", v4);

  return v6;
}

@end