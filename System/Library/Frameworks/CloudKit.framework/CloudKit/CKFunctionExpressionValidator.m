@interface CKFunctionExpressionValidator
- (BOOL)validate:(id)a3 error:(id *)a4;
- (id)CKPropertiesDescription;
@end

@implementation CKFunctionExpressionValidator

- (BOOL)validate:(id)a3 error:(id *)a4
{
  v101[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!a4)
    {
      goto LABEL_38;
    }

    v46 = MEMORY[0x1E696ABC0];
    v100[0] = *MEMORY[0x1E696A578];
    v27 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, @"<%@> is not an expression", v6);
    v100[1] = @"ck_isComparisonError";
    v101[0] = v27;
    v101[1] = MEMORY[0x1E695E118];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v47, v101, v100, 2);
    v40 = LABEL_27:;
    v33 = objc_msgSend_errorWithDomain_code_userInfo_(v46, v49, @"CKErrorDomain", 12, v40);
LABEL_28:

    v50 = v33;
    v51 = 0;
    *a4 = v33;
    goto LABEL_39;
  }

  if (objc_msgSend_expressionType(v6, v7, v8) != 4)
  {
    if (!a4)
    {
      goto LABEL_38;
    }

    v46 = MEMORY[0x1E696ABC0];
    v98[0] = *MEMORY[0x1E696A578];
    v27 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9, @"<%@> is not a function expression", v6);
    v98[1] = @"ck_isComparisonError";
    v99[0] = v27;
    v99[1] = MEMORY[0x1E695E118];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v48, v99, v98, 2);
    goto LABEL_27;
  }

  v11 = objc_msgSend_function(v6, v9, v10);
  v13 = v11;
  if (self)
  {
    isEqualToString = objc_msgSend_isEqualToString_(v11, v12, self->_functionName);
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(v11, v12, 0);
  }

  v15 = isEqualToString;

  if ((v15 & 1) == 0)
  {
    if (a4)
    {
      v52 = MEMORY[0x1E696ABC0];
      v96[0] = *MEMORY[0x1E696A578];
      v53 = MEMORY[0x1E696AEC0];
      if (self)
      {
        functionName = self->_functionName;
      }

      else
      {
        functionName = 0;
      }

      v27 = functionName;
      v40 = objc_msgSend_stringWithFormat_(v53, v55, @"%@ does not match function '%@'", v6, v27);
      v96[1] = @"ck_isComparisonError";
      v97[0] = v40;
      v97[1] = MEMORY[0x1E695E118];
      v57 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v56, v97, v96, 2);
      v33 = objc_msgSend_errorWithDomain_code_userInfo_(v52, v58, @"CKErrorDomain", 12, v57);
      goto LABEL_37;
    }

LABEL_38:
    v51 = 0;
    v33 = 0;
    goto LABEL_39;
  }

  v18 = objc_msgSend_arguments(v6, v16, v17);
  v23 = objc_msgSend_count(v18, v19, v20);
  if (self)
  {
    v24 = objc_msgSend_count(self->_argumentValidators, v21, v22);
  }

  else
  {
    v24 = objc_msgSend_count(0, v21, v22);
  }

  v25 = v24;

  if (v23 != v25)
  {
    if (a4)
    {
      v59 = MEMORY[0x1E696ABC0];
      v94[0] = *MEMORY[0x1E696A578];
      v60 = MEMORY[0x1E696AEC0];
      if (self)
      {
        argumentValidators = self->_argumentValidators;
      }

      else
      {
        argumentValidators = 0;
      }

      v40 = argumentValidators;
      v64 = objc_msgSend_count(v40, v62, v63);
      v27 = objc_msgSend_arguments(v6, v65, v66);
      v69 = objc_msgSend_count(v27, v67, v68);
      v57 = objc_msgSend_stringWithFormat_(v60, v70, @"Invalid number of arguments to <%@>. Expected %lu, but found %lu", v6, v64, v69);
      v94[1] = @"ck_isComparisonError";
      v95[0] = v57;
      v95[1] = MEMORY[0x1E695E118];
      v72 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v71, v95, v94, 2);
      v33 = objc_msgSend_errorWithDomain_code_userInfo_(v59, v73, @"CKErrorDomain", 12, v72);

LABEL_37:
      goto LABEL_28;
    }

    goto LABEL_38;
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  if (self)
  {
    v26 = self->_argumentValidators;
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v87, v93, 16);
  if (v29)
  {
    v32 = v29;
    v85 = a4;
    v33 = 0;
    v34 = 0;
    v35 = *v88;
    while (2)
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v88 != v35)
        {
          objc_enumerationMutation(v27);
        }

        v37 = *(*(&v87 + 1) + 8 * i);
        v38 = objc_msgSend_arguments(v6, v30, v31);
        v40 = objc_msgSend_objectAtIndexedSubscript_(v38, v39, v34);

        if (v85)
        {
          v86 = v33;
          v42 = objc_msgSend_validate_error_(v37, v41, v40, &v86);
          v43 = v86;

          if ((v42 & 1) == 0)
          {
            v76 = MEMORY[0x1E696ABC0];
            v91[0] = *MEMORY[0x1E696A578];
            v77 = MEMORY[0x1E696AEC0];
            v78 = objc_msgSend_localizedDescription(v43, v44, v45);
            v80 = objc_msgSend_stringWithFormat_(v77, v79, @"Argument %lu of <%@> is invalid: %@", v34, v6, v78);
            v81 = *MEMORY[0x1E696AA08];
            v92[0] = v80;
            v92[1] = v43;
            v91[1] = v81;
            v91[2] = @"ck_isComparisonError";
            v92[2] = MEMORY[0x1E695E118];
            v83 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v82, v92, v91, 3);
            v33 = objc_msgSend_errorWithDomain_code_userInfo_(v76, v84, @"CKErrorDomain", 12, v83);

            a4 = v85;
            goto LABEL_28;
          }

          v33 = v43;
        }

        else if ((objc_msgSend_validate_error_(v37, v41, v40, 0) & 1) == 0)
        {

          v51 = 0;
          goto LABEL_39;
        }

        ++v34;
      }

      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v30, &v87, v93, 16);
      if (v32)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v33 = 0;
  }

  v51 = 1;
LABEL_39:

  v74 = *MEMORY[0x1E69E9840];
  return v51;
}

- (id)CKPropertiesDescription
{
  v2 = MEMORY[0x1E696AEC0];
  if (self)
  {
    v4 = self->_functionName;
    objc_msgSend_stringWithFormat_(v2, v5, @"functionName=%@, validators=%@", v4, self->_argumentValidators);
  }

  else
  {
    v4 = 0;
    objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"functionName=%@, validators=%@", 0, 0);
  }
  v6 = ;

  return v6;
}

@end