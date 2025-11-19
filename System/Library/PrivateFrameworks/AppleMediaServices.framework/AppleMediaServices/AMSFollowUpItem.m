@interface AMSFollowUpItem
+ (id)_dateFromString:(id)a3;
+ (id)backingIdentifierForIdentifier:(id)a3 DSID:(id)a4;
+ (id)backingIdentifierForIdentifier:(id)a3 account:(id)a4;
+ (id)componentsFromBackingIdentifier:(id)a3;
- (ACAccount)account;
- (AMSFollowUpItem)initWithFollowUpItem:(id)a3;
- (AMSFollowUpItem)initWithIdentifier:(id)a3 account:(id)a4 priority:(int64_t)a5;
- (AMSFollowUpItem)initWithIdentifier:(id)a3 jsonDictionary:(id)a4 account:(id)a5 priority:(int64_t)a6 logKey:(id)a7;
- (BOOL)active;
- (BOOL)shouldOverwriteItem:(id)a3;
- (NSMutableDictionary)userInfo;
- (NSString)backingIdentifier;
- (NSString)groupIdentifier;
- (NSString)identifier;
- (NSString)logKey;
- (id)generateItem;
- (id)postMetricsWithBag:(id)a3;
- (id)postMetricsWithBagContract:(id)a3;
- (int64_t)priority;
- (void)setAccount:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)setLogKey:(id)a3;
- (void)setPriority:(int64_t)a3;
- (void)setUserInfo:(id)a3;
@end

@implementation AMSFollowUpItem

- (AMSFollowUpItem)initWithIdentifier:(id)a3 account:(id)a4 priority:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v21.receiver = self;
  v21.super_class = AMSFollowUpItem;
  v11 = [(AMSFollowUpItem *)&v21 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_account, a4);
    objc_storeStrong(&v12->_identifier, a3);
    v13 = dispatch_queue_create("com.apple.AppleMediaServices.FollowUpItem", 0);
    internalQueue = v12->_internalQueue;
    v12->_internalQueue = v13;

    v15 = dispatch_queue_create("com.apple.AppleMediaServices.FollowUpItemMetrics", 0);
    metricsQueue = v12->_metricsQueue;
    v12->_metricsQueue = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    userInfo = v12->_userInfo;
    v12->_userInfo = v17;

    v19 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
    [(NSMutableDictionary *)v12->_userInfo setObject:v19 forKeyedSubscript:@"AMSPriority"];
  }

  return v12;
}

- (AMSFollowUpItem)initWithIdentifier:(id)a3 jsonDictionary:(id)a4 account:(id)a5 priority:(int64_t)a6 logKey:(id)a7
{
  v83 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [v13 objectForKeyedSubscript:@"deviceGroup"];
  v17 = objc_opt_respondsToSelector();
  v18 = v14;
  if (v17)
  {
    if ([v16 BOOLValue])
    {
      v18 = 0;
    }

    else
    {
      v18 = v14;
    }
  }

  v19 = [(AMSFollowUpItem *)self initWithIdentifier:v12 account:v18 priority:a6];
  if (v19)
  {
    v20 = [v13 objectForKeyedSubscript:@"title"];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = &stru_1F071BA78;
    }

    v70 = v22;

    v77 = [v13 objectForKeyedSubscript:@"text"];
    v23 = [v13 objectForKeyedSubscript:@"expirationDateHidden"];
    v69 = v23;
    if (objc_opt_respondsToSelector())
    {
      v24 = [v23 BOOLValue];
    }

    else
    {
      v24 = 0;
    }

    v25 = [v13 objectForKeyedSubscript:@"expirationDate"];
    obj = [v13 objectForKeyedSubscript:@"footer"];
    v75 = [v13 objectForKeyedSubscript:@"metrics"];
    v68 = v25;
    if ([v25 length])
    {
      v26 = [AMSFollowUpItem _dateFromString:v25];
    }

    else
    {
      v26 = 0;
    }

    v71 = v16;
    v27 = [v13 objectForKeyedSubscript:@"disableGrouping"];
    v66 = v27;
    if (objc_opt_respondsToSelector())
    {
      v28 = [v27 BOOLValue];
    }

    else
    {
      v28 = 0;
    }

    v29 = [v13 objectForKeyedSubscript:@"iconImageName"];
    bundleIconName = v19->_bundleIconName;
    v19->_bundleIconName = v29;

    v19->_expirationDateHidden = v24;
    v19->_disableGrouping = v28;
    objc_storeStrong(&v19->_expirationDate, v26);
    objc_storeStrong(&v19->_footer, obj);
    objc_storeStrong(&v19->_informativeText, v77);
    objc_storeStrong(&v19->_title, v22);
    [(AMSFollowUpItem *)v19 setLogKey:v15];
    if (v75)
    {
      v31 = [[AMSMetricsEvent alloc] initWithUnderlyingDictionary:v75];
      metricsEvent = v19->_metricsEvent;
      v19->_metricsEvent = v31;
    }

    v33 = [v13 objectForKeyedSubscript:@"notification"];
    v72 = v14;
    if (objc_opt_respondsToSelector())
    {
      v34 = [v33 BOOLValue];
    }

    else
    {
      v34 = 0;
    }

    [(AMSFollowUpItem *)v19 setShouldPostNotification:v34];
    v35 = v33;
    objc_opt_class();
    v65 = v35;
    if (objc_opt_isKindOfClass())
    {
      v36 = v35;

      if (v36)
      {
        goto LABEL_29;
      }
    }

    else
    {
    }

    v37 = [v13 objectForKeyedSubscript:@"notificationOptions"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v36 = 0;
LABEL_34:

      goto LABEL_35;
    }

    v36 = v37;

    if (!v36)
    {
LABEL_35:
      v45 = [v13 objectForKeyedSubscript:@"hardwareOffer"];
      if (objc_opt_respondsToSelector())
      {
        v46 = [v45 BOOLValue];
      }

      else
      {
        v46 = 0;
      }

      v19->_hardwareOffer = v46;
      v47 = [v13 objectForKeyedSubscript:@"newDeviceOutreach"];
      if (objc_opt_respondsToSelector())
      {
        v48 = [v47 BOOLValue];
      }

      else
      {
        v48 = 0;
      }

      v19->_newDeviceOutreach = v48;
      v49 = [v13 objectForKeyedSubscript:@"omitBadge"];
      if ((objc_opt_respondsToSelector() & 1) != 0 && [v49 BOOLValue])
      {
        v19->_displayStyle |= 0x10uLL;
      }

      v74 = [v13 objectForKeyedSubscript:@"omitAppBadge"];
      if ((objc_opt_respondsToSelector() & 1) != 0 && [v74 BOOLValue])
      {
        v19->_displayStyle |= 0x20uLL;
      }

      v64 = v45;
      v50 = [v13 objectForKeyedSubscript:@"notificationOnly"];
      if ((objc_opt_respondsToSelector() & 1) != 0 && [v50 BOOLValue])
      {
        v19->_displayStyle |= 0x18uLL;
      }

      v61 = v50;
      v62 = v49;
      v63 = v47;
      v67 = v26;
      v51 = [v13 objectForKeyedSubscript:@"zeroAction"];
      if ((objc_opt_respondsToSelector() & 1) != 0 && [v51 BOOLValue])
      {
        v19->_displayStyle |= 2uLL;
      }

      v60 = v51;
      v52 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v73 = v13;
      v53 = [v13 objectForKeyedSubscript:@"actions"];
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v54 = [v53 countByEnumeratingWithState:&v78 objects:v82 count:16];
      if (v54)
      {
        v55 = v54;
        v56 = *v79;
        do
        {
          for (i = 0; i != v55; ++i)
          {
            if (*v79 != v56)
            {
              objc_enumerationMutation(v53);
            }

            v58 = [[AMSFollowUpAction alloc] initWithJSONDictionary:*(*(&v78 + 1) + 8 * i) parentIdentifier:v12];
            [(AMSFollowUpAction *)v58 setLogKey:v15];
            [v52 addObject:v58];
          }

          v55 = [v53 countByEnumeratingWithState:&v78 objects:v82 count:16];
        }

        while (v55);
      }

      if ([v52 count])
      {
        objc_storeStrong(&v19->_actions, v52);
      }

      v14 = v72;
      v13 = v73;
      v16 = v71;
      goto LABEL_63;
    }

LABEL_29:
    v38 = [[AMSFollowUpNotification alloc] initWithJSONDictionary:v36 parentIdentifier:v12 logKey:v15];
    notification = v19->_notification;
    v19->_notification = v38;

    v40 = [(AMSFollowUpItem *)v19 title];

    if (v40)
    {
      v41 = [(AMSFollowUpItem *)v19 title];
      v42 = [(AMSFollowUpItem *)v19 notification];
      [v42 setTitle:v41];
    }

    v43 = [(AMSFollowUpItem *)v19 informativeText];

    if (!v43)
    {
      goto LABEL_35;
    }

    v37 = [(AMSFollowUpItem *)v19 informativeText];
    v44 = [(AMSFollowUpItem *)v19 notification];
    [v44 setInformativeText:v37];

    goto LABEL_34;
  }

LABEL_63:

  return v19;
}

- (AMSFollowUpItem)initWithFollowUpItem:(id)a3
{
  v63 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 uniqueIdentifier];
  v6 = [objc_opt_class() componentsFromBackingIdentifier:v5];
  v7 = [v6 objectForKeyedSubscript:@"identifier"];
  v8 = [v6 objectForKeyedSubscript:@"dsid"];
  if (v8)
  {
    v9 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    v10 = [v9 ams_iTunesAccountWithDSID:v8];
  }

  else
  {
    v11 = [v4 userInfo];
    v12 = [v11 objectForKeyedSubscript:@"AMSLogKey"];

    v13 = +[AMSLogConfig sharedFollowUpConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v50 = v15;
      v16 = AMSHashIfNeeded(0);
      *buf = 138543874;
      v58 = v15;
      v8 = 0;
      v59 = 2114;
      v60 = v12;
      v61 = 2112;
      v62 = v16;
      _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch account with DSID: %@", buf, 0x20u);
    }

    v10 = 0;
  }

  v17 = [(AMSFollowUpItem *)self initWithIdentifier:v7 account:v10 priority:0];
  if (v17)
  {
    v48 = v10;
    v49 = v8;
    v17->_displayStyle = [v4 displayStyle];
    v18 = [v4 bundleIconName];
    bundleIconName = v17->_bundleIconName;
    v17->_bundleIconName = v18;

    v20 = [v4 informativeText];
    informativeText = v17->_informativeText;
    v17->_informativeText = v20;

    v22 = [v4 expirationDate];
    expirationDate = v17->_expirationDate;
    v17->_expirationDate = v22;

    v24 = [v4 informativeFooterText];
    footer = v17->_footer;
    v17->_footer = v24;

    v26 = [v4 title];
    title = v17->_title;
    v17->_title = v26;

    v28 = [v4 userInfo];

    if (v28)
    {
      v29 = [v4 userInfo];
      v30 = [v29 mutableCopy];

      v31 = [(NSMutableDictionary *)v30 objectForKeyedSubscript:@"AMSMetrics"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = v31;

        if (v32)
        {
          v33 = [[AMSMetricsEvent alloc] initWithUnderlyingDictionary:v32];
          metricsEvent = v17->_metricsEvent;
          v17->_metricsEvent = v33;

          [(NSMutableDictionary *)v30 removeObjectForKey:@"AMSMetrics"];
        }
      }

      else
      {

        v32 = 0;
      }

      v35 = getFLUserInfoPropertyDontDisplayDate();
      v36 = [(NSMutableDictionary *)v30 objectForKeyedSubscript:v35];

      if (objc_opt_respondsToSelector())
      {
        v37 = [v36 BOOLValue];
      }

      else
      {
        v37 = 0;
      }

      [(AMSFollowUpItem *)v17 setExpirationDateHidden:v37];
      userInfo = v17->_userInfo;
      v17->_userInfo = v30;
    }

    v51 = v5;
    v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v40 = [v4 actions];
    v41 = [v40 countByEnumeratingWithState:&v52 objects:v56 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v53;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v53 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = [[AMSFollowUpAction alloc] initWithAction:*(*(&v52 + 1) + 8 * i) parentIdentifier:v7];
          [(NSArray *)v39 addObject:v45];
        }

        v42 = [v40 countByEnumeratingWithState:&v52 objects:v56 count:16];
      }

      while (v42);
    }

    actions = v17->_actions;
    v17->_actions = v39;

    v5 = v51;
    v10 = v48;
    v8 = v49;
  }

  return v17;
}

- (ACAccount)account
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__32;
  v11 = __Block_byref_object_dispose__32;
  v12 = 0;
  v3 = [(AMSFollowUpItem *)self internalQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __26__AMSFollowUpItem_account__block_invoke;
  v6[3] = &unk_1E73B3EA8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (BOOL)active
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(AMSFollowUp);
  v4 = [(AMSFollowUp *)v3 pendingFollowUps];
  v25 = 0;
  v5 = [v4 resultWithError:&v25];
  v6 = v25;

  if (v6)
  {
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      *buf = 138543618;
      v28 = v9;
      v29 = 2114;
      v30 = v6;
      v10 = v9;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch pending followups for determining active status. Error: %{public}@", buf, 0x16u);
    }
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v21 + 1) + 8 * i) backingIdentifier];
        v17 = [(AMSFollowUpItem *)self backingIdentifier];
        v18 = [v16 isEqualToString:v17];

        if (v18)
        {
          v19 = 1;
          goto LABEL_17;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
LABEL_17:

  return v19;
}

- (NSString)backingIdentifier
{
  v3 = objc_opt_class();
  v4 = [(AMSFollowUpItem *)self identifier];
  v5 = [(AMSFollowUpItem *)self account];
  v6 = [v3 backingIdentifierForIdentifier:v4 account:v5];

  return v6;
}

- (NSString)identifier
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__32;
  v11 = __Block_byref_object_dispose__32;
  v12 = 0;
  v3 = [(AMSFollowUpItem *)self internalQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__AMSFollowUpItem_identifier__block_invoke;
  v6[3] = &unk_1E73B3EA8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSString)groupIdentifier
{
  if ([(AMSFollowUpItem *)self disableGrouping])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v3 = qword_1ED6E2A28;
    v16 = qword_1ED6E2A28;
    if (qword_1ED6E2A28)
    {
      goto LABEL_16;
    }

    v4 = CoreFollowUpLibrary_0();
    v14[3] = dlsym(v4, "FLGroupIdentifierNoGroup");
    qword_1ED6E2A28 = v14[3];
  }

  else if ([(AMSFollowUpItem *)self isHardwareOffer])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v3 = qword_1ED6E2A30;
    v16 = qword_1ED6E2A30;
    if (qword_1ED6E2A30)
    {
      goto LABEL_16;
    }

    v5 = CoreFollowUpLibrary_0();
    v14[3] = dlsym(v5, "FLGroupIdentifierAppleServices");
    qword_1ED6E2A30 = v14[3];
  }

  else if ([(AMSFollowUpItem *)self isNewDeviceOutreach])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v3 = qword_1ED6E2A38;
    v16 = qword_1ED6E2A38;
    if (qword_1ED6E2A38)
    {
      goto LABEL_16;
    }

    v6 = CoreFollowUpLibrary_0();
    v14[3] = dlsym(v6, "FLGroupIdentifierNewDeviceOutreach");
    qword_1ED6E2A38 = v14[3];
  }

  else
  {
    v7 = [(AMSFollowUpItem *)self account];

    if (v7)
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v3 = qword_1ED6E2A40;
      v16 = qword_1ED6E2A40;
      if (qword_1ED6E2A40)
      {
        goto LABEL_16;
      }

      v8 = CoreFollowUpLibrary_0();
      v14[3] = dlsym(v8, "FLGroupIdentifierAccount");
      qword_1ED6E2A40 = v14[3];
    }

    else
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v3 = qword_1ED6E2A48;
      v16 = qword_1ED6E2A48;
      if (qword_1ED6E2A48)
      {
        goto LABEL_16;
      }

      v9 = CoreFollowUpLibrary_0();
      v14[3] = dlsym(v9, "FLGroupIdentifierDevice");
      qword_1ED6E2A48 = v14[3];
    }
  }

  v3 = v14[3];
LABEL_16:
  _Block_object_dispose(&v13, 8);
  if (!v3)
  {
    dlerror();
    v12 = abort_report_np();
    _Block_object_dispose(&v13, 8);
    _Unwind_Resume(v12);
  }

  v10 = *v3;

  return v10;
}

- (NSString)logKey
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__32;
  v11 = __Block_byref_object_dispose__32;
  v12 = 0;
  v3 = [(AMSFollowUpItem *)self internalQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __25__AMSFollowUpItem_logKey__block_invoke;
  v6[3] = &unk_1E73B3EA8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __25__AMSFollowUpItem_logKey__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:@"AMSLogKey"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = AMSGenerateLogCorrelationKey();
    [*(*(a1 + 32) + 24) setObject:v5 forKeyedSubscript:@"AMSLogKey"];

    *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 24) objectForKeyedSubscript:@"AMSLogKey"];

    MEMORY[0x1EEE66BB8]();
  }
}

- (int64_t)priority
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(AMSFollowUpItem *)self internalQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __27__AMSFollowUpItem_priority__block_invoke;
  v6[3] = &unk_1E73B82D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __27__AMSFollowUpItem_priority__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:@"AMSPriority"];
  if (objc_opt_respondsToSelector())
  {
    *(*(*(a1 + 40) + 8) + 24) = [v2 integerValue];
  }
}

- (NSMutableDictionary)userInfo
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__32;
  v11 = __Block_byref_object_dispose__32;
  v12 = 0;
  v3 = [(AMSFollowUpItem *)self internalQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __27__AMSFollowUpItem_userInfo__block_invoke;
  v6[3] = &unk_1E73B3EA8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setAccount:(id)a3
{
  v4 = a3;
  v5 = [(AMSFollowUpItem *)self internalQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__AMSFollowUpItem_setAccount___block_invoke;
  v7[3] = &unk_1E73B3DE0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)setIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(AMSFollowUpItem *)self internalQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__AMSFollowUpItem_setIdentifier___block_invoke;
  v7[3] = &unk_1E73B3DE0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)setLogKey:(id)a3
{
  v4 = a3;
  v5 = [(AMSFollowUpItem *)self internalQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __29__AMSFollowUpItem_setLogKey___block_invoke;
  v7[3] = &unk_1E73B3DE0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)setPriority:(int64_t)a3
{
  v5 = [(AMSFollowUpItem *)self internalQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__AMSFollowUpItem_setPriority___block_invoke;
  v6[3] = &unk_1E73B40A8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_sync(v5, v6);
}

void __31__AMSFollowUpItem_setPriority___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
  [*(*(a1 + 32) + 24) setObject:v2 forKeyedSubscript:@"AMSPriority"];
}

- (void)setUserInfo:(id)a3
{
  v4 = a3;
  v5 = [(AMSFollowUpItem *)self internalQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__AMSFollowUpItem_setUserInfo___block_invoke;
  v7[3] = &unk_1E73B3DE0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __31__AMSFollowUpItem_setUserInfo___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v2;
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v4 = v3;
  objc_storeStrong((*(a1 + 32) + 24), v3);
  if (!v2)
  {
  }
}

+ (id)backingIdentifierForIdentifier:(id)a3 account:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_class();
  v8 = [v5 ams_DSID];

  v9 = [v7 backingIdentifierForIdentifier:v6 DSID:v8];

  return v9;
}

+ (id)backingIdentifierForIdentifier:(id)a3 DSID:(id)a4
{
  v5 = a3;
  if (a4)
  {
    a4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"++", a4];
  }

  v6 = &stru_1F071BA78;
  if (a4)
  {
    v6 = a4;
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", @"AMS_", v5, v6];

  return v7;
}

+ (id)componentsFromBackingIdentifier:(id)a3
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 stringByReplacingOccurrencesOfString:@"AMS_" withString:&stru_1F071BA78];

  v7 = [v6 componentsSeparatedByString:@"++"];
  if ([v7 count])
  {
    v8 = [v7 objectAtIndexedSubscript:0];
    [v5 setObject:v8 forKeyedSubscript:@"identifier"];
  }

  if ([v7 count] >= 2)
  {
    v9 = [v7 objectAtIndexedSubscript:1];
    if ([v9 longLongValue])
    {
      v10 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v9, "longLongValue")}];
      [v5 setObject:v10 forKeyedSubscript:@"dsid"];
    }
  }

  return v5;
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

- (id)generateItem
{
  v55 = *MEMORY[0x1E69E9840];
  v47 = 0;
  v48 = &v47;
  v49 = 0x2050000000;
  v3 = getFLFollowUpItemClass_softClass_0;
  v50 = getFLFollowUpItemClass_softClass_0;
  if (!getFLFollowUpItemClass_softClass_0)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getFLFollowUpItemClass_block_invoke_0;
    v53 = &unk_1E73B3880;
    v54 = &v47;
    __getFLFollowUpItemClass_block_invoke_0(buf);
    v3 = v48[3];
  }

  v4 = v3;
  _Block_object_dispose(&v47, 8);
  v5 = objc_alloc_init(v3);
  [v5 setDisplayStyle:{-[AMSFollowUpItem displayStyle](self, "displayStyle")}];
  v6 = [(AMSFollowUpItem *)self expirationDate];
  [v5 setExpirationDate:v6];

  [v5 setExtensionIdentifier:@"com.apple.AppleMediaServices.FollowUpExtension"];
  v7 = [(AMSFollowUpItem *)self groupIdentifier];
  [v5 setGroupIdentifier:v7];

  v8 = [(AMSFollowUpItem *)self footer];
  [v5 setInformativeFooterText:v8];

  v9 = [(AMSFollowUpItem *)self informativeText];
  [v5 setInformativeText:v9];

  v10 = [(AMSFollowUpItem *)self title];
  [v5 setTitle:v10];

  v11 = [(AMSFollowUpItem *)self backingIdentifier];
  [v5 setUniqueIdentifier:v11];

  v12 = [(AMSFollowUpItem *)self bundleIconName];
  LOBYTE(v11) = v12 == 0;

  if ((v11 & 1) == 0)
  {
    [v5 setRepresentingBundlePath:@"/System/Library/PrivateFrameworks/AppleMediaServicesUI.framework"];
    v13 = [(AMSFollowUpItem *)self bundleIconName];
    [v5 setBundleIconName:v13];
  }

  v14 = [(AMSFollowUpItem *)self userInfo];
  v15 = [v14 mutableCopy];

  v16 = [(AMSFollowUpItem *)self metricsEvent];

  if (v16)
  {
    v17 = [(AMSFollowUpItem *)self metricsEvent];
    v18 = [v17 underlyingDictionary];
    [v15 setObject:v18 forKeyedSubscript:@"AMSMetrics"];
  }

  if ([(AMSFollowUpItem *)self isExpirationDateHidden])
  {
    v19 = getFLUserInfoPropertyDontDisplayDate();
    [v15 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v19];
  }

  [v5 setUserInfo:v15];
  if ([(AMSFollowUpItem *)self shouldPostNotification])
  {
    v20 = +[AMSLogConfig sharedFollowUpConfig];
    if (!v20)
    {
      v20 = +[AMSLogConfig sharedConfig];
    }

    v21 = [v20 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      v23 = v22;
      v24 = [(AMSFollowUpItem *)self logKey];
      *buf = 138543618;
      *&buf[4] = v22;
      *&buf[12] = 2114;
      *&buf[14] = v24;
      _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Posting notification", buf, 0x16u);
    }

    v25 = objc_alloc_init(AMSFollowUpNotification);
    v26 = [(AMSFollowUpItem *)self title];
    v27 = v26 == 0;

    if (!v27)
    {
      v28 = [(AMSFollowUpItem *)self title];
      [(AMSFollowUpNotification *)v25 setTitle:v28];
    }

    v29 = [(AMSFollowUpItem *)self informativeText];
    v30 = v29 == 0;

    if (!v30)
    {
      v31 = [(AMSFollowUpItem *)self informativeText];
      [(AMSFollowUpNotification *)v25 setInformativeText:v31];
    }

    v32 = [(AMSFollowUpNotification *)v25 generateNotification];
    [v5 setNotification:v32];
  }

  else
  {
    v33 = [(AMSFollowUpItem *)self notification];
    v34 = v33 == 0;

    if (v34)
    {
      goto LABEL_22;
    }

    v35 = [(AMSFollowUpItem *)self notification];
    v25 = [v35 generateNotification];

    [v5 setNotification:v25];
  }

LABEL_22:
  v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v37 = [(AMSFollowUpItem *)self actions];
  v38 = [v37 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v38)
  {
    v39 = *v44;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v44 != v39)
        {
          objc_enumerationMutation(v37);
        }

        v41 = [*(*(&v43 + 1) + 8 * i) generateAction];
        [v36 addObject:v41];
      }

      v38 = [v37 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v38);
  }

  if ([v36 count])
  {
    [v5 setActions:v36];
  }

  return v5;
}

- (id)postMetricsWithBag:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (_MergedGlobals_115 != -1)
  {
    dispatch_once(&_MergedGlobals_115, &__block_literal_global_65);
  }

  v5 = qword_1ED6E2A20;
  v6 = objc_alloc_init(AMSMutablePromise);
  v7 = [(AMSFollowUpItem *)self metricsEvent];
  if (v7 && (v8 = v7, -[AMSFollowUpItem metricsEvent](self, "metricsEvent"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v5 containsObject:v9], v9, v8, !v10))
  {
    v11 = [(AMSFollowUpItem *)self metricsEvent];
    v12 = [v11 underlyingDictionary];
    v13 = [AMSFollowUpMetricsEvent eventFromMetricsDictionary:v12];

    v14 = [AMSMetrics internalInstanceUsingBag:v4];
    [v14 enqueueEvent:v13];
    v15 = [(AMSFollowUpItem *)self metricsEvent];
    [v5 addObject:v15];

    v16 = +[AMSLogConfig sharedFollowUpConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    v17 = [v16 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v19 = v18;
      v20 = [(AMSFollowUpItem *)self logKey];
      v22 = 138543618;
      v23 = v18;
      v24 = 2114;
      v25 = v20;
      _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Metrics event enqueued (impression)", &v22, 0x16u);
    }

    [(AMSMutablePromise *)v6 finishWithResult:MEMORY[0x1E695E118]];
  }

  else
  {
    [(AMSMutablePromise *)v6 finishWithResult:MEMORY[0x1E695E110]];
  }

  return v6;
}

uint64_t __38__AMSFollowUpItem_postMetricsWithBag___block_invoke()
{
  qword_1ED6E2A20 = objc_alloc_init(MEMORY[0x1E695DFA8]);

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)shouldOverwriteItem:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 identifier];
    if ([v6 length])
    {
      v7 = [v5 identifier];
      v8 = [(AMSFollowUpItem *)self identifier];
      v9 = [v7 isEqualToString:v8];

      if (v9)
      {
        v10 = [v5 account];
        v11 = [(AMSFollowUpItem *)self account];
        v12 = v11;
        if (v10 == v11)
        {

LABEL_11:
          v19 = [(AMSFollowUpItem *)self priority];
          v18 = v19 <= [v5 priority];
          goto LABEL_12;
        }

        v13 = [v5 account];
        v14 = [v13 ams_DSID];
        v15 = [(AMSFollowUpItem *)self account];
        v16 = [v15 ams_DSID];
        v17 = [v14 isEqualToNumber:v16];

        if (v17)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
    }

    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

LABEL_12:

  return v18;
}

- (id)postMetricsWithBagContract:(id)a3
{
  v4 = a3;
  v5 = [[AMSContractBagShim alloc] initWithBagContract:v4];

  v6 = [(AMSFollowUpItem *)self postMetricsWithBag:v5];

  return v6;
}

@end