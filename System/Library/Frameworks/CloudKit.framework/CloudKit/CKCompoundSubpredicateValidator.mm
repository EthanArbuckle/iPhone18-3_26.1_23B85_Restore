@interface CKCompoundSubpredicateValidator
- (BOOL)validate:(id)validate error:(id *)error;
- (CKCompoundSubpredicateValidator)initWithValidator:(id)validator;
- (id)CKPropertiesDescription;
@end

@implementation CKCompoundSubpredicateValidator

- (CKCompoundSubpredicateValidator)initWithValidator:(id)validator
{
  v7.receiver = self;
  v7.super_class = CKCompoundSubpredicateValidator;
  validatorCopy = validator;
  v4 = [(CKCompoundSubpredicateValidator *)&v7 init];
  objc_msgSend_setValidator_(v4, v5, validatorCopy, v7.receiver, v7.super_class);

  return v4;
}

- (BOOL)validate:(id)validate error:(id *)error
{
  v53[2] = *MEMORY[0x1E69E9840];
  validateCopy = validate;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v9 = objc_msgSend_subpredicates(validateCopy, v7, v8);
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v45, v51, 16);
    if (v11)
    {
      v14 = v11;
      v42 = validateCopy;
      obj = v9;
      v15 = 0;
      v16 = *v46;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v46 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v45 + 1) + 8 * i);
          v19 = objc_msgSend_validator(self, v12, v13);
          v21 = v19;
          if (error)
          {
            v44 = v15;
            v22 = objc_msgSend_validate_error_(v19, v20, v18, &v44);
            v23 = v44;

            if ((v22 & 1) == 0)
            {
              v31 = MEMORY[0x1E696ABC0];
              v49[0] = *MEMORY[0x1E696A578];
              v32 = MEMORY[0x1E696AEC0];
              v29 = objc_msgSend_localizedDescription(v23, v12, v13);
              v34 = objc_msgSend_stringWithFormat_(v32, v33, @"Invalid subpredicate <%@>: %@", v18, v29);
              v35 = *MEMORY[0x1E696AA08];
              v50[0] = v34;
              v50[1] = v23;
              v49[1] = v35;
              v49[2] = @"ck_isComparisonError";
              v50[2] = MEMORY[0x1E695E110];
              v37 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v36, v50, v49, 3);
              v15 = objc_msgSend_errorWithDomain_code_userInfo_(v31, v38, @"CKErrorDomain", 12, v37);

              validateCopy = v42;
              v27 = obj;
              goto LABEL_17;
            }

            v15 = v23;
          }

          else
          {
            v24 = objc_msgSend_validate_error_(v19, v20, v18, 0);

            if ((v24 & 1) == 0)
            {
              v25 = 0;
              validateCopy = v42;
              v9 = obj;
              goto LABEL_21;
            }
          }
        }

        v9 = obj;
        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v45, v51, 16);
        if (v14)
        {
          continue;
        }

        break;
      }

      v25 = 1;
      validateCopy = v42;
    }

    else
    {
      v15 = 0;
      v25 = 1;
    }

LABEL_21:
  }

  else if (error)
  {
    v26 = MEMORY[0x1E696ABC0];
    v52[0] = *MEMORY[0x1E696A578];
    v27 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, @"<%@> is not a compound predicate", validateCopy);
    v52[1] = @"ck_isComparisonError";
    v53[0] = v27;
    v53[1] = MEMORY[0x1E695E110];
    v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v28, v53, v52, 2);
    v15 = objc_msgSend_errorWithDomain_code_userInfo_(v26, v30, @"CKErrorDomain", 12, v29);
LABEL_17:

    v39 = v15;
    v25 = 0;
    *error = v15;
  }

  else
  {
    v25 = 0;
    v15 = 0;
  }

  v40 = *MEMORY[0x1E69E9840];
  return v25;
}

- (id)CKPropertiesDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_msgSend_validator(self, a2, v2);
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"validator=%@", v4);

  return v6;
}

@end