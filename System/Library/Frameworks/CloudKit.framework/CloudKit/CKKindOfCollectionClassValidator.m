@interface CKKindOfCollectionClassValidator
- (BOOL)validate:(id)a3 error:(id *)a4;
@end

@implementation CKKindOfCollectionClassValidator

- (BOOL)validate:(id)a3 error:(id *)a4
{
  v67 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_opt_class();
  v50 = a4;
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v6 = v5;
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v55, v66, 16);
    if (v8)
    {
      v9 = v8;
      v49 = v5;
      v10 = 0;
      v11 = *v56;
      v12 = *MEMORY[0x1E696A578];
      v13 = 1;
      while (1)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v56 != v11)
          {
            objc_enumerationMutation(v6);
          }

          v15 = *(*(&v55 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            if (!a4)
            {
              v13 = 0;
              continue;
            }

LABEL_14:
            v18 = MEMORY[0x1E696ABC0];
            v64[0] = v12;
            v19 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v16, @"Nested collection classes are not allowed: %@", v6);
            v64[1] = @"ck_isComparisonError";
            v65[0] = v19;
            v65[1] = MEMORY[0x1E695E110];
            v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v20, v65, v64, 2);
            v23 = objc_msgSend_errorWithDomain_code_userInfo_(v18, v22, @"CKErrorDomain", 12, v21);

            a4 = v50;
            v13 = 0;
            v10 = v23;
            continue;
          }

          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v13 &= isKindOfClass ^ 1;
          if (a4 && (isKindOfClass & 1) != 0)
          {
            goto LABEL_14;
          }
        }

        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v16, &v55, v66, 16);
        if (!v9)
        {
          goto LABEL_17;
        }
      }
    }

    goto LABEL_34;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!a4)
    {
      v13 = 0;
      v10 = 0;
      goto LABEL_37;
    }

    v44 = MEMORY[0x1E696ABC0];
    v59[0] = *MEMORY[0x1E696A578];
    v45 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v24, @"<%@> is not a collection class", v5);
    v59[1] = @"ck_isComparisonError";
    v60[0] = v45;
    v60[1] = MEMORY[0x1E695E110];
    v47 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v46, v60, v59, 2);
    v10 = objc_msgSend_errorWithDomain_code_userInfo_(v44, v48, @"CKErrorDomain", 12, v47);

    v13 = 0;
    goto LABEL_36;
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v6 = objc_msgSend_allValues(v5, v24, v25);
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v26, &v51, v63, 16);
  if (v27)
  {
    v28 = v27;
    v49 = v5;
    v10 = 0;
    v29 = *v52;
    v30 = *MEMORY[0x1E696A578];
    v13 = 1;
    while (1)
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v52 != v29)
        {
          objc_enumerationMutation(v6);
        }

        v32 = *(*(&v51 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          if (!a4)
          {
            v13 = 0;
            continue;
          }

LABEL_30:
          v35 = MEMORY[0x1E696ABC0];
          v61[0] = v30;
          v36 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v33, @"Nested collection classes are not allowed: %@", v49);
          v61[1] = @"ck_isComparisonError";
          v62[0] = v36;
          v62[1] = MEMORY[0x1E695E110];
          v38 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v37, v62, v61, 2);
          v40 = objc_msgSend_errorWithDomain_code_userInfo_(v35, v39, @"CKErrorDomain", 12, v38);

          a4 = v50;
          v13 = 0;
          v10 = v40;
          continue;
        }

        objc_opt_class();
        v34 = objc_opt_isKindOfClass();
        v13 &= v34 ^ 1;
        if (a4 && (v34 & 1) != 0)
        {
          goto LABEL_30;
        }
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v33, &v51, v63, 16);
      if (!v28)
      {
LABEL_17:
        v5 = v49;
        goto LABEL_35;
      }
    }
  }

LABEL_34:
  v10 = 0;
  v13 = 1;
LABEL_35:

  if (a4)
  {
LABEL_36:
    v41 = v10;
    *a4 = v10;
  }

LABEL_37:

  v42 = *MEMORY[0x1E69E9840];
  return v13 & 1;
}

@end