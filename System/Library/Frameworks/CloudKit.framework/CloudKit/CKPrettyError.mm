@interface CKPrettyError
+ (id)combinedErrorFromErrors:(id)errors topLevelErrorMessage:(id)message;
+ (id)databaseCorruptError;
+ (id)errorForAccountStatus:(int64_t)status;
+ (id)errorForSQLite:(sqlite3 *)lite message:(id)message;
+ (id)errorForSQLite:(sqlite3 *)lite message:(id)message args:(char *)args;
+ (id)errorWithCode:(int64_t)code format:(id)format;
+ (id)errorWithCode:(int64_t)code userInfo:(id)info format:(id)format;
+ (id)errorWithDomain:(id)domain code:(int64_t)code URL:(id)l format:(id)format;
+ (id)errorWithDomain:(id)domain code:(int64_t)code error:(id)error URL:(id)l format:(id)format;
+ (id)errorWithDomain:(id)domain code:(int64_t)code error:(id)error format:(id)format;
+ (id)errorWithDomain:(id)domain code:(int64_t)code error:(id)error path:(id)path format:(id)format;
+ (id)errorWithDomain:(id)domain code:(int64_t)code format:(id)format;
+ (id)errorWithDomain:(id)domain code:(int64_t)code path:(id)path format:(id)format;
+ (id)errorWithDomain:(id)domain code:(int64_t)code userInfo:(id)info;
+ (id)errorWithDomain:(id)domain code:(int64_t)code userInfo:(id)info error:(id)error format:(id)format;
+ (id)errorWithDomain:(id)domain code:(int64_t)code userInfo:(id)info error:(id)error format:(id)format arguments:(char *)arguments;
+ (id)errorWithDomain:(id)domain code:(int64_t)code userInfo:(id)info error:(id)error path:(id)path URL:(id)l description:(id)description;
+ (id)errorWithDomain:(id)domain code:(int64_t)code userInfo:(id)info format:(id)format;
+ (id)noMatchingDatabaseRowErrorIn:(SEL)in;
+ (id)noUniqueDatabaseRowErrorIn:(SEL)in;
+ (id)secureCodableError:(id)error;
+ (id)testError;
+ (id)undeprecatedDescriptionForError:(id)error;
+ (id)validationErrorWithMessage:(id)message;
+ (void)initialize;
- (id)CKPartialErrorDescription;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKPrettyError

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CKPrettyError;
  [(CKPrettyError *)&v2 dealloc];
}

- (id)description
{
  selfCopy = self;
  v63 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_CKPartialErrorDescription(self, a2, v2);
  v7 = objc_msgSend_userInfo(selfCopy, v5, v6);
  v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, @"ContainerID");

  if (v9)
  {
    v12 = objc_msgSend_userInfo(selfCopy, v10, v11);
    v14 = objc_msgSend_objectForKeyedSubscript_(v12, v13, @"ContainerID");
    objc_msgSend_appendFormat_(v4, v15, @"; container ID = %@", v14);
  }

  v16 = objc_msgSend_userInfo(selfCopy, v10, v11);
  v18 = objc_msgSend_objectForKeyedSubscript_(v16, v17, @"CKPartialErrors");

  if (!v18)
  {
    goto LABEL_24;
  }

  objc_msgSend_appendFormat_(v4, v19, @"; partial errors: {\n");
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v22 = objc_msgSend_userInfo(selfCopy, v20, v21);
  v24 = objc_msgSend_objectForKeyedSubscript_(v22, v23, @"CKPartialErrors");
  v27 = objc_msgSend_allKeys(v24, v25, v26);

  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v58, v62, 16);
  if (!v29)
  {

    goto LABEL_23;
  }

  v32 = v29;
  v33 = v4;
  v56 = 0;
  obj = v27;
  v34 = *v59;
  do
  {
    for (i = 0; i != v32; ++i)
    {
      if (*v59 != v34)
      {
        objc_enumerationMutation(obj);
      }

      v36 = *(*(&v58 + 1) + 8 * i);
      v37 = selfCopy;
      v38 = objc_msgSend_userInfo(selfCopy, v30, v31);
      v40 = objc_msgSend_objectForKeyedSubscript_(v38, v39, @"CKPartialErrors");
      v42 = objc_msgSend_objectForKeyedSubscript_(v40, v41, v36);

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (objc_msgSend_code(v42, v43, v44) == 22)
        {
          v56 = (v56 + 1);
          selfCopy = v37;
          goto LABEL_18;
        }

        v47 = objc_msgSend_CKPartialErrorDescription(v42, v45, v46);
      }

      else
      {
        v47 = objc_msgSend_description(v42, v43, v44);
      }

      v48 = v47;
      selfCopy = v37;
      if (objc_opt_respondsToSelector())
      {
        objc_msgSend_ckShortDescription(v36, v49, v50);
      }

      else
      {
        objc_msgSend_description(v36, v49, v50);
      }
      v51 = ;
      objc_msgSend_appendFormat_(v33, v52, @"\t%@ = %@>\n", v51, v48);

LABEL_18:
    }

    v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v30, &v58, v62, 16);
  }

  while (v32);

  v4 = v33;
  if (v56)
  {
    objc_msgSend_appendFormat_(v33, v53, @"\t... %d Batch Request Failed CKErrors omitted ...\n", v56);
  }

LABEL_23:
  objc_msgSend_appendFormat_(v4, v53, @"}");
LABEL_24:
  objc_msgSend_appendString_(v4, v19, @">");
  v54 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)CKPartialErrorDescription
{
  v4 = objc_msgSend_domain(self, a2, v2);
  isEqualToString = objc_msgSend_isEqualToString_(v4, v5, @"CKInternalErrorDomain");

  v9 = objc_msgSend_CKStringForWellKnownCKErrors(self, v7, v8);
  v12 = MEMORY[0x1E696AD60];
  v86 = v9;
  if (v9)
  {
    v13 = v9;
    if (isEqualToString)
    {
      v14 = @"CKUnderlyingError";
    }

    else
    {
      v14 = @"CKError";
    }

    v15 = objc_msgSend_code(self, v10, v11);
    v19 = objc_msgSend_stringWithFormat_(v12, v16, @"<%@ %p: %@ (%ld"), v14, self, v13, v15;
  }

  else
  {
    v20 = objc_msgSend_domain(self, v10, v11);
    v23 = objc_msgSend_code(self, v21, v22);
    v19 = objc_msgSend_stringWithFormat_(v12, v24, @"<NSError %p: (%@:%ld"), self, v20, v23;
  }

  v25 = objc_msgSend_userInfo(self, v17, v18);
  v27 = objc_msgSend_objectForKeyedSubscript_(v25, v26, *MEMORY[0x1E696AA08]);
  v30 = v27;
  if (v27)
  {
    v31 = objc_msgSend_domain(v27, v28, v29);
    v33 = objc_msgSend_isEqualToString_(v31, v32, @"CKInternalErrorDomain");

    if (v33)
    {
      v36 = objc_msgSend_code(v30, v34, v35);
      objc_msgSend_appendFormat_(v19, v37, @"/%ld", v36);
    }

    else
    {
      v38 = objc_msgSend_domain(v30, v34, v35);
      v41 = objc_msgSend_code(v30, v39, v40);
      objc_msgSend_appendFormat_(v19, v42, @"/%@:%ld", v38, v41);
    }
  }

  objc_msgSend_appendString_(v19, v28, @""));
  v44 = objc_msgSend_objectForKeyedSubscript_(v25, v43, @"ServerErrorDescription");
  if (v44)
  {
    v46 = v44;
    objc_msgSend_appendFormat_(v19, v45, @"; server message = %@", v44);
  }

  else
  {
    v47 = objc_msgSend_objectForKeyedSubscript_(v25, v45, @"CKErrorDescription");
    if (v47)
    {
      v46 = v47;
    }

    else
    {
      v50 = objc_msgSend_userInfo(v30, v48, v49);
      v46 = objc_msgSend_objectForKeyedSubscript_(v50, v51, *MEMORY[0x1E696A578]);

      if (!v46)
      {
        goto LABEL_18;
      }
    }

    objc_msgSend_appendFormat_(v19, v48, @"; %@", v46);
  }

LABEL_18:
  v52 = objc_msgSend_objectForKeyedSubscript_(v25, v48, @"ClientEtag");
  v54 = v52;
  if (v52)
  {
    objc_msgSend_appendFormat_(v19, v53, @"; clientEtag = %@", v52);
  }

  v55 = objc_msgSend_objectForKeyedSubscript_(v25, v53, @"ServerEtag");
  v57 = v55;
  if (v55)
  {
    objc_msgSend_appendFormat_(v19, v56, @"; serverEtag = %@", v55);
  }

  v58 = objc_msgSend_objectForKeyedSubscript_(v25, v56, @"OperationID");
  v60 = v58;
  if (v58)
  {
    objc_msgSend_appendFormat_(v19, v59, @"; op = %@", v58);
  }

  v61 = objc_msgSend_objectForKeyedSubscript_(v25, v59, @"RequestUUID");
  v63 = v61;
  if (v61)
  {
    objc_msgSend_appendFormat_(v19, v62, @"; uuid = %@", v61);
  }

  v64 = objc_msgSend_objectForKeyedSubscript_(v25, v62, *MEMORY[0x1E696A998]);
  v67 = v64;
  if (v64)
  {
    objc_msgSend_appendFormat_(v19, v65, @"; URL = %@", v64);
  }

  v68 = objc_msgSend_domain(v30, v65, v66);
  v70 = objc_msgSend_isEqualToString_(v68, v69, *MEMORY[0x1E696A978]);

  if (v70)
  {
    v73 = objc_msgSend_userInfo(v30, v71, v72);
    v75 = objc_msgSend_objectForKeyedSubscript_(v73, v74, @"_NSURLErrorFailingURLSessionTaskErrorKey");

    if (v75)
    {
      objc_msgSend_appendFormat_(v19, v76, @"; task = %@", v75);
    }
  }

  v78 = objc_msgSend_objectForKeyedSubscript_(v25, v71, @"CKRetryAfter");
  if (v78 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    objc_msgSend_doubleValue(v78, v77, v79);
    objc_msgSend_appendFormat_(v19, v80, @"; Retry after %0.1f seconds", v81);
  }

  v82 = objc_msgSend_objectForKeyedSubscript_(v25, v77, 0x1EFA46AB0);
  v84 = v82;
  if (v82)
  {
    objc_msgSend_appendFormat_(v19, v83, @"; SQLite error: %@", v82);
  }

  return v19;
}

+ (void)initialize
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v7[0] = objc_opt_class();
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v4, v7, 1);
  sub_1886CEE50(self, v3, v5, 0, 1);

  v6 = *MEMORY[0x1E69E9840];
}

+ (id)errorWithCode:(int64_t)code format:(id)format
{
  v6 = MEMORY[0x1E696AEC0];
  formatCopy = format;
  v8 = [v6 alloc];
  v10 = objc_msgSend_initWithFormat_arguments_(v8, v9, formatCopy, &v15);

  v12 = objc_msgSend_errorWithDomain_code_userInfo_error_path_URL_description_(self, v11, @"CKErrorDomain", code, 0, 0, 0, 0, v10);

  return v12;
}

+ (id)errorWithCode:(int64_t)code userInfo:(id)info format:(id)format
{
  v8 = MEMORY[0x1E696AEC0];
  formatCopy = format;
  infoCopy = info;
  v11 = [v8 alloc];
  v13 = objc_msgSend_initWithFormat_arguments_(v11, v12, formatCopy, &v18);

  v15 = objc_msgSend_errorWithDomain_code_userInfo_error_path_URL_description_(self, v14, @"CKErrorDomain", code, infoCopy, 0, 0, 0, v13);

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (byte_1EA90C538 == 1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = objc_opt_class();
    objc_msgSend_setClassName_forClass_(coderCopy, v8, v6, v7);
  }

  v9.receiver = self;
  v9.super_class = CKPrettyError;
  [(CKPrettyError *)&v9 encodeWithCoder:coderCopy];
}

+ (id)errorWithDomain:(id)domain code:(int64_t)code userInfo:(id)info
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___CKPrettyError;
  v5 = objc_msgSendSuper2(&v7, sel_errorWithDomain_code_userInfo_, domain, code, info);

  return v5;
}

+ (id)errorWithDomain:(id)domain code:(int64_t)code format:(id)format
{
  v8 = MEMORY[0x1E696AEC0];
  formatCopy = format;
  domainCopy = domain;
  v11 = [v8 alloc];
  v13 = objc_msgSend_initWithFormat_arguments_(v11, v12, formatCopy, &v18);

  v15 = objc_msgSend_errorWithDomain_code_userInfo_error_path_URL_description_(self, v14, domainCopy, code, 0, 0, 0, 0, v13);

  return v15;
}

+ (id)errorWithDomain:(id)domain code:(int64_t)code userInfo:(id)info format:(id)format
{
  v10 = MEMORY[0x1E696AEC0];
  formatCopy = format;
  infoCopy = info;
  domainCopy = domain;
  v14 = [v10 alloc];
  v16 = objc_msgSend_initWithFormat_arguments_(v14, v15, formatCopy, &v21);

  v18 = objc_msgSend_errorWithDomain_code_userInfo_error_path_URL_description_(self, v17, domainCopy, code, infoCopy, 0, 0, 0, v16);

  return v18;
}

+ (id)errorWithDomain:(id)domain code:(int64_t)code userInfo:(id)info error:(id)error path:(id)path URL:(id)l description:(id)description
{
  domainCopy = domain;
  errorCopy = error;
  pathCopy = path;
  lCopy = l;
  descriptionCopy = description;
  v22 = objc_msgSend_mutableCopy(info, v20, v21);
  v24 = v22;
  if (errorCopy || pathCopy || lCopy || descriptionCopy)
  {
    if (!v22)
    {
      v24 = objc_opt_new();
    }

    if (errorCopy)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v24, v23, errorCopy, *MEMORY[0x1E696AA08]);
    }

    if (pathCopy)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v24, v23, pathCopy, *MEMORY[0x1E696A368]);
    }

    if (lCopy)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v24, v23, lCopy, *MEMORY[0x1E696A998]);
    }

    if (descriptionCopy)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v24, v23, descriptionCopy, *MEMORY[0x1E696A578]);
      objc_msgSend_setObject_forKeyedSubscript_(v24, v25, descriptionCopy, @"CKErrorDescription");
    }
  }

  v26 = objc_msgSend_errorWithDomain_code_userInfo_(self, v23, domainCopy, code, v24);

  return v26;
}

+ (id)errorWithDomain:(id)domain code:(int64_t)code path:(id)path format:(id)format
{
  v10 = MEMORY[0x1E696AEC0];
  formatCopy = format;
  pathCopy = path;
  domainCopy = domain;
  v14 = [v10 alloc];
  v16 = objc_msgSend_initWithFormat_arguments_(v14, v15, formatCopy, &v21);

  v18 = objc_msgSend_errorWithDomain_code_userInfo_error_path_URL_description_(self, v17, domainCopy, code, 0, 0, pathCopy, 0, v16);

  return v18;
}

+ (id)errorWithDomain:(id)domain code:(int64_t)code userInfo:(id)info error:(id)error format:(id)format
{
  v7 = objc_msgSend_errorWithDomain_code_userInfo_error_format_arguments_(self, a2, domain, code, info, error, format, &v10);

  return v7;
}

+ (id)errorWithDomain:(id)domain code:(int64_t)code userInfo:(id)info error:(id)error format:(id)format arguments:(char *)arguments
{
  v14 = MEMORY[0x1E696AEC0];
  formatCopy = format;
  errorCopy = error;
  infoCopy = info;
  domainCopy = domain;
  v19 = [v14 alloc];
  v21 = objc_msgSend_initWithFormat_arguments_(v19, v20, formatCopy, arguments);

  v23 = objc_msgSend_errorWithDomain_code_userInfo_error_path_URL_description_(self, v22, domainCopy, code, infoCopy, errorCopy, 0, 0, v21);

  return v23;
}

+ (id)errorWithDomain:(id)domain code:(int64_t)code error:(id)error format:(id)format
{
  v10 = MEMORY[0x1E696AEC0];
  formatCopy = format;
  errorCopy = error;
  domainCopy = domain;
  v14 = [v10 alloc];
  v16 = objc_msgSend_initWithFormat_arguments_(v14, v15, formatCopy, &v21);

  v18 = objc_msgSend_errorWithDomain_code_userInfo_error_path_URL_description_(self, v17, domainCopy, code, 0, errorCopy, 0, 0, v16);

  return v18;
}

+ (id)errorWithDomain:(id)domain code:(int64_t)code URL:(id)l format:(id)format
{
  v10 = MEMORY[0x1E696AEC0];
  formatCopy = format;
  lCopy = l;
  domainCopy = domain;
  v14 = [v10 alloc];
  v16 = objc_msgSend_initWithFormat_arguments_(v14, v15, formatCopy, &v21);

  v18 = objc_msgSend_errorWithDomain_code_userInfo_error_path_URL_description_(self, v17, domainCopy, code, 0, 0, 0, lCopy, v16);

  return v18;
}

+ (id)errorWithDomain:(id)domain code:(int64_t)code error:(id)error path:(id)path format:(id)format
{
  v12 = MEMORY[0x1E696AEC0];
  formatCopy = format;
  pathCopy = path;
  errorCopy = error;
  domainCopy = domain;
  v17 = [v12 alloc];
  v19 = objc_msgSend_initWithFormat_arguments_(v17, v18, formatCopy, &v24);

  v21 = objc_msgSend_errorWithDomain_code_userInfo_error_path_URL_description_(self, v20, domainCopy, code, 0, errorCopy, pathCopy, 0, v19);

  return v21;
}

+ (id)errorWithDomain:(id)domain code:(int64_t)code error:(id)error URL:(id)l format:(id)format
{
  v12 = MEMORY[0x1E696AEC0];
  formatCopy = format;
  lCopy = l;
  errorCopy = error;
  domainCopy = domain;
  v17 = [v12 alloc];
  v19 = objc_msgSend_initWithFormat_arguments_(v17, v18, formatCopy, &v24);

  v21 = objc_msgSend_errorWithDomain_code_userInfo_error_path_URL_description_(self, v20, domainCopy, code, 0, errorCopy, 0, lCopy, v19);

  return v21;
}

+ (id)secureCodableError:(id)error
{
  v70 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (errorCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v8 = objc_msgSend_userInfo(errorCopy, v6, v7);
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v64, v69, 16);
    if (v10)
    {
      v13 = v10;
      v14 = *v65;
      v15 = *MEMORY[0x1E696A750];
      v58 = *MEMORY[0x1E696A750];
      v59 = *MEMORY[0x1E696AA08];
      v55 = v5;
      v56 = errorCopy;
      v53 = *v65;
      v54 = v8;
      do
      {
        v16 = 0;
        v57 = v13;
        do
        {
          if (*v65 != v14)
          {
            objc_enumerationMutation(v8);
          }

          v17 = *(*(&v64 + 1) + 8 * v16);
          v18 = objc_msgSend_userInfo(errorCopy, v11, v12, v53, v54);
          v20 = objc_msgSend_objectForKeyedSubscript_(v18, v19, v17);

          if ((objc_msgSend_isEqualToString_(v17, v21, v59) & 1) != 0 || objc_msgSend_isEqualToString_(v17, v22, @"CKFunctionError"))
          {
            v23 = objc_msgSend_secureCodableError_(self, v22, v20);
            objc_msgSend_setObject_forKeyedSubscript_(v5, v24, v23, v17);
          }

          else if (objc_msgSend_isEqualToString_(v17, v22, v58))
          {
            v27 = objc_msgSend_array(MEMORY[0x1E695DF70], v25, v26);
            v60 = 0u;
            v61 = 0u;
            v62 = 0u;
            v63 = 0u;
            v28 = v20;
            v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v60, v68, 16);
            if (v30)
            {
              v32 = v30;
              v33 = *v61;
              do
              {
                for (i = 0; i != v32; ++i)
                {
                  if (*v61 != v33)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v35 = objc_msgSend_secureCodableError_(self, v31, *(*(&v60 + 1) + 8 * i));
                  objc_msgSend_addObject_(v27, v36, v35);
                }

                v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v60, v68, 16);
              }

              while (v32);
            }

            v5 = v55;
            objc_msgSend_setObject_forKeyedSubscript_(v55, v37, v27, v17);

            errorCopy = v56;
            v14 = v53;
            v8 = v54;
            v13 = v57;
          }

          else if ((objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend_supportsSecureCoding(v20, v38, v39))
          {
            objc_msgSend_setObject_forKeyedSubscript_(v5, v40, v20, v17);
          }

          ++v16;
        }

        while (v16 != v13);
        v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v64, v69, 16);
        v13 = v41;
      }

      while (v41);
    }

    v42 = [self alloc];
    v45 = objc_msgSend_domain(errorCopy, v43, v44);
    v48 = objc_msgSend_code(errorCopy, v46, v47);
    v50 = objc_msgSend_initWithDomain_code_userInfo_(v42, v49, v45, v48, v5);
  }

  else
  {
    v50 = 0;
  }

  v51 = *MEMORY[0x1E69E9840];

  return v50;
}

+ (id)undeprecatedDescriptionForError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v7 = objc_msgSend_string(MEMORY[0x1E696AD60], v4, v5);
    v10 = objc_msgSend_localizedDescription(errorCopy, v8, v9);
    v12 = v10;
    if (v10)
    {
      objc_msgSend_appendString_(v7, v11, v10);
    }

    else
    {
      objc_msgSend_appendString_(v7, v11, @"Unknown error");
    }

    v15 = objc_msgSend_userInfo(errorCopy, v13, v14);
    v17 = objc_msgSend_objectForKeyedSubscript_(v15, v16, *MEMORY[0x1E696A368]);

    if (v17)
    {
      objc_msgSend_appendFormat_(v7, v18, @" at path %@", v17);
    }

    v20 = objc_msgSend_userInfo(errorCopy, v18, v19);
    v22 = objc_msgSend_objectForKeyedSubscript_(v20, v21, *MEMORY[0x1E696A998]);

    if (v22)
    {
      objc_msgSend_appendFormat_(v7, v23, @" for URL %@", v22);
    }

    v25 = objc_msgSend_domain(errorCopy, v23, v24);
    v28 = objc_msgSend_code(errorCopy, v26, v27);
    objc_msgSend_appendFormat_(v7, v29, @" (%@/%d)", v25, v28);

    v32 = objc_msgSend_userInfo(errorCopy, v30, v31);
    v34 = objc_msgSend_objectForKeyedSubscript_(v32, v33, *MEMORY[0x1E696AA08]);

    if (v34)
    {
      v37 = objc_msgSend_undeprecatedDescriptionForError_(self, v35, v34);
      objc_msgSend_appendFormat_(v7, v38, @". Underlying error: %@", v37);
    }

    v39 = objc_msgSend_userInfo(errorCopy, v35, v36);
    v41 = objc_msgSend_objectForKeyedSubscript_(v39, v40, @"kMMCSErrorUnderlyingErrorArrayKey");

    if (v41)
    {
      v59 = v34;
      v60 = v22;
      v61 = v17;
      v44 = objc_msgSend_count(v41, v42, v43);
      v48 = objc_msgSend_array(MEMORY[0x1E695DF70], v45, v46);
      if (v44 >= 3)
      {
        v49 = 3;
      }

      else
      {
        v49 = v44;
      }

      if (v44)
      {
        v58 = v12;
        v50 = 0;
        do
        {
          v51 = objc_msgSend_objectAtIndexedSubscript_(v41, v47, v50);
          v53 = objc_msgSend_undeprecatedDescriptionForError_(self, v52, v51);
          objc_msgSend_addObject_(v48, v54, v53);

          ++v50;
        }

        while (v49 != v50);
        v12 = v58;
        if (v44 > 3)
        {
          objc_msgSend_addObject_(v48, v47, @"...");
        }
      }

      v55 = objc_msgSend_componentsJoinedByString_(v48, v47, @", ");
      objc_msgSend_appendFormat_(v7, v56, @". Underlying MMCS errors: [%@]", v55);

      v22 = v60;
      v17 = v61;
      v34 = v59;
    }

    objc_msgSend_appendString_(v7, v42, @".");
  }

  else
  {
    v7 = @"(null)";
  }

  return v7;
}

+ (id)combinedErrorFromErrors:(id)errors topLevelErrorMessage:(id)message
{
  v31[1] = *MEMORY[0x1E69E9840];
  errorsCopy = errors;
  messageCopy = message;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1883ED890;
  v28 = sub_1883EF59C;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_188563DF0;
  v16[3] = &unk_1E70BD9F8;
  v8 = v7;
  v17 = v8;
  v18 = &v24;
  v19 = &v20;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(errorsCopy, v9, v16);
  if (*(v21 + 24) == 1)
  {
    v11 = v25[5];
  }

  else
  {
    v30 = @"CKPartialErrors";
    v31[0] = v8;
    v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v10, v31, &v30, 1);
    v11 = objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v13, @"CKErrorDomain", 2, v12, @"%@", messageCopy);
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  v14 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)errorForAccountStatus:(int64_t)status
{
  v3 = 0;
  if (status > 2)
  {
    if (status == 4)
    {
      objc_msgSend_errorWithDomain_code_format_(CKPrettyError, a2, @"CKErrorDomain", 36, @"iCloud account is temporarily not available");
      goto LABEL_11;
    }

    if (status != 3)
    {
      goto LABEL_12;
    }

    v4 = @"iCloud account is not available";
  }

  else if (status)
  {
    if (status != 2)
    {
      goto LABEL_12;
    }

    v4 = @"iCloud account is restricted";
  }

  else
  {
    v4 = @"Could not determine iCloud account status";
  }

  objc_msgSend_errorWithDomain_code_format_(CKPrettyError, a2, @"CKErrorDomain", 9, v4);
  v3 = LABEL_11:;
LABEL_12:

  return v3;
}

+ (id)databaseCorruptError
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"SQLCode";
  v3 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], a2, 11);
  v12[1] = @"SQLExtendedCode";
  v13[0] = v3;
  v5 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v4, 0);
  v13[1] = v5;
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, v13, v12, 2);

  v9 = objc_msgSend_errorWithDomain_code_userInfo_format_(self, v8, @"CKInternalErrorDomain", 1027, v7, @"%@", @"database corrupt");

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)errorForSQLite:(sqlite3 *)lite message:(id)message args:(char *)args
{
  v28[3] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v9 = sqlite3_errcode(lite);
  v10 = sqlite3_extended_errcode(lite);
  v11 = sqlite3_errmsg(lite);
  v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v12, v11);
  v27[0] = @"SQLCode";
  v15 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v14, v9);
  v28[0] = v15;
  v27[1] = @"SQLExtendedCode";
  v17 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v16, v10);
  v27[2] = @"SQLErrorMessage";
  v28[1] = v17;
  v28[2] = v13;
  v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v18, v28, v27, 3);

  v20 = objc_alloc(MEMORY[0x1E696AEC0]);
  v22 = objc_msgSend_initWithFormat_arguments_(v20, v21, messageCopy, args);

  v24 = objc_msgSend_errorWithDomain_code_userInfo_format_(self, v23, @"CKInternalErrorDomain", 1027, v19, @"%@", v22);

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

+ (id)errorForSQLite:(sqlite3 *)lite message:(id)message
{
  v4 = objc_msgSend_errorForSQLite_message_args_(self, a2, lite, message, &v7);

  return v4;
}

+ (id)noMatchingDatabaseRowErrorIn:(SEL)in
{
  v3 = NSStringFromSelector(in);
  v5 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v4, @"CKInternalErrorDomain", 1050, @"No matching database row in %@", v3);

  return v5;
}

+ (id)noUniqueDatabaseRowErrorIn:(SEL)in
{
  v3 = NSStringFromSelector(in);
  v5 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v4, @"CKInternalErrorDomain", 1051, @"Matched more than one database row in %@", v3);

  return v5;
}

+ (id)testError
{
  v15[3] = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], a2, "testing");
  v14[0] = @"SQLCode";
  v5 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v4, 13);
  v15[0] = v5;
  v14[1] = @"SQLExtendedCode";
  v7 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v6, 1);
  v14[2] = @"SQLErrorMessage";
  v15[1] = v7;
  v15[2] = v3;
  v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v8, v15, v14, 3);

  v11 = objc_msgSend_errorWithDomain_code_userInfo_format_(self, v10, @"CKInternalErrorDomain", 1027, v9, @"%@", @"test error");

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)validationErrorWithMessage:(id)message
{
  v3 = objc_msgSend_errorWithDomain_code_userInfo_error_format_arguments_(self, a2, @"CKInternalErrorDomain", 1028, 0, 0, message, &v6);

  return v3;
}

@end