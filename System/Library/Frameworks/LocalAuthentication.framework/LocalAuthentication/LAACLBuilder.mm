@interface LAACLBuilder
+ (id)customACL:(id)a3;
+ (id)denyAllACL;
@end

@implementation LAACLBuilder

+ (id)customACL:(id)a3
{
  v67 = *MEMORY[0x1E69E9840];
  v3 = a3;
  error = 0;
  if ([v3 authType] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __26__LAACLBuilder_customACL___block_invoke;
    v57[3] = &unk_1E77CB998;
    v7 = v3;
    v58 = v7;
    v8 = __26__LAACLBuilder_customACL___block_invoke(v57);
    v9 = v8;
    v10 = SecAccessControlCreateWithFlags(0, *MEMORY[0x1E697AC28], v8, &error);
    if (!v10)
    {
      v12 = LA_LOG_1();
      v40 = LALogTypeForInternalError();
      if (os_log_type_enabled(v12, v40))
      {
        *buf = 67109378;
        *&buf[4] = v9;
        *&buf[8] = 2114;
        *&buf[10] = error;
        _os_log_impl(&dword_1A784E000, v12, v40, "Could not initialize ACL (flags=%d) (%{public}@)", buf, 0x12u);
      }

      v6 = 0;
      goto LABEL_45;
    }

    v11 = v10;
    v47 = v3;
    v12 = objc_opt_new();
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v13 = [v7 credentials];
    v14 = [v13 allKeys];

    v15 = [v14 countByEnumeratingWithState:&v53 objects:v65 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v54;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v54 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v53 + 1) + 8 * i);
          v20 = [v7 credentials];
          v21 = [v20 objectForKeyedSubscript:v19];

          -[NSObject setCredential:type:](v12, "setCredential:type:", v21, [v19 integerValue]);
        }

        v16 = [v14 countByEnumeratingWithState:&v53 objects:v65 count:16];
      }

      while (v16);
    }

    v63 = &unk_1F1A6FC20;
    v64 = MEMORY[0x1E695E118];
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
    obj = error;
    v23 = [v12 evaluateAccessControl:v11 operation:2 options:v22 error:&obj];
    objc_storeStrong(&error, obj);

    v24 = [MEMORY[0x1E69AD210] constraintsFromACL:v11];
    RequirePassword = SecAccessControlGetRequirePassword();
    CFRelease(v11);
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v25 = [v24 allKeys];
    v26 = [v25 countByEnumeratingWithState:&v48 objects:v62 count:16];
    if (!v26)
    {
LABEL_21:

LABEL_32:
      v33 = LA_LOG_1();
      v39 = LALogTypeForInternalError();
      if (os_log_type_enabled(v33, v39))
      {
        *buf = 138543362;
        *&buf[4] = v24;
        _os_log_impl(&dword_1A784E000, v33, v39, "Could not derive auth constraints (%{public}@)", buf, 0xCu);
      }

      goto LABEL_43;
    }

    v27 = v26;
    v28 = *v49;
LABEL_15:
    v29 = 0;
    while (1)
    {
      if (*v49 != v28)
      {
        objc_enumerationMutation(v25);
      }

      v30 = *(*(&v48 + 1) + 8 * v29);
      v31 = [v24 objectForKeyedSubscript:v30];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        break;
      }

      if (v27 == ++v29)
      {
        v27 = [v25 countByEnumeratingWithState:&v48 objects:v62 count:16];
        if (v27)
        {
          goto LABEL_15;
        }

        goto LABEL_21;
      }
    }

    v33 = [v24 objectForKeyedSubscript:v30];

    if (!v33)
    {
      goto LABEL_32;
    }

    v34 = LA_LOG_1();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      [LAACLBuilder customACL:v34];
    }

    v35 = SecAccessControlCreate();
    if (v35)
    {
      v36 = v35;
      if (SecAccessControlSetProtection())
      {
        v60[0] = @"osgn";
        v60[1] = @"od";
        v61[0] = v33;
        v61[1] = v33;
        v60[2] = @"ock";
        v60[3] = @"odel";
        v61[2] = v33;
        v61[3] = MEMORY[0x1E695E118];
        v60[4] = @"oa";
        v61[4] = MEMORY[0x1E695E118];
        [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:5];
        SecAccessControlSetConstraints();
        if (RequirePassword)
        {
          SecAccessControlSetRequirePassword();
        }

        v37 = [LAACL alloc];
        if (v37)
        {
          *buf = v37;
          *&buf[8] = LAACL;
          v38 = objc_msgSendSuper2(buf, sel_init);
          v6 = v38;
          if (v38)
          {
            *(v38 + 1) = v36;
          }

          goto LABEL_44;
        }

LABEL_43:
        v6 = 0;
LABEL_44:
        v3 = v47;

LABEL_45:
        v4 = v58;
        goto LABEL_46;
      }

      v41 = LA_LOG_1();
      v42 = LALogTypeForInternalError();
      if (os_log_type_enabled(v41, v42))
      {
        *buf = 138543362;
        *&buf[4] = error;
        v43 = "Could not set ACL protection (%{public}@)";
        goto LABEL_41;
      }
    }

    else
    {
      v41 = LA_LOG_1();
      v42 = LALogTypeForInternalError();
      if (os_log_type_enabled(v41, v42))
      {
        *buf = 138543362;
        *&buf[4] = error;
        v43 = "Could not initialize trivial ACL (%{public}@)";
LABEL_41:
        _os_log_impl(&dword_1A784E000, v41, v42, v43, buf, 0xCu);
      }
    }

    goto LABEL_43;
  }

  v4 = LA_LOG_1();
  v5 = LALogTypeForInternalError();
  if (os_log_type_enabled(v4, v5))
  {
    *buf = 0;
    _os_log_impl(&dword_1A784E000, v4, v5, "Invalid authType", buf, 2u);
  }

  v6 = 0;
LABEL_46:

  v44 = *MEMORY[0x1E69E9840];

  return v6;
}

uint64_t __26__LAACLBuilder_customACL___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fallbackAuthType];
  result = [*(a1 + 32) authType];
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (result == 2 && [*(a1 + 32) fallbackAuthType] == 16)
    {
      return 1;
    }

    else
    {
      v4 = [*(a1 + 32) authType];
      return v4 | [*(a1 + 32) fallbackAuthType] | 0x4000;
    }
  }

  return result;
}

+ (id)denyAllACL
{
  v2 = [LAACL alloc];
  v3 = [MEMORY[0x1E69AD210] denyAllACL];
  if (v2)
  {
    v4 = v3;
    v7.receiver = v2;
    v7.super_class = LAACL;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    if (v5)
    {
      v5[1] = v4;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end