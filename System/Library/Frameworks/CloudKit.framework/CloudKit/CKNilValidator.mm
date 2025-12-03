@interface CKNilValidator
- (BOOL)validate:(id)validate error:(id *)error;
@end

@implementation CKNilValidator

- (BOOL)validate:(id)validate error:(id *)error
{
  v18[2] = *MEMORY[0x1E69E9840];
  validateCopy = validate;
  v8 = objc_msgSend_constantValue(validateCopy, v6, v7);

  if (error && v8)
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9, @"<%@> is not 'nil'", validateCopy, *MEMORY[0x1E696A578]);
    v17[1] = @"ck_isComparisonError";
    v18[0] = v11;
    v18[1] = MEMORY[0x1E695E110];
    v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v12, v18, v17, 2);
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v10, v14, @"CKErrorDomain", 12, v13);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v8 == 0;
}

@end