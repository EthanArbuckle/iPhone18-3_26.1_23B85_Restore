@interface CKCompoundTypePredicateValidator
- (BOOL)validate:(id)validate error:(id *)error;
- (CKCompoundTypePredicateValidator)initWithType:(unint64_t)type;
- (id)CKPropertiesDescription;
@end

@implementation CKCompoundTypePredicateValidator

- (CKCompoundTypePredicateValidator)initWithType:(unint64_t)type
{
  v7.receiver = self;
  v7.super_class = CKCompoundTypePredicateValidator;
  v4 = [(CKCompoundTypePredicateValidator *)&v7 init];
  objc_msgSend_setType_(v4, v5, type);
  return v4;
}

- (BOOL)validate:(id)validate error:(id *)error
{
  v34[2] = *MEMORY[0x1E69E9840];
  validateCopy = validate;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_9;
    }

    v14 = MEMORY[0x1E696ABC0];
    v33[0] = *MEMORY[0x1E696A578];
    v15 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, @"<%@> is not a compound predicate", validateCopy);
    v33[1] = @"ck_isComparisonError";
    v34[0] = v15;
    v34[1] = MEMORY[0x1E695E110];
    v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, v34, v33, 2);
    v19 = objc_msgSend_errorWithDomain_code_userInfo_(v14, v18, @"CKErrorDomain", 12, v17);
LABEL_8:

    v28 = v19;
    *error = v19;

    LOBYTE(error) = 0;
    goto LABEL_9;
  }

  v9 = objc_msgSend_compoundPredicateType(validateCopy, v7, v8);
  if (v9 != objc_msgSend_type(self, v10, v11))
  {
    if (!error)
    {
      goto LABEL_9;
    }

    v20 = MEMORY[0x1E696ABC0];
    v31[0] = *MEMORY[0x1E696A578];
    v21 = MEMORY[0x1E696AEC0];
    v22 = objc_msgSend_compoundPredicateType(validateCopy, v12, v13);
    v15 = sub_18869A1D0(v22, v23);
    v17 = objc_msgSend_stringWithFormat_(v21, v24, @"Invalid compound predicate type %@: <%@>", v15, validateCopy);
    v31[1] = @"ck_isComparisonError";
    v32[0] = v17;
    v32[1] = MEMORY[0x1E695E110];
    v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v25, v32, v31, 2);
    v19 = objc_msgSend_errorWithDomain_code_userInfo_(v20, v27, @"CKErrorDomain", 12, v26);

    goto LABEL_8;
  }

  LOBYTE(error) = 1;
LABEL_9:

  v29 = *MEMORY[0x1E69E9840];
  return error;
}

- (id)CKPropertiesDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_msgSend_type(self, a2, v2);
  v6 = sub_18869A1D0(v4, v5);
  v8 = objc_msgSend_stringWithFormat_(v3, v7, @"type=%@", v6);

  return v8;
}

@end