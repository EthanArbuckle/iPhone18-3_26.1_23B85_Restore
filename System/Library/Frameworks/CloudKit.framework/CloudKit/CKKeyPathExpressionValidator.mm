@interface CKKeyPathExpressionValidator
- (BOOL)validate:(id)validate error:(id *)error;
- (CKKeyPathExpressionValidator)initWithValidator:(id)validator;
- (id)CKPropertiesDescription;
@end

@implementation CKKeyPathExpressionValidator

- (CKKeyPathExpressionValidator)initWithValidator:(id)validator
{
  v7.receiver = self;
  v7.super_class = CKKeyPathExpressionValidator;
  validatorCopy = validator;
  v4 = [(CKKeyPathExpressionValidator *)&v7 init];
  objc_msgSend_setValidator_(v4, v5, validatorCopy, v7.receiver, v7.super_class);

  return v4;
}

- (BOOL)validate:(id)validate error:(id *)error
{
  v38[2] = *MEMORY[0x1E69E9840];
  validateCopy = validate;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_15;
    }

    v22 = MEMORY[0x1E696ABC0];
    v37[0] = *MEMORY[0x1E696A578];
    v23 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, @"<%@> is not an expression", validateCopy);
    v37[1] = @"ck_isComparisonError";
    v38[0] = v23;
    v38[1] = MEMORY[0x1E695E118];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v24, v38, v37, 2);
    v27 = LABEL_13:;
    v20 = objc_msgSend_errorWithDomain_code_userInfo_(v22, v28, @"CKErrorDomain", 12, v27);

    goto LABEL_14;
  }

  if (objc_msgSend_expressionType(validateCopy, v7, v8) != 3)
  {
    if (!error)
    {
      goto LABEL_15;
    }

    v22 = MEMORY[0x1E696ABC0];
    v35[0] = *MEMORY[0x1E696A578];
    v23 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9, @"<%@> is not a keyPath expression", validateCopy);
    v35[1] = @"ck_isComparisonError";
    v36[0] = v23;
    v36[1] = MEMORY[0x1E695E118];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v25, v36, v35, 2);
    goto LABEL_13;
  }

  v11 = objc_msgSend_keyPath(validateCopy, v9, v10);

  if (!v11)
  {
    if (error)
    {
      v22 = MEMORY[0x1E696ABC0];
      v33[0] = *MEMORY[0x1E696A578];
      v23 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v12, @"'%@' is not a valid keyPath", validateCopy);
      v33[1] = @"ck_isComparisonError";
      v34[0] = v23;
      v34[1] = MEMORY[0x1E695E118];
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v26, v34, v33, 2);
      goto LABEL_13;
    }

LABEL_15:
    v21 = 0;
LABEL_16:
    v20 = 0;
    goto LABEL_17;
  }

  v14 = objc_msgSend_validator(self, v12, v13);
  v18 = objc_msgSend_keyPath(validateCopy, v15, v16);
  if (!error)
  {
    v21 = objc_msgSend_validate_error_(v14, v17, v18, 0);

    goto LABEL_16;
  }

  v32 = 0;
  v19 = objc_msgSend_validate_error_(v14, v17, v18, &v32);
  v20 = v32;

  if ((v19 & 1) == 0)
  {
LABEL_14:
    v29 = v20;
    v21 = 0;
    *error = v20;
    goto LABEL_17;
  }

  v21 = 1;
LABEL_17:

  v30 = *MEMORY[0x1E69E9840];
  return v21 & 1;
}

- (id)CKPropertiesDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_msgSend_validator(self, a2, v2);
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"validator=%@", v4);

  return v6;
}

@end