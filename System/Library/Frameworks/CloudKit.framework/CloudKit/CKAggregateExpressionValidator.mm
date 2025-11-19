@interface CKAggregateExpressionValidator
- (BOOL)validate:(id)a3 error:(id *)a4;
- (CKAggregateExpressionValidator)initWithValidators:(id)a3;
- (id)CKPropertiesDescription;
@end

@implementation CKAggregateExpressionValidator

- (CKAggregateExpressionValidator)initWithValidators:(id)a3
{
  v7.receiver = self;
  v7.super_class = CKAggregateExpressionValidator;
  v3 = a3;
  v4 = [(CKAggregateExpressionValidator *)&v7 init];
  objc_msgSend_setSubExpressionValidators_(v4, v5, v3, v7.receiver, v7.super_class);

  return v4;
}

- (BOOL)validate:(id)a3 error:(id *)a4
{
  v109[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v9 = objc_msgSend_subExpressionValidators(self, v7, v8);
  v12 = objc_msgSend_count(v9, v10, v11);

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!a4)
    {
      goto LABEL_35;
    }

    v66 = MEMORY[0x1E696ABC0];
    v108[0] = *MEMORY[0x1E696A578];
    v30 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v13, @"<%@> is not an expression", v6);
    v108[1] = @"ck_isComparisonError";
    v109[0] = v30;
    v109[1] = MEMORY[0x1E695E118];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v67, v109, v108, 2);
    v70 = LABEL_24:;
    v53 = objc_msgSend_errorWithDomain_code_userInfo_(v66, v71, @"CKErrorDomain", 12, v70);
LABEL_25:

    goto LABEL_26;
  }

  if (objc_msgSend_expressionType(v6, v13, v14) != 14)
  {
    if (!a4)
    {
      goto LABEL_35;
    }

    v66 = MEMORY[0x1E696ABC0];
    v106[0] = *MEMORY[0x1E696A578];
    v30 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v15, @"<%@> is not an aggregate expression", v6);
    v106[1] = @"ck_isComparisonError";
    v107[0] = v30;
    v107[1] = MEMORY[0x1E695E118];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v68, v107, v106, 2);
    goto LABEL_24;
  }

  v17 = objc_msgSend_constantValue(v6, v15, v16);
  if (!v17 || (v20 = v17, objc_msgSend_constantValue(v6, v18, v19), v21 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v21, v20, (isKindOfClass & 1) == 0))
  {
    if (!a4)
    {
      goto LABEL_35;
    }

    v66 = MEMORY[0x1E696ABC0];
    v104[0] = *MEMORY[0x1E696A578];
    v30 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v18, @"%@ is not a valid aggregate", v6);
    v104[1] = @"ck_isComparisonError";
    v105[0] = v30;
    v105[1] = MEMORY[0x1E695E118];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v69, v105, v104, 2);
    goto LABEL_24;
  }

  v24 = objc_msgSend_subExpressionValidators(self, v18, v23);
  v27 = objc_msgSend_count(v24, v25, v26);

  if (v27 >= 2)
  {
    v30 = objc_msgSend_constantValue(v6, v28, v29);
    v33 = objc_msgSend_count(v30, v31, v32);
    v36 = objc_msgSend_subExpressionValidators(self, v34, v35);
    v39 = objc_msgSend_count(v36, v37, v38);

    if (v33 == v39)
    {

      goto LABEL_8;
    }

    if (a4)
    {
      v74 = MEMORY[0x1E696ABC0];
      v102[0] = *MEMORY[0x1E696A578];
      v75 = MEMORY[0x1E696AEC0];
      v70 = objc_msgSend_subExpressionValidators(self, v40, v41);
      v78 = objc_msgSend_count(v70, v76, v77);
      v81 = objc_msgSend_count(v30, v79, v80);
      v83 = objc_msgSend_stringWithFormat_(v75, v82, @"Invalid number of values in <%@>. Expected %lu, but found %lu", v6, v78, v81);
      v102[1] = @"ck_isComparisonError";
      v103[0] = v83;
      v103[1] = MEMORY[0x1E695E118];
      v85 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v84, v103, v102, 2);
      v53 = objc_msgSend_errorWithDomain_code_userInfo_(v74, v86, @"CKErrorDomain", 12, v85);

      goto LABEL_25;
    }

LABEL_35:
    v73 = 0;
    v53 = 0;
    goto LABEL_36;
  }

LABEL_8:
  v42 = objc_msgSend_constantValue(v6, v28, v29);
  v45 = objc_msgSend_subExpressionValidators(self, v43, v44);
  v98 = objc_msgSend_firstObject(v45, v46, v47);

  if (!objc_msgSend_count(v42, v48, v49))
  {
    v53 = 0;
LABEL_28:

    v73 = 1;
    goto LABEL_36;
  }

  v52 = 0;
  v53 = 0;
  while (1)
  {
    if (v12 != 1)
    {
      v54 = objc_msgSend_subExpressionValidators(self, v50, v51);
      v56 = objc_msgSend_objectAtIndexedSubscript_(v54, v55, v52);

      v98 = v56;
    }

    v58 = objc_msgSend_objectAtIndexedSubscript_(v42, v50, v52);
    if (a4)
    {
      break;
    }

    if ((objc_msgSend_validate_error_(v98, v57, v58, 0) & 1) == 0)
    {
      goto LABEL_32;
    }

LABEL_16:

    if (++v52 >= objc_msgSend_count(v42, v64, v65))
    {
      goto LABEL_28;
    }
  }

  v59 = a4;
  v99 = v53;
  v60 = objc_msgSend_validate_error_(v98, v57, v58, &v99);
  v61 = v99;

  if (v60)
  {
    v53 = v61;
    a4 = v59;
    goto LABEL_16;
  }

  v97 = MEMORY[0x1E696ABC0];
  v100[0] = *MEMORY[0x1E696A578];
  v87 = MEMORY[0x1E696AEC0];
  v88 = objc_msgSend_localizedDescription(v61, v62, v63);
  v90 = objc_msgSend_stringWithFormat_(v87, v89, @"Aggregate value %lu of <%@> is invalid: %@", v52, v6, v88);
  v91 = *MEMORY[0x1E696AA08];
  v101[0] = v90;
  v101[1] = v61;
  v100[1] = v91;
  v100[2] = @"ck_isComparisonError";
  v101[2] = MEMORY[0x1E695E118];
  v93 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v92, v101, v100, 3);
  v53 = objc_msgSend_errorWithDomain_code_userInfo_(v97, v94, @"CKErrorDomain", 12, v93);

  a4 = v59;
LABEL_32:

  if (!a4)
  {
    v73 = 0;
    goto LABEL_36;
  }

LABEL_26:
  v72 = v53;
  v73 = 0;
  *a4 = v53;
LABEL_36:

  v95 = *MEMORY[0x1E69E9840];
  return v73;
}

- (id)CKPropertiesDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_msgSend_subExpressionValidators(self, a2, v2);
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"validators=%@", v4);

  return v6;
}

@end