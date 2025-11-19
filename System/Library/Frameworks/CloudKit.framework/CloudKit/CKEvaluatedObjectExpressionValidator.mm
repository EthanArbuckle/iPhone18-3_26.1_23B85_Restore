@interface CKEvaluatedObjectExpressionValidator
- (BOOL)validate:(id)a3 error:(id *)a4;
@end

@implementation CKEvaluatedObjectExpressionValidator

- (BOOL)validate:(id)a3 error:(id *)a4
{
  v22[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!a4)
    {
      goto LABEL_9;
    }

    v9 = MEMORY[0x1E696ABC0];
    v21[0] = *MEMORY[0x1E696A578];
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v6, @"<%@> is not an expression", v5);
    v21[1] = @"ck_isComparisonError";
    v22[0] = v10;
    v22[1] = MEMORY[0x1E695E118];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v11, v22, v21, 2);
    v13 = LABEL_8:;
    v15 = objc_msgSend_errorWithDomain_code_userInfo_(v9, v14, @"CKErrorDomain", 12, v13);

    v16 = v15;
    *a4 = v15;

    LOBYTE(a4) = 0;
    goto LABEL_9;
  }

  if (objc_msgSend_expressionType(v5, v6, v7) != 1)
  {
    if (!a4)
    {
      goto LABEL_9;
    }

    v9 = MEMORY[0x1E696ABC0];
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v8, @"<%@> is not an evaluated object expression", v5, *MEMORY[0x1E696A578]);
    v19[1] = @"ck_isComparisonError";
    v20[0] = v10;
    v20[1] = MEMORY[0x1E695E118];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v12, v20, v19, 2);
    goto LABEL_8;
  }

  LOBYTE(a4) = 1;
LABEL_9:

  v17 = *MEMORY[0x1E69E9840];
  return a4;
}

@end