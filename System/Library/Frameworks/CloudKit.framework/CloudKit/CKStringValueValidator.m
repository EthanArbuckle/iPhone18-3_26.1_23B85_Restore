@interface CKStringValueValidator
- (BOOL)validate:(id)a3 error:(id *)a4;
- (CKStringValueValidator)initWithValue:(id)a3;
- (id)CKPropertiesDescription;
@end

@implementation CKStringValueValidator

- (CKStringValueValidator)initWithValue:(id)a3
{
  v7.receiver = self;
  v7.super_class = CKStringValueValidator;
  v3 = a3;
  v4 = [(CKStringValueValidator *)&v7 init];
  objc_msgSend_setValue_(v4, v5, v3, v7.receiver, v7.super_class);

  return v4;
}

- (BOOL)validate:(id)a3 error:(id *)a4
{
  v30[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (!a4)
    {
      goto LABEL_9;
    }

    v14 = MEMORY[0x1E696ABC0];
    v29[0] = *MEMORY[0x1E696A578];
    v15 = MEMORY[0x1E696AEC0];
    v16 = NSStringFromClass(v6);
    v18 = objc_msgSend_stringWithFormat_(v15, v17, @"%@ is not a string (%@)", v6, v16);
    v29[1] = @"ck_isComparisonError";
    v30[0] = v18;
    v30[1] = MEMORY[0x1E695E110];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v19, v30, v29, 2);
    v23 = LABEL_8:;
    *a4 = objc_msgSend_errorWithDomain_code_userInfo_(v14, v24, @"CKErrorDomain", 12, v23);

    LOBYTE(a4) = 0;
    goto LABEL_9;
  }

  v9 = objc_msgSend_value(self, v7, v8);
  isEqualToString = objc_msgSend_isEqualToString_(v6, v10, v9);

  if ((isEqualToString & 1) == 0)
  {
    if (!a4)
    {
      goto LABEL_9;
    }

    v14 = MEMORY[0x1E696ABC0];
    v27[0] = *MEMORY[0x1E696A578];
    v20 = MEMORY[0x1E696AEC0];
    v16 = objc_msgSend_value(self, v12, v13);
    v18 = objc_msgSend_stringWithFormat_(v20, v21, @"%@ is not equal to %@", v6, v16);
    v27[1] = @"ck_isComparisonError";
    v28[0] = v18;
    v28[1] = MEMORY[0x1E695E110];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v22, v28, v27, 2);
    goto LABEL_8;
  }

  LOBYTE(a4) = 1;
LABEL_9:

  v25 = *MEMORY[0x1E69E9840];
  return a4;
}

- (id)CKPropertiesDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_msgSend_value(self, a2, v2);
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"value=%@", v4);

  return v6;
}

@end