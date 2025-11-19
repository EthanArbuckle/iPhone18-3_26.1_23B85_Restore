@interface CKComparisonOptionsValidator
- (BOOL)validate:(id)a3 error:(id *)a4;
- (id)CKPropertiesDescription;
@end

@implementation CKComparisonOptionsValidator

- (BOOL)validate:(id)a3 error:(id *)a4
{
  v34[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!a4)
    {
      goto LABEL_12;
    }

    v13 = MEMORY[0x1E696ABC0];
    v33[0] = *MEMORY[0x1E696A578];
    v14 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, @"<%@> is not a comparison predicate", v6);
    v33[1] = @"ck_isComparisonError";
    v34[0] = v14;
    v34[1] = MEMORY[0x1E695E118];
    v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v15, v34, v33, 2);
    v18 = objc_msgSend_errorWithDomain_code_userInfo_(v13, v17, @"CKErrorDomain", 12, v16);
LABEL_11:

    v28 = v18;
    *a4 = v18;

    LOBYTE(a4) = 0;
    goto LABEL_12;
  }

  v9 = objc_msgSend_options(v6, v7, v8);
  if (!self)
  {
    goto LABEL_8;
  }

  options = self->_options;
  if ((options & ~v9) != 0)
  {
LABEL_9:
    if (!a4)
    {
      goto LABEL_12;
    }

    v19 = MEMORY[0x1E696ABC0];
    v31[0] = *MEMORY[0x1E696A578];
    v20 = MEMORY[0x1E696AEC0];
    v21 = objc_msgSend_options(v6, v10, v11);
    v14 = sub_18869C238(v21, v22, v23);
    v16 = objc_msgSend_stringWithFormat_(v20, v24, @"Unsupported comparison options: %@", v14);
    v31[1] = @"ck_isComparisonError";
    v32[0] = v16;
    v32[1] = MEMORY[0x1E695E118];
    v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v25, v32, v31, 2);
    v18 = objc_msgSend_errorWithDomain_code_userInfo_(v19, v27, @"CKErrorDomain", 12, v26);

    goto LABEL_11;
  }

  if (!options)
  {
LABEL_8:
    if (!objc_msgSend_options(v6, v10, v11))
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_5:
  LOBYTE(a4) = 1;
LABEL_12:

  v29 = *MEMORY[0x1E69E9840];
  return a4;
}

- (id)CKPropertiesDescription
{
  v3 = MEMORY[0x1E696AEC0];
  if (self)
  {
    self = self->_options;
  }

  v4 = sub_18869C238(self, a2, v2);
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"options=%@", v4);

  return v6;
}

@end