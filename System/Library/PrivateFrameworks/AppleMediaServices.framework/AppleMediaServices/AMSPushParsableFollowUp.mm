@interface AMSPushParsableFollowUp
+ (BOOL)_shouldAllowFollowUp:(id)a3 bag:(id)a4;
+ (BOOL)_shouldClearFollowUpFromPayload:(id)a3;
+ (BOOL)isDeviceOfferNotification:(id)a3;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)_createFollowUpItemFromNotification:(id)a3;
+ (id)_createFollowUpItemFromPayload:(id)a3;
+ (id)_createNotificationFromFollowUpItem:(id)a3;
+ (id)_dateFromString:(id)a3;
+ (id)createBagForSubProfile;
+ (void)_performClearWithPayload:(id)a3;
+ (void)_performPostWithPayload:(id)a3 bag:(id)a4;
+ (void)handleNotificationPayload:(id)a3 config:(id)a4 bag:(id)a5;
+ (void)removeDeviceOfferWithPayload:(id)a3 logKey:(id)a4 bag:(id)a5;
+ (void)userNotification:(id)a3 selectedButtonAction:(id)a4 bag:(id)a5;
@end

@implementation AMSPushParsableFollowUp

+ (void)removeDeviceOfferWithPayload:(id)a3 logKey:(id)a4 bag:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 clientIdentifier];
  v11 = +[AMSLogConfig sharedFollowUpConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  v12 = [v11 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v33 = 138543874;
    *&v33[4] = objc_opt_class();
    *&v33[12] = 2114;
    *&v33[14] = v8;
    *&v33[22] = 2114;
    v34 = v10;
    v13 = *&v33[4];
    _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Attempting to clear device offer with notification for client identifier: %{public}@", v33, 0x20u);
  }

  if ([(__CFString *)v10 isEqualToString:AMSDeviceOfferFollowUpIdentifierAppleMusic])
  {
    v14 = &AMSDeviceOfferIdentifierAppleMusic;
LABEL_9:
    v15 = *v14;
    goto LABEL_15;
  }

  if ([(__CFString *)v10 isEqualToString:AMSDeviceOfferFollowUpIdentifieriCloud])
  {
    v14 = &AMSDeviceOfferIdentifieriCloud;
    goto LABEL_9;
  }

  v16 = +[AMSLogConfig sharedFollowUpConfig];
  if (!v16)
  {
    v16 = +[AMSLogConfig sharedConfig];
  }

  v17 = [v16 OSLogObject];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    *v33 = 138543874;
    *&v33[4] = v18;
    *&v33[12] = 2114;
    *&v33[14] = v8;
    *&v33[22] = 2114;
    v34 = v10;
    v19 = v18;
    _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Failed to recognize client identifier: %{public}@", v33, 0x20u);
  }

  v15 = 0;
LABEL_15:
  v20 = [v7 account];
  if (v20)
  {
    if (v9 && v15)
    {
      v21 = +[AMSLogConfig sharedFollowUpConfig];
      if (!v21)
      {
        v21 = +[AMSLogConfig sharedConfig];
      }

      v22 = [v21 OSLogObject];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        *v33 = 138543874;
        *&v33[4] = v23;
        *&v33[12] = 2114;
        *&v33[14] = v8;
        *&v33[22] = 2114;
        v34 = v15;
        v24 = v23;
        _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Attempting to clear device offer with notification for identifier: %{public}@", v33, 0x20u);
      }

      [AMSDevice removeDeviceOfferWithIdentifier:v15 account:v20 bag:v9 logKey:v8];
      goto LABEL_33;
    }
  }

  else
  {
    v25 = +[AMSLogConfig sharedFollowUpConfig];
    if (!v25)
    {
      v25 = +[AMSLogConfig sharedConfig];
    }

    v26 = [v25 OSLogObject];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = objc_opt_class();
      *v33 = 138543618;
      *&v33[4] = v27;
      *&v33[12] = 2114;
      *&v33[14] = v8;
      v28 = v27;
      _os_log_impl(&dword_192869000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Clear device offer with notification failed for no account", v33, 0x16u);
    }
  }

  v29 = +[AMSLogConfig sharedFollowUpConfig];
  if (!v29)
  {
    v29 = +[AMSLogConfig sharedConfig];
  }

  v30 = [v29 OSLogObject];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = objc_opt_class();
    *v33 = 138543618;
    *&v33[4] = v31;
    *&v33[12] = 2114;
    *&v33[14] = v8;
    v32 = v31;
    _os_log_impl(&dword_192869000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Failed to clear device offer with notification", v33, 0x16u);
  }

LABEL_33:
}

+ (BOOL)isDeviceOfferNotification:(id)a3
{
  v3 = [a3 clientIdentifier];
  if ([v3 isEqualToString:AMSDeviceOfferFollowUpIdentifierAppleMusic])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:AMSDeviceOfferFollowUpIdentifieriCloud];
  }

  return v4;
}

+ (void)handleNotificationPayload:(id)a3 config:(id)a4 bag:(id)a5
{
  v8 = a3;
  v7 = a5;
  if ([a1 _shouldAllowFollowUp:v8 bag:v7])
  {
    if ([a1 _shouldClearFollowUpFromPayload:v8])
    {
      if ([a1 isDeviceOfferNotification:v8])
      {
        [a1 removeDeviceOfferWithPayload:v8 logKey:0 bag:v7];
      }

      else
      {
        [a1 _performClearWithPayload:v8];
      }
    }

    else
    {
      [a1 _performPostWithPayload:v8 bag:v7];
    }
  }
}

+ (void)userNotification:(id)a3 selectedButtonAction:(id)a4 bag:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[AMSLogConfig sharedFollowUpConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  v12 = [v11 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = v13;
    v15 = [v8 logKey];
    *buf = 138543618;
    v30 = v13;
    v31 = 2114;
    v32 = v15;
    _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Handling follow up response.", buf, 0x16u);
  }

  v16 = [a1 _createFollowUpItemFromNotification:v8];
  if (v16)
  {
    v17 = [v9 identifier];
    v18 = [v16 actions];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __69__AMSPushParsableFollowUp_userNotification_selectedButtonAction_bag___block_invoke;
    v27[3] = &unk_1E73BB9E8;
    v28 = v17;
    v19 = v17;
    v20 = [v18 ams_firstObjectPassingTest:v27];

    v21 = [v16 account];
    v22 = [v20 performActionsWithBag:v10 account:v21];

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __69__AMSPushParsableFollowUp_userNotification_selectedButtonAction_bag___block_invoke_2;
    v24[3] = &unk_1E73BBA10;
    v26 = a1;
    v25 = v8;
    [v22 addErrorBlock:v24];
    v23 = [v20 postMetricsWithBag:v10];
    [v23 waitUntilFinished];
    [v22 waitUntilFinished];
  }
}

uint64_t __69__AMSPushParsableFollowUp_userNotification_selectedButtonAction_bag___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

void __69__AMSPushParsableFollowUp_userNotification_selectedButtonAction_bag___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedFollowUpConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v7 logKey];
    v10 = AMSLogableError(v3);
    v11 = 138543874;
    v12 = v6;
    v13 = 2114;
    v14 = v9;
    v15 = 2114;
    v16 = v10;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to perform follow up action. Error: %{public}@", &v11, 0x20u);
  }
}

+ (NSString)bagSubProfile
{
  if (_MergedGlobals_145 != -1)
  {
    dispatch_once(&_MergedGlobals_145, &__block_literal_global_121);
  }

  v3 = qword_1ED6E30C8;

  return v3;
}

void __40__AMSPushParsableFollowUp_bagSubProfile__block_invoke()
{
  v0 = qword_1ED6E30C8;
  qword_1ED6E30C8 = @"AMSFollowUp";
}

+ (NSString)bagSubProfileVersion
{
  if (qword_1ED6E30D0 != -1)
  {
    dispatch_once(&qword_1ED6E30D0, &__block_literal_global_53);
  }

  v3 = qword_1ED6E30D8;

  return v3;
}

void __47__AMSPushParsableFollowUp_bagSubProfileVersion__block_invoke()
{
  v0 = qword_1ED6E30D8;
  qword_1ED6E30D8 = @"1";
}

+ (id)createBagForSubProfile
{
  v2 = [objc_opt_class() bagSubProfile];
  v3 = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:v2 profileVersion:v3];

  return v4;
}

+ (void)_performClearWithPayload:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v28 = objc_alloc_init(AMSFollowUp);
  v4 = [v3 clientIdentifier];
  v5 = [v3 aps];
  v6 = [v5 objectForKeyedSubscript:@"deviceGroup"];

  if (objc_opt_respondsToSelector() & 1) != 0 && ([v6 BOOLValue])
  {
    v7 = 0;
  }

  else
  {
    v7 = [v3 account];
  }

  v8 = +[AMSLogConfig sharedFollowUpConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = [v3 logKey];
    *buf = 138543874;
    v31 = v10;
    v32 = 2114;
    v33 = v12;
    v34 = 2114;
    v35 = v4;
    _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Clearing follow up with identifier: %{public}@", buf, 0x20u);
  }

  v13 = [(AMSFollowUp *)v28 clearFollowUpWithIdentifier:v4 account:v7];
  v29 = 0;
  v14 = [v13 resultWithError:&v29];
  v15 = v29;
  v16 = +[AMSLogConfig sharedFollowUpConfig];
  v17 = v16;
  if (v14)
  {
    if (!v16)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    v18 = [v17 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v26 = v7;
      v20 = v19;
      v21 = [v3 logKey];
      *buf = 138543618;
      v31 = v19;
      v32 = 2114;
      v33 = v21;
      _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully cleared follow up!", buf, 0x16u);

      v7 = v26;
    }
  }

  else
  {
    if (!v16)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    v18 = [v17 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      v25 = v22;
      v23 = [v3 logKey];
      AMSLogableError(v15);
      v24 = v27 = v7;
      *buf = 138543874;
      v31 = v22;
      v32 = 2114;
      v33 = v23;
      v34 = 2114;
      v35 = v24;
      _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to clear follow up. Error = %{public}@", buf, 0x20u);

      v7 = v27;
    }
  }
}

+ (void)_performPostWithPayload:(id)a3 bag:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[AMSLogConfig sharedFollowUpConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = [v5 logKey];
    v11 = [v5 clientIdentifier];
    *buf = 138543874;
    v30 = v8;
    v31 = 2114;
    v32 = v10;
    v33 = 2114;
    v34 = v11;
    _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Posting follow up with identifier: %{public}@", buf, 0x20u);
  }

  v12 = objc_alloc_init(AMSFollowUp);
  v13 = [a1 _createFollowUpItemFromPayload:v5];
  v14 = [(AMSFollowUp *)v12 postFollowUpItem:v13];
  v28 = 0;
  v15 = [v14 resultWithError:&v28];
  v16 = v28;
  v17 = [v15 integerValue];

  v18 = +[AMSLogConfig sharedFollowUpConfig];
  v19 = v18;
  if (v16)
  {
    if (!v18)
    {
      v19 = +[AMSLogConfig sharedConfig];
    }

    v20 = [v19 OSLogObject];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = objc_opt_class();
      v26 = v21;
      v22 = [v5 logKey];
      v23 = AMSLogableError(v16);
      *buf = 138543874;
      v30 = v21;
      v31 = 2114;
      v32 = v22;
      v33 = 2114;
      v34 = v23;
      _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to post follow up. Error: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    if (!v18)
    {
      v19 = +[AMSLogConfig sharedConfig];
    }

    v20 = [v19 OSLogObject];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_opt_class();
      v27 = v24;
      v25 = [v5 logKey];
      *buf = 138543874;
      v30 = v24;
      v31 = 2114;
      v32 = v25;
      v33 = 2048;
      v34 = v17;
      _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully posted follow up! Result = %ld", buf, 0x20u);
    }
  }
}

+ (BOOL)_shouldAllowFollowUp:(id)a3 bag:(id)a4
{
  v48[6] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MEMORY[0x1E695DFD8];
  v48[0] = AMSDeviceOfferFollowUpIdentifierAppleMusic;
  v48[1] = AMSDeviceOfferFollowUpIdentifierAppleMusicAndiCloud;
  v48[2] = AMSDeviceOfferFollowUpIdentifieriCloud;
  v48[3] = @"com.apple.AMSFollowUpIdentifier.Billing";
  v48[4] = @"com.apple.AMSFollowUpIdentifier.HardwareOffer";
  v48[5] = @"com.apple.AMSFollowUpIdentifier.HardwareOffer.Fitness";
  v7 = MEMORY[0x1E695DEC8];
  v8 = a4;
  v9 = [v7 arrayWithObjects:v48 count:6];
  v10 = [v6 setWithArray:v9];

  v11 = [v8 arrayForKey:@"follow-up-identifier-allow-list"];

  v41 = 0;
  v12 = [v11 valueWithError:&v41];
  v13 = v41;

  v14 = [v12 count];
  v15 = 0x1E73B0000uLL;
  v16 = +[AMSLogConfig sharedFollowUpConfig];
  v17 = v16;
  if (v14)
  {
    if (!v16)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    v18 = [v17 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v20 = v19;
      v21 = [v5 logKey];
      *buf = 138543618;
      v43 = v19;
      v44 = 2114;
      v45 = v21;
      _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Bag did provided an allow-list, merging the allowed identifiers", buf, 0x16u);

      v15 = 0x1E73B0000;
    }

    [v10 setByAddingObjectsFromArray:v12];
    v10 = v17 = v10;
  }

  else
  {
    if (!v16)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    v22 = [v17 OSLogObject];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      v40 = v23;
      [v5 logKey];
      v25 = v24 = v13;
      v26 = AMSLogableError(v24);
      *buf = 138543874;
      v43 = v23;
      v15 = 0x1E73B0000uLL;
      v44 = 2114;
      v45 = v25;
      v46 = 2114;
      v47 = v26;
      _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Bag did not provide an allow-list : %{public}@", buf, 0x20u);

      v13 = v24;
    }
  }

  v27 = [v5 clientIdentifier];
  v28 = [v10 containsObject:v27];

  if ((v28 & 1) == 0)
  {
    v30 = [*(v15 + 3552) sharedFollowUpConfig];
    if (!v30)
    {
      v30 = [*(v15 + 3552) sharedConfig];
    }

    v31 = [v30 OSLogObject];
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v32 = objc_opt_class();
    v33 = v32;
    v34 = [v5 logKey];
    [v5 clientIdentifier];
    v36 = v35 = v13;
    *buf = 138543874;
    v43 = v32;
    v44 = 2114;
    v45 = v34;
    v46 = 2114;
    v47 = v36;
    v37 = "%{public}@: [%{public}@] Follow up DENIED due to denylisted identifier: %{public}@";
    goto LABEL_23;
  }

  if (([v5 isAccountTypeActive] & 1) == 0)
  {
    v30 = [*(v15 + 3552) sharedFollowUpConfig];
    if (!v30)
    {
      v30 = [*(v15 + 3552) sharedConfig];
    }

    v31 = [v30 OSLogObject];
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v38 = objc_opt_class();
    v33 = v38;
    v34 = [v5 logKey];
    [v5 clientIdentifier];
    v36 = v35 = v13;
    *buf = 138543874;
    v43 = v38;
    v44 = 2114;
    v45 = v34;
    v46 = 2114;
    v47 = v36;
    v37 = "%{public}@: [%{public}@] Follow up DENIED due to inactive account %{public}@";
LABEL_23:
    _os_log_impl(&dword_192869000, v31, OS_LOG_TYPE_ERROR, v37, buf, 0x20u);

    v13 = v35;
LABEL_24:

    v29 = 0;
    goto LABEL_25;
  }

  v29 = 1;
LABEL_25:

  return v29;
}

+ (BOOL)_shouldClearFollowUpFromPayload:(id)a3
{
  v3 = [a3 aps];
  v4 = [v3 objectForKeyedSubscript:@"clear"];

  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_createFollowUpItemFromPayload:(id)a3
{
  v3 = a3;
  v4 = [v3 clientIdentifier];
  v5 = [v3 priority];
  v6 = [v3 logKey];
  v7 = [AMSFollowUpItem alloc];
  v8 = [v3 aps];
  v9 = [v3 account];

  v10 = [(AMSFollowUpItem *)v7 initWithIdentifier:v4 jsonDictionary:v8 account:v9 priority:v5 logKey:v6];

  return v10;
}

+ (id)_createFollowUpItemFromNotification:(id)a3
{
  v71 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 title];
  v5 = [v3 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"expirationDate"];

  v7 = [v3 informativeText];
  v56 = [v3 logKey];
  if ([v6 length])
  {
    v8 = [AMSPushParsableFollowUp _dateFromString:v6];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v3 userInfo];
  v10 = [v9 mutableCopy];

  v11 = [v10 objectForKeyedSubscript:@"priority"];

  if (v11)
  {
    v12 = [v10 objectForKeyedSubscript:@"priority"];
    v11 = [v12 integerValue];

    [v10 removeObjectForKey:@"priority"];
  }

  v13 = [v10 objectForKeyedSubscript:@"metrics"];

  if (v13)
  {
    v55 = [v10 objectForKeyedSubscript:@"metrics"];
    [v10 removeObjectForKey:@"metrics"];
  }

  else
  {
    v55 = 0;
  }

  v14 = [v10 objectForKeyedSubscript:@"accountDSID"];

  if (v14)
  {
    v15 = [v10 objectForKeyedSubscript:@"accountDSID"];
    if (v15)
    {
      v16 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
      v54 = [v16 ams_iTunesAccountWithDSID:v15];
    }

    else
    {
      v54 = 0;
    }

    [v10 removeObjectForKey:@"accountDSID"];
  }

  else
  {
    v54 = 0;
  }

  v17 = [v10 objectForKeyedSubscript:@"expirationDateHidden"];

  if (v17)
  {
    v18 = [v10 objectForKeyedSubscript:@"expirationDateHidden"];
    if (objc_opt_respondsToSelector())
    {
      v17 = [v18 BOOLValue];
    }

    else
    {
      v17 = 0;
    }

    [v10 removeObjectForKey:@"expirationDateHidden"];
  }

  v19 = [v3 userInfo];
  v20 = [v19 objectForKeyedSubscript:@"iconImageName"];

  if (v20)
  {
    [v10 removeObjectForKey:@"iconImageName"];
  }

  v51 = v6;
  v21 = [AMSFollowUpItem alloc];
  v22 = [v3 identifier];
  v23 = [(AMSFollowUpItem *)v21 initWithIdentifier:v22 account:v54 priority:v11];

  v52 = v4;
  [(AMSFollowUpItem *)v23 setTitle:v4];
  [(AMSFollowUpItem *)v23 setExpirationDateHidden:v17];
  [(AMSFollowUpItem *)v23 setBundleIconName:0];
  v49 = v8;
  [(AMSFollowUpItem *)v23 setExpirationDate:v8];
  v50 = v7;
  [(AMSFollowUpItem *)v23 setInformativeText:v7];
  v24 = v56;
  [(AMSFollowUpItem *)v23 setLogKey:v56];
  [(AMSFollowUpItem *)v23 setUserInfo:v10];
  if (v55)
  {
    v25 = [[AMSMetricsEvent alloc] initWithUnderlyingDictionary:v55];
    [(AMSFollowUpItem *)v23 setMetricsEvent:v25];
  }

  v62 = v23;
  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v53 = v3;
  obj = [v3 buttonActions];
  v63 = [obj countByEnumeratingWithState:&v66 objects:v70 count:16];
  if (v63)
  {
    v59 = *v67;
    v60 = v26;
    v61 = v10;
    do
    {
      for (i = 0; i != v63; ++i)
      {
        if (*v67 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v66 + 1) + 8 * i);
        v64 = [v28 defaultURL];
        v65 = [v28 title];
        v29 = [v28 userInfo];
        v30 = [v29 mutableCopy];

        v31 = [v30 objectForKeyedSubscript:@"metrics"];
        if (v31)
        {
          [v30 removeObjectForKey:@"metrics"];
        }

        v32 = [v30 objectForKeyedSubscript:@"serverActionUrl"];
        if (v32)
        {
          [v30 removeObjectForKey:@"serverActionUrl"];
          v33 = [v32 objectForKeyedSubscript:@"url"];
          v34 = [v32 objectForKeyedSubscript:@"method"];
          v35 = [v32 objectForKeyedSubscript:@"body"];
          if (v33)
          {
            v36 = [MEMORY[0x1E695DFF8] URLWithString:v33];
            if (v36)
            {
              v37 = v36;
              v38 = [objc_alloc(MEMORY[0x1E695AC18]) initWithURL:v36];
              v39 = v38;
              if (v34)
              {
                v40 = v34;
              }

              else
              {
                v40 = @"GET";
              }

              [v38 setHTTPMethod:v40];
              [v35 dataUsingEncoding:4];
              v41 = v57 = v35;
              [v39 setHTTPBody:v41];

              v35 = v57;
            }

            else
            {
              v39 = 0;
            }

            v24 = v56;
          }

          else
          {
            v39 = 0;
          }
        }

        else
        {
          v39 = 0;
        }

        v42 = [AMSFollowUpAction alloc];
        v43 = [(AMSFollowUpItem *)v62 identifier];
        v44 = [(AMSFollowUpAction *)v42 initWithLabel:v65 parentIdentifier:v43];

        v45 = [v28 identifier];
        [(AMSFollowUpAction *)v44 setIdentifier:v45];

        [(AMSFollowUpAction *)v44 setUrl:v64];
        v46 = [v30 mutableCopy];
        [(AMSFollowUpAction *)v44 setUserInfo:v46];

        [(AMSFollowUpAction *)v44 setRequest:v39];
        [(AMSFollowUpAction *)v44 setLogKey:v24];
        if (v31)
        {
          v47 = [[AMSMetricsEvent alloc] initWithUnderlyingDictionary:v31];
          [(AMSFollowUpAction *)v44 setMetricsEvent:v47];
        }

        v26 = v60;
        [v60 addObject:v44];

        v10 = v61;
      }

      v63 = [obj countByEnumeratingWithState:&v66 objects:v70 count:16];
    }

    while (v63);
  }

  if ([v26 count])
  {
    [(AMSFollowUpItem *)v62 setActions:v26];
  }

  return v62;
}

+ (id)_createNotificationFromFollowUpItem:(id)a3
{
  v67 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 title];
  v5 = [v3 informativeText];
  v6 = [v3 metricsEvent];
  v7 = [v6 underlyingDictionary];

  v8 = [v3 logKey];
  v9 = [v3 expirationDate];

  if (v9)
  {
    v10 = [MEMORY[0x1E696AB78] ams_serverFriendlyLocalTimeZoneFormatter];
    v11 = [v3 expirationDate];
    v12 = [v10 stringFromDate:v11];
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "priority")}];
  [v13 setObject:v14 forKeyedSubscript:@"priority"];

  if (v7)
  {
    [v13 setObject:v7 forKeyedSubscript:@"metrics"];
  }

  v15 = [v3 account];
  v16 = [v15 ams_DSID];

  if (v16)
  {
    v17 = [v3 account];
    v18 = [v17 ams_DSID];
    [v13 setObject:v18 forKeyedSubscript:@"accountDSID"];
  }

  v19 = [v3 bundleIconName];

  if (v19)
  {
    v20 = [v3 bundleIconName];
    [v13 setObject:v20 forKeyedSubscript:@"iconImageName"];
  }

  v59 = v7;
  if ([v3 isExpirationDateHidden])
  {
    v21 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "isExpirationDateHidden")}];
    [v13 setObject:v21 forKeyedSubscript:@"expirationDateHidden"];
  }

  v53 = v12;
  [v13 setObject:v12 forKeyedSubscript:@"expirationDate"];
  v56 = v4;
  v22 = [[AMSUserNotification alloc] initWithTitle:v4 intent:1];
  v23 = [v3 identifier];
  [(AMSUserNotification *)v22 setIdentifier:v23];

  [(AMSUserNotification *)v22 setCenterBundleIdentifier:@"com.apple.appstoreagent"];
  v55 = v5;
  [(AMSUserNotification *)v22 setInformativeText:v5];
  v54 = v8;
  [(AMSUserNotification *)v22 setLogKey:v8];
  v51 = v22;
  v52 = v13;
  [(AMSUserNotification *)v22 setUserInfo:v13];
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = [v3 actions];
  v61 = [obj countByEnumeratingWithState:&v62 objects:v66 count:16];
  if (v61)
  {
    v60 = *v63;
    v58 = v24;
    do
    {
      for (i = 0; i != v61; ++i)
      {
        if (*v63 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v62 + 1) + 8 * i);
        v27 = [v26 url];
        v28 = [v26 label];
        v29 = [v26 userInfo];
        v30 = [v29 mutableCopy];
        v31 = v30;
        if (v30)
        {
          v32 = v30;
        }

        else
        {
          v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
        }

        v33 = v32;

        v34 = [v3 metricsEvent];

        if (v34)
        {
          [v33 setObject:v59 forKeyedSubscript:@"metrics"];
        }

        v35 = [v26 request];

        if (v35)
        {
          v36 = v3;
          v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v38 = [v26 request];
          v39 = [v38 URL];
          v40 = [v39 absoluteString];
          [v37 setObject:v40 forKeyedSubscript:@"url"];

          v41 = [v26 request];
          v42 = [v41 HTTPMethod];
          [v37 setObject:v42 forKeyedSubscript:@"method"];

          v43 = [v26 request];
          v44 = [v43 HTTPBody];

          if (v44)
          {
            v45 = objc_alloc(MEMORY[0x1E696AEC0]);
            v46 = [v26 request];
            v47 = [v46 HTTPBody];
            v48 = [v45 initWithData:v47 encoding:4];

            if (v48)
            {
              [v37 setObject:v48 forKeyedSubscript:@"body"];
            }
          }

          [v33 setObject:v37 forKeyedSubscript:@"serverActionUrl"];

          v3 = v36;
          v24 = v58;
        }

        v49 = [[AMSUserNotificationAction alloc] initWithTitle:v28];
        [(AMSUserNotificationAction *)v49 setDefaultURL:v27];
        [(AMSUserNotificationAction *)v49 setUserInfo:v33];
        [v24 addObject:v49];
      }

      v61 = [obj countByEnumeratingWithState:&v62 objects:v66 count:16];
    }

    while (v61);
  }

  if ([v24 count])
  {
    [(AMSUserNotification *)v51 setButtonActions:v24];
  }

  return v51;
}

+ (id)_dateFromString:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AB78] ams_serverFriendlyFormatter];
  v5 = [v4 dateFromString:v3];

  if (!v5)
  {
    v6 = [MEMORY[0x1E696AB78] ams_serverFriendlyLocalTimeZoneFormatter];
    v5 = [v6 dateFromString:v3];
  }

  return v5;
}

@end