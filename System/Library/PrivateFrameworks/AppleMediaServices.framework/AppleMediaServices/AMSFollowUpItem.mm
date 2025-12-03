@interface AMSFollowUpItem
+ (id)_dateFromString:(id)string;
+ (id)backingIdentifierForIdentifier:(id)identifier DSID:(id)d;
+ (id)backingIdentifierForIdentifier:(id)identifier account:(id)account;
+ (id)componentsFromBackingIdentifier:(id)identifier;
- (ACAccount)account;
- (AMSFollowUpItem)initWithFollowUpItem:(id)item;
- (AMSFollowUpItem)initWithIdentifier:(id)identifier account:(id)account priority:(int64_t)priority;
- (AMSFollowUpItem)initWithIdentifier:(id)identifier jsonDictionary:(id)dictionary account:(id)account priority:(int64_t)priority logKey:(id)key;
- (BOOL)active;
- (BOOL)shouldOverwriteItem:(id)item;
- (NSMutableDictionary)userInfo;
- (NSString)backingIdentifier;
- (NSString)groupIdentifier;
- (NSString)identifier;
- (NSString)logKey;
- (id)generateItem;
- (id)postMetricsWithBag:(id)bag;
- (id)postMetricsWithBagContract:(id)contract;
- (int64_t)priority;
- (void)setAccount:(id)account;
- (void)setIdentifier:(id)identifier;
- (void)setLogKey:(id)key;
- (void)setPriority:(int64_t)priority;
- (void)setUserInfo:(id)info;
@end

@implementation AMSFollowUpItem

- (AMSFollowUpItem)initWithIdentifier:(id)identifier account:(id)account priority:(int64_t)priority
{
  identifierCopy = identifier;
  accountCopy = account;
  v21.receiver = self;
  v21.super_class = AMSFollowUpItem;
  v11 = [(AMSFollowUpItem *)&v21 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_account, account);
    objc_storeStrong(&v12->_identifier, identifier);
    v13 = dispatch_queue_create("com.apple.AppleMediaServices.FollowUpItem", 0);
    internalQueue = v12->_internalQueue;
    v12->_internalQueue = v13;

    v15 = dispatch_queue_create("com.apple.AppleMediaServices.FollowUpItemMetrics", 0);
    metricsQueue = v12->_metricsQueue;
    v12->_metricsQueue = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    userInfo = v12->_userInfo;
    v12->_userInfo = v17;

    v19 = [MEMORY[0x1E696AD98] numberWithInteger:priority];
    [(NSMutableDictionary *)v12->_userInfo setObject:v19 forKeyedSubscript:@"AMSPriority"];
  }

  return v12;
}

- (AMSFollowUpItem)initWithIdentifier:(id)identifier jsonDictionary:(id)dictionary account:(id)account priority:(int64_t)priority logKey:(id)key
{
  v83 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dictionaryCopy = dictionary;
  accountCopy = account;
  keyCopy = key;
  v16 = [dictionaryCopy objectForKeyedSubscript:@"deviceGroup"];
  v17 = objc_opt_respondsToSelector();
  v18 = accountCopy;
  if (v17)
  {
    if ([v16 BOOLValue])
    {
      v18 = 0;
    }

    else
    {
      v18 = accountCopy;
    }
  }

  v19 = [(AMSFollowUpItem *)self initWithIdentifier:identifierCopy account:v18 priority:priority];
  if (v19)
  {
    v20 = [dictionaryCopy objectForKeyedSubscript:@"title"];
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

    v77 = [dictionaryCopy objectForKeyedSubscript:@"text"];
    v23 = [dictionaryCopy objectForKeyedSubscript:@"expirationDateHidden"];
    v69 = v23;
    if (objc_opt_respondsToSelector())
    {
      bOOLValue = [v23 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"expirationDate"];
    obj = [dictionaryCopy objectForKeyedSubscript:@"footer"];
    v75 = [dictionaryCopy objectForKeyedSubscript:@"metrics"];
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
    v27 = [dictionaryCopy objectForKeyedSubscript:@"disableGrouping"];
    v66 = v27;
    if (objc_opt_respondsToSelector())
    {
      bOOLValue2 = [v27 BOOLValue];
    }

    else
    {
      bOOLValue2 = 0;
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:@"iconImageName"];
    bundleIconName = v19->_bundleIconName;
    v19->_bundleIconName = v29;

    v19->_expirationDateHidden = bOOLValue;
    v19->_disableGrouping = bOOLValue2;
    objc_storeStrong(&v19->_expirationDate, v26);
    objc_storeStrong(&v19->_footer, obj);
    objc_storeStrong(&v19->_informativeText, v77);
    objc_storeStrong(&v19->_title, v22);
    [(AMSFollowUpItem *)v19 setLogKey:keyCopy];
    if (v75)
    {
      v31 = [[AMSMetricsEvent alloc] initWithUnderlyingDictionary:v75];
      metricsEvent = v19->_metricsEvent;
      v19->_metricsEvent = v31;
    }

    v33 = [dictionaryCopy objectForKeyedSubscript:@"notification"];
    v72 = accountCopy;
    if (objc_opt_respondsToSelector())
    {
      bOOLValue3 = [v33 BOOLValue];
    }

    else
    {
      bOOLValue3 = 0;
    }

    [(AMSFollowUpItem *)v19 setShouldPostNotification:bOOLValue3];
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

    informativeText2 = [dictionaryCopy objectForKeyedSubscript:@"notificationOptions"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v36 = 0;
LABEL_34:

      goto LABEL_35;
    }

    v36 = informativeText2;

    if (!v36)
    {
LABEL_35:
      v45 = [dictionaryCopy objectForKeyedSubscript:@"hardwareOffer"];
      if (objc_opt_respondsToSelector())
      {
        bOOLValue4 = [v45 BOOLValue];
      }

      else
      {
        bOOLValue4 = 0;
      }

      v19->_hardwareOffer = bOOLValue4;
      v47 = [dictionaryCopy objectForKeyedSubscript:@"newDeviceOutreach"];
      if (objc_opt_respondsToSelector())
      {
        bOOLValue5 = [v47 BOOLValue];
      }

      else
      {
        bOOLValue5 = 0;
      }

      v19->_newDeviceOutreach = bOOLValue5;
      v49 = [dictionaryCopy objectForKeyedSubscript:@"omitBadge"];
      if ((objc_opt_respondsToSelector() & 1) != 0 && [v49 BOOLValue])
      {
        v19->_displayStyle |= 0x10uLL;
      }

      v74 = [dictionaryCopy objectForKeyedSubscript:@"omitAppBadge"];
      if ((objc_opt_respondsToSelector() & 1) != 0 && [v74 BOOLValue])
      {
        v19->_displayStyle |= 0x20uLL;
      }

      v64 = v45;
      v50 = [dictionaryCopy objectForKeyedSubscript:@"notificationOnly"];
      if ((objc_opt_respondsToSelector() & 1) != 0 && [v50 BOOLValue])
      {
        v19->_displayStyle |= 0x18uLL;
      }

      v61 = v50;
      v62 = v49;
      v63 = v47;
      v67 = v26;
      v51 = [dictionaryCopy objectForKeyedSubscript:@"zeroAction"];
      if ((objc_opt_respondsToSelector() & 1) != 0 && [v51 BOOLValue])
      {
        v19->_displayStyle |= 2uLL;
      }

      v60 = v51;
      v52 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v73 = dictionaryCopy;
      v53 = [dictionaryCopy objectForKeyedSubscript:@"actions"];
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

            v58 = [[AMSFollowUpAction alloc] initWithJSONDictionary:*(*(&v78 + 1) + 8 * i) parentIdentifier:identifierCopy];
            [(AMSFollowUpAction *)v58 setLogKey:keyCopy];
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

      accountCopy = v72;
      dictionaryCopy = v73;
      v16 = v71;
      goto LABEL_63;
    }

LABEL_29:
    v38 = [[AMSFollowUpNotification alloc] initWithJSONDictionary:v36 parentIdentifier:identifierCopy logKey:keyCopy];
    notification = v19->_notification;
    v19->_notification = v38;

    title = [(AMSFollowUpItem *)v19 title];

    if (title)
    {
      title2 = [(AMSFollowUpItem *)v19 title];
      notification = [(AMSFollowUpItem *)v19 notification];
      [notification setTitle:title2];
    }

    informativeText = [(AMSFollowUpItem *)v19 informativeText];

    if (!informativeText)
    {
      goto LABEL_35;
    }

    informativeText2 = [(AMSFollowUpItem *)v19 informativeText];
    notification2 = [(AMSFollowUpItem *)v19 notification];
    [notification2 setInformativeText:informativeText2];

    goto LABEL_34;
  }

LABEL_63:

  return v19;
}

- (AMSFollowUpItem)initWithFollowUpItem:(id)item
{
  v63 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  uniqueIdentifier = [itemCopy uniqueIdentifier];
  v6 = [objc_opt_class() componentsFromBackingIdentifier:uniqueIdentifier];
  v7 = [v6 objectForKeyedSubscript:@"identifier"];
  v8 = [v6 objectForKeyedSubscript:@"dsid"];
  if (v8)
  {
    ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    v10 = [ams_sharedAccountStore ams_iTunesAccountWithDSID:v8];
  }

  else
  {
    userInfo = [itemCopy userInfo];
    v12 = [userInfo objectForKeyedSubscript:@"AMSLogKey"];

    v13 = +[AMSLogConfig sharedFollowUpConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch account with DSID: %@", buf, 0x20u);
    }

    v10 = 0;
  }

  v17 = [(AMSFollowUpItem *)self initWithIdentifier:v7 account:v10 priority:0];
  if (v17)
  {
    v48 = v10;
    v49 = v8;
    v17->_displayStyle = [itemCopy displayStyle];
    bundleIconName = [itemCopy bundleIconName];
    bundleIconName = v17->_bundleIconName;
    v17->_bundleIconName = bundleIconName;

    informativeText = [itemCopy informativeText];
    informativeText = v17->_informativeText;
    v17->_informativeText = informativeText;

    expirationDate = [itemCopy expirationDate];
    expirationDate = v17->_expirationDate;
    v17->_expirationDate = expirationDate;

    informativeFooterText = [itemCopy informativeFooterText];
    footer = v17->_footer;
    v17->_footer = informativeFooterText;

    title = [itemCopy title];
    title = v17->_title;
    v17->_title = title;

    userInfo2 = [itemCopy userInfo];

    if (userInfo2)
    {
      userInfo3 = [itemCopy userInfo];
      v30 = [userInfo3 mutableCopy];

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
        bOOLValue = [v36 BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }

      [(AMSFollowUpItem *)v17 setExpirationDateHidden:bOOLValue];
      userInfo = v17->_userInfo;
      v17->_userInfo = v30;
    }

    v51 = uniqueIdentifier;
    v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    actions = [itemCopy actions];
    v41 = [actions countByEnumeratingWithState:&v52 objects:v56 count:16];
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
            objc_enumerationMutation(actions);
          }

          v45 = [[AMSFollowUpAction alloc] initWithAction:*(*(&v52 + 1) + 8 * i) parentIdentifier:v7];
          [(NSArray *)v39 addObject:v45];
        }

        v42 = [actions countByEnumeratingWithState:&v52 objects:v56 count:16];
      }

      while (v42);
    }

    actions = v17->_actions;
    v17->_actions = v39;

    uniqueIdentifier = v51;
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
  internalQueue = [(AMSFollowUpItem *)self internalQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __26__AMSFollowUpItem_account__block_invoke;
  v6[3] = &unk_1E73B3EA8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (BOOL)active
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(AMSFollowUp);
  pendingFollowUps = [(AMSFollowUp *)v3 pendingFollowUps];
  v25 = 0;
  v5 = [pendingFollowUps resultWithError:&v25];
  v6 = v25;

  if (v6)
  {
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      *buf = 138543618;
      v28 = v9;
      v29 = 2114;
      v30 = v6;
      v10 = v9;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch pending followups for determining active status. Error: %{public}@", buf, 0x16u);
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

        backingIdentifier = [*(*(&v21 + 1) + 8 * i) backingIdentifier];
        backingIdentifier2 = [(AMSFollowUpItem *)self backingIdentifier];
        v18 = [backingIdentifier isEqualToString:backingIdentifier2];

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
  identifier = [(AMSFollowUpItem *)self identifier];
  account = [(AMSFollowUpItem *)self account];
  v6 = [v3 backingIdentifierForIdentifier:identifier account:account];

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
  internalQueue = [(AMSFollowUpItem *)self internalQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__AMSFollowUpItem_identifier__block_invoke;
  v6[3] = &unk_1E73B3EA8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);

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
    account = [(AMSFollowUpItem *)self account];

    if (account)
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
  internalQueue = [(AMSFollowUpItem *)self internalQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __25__AMSFollowUpItem_logKey__block_invoke;
  v6[3] = &unk_1E73B3EA8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);

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
  internalQueue = [(AMSFollowUpItem *)self internalQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __27__AMSFollowUpItem_priority__block_invoke;
  v6[3] = &unk_1E73B82D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);

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
  internalQueue = [(AMSFollowUpItem *)self internalQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __27__AMSFollowUpItem_userInfo__block_invoke;
  v6[3] = &unk_1E73B3EA8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setAccount:(id)account
{
  accountCopy = account;
  internalQueue = [(AMSFollowUpItem *)self internalQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__AMSFollowUpItem_setAccount___block_invoke;
  v7[3] = &unk_1E73B3DE0;
  v7[4] = self;
  v8 = accountCopy;
  v6 = accountCopy;
  dispatch_sync(internalQueue, v7);
}

- (void)setIdentifier:(id)identifier
{
  identifierCopy = identifier;
  internalQueue = [(AMSFollowUpItem *)self internalQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__AMSFollowUpItem_setIdentifier___block_invoke;
  v7[3] = &unk_1E73B3DE0;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_sync(internalQueue, v7);
}

- (void)setLogKey:(id)key
{
  keyCopy = key;
  internalQueue = [(AMSFollowUpItem *)self internalQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __29__AMSFollowUpItem_setLogKey___block_invoke;
  v7[3] = &unk_1E73B3DE0;
  v7[4] = self;
  v8 = keyCopy;
  v6 = keyCopy;
  dispatch_sync(internalQueue, v7);
}

- (void)setPriority:(int64_t)priority
{
  internalQueue = [(AMSFollowUpItem *)self internalQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__AMSFollowUpItem_setPriority___block_invoke;
  v6[3] = &unk_1E73B40A8;
  v6[4] = self;
  v6[5] = priority;
  dispatch_sync(internalQueue, v6);
}

void __31__AMSFollowUpItem_setPriority___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
  [*(*(a1 + 32) + 24) setObject:v2 forKeyedSubscript:@"AMSPriority"];
}

- (void)setUserInfo:(id)info
{
  infoCopy = info;
  internalQueue = [(AMSFollowUpItem *)self internalQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__AMSFollowUpItem_setUserInfo___block_invoke;
  v7[3] = &unk_1E73B3DE0;
  v7[4] = self;
  v8 = infoCopy;
  v6 = infoCopy;
  dispatch_sync(internalQueue, v7);
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

+ (id)backingIdentifierForIdentifier:(id)identifier account:(id)account
{
  accountCopy = account;
  identifierCopy = identifier;
  v7 = objc_opt_class();
  ams_DSID = [accountCopy ams_DSID];

  v9 = [v7 backingIdentifierForIdentifier:identifierCopy DSID:ams_DSID];

  return v9;
}

+ (id)backingIdentifierForIdentifier:(id)identifier DSID:(id)d
{
  identifierCopy = identifier;
  if (d)
  {
    d = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"++", d];
  }

  dCopy = &stru_1F071BA78;
  if (d)
  {
    dCopy = d;
  }

  dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", @"AMS_", identifierCopy, dCopy];

  return dCopy;
}

+ (id)componentsFromBackingIdentifier:(id)identifier
{
  v3 = MEMORY[0x1E695DF90];
  identifierCopy = identifier;
  v5 = objc_alloc_init(v3);
  v6 = [identifierCopy stringByReplacingOccurrencesOfString:@"AMS_" withString:&stru_1F071BA78];

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
  expirationDate = [(AMSFollowUpItem *)self expirationDate];
  [v5 setExpirationDate:expirationDate];

  [v5 setExtensionIdentifier:@"com.apple.AppleMediaServices.FollowUpExtension"];
  groupIdentifier = [(AMSFollowUpItem *)self groupIdentifier];
  [v5 setGroupIdentifier:groupIdentifier];

  footer = [(AMSFollowUpItem *)self footer];
  [v5 setInformativeFooterText:footer];

  informativeText = [(AMSFollowUpItem *)self informativeText];
  [v5 setInformativeText:informativeText];

  title = [(AMSFollowUpItem *)self title];
  [v5 setTitle:title];

  backingIdentifier = [(AMSFollowUpItem *)self backingIdentifier];
  [v5 setUniqueIdentifier:backingIdentifier];

  bundleIconName = [(AMSFollowUpItem *)self bundleIconName];
  LOBYTE(backingIdentifier) = bundleIconName == 0;

  if ((backingIdentifier & 1) == 0)
  {
    [v5 setRepresentingBundlePath:@"/System/Library/PrivateFrameworks/AppleMediaServicesUI.framework"];
    bundleIconName2 = [(AMSFollowUpItem *)self bundleIconName];
    [v5 setBundleIconName:bundleIconName2];
  }

  userInfo = [(AMSFollowUpItem *)self userInfo];
  v15 = [userInfo mutableCopy];

  metricsEvent = [(AMSFollowUpItem *)self metricsEvent];

  if (metricsEvent)
  {
    metricsEvent2 = [(AMSFollowUpItem *)self metricsEvent];
    underlyingDictionary = [metricsEvent2 underlyingDictionary];
    [v15 setObject:underlyingDictionary forKeyedSubscript:@"AMSMetrics"];
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

    oSLogObject = [v20 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      v23 = v22;
      logKey = [(AMSFollowUpItem *)self logKey];
      *buf = 138543618;
      *&buf[4] = v22;
      *&buf[12] = 2114;
      *&buf[14] = logKey;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Posting notification", buf, 0x16u);
    }

    generateNotification2 = objc_alloc_init(AMSFollowUpNotification);
    title2 = [(AMSFollowUpItem *)self title];
    v27 = title2 == 0;

    if (!v27)
    {
      title3 = [(AMSFollowUpItem *)self title];
      [(AMSFollowUpNotification *)generateNotification2 setTitle:title3];
    }

    informativeText2 = [(AMSFollowUpItem *)self informativeText];
    v30 = informativeText2 == 0;

    if (!v30)
    {
      informativeText3 = [(AMSFollowUpItem *)self informativeText];
      [(AMSFollowUpNotification *)generateNotification2 setInformativeText:informativeText3];
    }

    generateNotification = [(AMSFollowUpNotification *)generateNotification2 generateNotification];
    [v5 setNotification:generateNotification];
  }

  else
  {
    notification = [(AMSFollowUpItem *)self notification];
    v34 = notification == 0;

    if (v34)
    {
      goto LABEL_22;
    }

    notification2 = [(AMSFollowUpItem *)self notification];
    generateNotification2 = [notification2 generateNotification];

    [v5 setNotification:generateNotification2];
  }

LABEL_22:
  v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  actions = [(AMSFollowUpItem *)self actions];
  v38 = [actions countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v38)
  {
    v39 = *v44;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v44 != v39)
        {
          objc_enumerationMutation(actions);
        }

        generateAction = [*(*(&v43 + 1) + 8 * i) generateAction];
        [v36 addObject:generateAction];
      }

      v38 = [actions countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v38);
  }

  if ([v36 count])
  {
    [v5 setActions:v36];
  }

  return v5;
}

- (id)postMetricsWithBag:(id)bag
{
  v26 = *MEMORY[0x1E69E9840];
  bagCopy = bag;
  if (_MergedGlobals_115 != -1)
  {
    dispatch_once(&_MergedGlobals_115, &__block_literal_global_65);
  }

  v5 = qword_1ED6E2A20;
  v6 = objc_alloc_init(AMSMutablePromise);
  metricsEvent = [(AMSFollowUpItem *)self metricsEvent];
  if (metricsEvent && (v8 = metricsEvent, -[AMSFollowUpItem metricsEvent](self, "metricsEvent"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v5 containsObject:v9], v9, v8, !v10))
  {
    metricsEvent2 = [(AMSFollowUpItem *)self metricsEvent];
    underlyingDictionary = [metricsEvent2 underlyingDictionary];
    v13 = [AMSFollowUpMetricsEvent eventFromMetricsDictionary:underlyingDictionary];

    v14 = [AMSMetrics internalInstanceUsingBag:bagCopy];
    [v14 enqueueEvent:v13];
    metricsEvent3 = [(AMSFollowUpItem *)self metricsEvent];
    [v5 addObject:metricsEvent3];

    v16 = +[AMSLogConfig sharedFollowUpConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v16 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v19 = v18;
      logKey = [(AMSFollowUpItem *)self logKey];
      v22 = 138543618;
      v23 = v18;
      v24 = 2114;
      v25 = logKey;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Metrics event enqueued (impression)", &v22, 0x16u);
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

- (BOOL)shouldOverwriteItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy;
  if (itemCopy)
  {
    identifier = [itemCopy identifier];
    if ([identifier length])
    {
      identifier2 = [v5 identifier];
      identifier3 = [(AMSFollowUpItem *)self identifier];
      v9 = [identifier2 isEqualToString:identifier3];

      if (v9)
      {
        account = [v5 account];
        account2 = [(AMSFollowUpItem *)self account];
        v12 = account2;
        if (account == account2)
        {

LABEL_11:
          priority = [(AMSFollowUpItem *)self priority];
          v18 = priority <= [v5 priority];
          goto LABEL_12;
        }

        account3 = [v5 account];
        ams_DSID = [account3 ams_DSID];
        account4 = [(AMSFollowUpItem *)self account];
        ams_DSID2 = [account4 ams_DSID];
        v17 = [ams_DSID isEqualToNumber:ams_DSID2];

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

- (id)postMetricsWithBagContract:(id)contract
{
  contractCopy = contract;
  v5 = [[AMSContractBagShim alloc] initWithBagContract:contractCopy];

  v6 = [(AMSFollowUpItem *)self postMetricsWithBag:v5];

  return v6;
}

@end