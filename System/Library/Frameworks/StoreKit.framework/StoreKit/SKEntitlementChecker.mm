@interface SKEntitlementChecker
+ (BOOL)checkForEntitlement:(id)entitlement;
+ (BOOL)isProcessEntitled:(id *)entitled entitlementName:(__CFString *)name;
@end

@implementation SKEntitlementChecker

+ (BOOL)checkForEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  v4 = SecTaskCreateFromSelf(0);
  if (v4)
  {
    v5 = v4;
    error = 0;
    v6 = SecTaskCopyValueForEntitlement(v4, entitlementCopy, &error);
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

+ (BOOL)isProcessEntitled:(id *)entitled entitlementName:(__CFString *)name
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = *&entitled->var0[4];
  *token.val = *entitled->var0;
  *&token.val[4] = v5;
  v6 = SecTaskCreateWithAuditToken(0, &token);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  error = 0;
  v8 = SecTaskCopyValueForEntitlement(v6, name, &error);
  if (error)
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      v11 = shouldLog | 2;
    }

    else
    {
      v11 = shouldLog;
    }

    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, &token, v18}];
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