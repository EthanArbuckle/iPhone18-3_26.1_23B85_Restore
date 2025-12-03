@interface AMSUIDMobileGestalt
+ (BOOL)hasCapabilities:(id)capabilities;
+ (NSString)activePairedSystemVersion;
@end

@implementation AMSUIDMobileGestalt

+ (NSString)activePairedSystemVersion
{
  if (_MergedGlobals_0 != -1)
  {
    dispatch_once(&_MergedGlobals_0, &__block_literal_global_0);
  }

  v3 = qword_1EC43C8C8;

  return v3;
}

void __48__AMSUIDMobileGestalt_activePairedSystemVersion__block_invoke()
{
  v0 = [MEMORY[0x1E69B36C0] sharedInstance];
  v4 = [v0 getActivePairedDevice];

  v1 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69B3640]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = qword_1EC43C8C8;
  qword_1EC43C8C8 = v2;
}

+ (BOOL)hasCapabilities:(id)capabilities
{
  v36 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  capabilitiesCopy = capabilities;
  v4 = [capabilitiesCopy countByEnumeratingWithState:&v23 objects:v35 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v24;
    v8 = *MEMORY[0x1E695E4D0];
    *&v5 = 138544130;
    v21 = v5;
    v22 = *v24;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(capabilitiesCopy);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        if (([v10 isEqualToString:{&stru_1F49D3688, v21}] & 1) == 0)
        {
          v11 = MGCopyAnswerWithError();
          v12 = v11;
          if (v11)
          {
            CFRelease(v11);
          }

          else
          {
            mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
            if (!mEMORY[0x1E698C968])
            {
              mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
            }

            oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
            if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
            {
              v15 = capabilitiesCopy;
              v16 = v8;
              v17 = objc_opt_class();
              v18 = AMSLogKey();
              *buf = v21;
              v28 = v17;
              v8 = v16;
              capabilitiesCopy = v15;
              v7 = v22;
              v29 = 2114;
              v30 = v18;
              v31 = 2114;
              v32 = v10;
              v33 = 1026;
              v34 = 0;
              _os_log_impl(&dword_1CA0E5000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to obtain capability: %{public}@, %{public}d", buf, 0x26u);
            }
          }

          if (v12 != v8)
          {
            v19 = 0;
            goto LABEL_19;
          }
        }
      }

      v6 = [capabilitiesCopy countByEnumeratingWithState:&v23 objects:v35 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v19 = 1;
LABEL_19:

  return v19;
}

@end