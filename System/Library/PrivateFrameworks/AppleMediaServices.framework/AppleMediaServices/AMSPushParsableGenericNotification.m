@interface AMSPushParsableGenericNotification
+ (BOOL)_shouldPresentAlertForPayload:(id)a3;
+ (id)_generateDialogRequestFromPayload:(id)a3 config:(id)a4;
+ (id)_generateNotificationFromPayload:(id)a3 config:(id)a4;
+ (void)handleNotificationPayload:(id)a3 config:(id)a4 bag:(id)a5;
@end

@implementation AMSPushParsableGenericNotification

+ (void)handleNotificationPayload:(id)a3 config:(id)a4 bag:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 clientIdentifier];
  v12 = +[AMSLogConfig sharedPushNotificationConfig];
  if (!v12)
  {
    v12 = +[AMSLogConfig sharedConfig];
  }

  v13 = [v12 OSLogObject];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v8 logKey];
    *buf = 138543874;
    v28 = a1;
    v29 = 2114;
    v30 = v14;
    v31 = 2114;
    v32 = v11;
    _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Posting notification with identifier: %{public}@", buf, 0x20u);
  }

  if ([a1 _shouldPresentAlertForPayload:v8])
  {
    v15 = [a1 _generateDialogRequestFromPayload:v8 config:v9];
    if (v15)
    {
      v16 = [[AMSSystemAlertDialogTask alloc] initWithRequest:v15];
      v17 = [(AMSSystemAlertDialogTask *)v16 present];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __75__AMSPushParsableGenericNotification_handleNotificationPayload_config_bag___block_invoke;
      v23[3] = &unk_1E73B85C8;
      v24 = v10;
      v26 = a1;
      v25 = v8;
      [v17 addFinishBlock:v23];

      v18 = v24;
    }

    else
    {
      v16 = +[AMSLogConfig sharedPushNotificationConfig];
      if (!v16)
      {
        v16 = +[AMSLogConfig sharedConfig];
      }

      v18 = [(AMSSystemAlertDialogTask *)v16 OSLogObject];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v20 = [v8 logKey];
        *buf = 138543618;
        v28 = a1;
        v29 = 2114;
        v30 = v20;
        _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to determine dialog request.", buf, 0x16u);
      }
    }
  }

  else
  {
    v19 = [[AMSUserNotification alloc] initWithPayload:v8 andConfig:v9];
    if (v19)
    {
      v15 = v19;
      v16 = [AMSUserNotificationCenter postNotification:v19 bag:v10 centerBundleId:v11];
      [(AMSSystemAlertDialogTask *)v16 waitUntilFinished];
    }

    else
    {
      v16 = +[AMSLogConfig sharedPushNotificationConfig];
      if (!v16)
      {
        v16 = +[AMSLogConfig sharedConfig];
      }

      v21 = [(AMSSystemAlertDialogTask *)v16 OSLogObject];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = [v8 logKey];
        *buf = 138543618;
        v28 = a1;
        v29 = 2114;
        v30 = v22;
        _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to determine user notification.", buf, 0x16u);
      }

      v15 = 0;
    }
  }
}

void __75__AMSPushParsableGenericNotification_handleNotificationPayload_config_bag___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [[AMSHandleDialogResultTask alloc] initWithResult:v3 bag:*(a1 + 32)];

  [(AMSTask *)v4 setRunMode:1];
  v5 = [(AMSHandleDialogResultTask *)v4 perform];
  v11 = 0;
  [v5 resultWithError:&v11];
  v6 = v11;

  if (v6)
  {
    v7 = +[AMSLogConfig sharedPushNotificationConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 48);
      v10 = [*(a1 + 40) logKey];
      *buf = 138543874;
      v13 = v9;
      v14 = 2114;
      v15 = v10;
      v16 = 2114;
      v17 = v6;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Dialog handling failed with error: %{public}@", buf, 0x20u);
    }
  }
}

+ (BOOL)_shouldPresentAlertForPayload:(id)a3
{
  v3 = a3;
  v4 = [v3 clientIdentifier];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [v3 alertType] != 2;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

+ (id)_generateDialogRequestFromPayload:(id)a3 config:(id)a4
{
  v4 = a3;
  v5 = [v4 aps];
  v6 = [v5 objectForKeyedSubscript:@"alert"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;

    if (!v7)
    {
      v9 = 0;
      goto LABEL_25;
    }

    v8 = [v7 objectForKeyedSubscript:@"body"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v8;
    }

    else
    {
      v6 = 0;
    }

    v10 = [v4 aps];
    v11 = [v10 objectForKeyedSubscript:@"uuid"];

    v12 = [v7 objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = [v7 objectForKeyedSubscript:@"ok"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;

      if (v15)
      {
        v16 = v15;
        v17 = v16;
LABEL_16:

        v19 = [v7 objectForKeyedSubscript:@"cancel"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        v21 = MEMORY[0x1E695DFF8];
        v22 = [v4 URLString];
        v23 = [v21 URLWithString:v22];

        v9 = [[AMSDialogRequest alloc] initWithTitle:v13 message:v6];
        [(AMSDialogRequest *)v9 setIdentifier:v11];
        if ([v20 length])
        {
          v24 = [AMSDialogAction actionWithTitle:v20 style:2];
          [(AMSDialogRequest *)v9 addButtonAction:v24];
        }

        if ([v17 length])
        {
          v25 = [AMSDialogAction actionWithTitle:v17];
          [v25 setDeepLink:v23];
          [v25 setInferLinkDestination:0];
          [(AMSDialogRequest *)v9 addButtonAction:v25];
          [(AMSDialogRequest *)v9 setDefaultAction:v25];
        }

        goto LABEL_24;
      }
    }

    else
    {
    }

    v18 = [MEMORY[0x1E696AAE8] ams_AppleMediaServicesBundle];
    v17 = [v18 localizedStringForKey:@"OK" value:&stru_1F071BA78 table:0];

    v16 = 0;
    goto LABEL_16;
  }

  v7 = 0;
  v9 = 0;
LABEL_24:

LABEL_25:

  return v9;
}

+ (id)_generateNotificationFromPayload:(id)a3 config:(id)a4
{
  v37[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 aps];
  v8 = [v7 objectForKeyedSubscript:@"alert"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v9 = 0;
    goto LABEL_6;
  }

  v9 = v8;

  if (!v9)
  {
LABEL_6:
    v12 = 0;
    goto LABEL_22;
  }

  v10 = [v9 objectForKeyedSubscript:@"body"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v13 = [v9 objectForKeyedSubscript:@"title"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = [v9 objectForKeyedSubscript:@"ok"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_15;
  }

  v16 = v15;

  if (!v16)
  {
LABEL_15:
    v19 = [MEMORY[0x1E696AAE8] ams_AppleMediaServicesBundle];
    v18 = [v19 localizedStringForKey:@"OK" value:&stru_1F071BA78 table:0];

    v17 = 0;
    goto LABEL_16;
  }

  v17 = v16;
  v18 = v17;
LABEL_16:

  v20 = MEMORY[0x1E695DFF8];
  v21 = [v5 URLString];
  v22 = [v20 URLWithString:v21];

  v23 = [v5 clientIdentifier];
  if ([v14 length])
  {
    v24 = v14;
    v25 = v18;
    v35 = v24;
    v12 = [[AMSUserNotification alloc] initWithTitle:v24];
    v36 = v11;
    [(AMSUserNotification *)v12 setInformativeText:v11];
    v26 = [v5 logKey];
    [(AMSUserNotification *)v12 setLogKey:v26];

    v27 = [v5 account];
    [(AMSUserNotification *)v12 setAccount:v27];

    [(AMSUserNotification *)v12 setCenterBundleIdentifier:v23];
    v28 = [v6 userNotificationExtensionId];
    [(AMSUserNotification *)v12 setCategoryIdentifier:v28];

    v29 = [v5 aps];
    v30 = [v29 objectForKeyedSubscript:@"uuid"];

    if ([v30 length])
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.ams+%@", v30];
      [(AMSUserNotification *)v12 setIdentifier:v31];
    }

    v32 = [[AMSUserNotificationAction alloc] initWithTitle:v18];
    [(AMSUserNotificationAction *)v32 setDefaultURL:v22];
    v37[0] = v32;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
    [(AMSUserNotification *)v12 setButtonActions:v33];

    v18 = v25;
    [(AMSUserNotification *)v12 setDefaultAction:v32];

    v14 = v35;
    v11 = v36;
  }

  else
  {
    v12 = 0;
  }

LABEL_22:

  return v12;
}

@end