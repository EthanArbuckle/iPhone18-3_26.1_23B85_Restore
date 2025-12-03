@interface AMSPushParsableFollowUp
+ (BOOL)_shouldAllowFollowUp:(id)up bag:(id)bag;
+ (BOOL)_shouldClearFollowUpFromPayload:(id)payload;
+ (BOOL)isDeviceOfferNotification:(id)notification;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)_createFollowUpItemFromNotification:(id)notification;
+ (id)_createFollowUpItemFromPayload:(id)payload;
+ (id)_createNotificationFromFollowUpItem:(id)item;
+ (id)_dateFromString:(id)string;
+ (id)createBagForSubProfile;
+ (void)_performClearWithPayload:(id)payload;
+ (void)_performPostWithPayload:(id)payload bag:(id)bag;
+ (void)handleNotificationPayload:(id)payload config:(id)config bag:(id)bag;
+ (void)removeDeviceOfferWithPayload:(id)payload logKey:(id)key bag:(id)bag;
+ (void)userNotification:(id)notification selectedButtonAction:(id)action bag:(id)bag;
@end

@implementation AMSPushParsableFollowUp

+ (void)removeDeviceOfferWithPayload:(id)payload logKey:(id)key bag:(id)bag
{
  v35 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  keyCopy = key;
  bagCopy = bag;
  clientIdentifier = [payloadCopy clientIdentifier];
  v11 = +[AMSLogConfig sharedFollowUpConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v11 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *v33 = 138543874;
    *&v33[4] = objc_opt_class();
    *&v33[12] = 2114;
    *&v33[14] = keyCopy;
    *&v33[22] = 2114;
    v34 = clientIdentifier;
    v13 = *&v33[4];
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Attempting to clear device offer with notification for client identifier: %{public}@", v33, 0x20u);
  }

  if ([(__CFString *)clientIdentifier isEqualToString:AMSDeviceOfferFollowUpIdentifierAppleMusic])
  {
    v14 = &AMSDeviceOfferIdentifierAppleMusic;
LABEL_9:
    v15 = *v14;
    goto LABEL_15;
  }

  if ([(__CFString *)clientIdentifier isEqualToString:AMSDeviceOfferFollowUpIdentifieriCloud])
  {
    v14 = &AMSDeviceOfferIdentifieriCloud;
    goto LABEL_9;
  }

  v16 = +[AMSLogConfig sharedFollowUpConfig];
  if (!v16)
  {
    v16 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v16 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    *v33 = 138543874;
    *&v33[4] = v18;
    *&v33[12] = 2114;
    *&v33[14] = keyCopy;
    *&v33[22] = 2114;
    v34 = clientIdentifier;
    v19 = v18;
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Failed to recognize client identifier: %{public}@", v33, 0x20u);
  }

  v15 = 0;
LABEL_15:
  account = [payloadCopy account];
  if (account)
  {
    if (bagCopy && v15)
    {
      v21 = +[AMSLogConfig sharedFollowUpConfig];
      if (!v21)
      {
        v21 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [v21 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        *v33 = 138543874;
        *&v33[4] = v23;
        *&v33[12] = 2114;
        *&v33[14] = keyCopy;
        *&v33[22] = 2114;
        v34 = v15;
        v24 = v23;
        _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Attempting to clear device offer with notification for identifier: %{public}@", v33, 0x20u);
      }

      [AMSDevice removeDeviceOfferWithIdentifier:v15 account:account bag:bagCopy logKey:keyCopy];
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

    oSLogObject4 = [v25 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
    {
      v27 = objc_opt_class();
      *v33 = 138543618;
      *&v33[4] = v27;
      *&v33[12] = 2114;
      *&v33[14] = keyCopy;
      v28 = v27;
      _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Clear device offer with notification failed for no account", v33, 0x16u);
    }
  }

  v29 = +[AMSLogConfig sharedFollowUpConfig];
  if (!v29)
  {
    v29 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject5 = [v29 OSLogObject];
  if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
  {
    v31 = objc_opt_class();
    *v33 = 138543618;
    *&v33[4] = v31;
    *&v33[12] = 2114;
    *&v33[14] = keyCopy;
    v32 = v31;
    _os_log_impl(&dword_192869000, oSLogObject5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Failed to clear device offer with notification", v33, 0x16u);
  }

LABEL_33:
}

+ (BOOL)isDeviceOfferNotification:(id)notification
{
  clientIdentifier = [notification clientIdentifier];
  if ([clientIdentifier isEqualToString:AMSDeviceOfferFollowUpIdentifierAppleMusic])
  {
    v4 = 1;
  }

  else
  {
    v4 = [clientIdentifier isEqualToString:AMSDeviceOfferFollowUpIdentifieriCloud];
  }

  return v4;
}

+ (void)handleNotificationPayload:(id)payload config:(id)config bag:(id)bag
{
  payloadCopy = payload;
  bagCopy = bag;
  if ([self _shouldAllowFollowUp:payloadCopy bag:bagCopy])
  {
    if ([self _shouldClearFollowUpFromPayload:payloadCopy])
    {
      if ([self isDeviceOfferNotification:payloadCopy])
      {
        [self removeDeviceOfferWithPayload:payloadCopy logKey:0 bag:bagCopy];
      }

      else
      {
        [self _performClearWithPayload:payloadCopy];
      }
    }

    else
    {
      [self _performPostWithPayload:payloadCopy bag:bagCopy];
    }
  }
}

+ (void)userNotification:(id)notification selectedButtonAction:(id)action bag:(id)bag
{
  v33 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  actionCopy = action;
  bagCopy = bag;
  v11 = +[AMSLogConfig sharedFollowUpConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v11 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = v13;
    logKey = [notificationCopy logKey];
    *buf = 138543618;
    v30 = v13;
    v31 = 2114;
    v32 = logKey;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Handling follow up response.", buf, 0x16u);
  }

  v16 = [self _createFollowUpItemFromNotification:notificationCopy];
  if (v16)
  {
    identifier = [actionCopy identifier];
    actions = [v16 actions];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __69__AMSPushParsableFollowUp_userNotification_selectedButtonAction_bag___block_invoke;
    v27[3] = &unk_1E73BB9E8;
    v28 = identifier;
    v19 = identifier;
    v20 = [actions ams_firstObjectPassingTest:v27];

    account = [v16 account];
    v22 = [v20 performActionsWithBag:bagCopy account:account];

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __69__AMSPushParsableFollowUp_userNotification_selectedButtonAction_bag___block_invoke_2;
    v24[3] = &unk_1E73BBA10;
    selfCopy = self;
    v25 = notificationCopy;
    [v22 addErrorBlock:v24];
    v23 = [v20 postMetricsWithBag:bagCopy];
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
  bagSubProfile = [objc_opt_class() bagSubProfile];
  bagSubProfileVersion = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:bagSubProfile profileVersion:bagSubProfileVersion];

  return v4;
}

+ (void)_performClearWithPayload:(id)payload
{
  v36 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  v28 = objc_alloc_init(AMSFollowUp);
  clientIdentifier = [payloadCopy clientIdentifier];
  v5 = [payloadCopy aps];
  v6 = [v5 objectForKeyedSubscript:@"deviceGroup"];

  if (objc_opt_respondsToSelector() & 1) != 0 && ([v6 BOOLValue])
  {
    account = 0;
  }

  else
  {
    account = [payloadCopy account];
  }

  v8 = +[AMSLogConfig sharedFollowUpConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    logKey = [payloadCopy logKey];
    *buf = 138543874;
    v31 = v10;
    v32 = 2114;
    v33 = logKey;
    v34 = 2114;
    v35 = clientIdentifier;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Clearing follow up with identifier: %{public}@", buf, 0x20u);
  }

  v13 = [(AMSFollowUp *)v28 clearFollowUpWithIdentifier:clientIdentifier account:account];
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

    oSLogObject2 = [v17 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v26 = account;
      v20 = v19;
      logKey2 = [payloadCopy logKey];
      *buf = 138543618;
      v31 = v19;
      v32 = 2114;
      v33 = logKey2;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully cleared follow up!", buf, 0x16u);

      account = v26;
    }
  }

  else
  {
    if (!v16)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v17 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v22 = objc_opt_class();
      v25 = v22;
      logKey3 = [payloadCopy logKey];
      AMSLogableError(v15);
      v24 = v27 = account;
      *buf = 138543874;
      v31 = v22;
      v32 = 2114;
      v33 = logKey3;
      v34 = 2114;
      v35 = v24;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to clear follow up. Error = %{public}@", buf, 0x20u);

      account = v27;
    }
  }
}

+ (void)_performPostWithPayload:(id)payload bag:(id)bag
{
  v35 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  v6 = +[AMSLogConfig sharedFollowUpConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    logKey = [payloadCopy logKey];
    clientIdentifier = [payloadCopy clientIdentifier];
    *buf = 138543874;
    v30 = v8;
    v31 = 2114;
    v32 = logKey;
    v33 = 2114;
    v34 = clientIdentifier;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Posting follow up with identifier: %{public}@", buf, 0x20u);
  }

  v12 = objc_alloc_init(AMSFollowUp);
  v13 = [self _createFollowUpItemFromPayload:payloadCopy];
  v14 = [(AMSFollowUp *)v12 postFollowUpItem:v13];
  v28 = 0;
  v15 = [v14 resultWithError:&v28];
  v16 = v28;
  integerValue = [v15 integerValue];

  v18 = +[AMSLogConfig sharedFollowUpConfig];
  v19 = v18;
  if (v16)
  {
    if (!v18)
    {
      v19 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v19 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v21 = objc_opt_class();
      v26 = v21;
      logKey2 = [payloadCopy logKey];
      v23 = AMSLogableError(v16);
      *buf = 138543874;
      v30 = v21;
      v31 = 2114;
      v32 = logKey2;
      v33 = 2114;
      v34 = v23;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to post follow up. Error: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    if (!v18)
    {
      v19 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v19 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_opt_class();
      v27 = v24;
      logKey3 = [payloadCopy logKey];
      *buf = 138543874;
      v30 = v24;
      v31 = 2114;
      v32 = logKey3;
      v33 = 2048;
      v34 = integerValue;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully posted follow up! Result = %ld", buf, 0x20u);
    }
  }
}

+ (BOOL)_shouldAllowFollowUp:(id)up bag:(id)bag
{
  v48[6] = *MEMORY[0x1E69E9840];
  upCopy = up;
  v6 = MEMORY[0x1E695DFD8];
  v48[0] = AMSDeviceOfferFollowUpIdentifierAppleMusic;
  v48[1] = AMSDeviceOfferFollowUpIdentifierAppleMusicAndiCloud;
  v48[2] = AMSDeviceOfferFollowUpIdentifieriCloud;
  v48[3] = @"com.apple.AMSFollowUpIdentifier.Billing";
  v48[4] = @"com.apple.AMSFollowUpIdentifier.HardwareOffer";
  v48[5] = @"com.apple.AMSFollowUpIdentifier.HardwareOffer.Fitness";
  v7 = MEMORY[0x1E695DEC8];
  bagCopy = bag;
  v9 = [v7 arrayWithObjects:v48 count:6];
  v10 = [v6 setWithArray:v9];

  v11 = [bagCopy arrayForKey:@"follow-up-identifier-allow-list"];

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

    oSLogObject = [v17 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v20 = v19;
      logKey = [upCopy logKey];
      *buf = 138543618;
      v43 = v19;
      v44 = 2114;
      v45 = logKey;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Bag did provided an allow-list, merging the allowed identifiers", buf, 0x16u);

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

    oSLogObject2 = [v17 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      v40 = v23;
      [upCopy logKey];
      v25 = v24 = v13;
      v26 = AMSLogableError(v24);
      *buf = 138543874;
      v43 = v23;
      v15 = 0x1E73B0000uLL;
      v44 = 2114;
      v45 = v25;
      v46 = 2114;
      v47 = v26;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Bag did not provide an allow-list : %{public}@", buf, 0x20u);

      v13 = v24;
    }
  }

  clientIdentifier = [upCopy clientIdentifier];
  v28 = [v10 containsObject:clientIdentifier];

  if ((v28 & 1) == 0)
  {
    sharedFollowUpConfig = [*(v15 + 3552) sharedFollowUpConfig];
    if (!sharedFollowUpConfig)
    {
      sharedFollowUpConfig = [*(v15 + 3552) sharedConfig];
    }

    oSLogObject3 = [sharedFollowUpConfig OSLogObject];
    if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v32 = objc_opt_class();
    v33 = v32;
    logKey2 = [upCopy logKey];
    [upCopy clientIdentifier];
    v36 = v35 = v13;
    *buf = 138543874;
    v43 = v32;
    v44 = 2114;
    v45 = logKey2;
    v46 = 2114;
    v47 = v36;
    v37 = "%{public}@: [%{public}@] Follow up DENIED due to denylisted identifier: %{public}@";
    goto LABEL_23;
  }

  if (([upCopy isAccountTypeActive] & 1) == 0)
  {
    sharedFollowUpConfig = [*(v15 + 3552) sharedFollowUpConfig];
    if (!sharedFollowUpConfig)
    {
      sharedFollowUpConfig = [*(v15 + 3552) sharedConfig];
    }

    oSLogObject3 = [sharedFollowUpConfig OSLogObject];
    if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v38 = objc_opt_class();
    v33 = v38;
    logKey2 = [upCopy logKey];
    [upCopy clientIdentifier];
    v36 = v35 = v13;
    *buf = 138543874;
    v43 = v38;
    v44 = 2114;
    v45 = logKey2;
    v46 = 2114;
    v47 = v36;
    v37 = "%{public}@: [%{public}@] Follow up DENIED due to inactive account %{public}@";
LABEL_23:
    _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, v37, buf, 0x20u);

    v13 = v35;
LABEL_24:

    v29 = 0;
    goto LABEL_25;
  }

  v29 = 1;
LABEL_25:

  return v29;
}

+ (BOOL)_shouldClearFollowUpFromPayload:(id)payload
{
  v3 = [payload aps];
  v4 = [v3 objectForKeyedSubscript:@"clear"];

  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (id)_createFollowUpItemFromPayload:(id)payload
{
  payloadCopy = payload;
  clientIdentifier = [payloadCopy clientIdentifier];
  priority = [payloadCopy priority];
  logKey = [payloadCopy logKey];
  v7 = [AMSFollowUpItem alloc];
  v8 = [payloadCopy aps];
  account = [payloadCopy account];

  v10 = [(AMSFollowUpItem *)v7 initWithIdentifier:clientIdentifier jsonDictionary:v8 account:account priority:priority logKey:logKey];

  return v10;
}

+ (id)_createFollowUpItemFromNotification:(id)notification
{
  v71 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  title = [notificationCopy title];
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"expirationDate"];

  informativeText = [notificationCopy informativeText];
  logKey = [notificationCopy logKey];
  if ([v6 length])
  {
    v8 = [AMSPushParsableFollowUp _dateFromString:v6];
  }

  else
  {
    v8 = 0;
  }

  userInfo2 = [notificationCopy userInfo];
  v10 = [userInfo2 mutableCopy];

  integerValue = [v10 objectForKeyedSubscript:@"priority"];

  if (integerValue)
  {
    v12 = [v10 objectForKeyedSubscript:@"priority"];
    integerValue = [v12 integerValue];

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
      ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
      v54 = [ams_sharedAccountStore ams_iTunesAccountWithDSID:v15];
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

  bOOLValue = [v10 objectForKeyedSubscript:@"expirationDateHidden"];

  if (bOOLValue)
  {
    v18 = [v10 objectForKeyedSubscript:@"expirationDateHidden"];
    if (objc_opt_respondsToSelector())
    {
      bOOLValue = [v18 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    [v10 removeObjectForKey:@"expirationDateHidden"];
  }

  userInfo3 = [notificationCopy userInfo];
  v20 = [userInfo3 objectForKeyedSubscript:@"iconImageName"];

  if (v20)
  {
    [v10 removeObjectForKey:@"iconImageName"];
  }

  v51 = v6;
  v21 = [AMSFollowUpItem alloc];
  identifier = [notificationCopy identifier];
  v23 = [(AMSFollowUpItem *)v21 initWithIdentifier:identifier account:v54 priority:integerValue];

  v52 = title;
  [(AMSFollowUpItem *)v23 setTitle:title];
  [(AMSFollowUpItem *)v23 setExpirationDateHidden:bOOLValue];
  [(AMSFollowUpItem *)v23 setBundleIconName:0];
  v49 = v8;
  [(AMSFollowUpItem *)v23 setExpirationDate:v8];
  v50 = informativeText;
  [(AMSFollowUpItem *)v23 setInformativeText:informativeText];
  v24 = logKey;
  [(AMSFollowUpItem *)v23 setLogKey:logKey];
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
  v53 = notificationCopy;
  obj = [notificationCopy buttonActions];
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
        defaultURL = [v28 defaultURL];
        title2 = [v28 title];
        userInfo4 = [v28 userInfo];
        v30 = [userInfo4 mutableCopy];

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

            v24 = logKey;
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
        identifier2 = [(AMSFollowUpItem *)v62 identifier];
        v44 = [(AMSFollowUpAction *)v42 initWithLabel:title2 parentIdentifier:identifier2];

        identifier3 = [v28 identifier];
        [(AMSFollowUpAction *)v44 setIdentifier:identifier3];

        [(AMSFollowUpAction *)v44 setUrl:defaultURL];
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

+ (id)_createNotificationFromFollowUpItem:(id)item
{
  v67 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  title = [itemCopy title];
  informativeText = [itemCopy informativeText];
  metricsEvent = [itemCopy metricsEvent];
  underlyingDictionary = [metricsEvent underlyingDictionary];

  logKey = [itemCopy logKey];
  expirationDate = [itemCopy expirationDate];

  if (expirationDate)
  {
    ams_serverFriendlyLocalTimeZoneFormatter = [MEMORY[0x1E696AB78] ams_serverFriendlyLocalTimeZoneFormatter];
    expirationDate2 = [itemCopy expirationDate];
    v12 = [ams_serverFriendlyLocalTimeZoneFormatter stringFromDate:expirationDate2];
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(itemCopy, "priority")}];
  [v13 setObject:v14 forKeyedSubscript:@"priority"];

  if (underlyingDictionary)
  {
    [v13 setObject:underlyingDictionary forKeyedSubscript:@"metrics"];
  }

  account = [itemCopy account];
  ams_DSID = [account ams_DSID];

  if (ams_DSID)
  {
    account2 = [itemCopy account];
    ams_DSID2 = [account2 ams_DSID];
    [v13 setObject:ams_DSID2 forKeyedSubscript:@"accountDSID"];
  }

  bundleIconName = [itemCopy bundleIconName];

  if (bundleIconName)
  {
    bundleIconName2 = [itemCopy bundleIconName];
    [v13 setObject:bundleIconName2 forKeyedSubscript:@"iconImageName"];
  }

  v59 = underlyingDictionary;
  if ([itemCopy isExpirationDateHidden])
  {
    v21 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(itemCopy, "isExpirationDateHidden")}];
    [v13 setObject:v21 forKeyedSubscript:@"expirationDateHidden"];
  }

  v53 = v12;
  [v13 setObject:v12 forKeyedSubscript:@"expirationDate"];
  v56 = title;
  v22 = [[AMSUserNotification alloc] initWithTitle:title intent:1];
  identifier = [itemCopy identifier];
  [(AMSUserNotification *)v22 setIdentifier:identifier];

  [(AMSUserNotification *)v22 setCenterBundleIdentifier:@"com.apple.appstoreagent"];
  v55 = informativeText;
  [(AMSUserNotification *)v22 setInformativeText:informativeText];
  v54 = logKey;
  [(AMSUserNotification *)v22 setLogKey:logKey];
  v51 = v22;
  v52 = v13;
  [(AMSUserNotification *)v22 setUserInfo:v13];
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = [itemCopy actions];
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
        label = [v26 label];
        userInfo = [v26 userInfo];
        v30 = [userInfo mutableCopy];
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

        metricsEvent2 = [itemCopy metricsEvent];

        if (metricsEvent2)
        {
          [v33 setObject:v59 forKeyedSubscript:@"metrics"];
        }

        request = [v26 request];

        if (request)
        {
          v36 = itemCopy;
          v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
          request2 = [v26 request];
          v39 = [request2 URL];
          absoluteString = [v39 absoluteString];
          [v37 setObject:absoluteString forKeyedSubscript:@"url"];

          request3 = [v26 request];
          hTTPMethod = [request3 HTTPMethod];
          [v37 setObject:hTTPMethod forKeyedSubscript:@"method"];

          request4 = [v26 request];
          hTTPBody = [request4 HTTPBody];

          if (hTTPBody)
          {
            v45 = objc_alloc(MEMORY[0x1E696AEC0]);
            request5 = [v26 request];
            hTTPBody2 = [request5 HTTPBody];
            v48 = [v45 initWithData:hTTPBody2 encoding:4];

            if (v48)
            {
              [v37 setObject:v48 forKeyedSubscript:@"body"];
            }
          }

          [v33 setObject:v37 forKeyedSubscript:@"serverActionUrl"];

          itemCopy = v36;
          v24 = v58;
        }

        v49 = [[AMSUserNotificationAction alloc] initWithTitle:label];
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

+ (id)_dateFromString:(id)string
{
  stringCopy = string;
  ams_serverFriendlyFormatter = [MEMORY[0x1E696AB78] ams_serverFriendlyFormatter];
  v5 = [ams_serverFriendlyFormatter dateFromString:stringCopy];

  if (!v5)
  {
    ams_serverFriendlyLocalTimeZoneFormatter = [MEMORY[0x1E696AB78] ams_serverFriendlyLocalTimeZoneFormatter];
    v5 = [ams_serverFriendlyLocalTimeZoneFormatter dateFromString:stringCopy];
  }

  return v5;
}

@end