@interface SKEntitlementChecker
+ (BOOL)checkForEntitlement:(id)a3;
+ (BOOL)isProcessEntitled:(id *)a3 entitlementName:(__CFString *)a4;
@end

@implementation SKEntitlementChecker

+ (BOOL)checkForEntitlement:(id)a3
{
  v3 = a3;
  v4 = SecTaskCreateFromSelf(0);
  if (v4)
  {
    v5 = v4;
    error = 0;
    v6 = SecTaskCopyValueForEntitlement(v4, v3, &error);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      v9 = v8 == CFBooleanGetTypeID() && CFBooleanGetValue(v7) != 0;
      CFRelease(v7);
    }

    else
    {
      v9 = 0;
    }

    if (error)
    {
      CFRelease(error);
    }

    CFRelease(v5);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)isProcessEntitled:(id *)a3 entitlementName:(__CFString *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = *&a3->var0[4];
  *token.val = *a3->var0;
  *&token.val[4] = v5;
  v6 = SecTaskCreateWithAuditToken(0, &token);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  error = 0;
  v8 = SecTaskCopyValueForEntitlement(v6, a4, &error);
  if (error)
  {
    v9 = [MEMORY[0x1E69D4938] sharedConfig];
    v10 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = v10 | 2;
    }

    else
    {
      v11 = v10;
    }

    v12 = [v9 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 & 2;
    }

    if (v13)
    {
      token.val[0] = 138412290;
      *&token.val[1] = error;
      LODWORD(v18) = 12;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
LABEL_13:

        CFRelease(error);
        goto LABEL_14;
      }

      v12 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, &token, v18}];
      free(v14);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
  if (v8)
  {
    v15 = CFGetTypeID(v8);
    v16 = v15 == CFBooleanGetTypeID() && CFBooleanGetValue(v8) != 0;
    CFRelease(v8);
  }

  else
  {
    v16 = 0;
  }

  CFRelease(v7);
  return v16;
}

@end