@interface CKComparisonOperatorValidator
- (BOOL)validate:(id)a3 error:(id *)a4;
- (CKComparisonOperatorValidator)initWithOperatorType:(unint64_t)a3;
- (id)CKPropertiesDescription;
@end

@implementation CKComparisonOperatorValidator

- (CKComparisonOperatorValidator)initWithOperatorType:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = CKComparisonOperatorValidator;
  v4 = [(CKComparisonOperatorValidator *)&v7 init];
  objc_msgSend_setOperatorType_(v4, v5, a3);
  return v4;
}

- (BOOL)validate:(id)a3 error:(id *)a4
{
  v34[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!a4)
    {
      goto LABEL_9;
    }

    v14 = MEMORY[0x1E696ABC0];
    v33[0] = *MEMORY[0x1E696A578];
    v15 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, @"<%@> is not a comparison predicate", v6);
    v33[1] = @"ck_isComparisonError";
    v34[0] = v15;
    v34[1] = MEMORY[0x1E695E118];
    v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, v34, v33, 2);
    v19 = objc_msgSend_errorWithDomain_code_userInfo_(v14, v18, @"CKErrorDomain", 12, v17);
LABEL_8:

    v28 = v19;
    *a4 = v19;

    LOBYTE(a4) = 0;
    goto LABEL_9;
  }

  v9 = objc_msgSend_predicateOperatorType(v6, v7, v8);
  if (v9 != objc_msgSend_operatorType(self, v10, v11))
  {
    if (!a4)
    {
      goto LABEL_9;
    }

    v20 = MEMORY[0x1E696ABC0];
    v31[0] = *MEMORY[0x1E696A578];
    v21 = MEMORY[0x1E696AEC0];
    v22 = objc_msgSend_predicateOperatorType(v6, v12, v13);
    v15 = sub_18869B94C(v22, v23);
    v17 = objc_msgSend_stringWithFormat_(v21, v24, @"Unsupported operator: %@", v15);
    v31[1] = @"ck_isComparisonError";
    v32[0] = v17;
    v32[1] = MEMORY[0x1E695E118];
    v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v25, v32, v31, 2);
    v19 = objc_msgSend_errorWithDomain_code_userInfo_(v20, v27, @"CKErrorDomain", 12, v26);

    goto LABEL_8;
  }

  LOBYTE(a4) = 1;
LABEL_9:

  v29 = *MEMORY[0x1E69E9840];
  return a4;
}

- (id)CKPropertiesDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_msgSend_operatorType(self, a2, v2);
  v6 = sub_18869B94C(v4, v5);
  v8 = objc_msgSend_stringWithFormat_(v3, v7, @"operator=%@", v6);

  return v8;
}

@end