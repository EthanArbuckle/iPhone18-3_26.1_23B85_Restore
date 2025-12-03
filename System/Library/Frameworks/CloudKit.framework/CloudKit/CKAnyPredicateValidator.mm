@interface CKAnyPredicateValidator
- (BOOL)validate:(id)validate error:(id *)error;
- (id)CKPropertiesDescription;
@end

@implementation CKAnyPredicateValidator

- (BOOL)validate:(id)validate error:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  validateCopy = validate;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  if (self)
  {
    validators = self->_validators;
  }

  else
  {
    validators = 0;
  }

  v8 = validators;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v37, v41, 16);
  if (!v10)
  {
    v13 = 0;
    goto LABEL_23;
  }

  v12 = v10;
  v13 = 0;
  v14 = *v38;
  while (2)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v38 != v14)
      {
        objc_enumerationMutation(v8);
      }

      v16 = *(*(&v37 + 1) + 8 * i);
      if (error)
      {
        v36 = 0;
        v17 = objc_msgSend_validate_error_(v16, v11, validateCopy, &v36);
        v18 = v36;
        v21 = v18;
        if (v17)
        {
          goto LABEL_30;
        }

        if (objc_msgSend_isCKComparisonError(v18, v19, v20))
        {
LABEL_15:
          if (!v13)
          {
            v13 = objc_msgSend_array(MEMORY[0x1E695DF70], v11, v22);
          }

          objc_msgSend_addObject_(v13, v11, v21);
        }

        else
        {
          if (!v21)
          {
            continue;
          }

          objc_msgSend_addObject_(0, v11, v21);
        }

        continue;
      }

      if (objc_msgSend_validate_error_(v16, v11, validateCopy, 0))
      {
        v21 = 0;
LABEL_30:

        v33 = 1;
        goto LABEL_31;
      }

      v21 = 0;
      if (objc_msgSend_isCKComparisonError(0, v23, v24))
      {
        goto LABEL_15;
      }
    }

    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v37, v41, 16);
    if (v12)
    {
      continue;
    }

    break;
  }

LABEL_23:

  if (error)
  {
    v8 = objc_msgSend_lastObject(0, v25, v26);
    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && objc_msgSend_count(v13, v29, v30))
    {
      v31 = objc_msgSend_lastObject(v13, v27, v28);

      v8 = v31;
    }

    v32 = v8;
    v33 = 0;
    *error = v8;
LABEL_31:
  }

  else
  {
    v33 = 0;
  }

  v34 = *MEMORY[0x1E69E9840];
  return v33;
}

- (id)CKPropertiesDescription
{
  validators = self;
  if (self)
  {
    validators = self->_validators;
  }

  return objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"validators=%@", validators);
}

@end