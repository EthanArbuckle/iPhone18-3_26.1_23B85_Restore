@interface CKRecursivePredicateValidator
- (BOOL)validate:(id)validate error:(id *)error;
- (CKRecursivePredicateValidator)initWithValidator:(id)validator;
- (id)CKPropertiesDescription;
@end

@implementation CKRecursivePredicateValidator

- (CKRecursivePredicateValidator)initWithValidator:(id)validator
{
  v7.receiver = self;
  v7.super_class = CKRecursivePredicateValidator;
  validatorCopy = validator;
  v4 = [(CKRecursivePredicateValidator *)&v7 init];
  objc_msgSend_setValidator_(v4, v5, validatorCopy, v7.receiver, v7.super_class);

  return v4;
}

- (BOOL)validate:(id)validate error:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  validateCopy = validate;
  v9 = objc_msgSend_validator(self, v7, v8);
  v11 = objc_msgSend_validate_error_(v9, v10, validateCopy, error);

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v14 = objc_msgSend_subpredicates(validateCopy, v12, v13, 0);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v24, v28, 16);
      if (v16)
      {
        v18 = v16;
        v19 = *v25;
        while (2)
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v25 != v19)
            {
              objc_enumerationMutation(v14);
            }

            if (!objc_msgSend_validate_error_(self, v17, *(*(&v24 + 1) + 8 * i), error))
            {
              v21 = 0;
              goto LABEL_15;
            }
          }

          v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v24, v28, 16);
          if (v18)
          {
            continue;
          }

          break;
        }
      }

      v21 = 1;
LABEL_15:
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

- (id)CKPropertiesDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_msgSend_validator(self, a2, v2);
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"validator=%@", v4);

  return v6;
}

@end