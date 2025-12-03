@interface CKTruePredicateValidator
- (BOOL)validate:(id)validate error:(id *)error;
@end

@implementation CKTruePredicateValidator

- (BOOL)validate:(id)validate error:(id *)error
{
  v25[2] = *MEMORY[0x1E69E9840];
  validateCopy = validate;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      v12 = MEMORY[0x1E696ABC0];
      v24[0] = *MEMORY[0x1E696A578];
      v13 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v6, @"<%@> is not a predicate", validateCopy);
      v24[1] = @"ck_isComparisonError";
      v25[0] = v13;
      v25[1] = MEMORY[0x1E695E110];
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v15, v25, v24, 2);
      goto LABEL_7;
    }

LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v7 = 1;
  v8 = objc_msgSend_predicateWithValue_(MEMORY[0x1E696AE18], v6, 1);
  isEqual = objc_msgSend_isEqual_(validateCopy, v9, v8);

  if ((isEqual & 1) == 0)
  {
    if (error)
    {
      v12 = MEMORY[0x1E696ABC0];
      v13 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v11, @"Invalid predicate %@", validateCopy, *MEMORY[0x1E696A578]);
      v22[1] = @"ck_isComparisonError";
      v23[0] = v13;
      v23[1] = MEMORY[0x1E695E110];
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v14, v23, v22, 2);
      v16 = LABEL_7:;
      v18 = objc_msgSend_errorWithDomain_code_userInfo_(v12, v17, @"CKErrorDomain", 12, v16);

      v19 = v18;
      *error = v18;

      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:

  v20 = *MEMORY[0x1E69E9840];
  return v7;
}

@end