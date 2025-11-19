@interface AMSUIDMobileGestalt
+ (BOOL)hasCapabilities:(id)a3;
+ (NSString)activePairedSystemVersion;
@end

@implementation AMSUIDMobileGestalt

+ (NSString)activePairedSystemVersion
{
  if (qword_1A27A0 != -1)
  {
    sub_139720();
  }

  v3 = qword_1A27A8;

  return v3;
}

+ (BOOL)hasCapabilities:(id)a3
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v35 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v24;
    v8 = kCFBooleanTrue;
    *&v5 = 138544130;
    v21 = v5;
    v22 = *v24;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        if (([v10 isEqualToString:{&stru_18FAD0, v21}] & 1) == 0)
        {
          v11 = MGCopyAnswerWithError();
          v12 = v11;
          if (v11)
          {
            CFRelease(v11);
          }

          else
          {
            v13 = +[AMSLogConfig sharedConfig];
            if (!v13)
            {
              v13 = +[AMSLogConfig sharedConfig];
            }

            v14 = [v13 OSLogObject];
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v15 = v3;
              v16 = v8;
              v17 = objc_opt_class();
              v18 = AMSLogKey();
              *buf = v21;
              v28 = v17;
              v8 = v16;
              v3 = v15;
              v7 = v22;
              v29 = 2114;
              v30 = v18;
              v31 = 2114;
              v32 = v10;
              v33 = 1026;
              v34 = 0;
              _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to obtain capability: %{public}@, %{public}d", buf, 0x26u);
            }
          }

          if (v12 != v8)
          {
            v19 = 0;
            goto LABEL_19;
          }
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v23 objects:v35 count:16];
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