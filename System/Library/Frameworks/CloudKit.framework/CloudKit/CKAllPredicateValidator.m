@interface CKAllPredicateValidator
- (BOOL)validate:(id)a3 error:(id *)a4;
- (CKAllPredicateValidator)initWithValidators:(id)a3;
- (id)CKPropertiesDescription;
@end

@implementation CKAllPredicateValidator

- (CKAllPredicateValidator)initWithValidators:(id)a3
{
  v7.receiver = self;
  v7.super_class = CKAllPredicateValidator;
  v3 = a3;
  v4 = [(CKAllPredicateValidator *)&v7 init];
  objc_msgSend_setValidators_(v4, v5, v3, v7.receiver, v7.super_class);

  return v4;
}

- (BOOL)validate:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = objc_msgSend_validators(self, v7, v8);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v25, v29, 16);
  if (v11)
  {
    v13 = v11;
    v14 = 0;
    v15 = *v26;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v25 + 1) + 8 * i);
        if (a4)
        {
          v24 = v14;
          v18 = objc_msgSend_validate_error_(v17, v12, v6, &v24);
          v19 = v24;

          if ((v18 & 1) == 0)
          {
            v20 = v19;
            v21 = 0;
            *a4 = v19;
            v14 = v19;
            goto LABEL_17;
          }

          v14 = v19;
        }

        else if ((objc_msgSend_validate_error_(v17, v12, v6, 0) & 1) == 0)
        {
          v21 = 0;
          goto LABEL_17;
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v25, v29, 16);
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 0;
  }

  v21 = 1;
LABEL_17:

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

- (id)CKPropertiesDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_msgSend_validators(self, a2, v2);
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"validators=%@", v4);

  return v6;
}

@end