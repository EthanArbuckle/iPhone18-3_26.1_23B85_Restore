@interface CKKindOfClassValidator
- (BOOL)validate:(id)a3 error:(id *)a4;
- (id)CKPropertiesDescription;
@end

@implementation CKKindOfClassValidator

- (BOOL)validate:(id)a3 error:(id *)a4
{
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (self)
  {
    parentClass = self->_parentClass;
  }

  isKindOfClass = objc_opt_isKindOfClass();
  v9 = isKindOfClass;
  if (a4 && (isKindOfClass & 1) == 0)
  {
    v10 = MEMORY[0x1E696ABC0];
    v21[0] = *MEMORY[0x1E696A578];
    v11 = MEMORY[0x1E696AEC0];
    if (self)
    {
      v12 = self->_parentClass;
    }

    else
    {
      v12 = 0;
    }

    v13 = NSStringFromClass(v12);
    v15 = objc_msgSend_stringWithFormat_(v11, v14, @"<%@> is not of type %@", v6, v13);
    v21[1] = @"ck_isComparisonError";
    v22[0] = v15;
    v22[1] = MEMORY[0x1E695E110];
    v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, v22, v21, 2);
    *a4 = objc_msgSend_errorWithDomain_code_userInfo_(v10, v18, @"CKErrorDomain", 12, v17);
  }

  v19 = *MEMORY[0x1E69E9840];
  return v9 & 1;
}

- (id)CKPropertiesDescription
{
  v2 = MEMORY[0x1E696AEC0];
  if (self)
  {
    self = self->_parentClass;
  }

  v3 = NSStringFromClass(self);
  v5 = objc_msgSend_stringWithFormat_(v2, v4, @"class=%@", v3);

  return v5;
}

@end