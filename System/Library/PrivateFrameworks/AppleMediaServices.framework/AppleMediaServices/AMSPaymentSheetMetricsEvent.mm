@interface AMSPaymentSheetMetricsEvent
+ (id)_propertyValueClassesForKnownProperties;
+ (id)_timestamp;
+ (id)dictionaryForBiometricMatchState:(int64_t)state didBiometricsLockout:(BOOL)lockout biometricsType:(int64_t)type;
+ (id)dictionaryForCancellationEvent:(unint64_t)event didBiometricsLockout:(BOOL)lockout biometricsType:(int64_t)type;
+ (id)dictionaryForUserAction:(int64_t)action didBiometricsLockout:(BOOL)lockout;
- (void)addBiometricMatchState:(int64_t)state;
- (void)addBiometricsState:(int64_t)state;
- (void)addClientMetadataForPaymentSheetRequest:(id)request;
- (void)addClientMetadataForPurchaseInfo:(id)info metricsDictionary:(id)dictionary;
- (void)addDualActionSuccess:(BOOL)success;
@end

@implementation AMSPaymentSheetMetricsEvent

+ (id)dictionaryForBiometricMatchState:(int64_t)state didBiometricsLockout:(BOOL)lockout biometricsType:(int64_t)type
{
  lockoutCopy = lockout;
  v35 = *MEMORY[0x1E69E9840];
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = v9;
  if (state > 3)
  {
    if (state <= 5)
    {
      if (state == 4)
      {
        v13 = @"cancelOutside";
      }

      else
      {
        v13 = @"cancelHomeButton";
      }
    }

    else
    {
      switch(state)
      {
        case 6:
          v13 = @"cancelPhysicalButton";
          break;
        case 7:
          v13 = @"cancelSwipe";
          break;
        case 100:
          [v9 setObject:@"authenticate" forKeyedSubscript:@"actionType"];
          [v10 setObject:@"invalidCredentials" forKeyedSubscript:@"reason"];
          v11 = @"failure";
LABEL_11:
          [v10 setObject:v11 forKeyedSubscript:@"result"];
          v12 = @"Biometric";
LABEL_22:
          v14 = @"targetId";
LABEL_23:
          [v10 setObject:v12 forKeyedSubscript:v14];
          if (!lockoutCopy)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        default:
          goto LABEL_44;
      }
    }

LABEL_21:
    [v9 setObject:v13 forKeyedSubscript:@"actionType"];
    v12 = @"Cancel";
    goto LABEL_22;
  }

  if (state > 1)
  {
    if (state == 2)
    {
      [v9 setObject:@"enterPassword" forKeyedSubscript:@"actionType"];
      v12 = @"EnterPassword";
      goto LABEL_22;
    }

    v13 = @"cancelClicked";
    goto LABEL_21;
  }

  if (!state)
  {
    [v9 setObject:@"error" forKeyedSubscript:@"reason"];
    v12 = @"failure";
    v14 = @"result";
    goto LABEL_23;
  }

  if (state == 1)
  {
    [v9 setObject:@"authenticate" forKeyedSubscript:@"actionType"];
    v11 = @"success";
    goto LABEL_11;
  }

LABEL_44:
  v24 = +[AMSLogConfig sharedConfig];
  if (!v24)
  {
    v24 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v24 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v26 = objc_opt_class();
    v27 = AMSSetLogKeyIfNeeded();
    v28 = [MEMORY[0x1E696AD98] numberWithInteger:state];
    v29 = 138543874;
    v30 = v26;
    v31 = 2114;
    v32 = v27;
    v33 = 2114;
    v34 = v28;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unknown biometric match state: %{public}@", &v29, 0x20u);
  }

  if (lockoutCopy)
  {
LABEL_24:
    [v10 setObject:&unk_1F0779868 forKeyedSubscript:@"bioLockout"];
  }

LABEL_25:
  if (type <= 2)
  {
    if (type == 1)
    {
      goto LABEL_36;
    }

    if (type == 2)
    {
      v15 = @"touchId";
      goto LABEL_35;
    }
  }

  else
  {
    switch(type)
    {
      case 7:
        v15 = @"opticId";
        goto LABEL_35;
      case 4:
        v15 = @"passcode";
        goto LABEL_35;
      case 3:
        v15 = @"faceId";
LABEL_35:
        [v10 setObject:v15 forKeyedSubscript:@"biometricType"];
        goto LABEL_36;
    }
  }

  v19 = +[AMSLogConfig sharedConfig];
  if (!v19)
  {
    v19 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v19 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
  {
    v21 = objc_opt_class();
    v22 = AMSSetLogKeyIfNeeded();
    v23 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    v29 = 138543874;
    v30 = v21;
    v31 = 2114;
    v32 = v22;
    v33 = 2114;
    v34 = v23;
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unknown biometric type: %{public}@", &v29, 0x20u);
  }

LABEL_36:
  _timestamp = [self _timestamp];
  [v10 setObject:_timestamp forKeyedSubscript:@"responseTime"];

  v17 = [v10 copy];

  return v17;
}

+ (id)dictionaryForCancellationEvent:(unint64_t)event didBiometricsLockout:(BOOL)lockout biometricsType:(int64_t)type
{
  v7 = 0;
  if (event > 3)
  {
    if (event - 100 < 2)
    {
      v8 = 100;
    }

    else if (event == 4)
    {
      v8 = 6;
    }

    else
    {
      if (event != 5)
      {
        goto LABEL_15;
      }

      v8 = 7;
    }
  }

  else
  {
    switch(event)
    {
      case 1uLL:
        v8 = 4;
        break;
      case 2uLL:
        v8 = 3;
        break;
      case 3uLL:
        v8 = 5;
        break;
      default:
        goto LABEL_15;
    }
  }

  v7 = [self dictionaryForBiometricMatchState:v8 didBiometricsLockout:lockout biometricsType:{type, v5}];
LABEL_15:

  return v7;
}

+ (id)dictionaryForUserAction:(int64_t)action didBiometricsLockout:(BOOL)lockout
{
  lockoutCopy = lockout;
  v28 = *MEMORY[0x1E69E9840];
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = v7;
  if (action > 4)
  {
    if (action <= 6)
    {
      if (action == 5)
      {
        [v7 setObject:@"invalidCredentials" forKeyedSubscript:@"reason"];
        v12 = @"failure";
      }

      else
      {
        v12 = @"success";
      }

      v13 = @"result";
    }

    else
    {
      switch(action)
      {
        case 7:
          v12 = @"enterPasswordCancelled";
          break;
        case 8:
          v12 = @"enterPasswordPressed";
          break;
        case 9:
          [v7 setObject:@"cancelHomeButton" forKeyedSubscript:@"actionType"];
          v9 = @"Cancel";
LABEL_24:
          v11 = v8;
LABEL_25:
          [v11 setObject:v9 forKeyedSubscript:@"targetId"];
          if (!lockoutCopy)
          {
            goto LABEL_27;
          }

          goto LABEL_26;
        default:
          goto LABEL_30;
      }

      v13 = @"actionType";
    }

    [v8 setObject:v12 forKeyedSubscript:v13];
    v9 = @"authenticate";
    goto LABEL_24;
  }

  if (action > 2)
  {
    if (action != 3)
    {
      [v7 setObject:@"cancel" forKeyedSubscript:@"actionType"];
      [v8 setObject:@"Cancel" forKeyedSubscript:@"targetId"];
      v9 = @"authenticate";
      v11 = v8;
      goto LABEL_25;
    }

    v10 = @"open";
    goto LABEL_17;
  }

  if (action == 1)
  {
    [v7 setObject:@"ok" forKeyedSubscript:@"actionType"];
    [v8 setObject:@"success" forKeyedSubscript:@"result"];
    v9 = @"Ok";
    goto LABEL_24;
  }

  if (action == 2)
  {
    v10 = @"cancel";
LABEL_17:
    [v7 setObject:v10 forKeyedSubscript:@"actionType"];
    v9 = @"IForgot";
    goto LABEL_24;
  }

LABEL_30:
  v17 = +[AMSLogConfig sharedConfig];
  if (!v17)
  {
    v17 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v17 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v19 = objc_opt_class();
    v20 = AMSSetLogKeyIfNeeded();
    v21 = [MEMORY[0x1E696AD98] numberWithInteger:action];
    v22 = 138543874;
    v23 = v19;
    v24 = 2114;
    v25 = v20;
    v26 = 2114;
    v27 = v21;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unknown user action: %{public}@", &v22, 0x20u);
  }

  if (lockoutCopy)
  {
LABEL_26:
    [v8 setObject:&unk_1F0779868 forKeyedSubscript:@"bioLockout"];
  }

LABEL_27:
  _timestamp = [self _timestamp];
  [v8 setObject:_timestamp forKeyedSubscript:@"responseTime"];

  v15 = [v8 copy];

  return v15;
}

- (void)addBiometricMatchState:(int64_t)state
{
  v19 = *MEMORY[0x1E69E9840];
  if (state <= 1)
  {
    if (!state)
    {
      v6 = @"failure";
      v7 = @"result";
      goto LABEL_13;
    }

    if (state == 1)
    {
      [(AMSMetricsEvent *)self setProperty:@"biometricsAnalyze" forBodyKey:@"actionType"];
      v5 = @"success";
      goto LABEL_9;
    }
  }

  else
  {
    switch(state)
    {
      case 2:
        [(AMSMetricsEvent *)self setProperty:@"enterPassword" forBodyKey:@"actionType"];
        [(AMSMetricsEvent *)self setProperty:@"success" forBodyKey:@"result"];
        v6 = @"EnterPassword";
        goto LABEL_12;
      case 3:
        [(AMSMetricsEvent *)self setProperty:@"cancel" forBodyKey:@"actionType"];
        [(AMSMetricsEvent *)self setProperty:@"failure" forBodyKey:@"result"];
        v6 = @"Cancel";
        goto LABEL_12;
      case 100:
        [(AMSMetricsEvent *)self setProperty:@"biometricsAnalyze" forBodyKey:@"actionType"];
        v5 = @"failure";
LABEL_9:
        [(AMSMetricsEvent *)self setProperty:v5 forBodyKey:@"result"];
        v6 = @"Biometric";
LABEL_12:
        v7 = @"targetId";
LABEL_13:

        [(AMSMetricsEvent *)self setProperty:v6 forBodyKey:v7];
        return;
    }
  }

  v8 = +[AMSLogConfig sharedConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v10 = objc_opt_class();
    v11 = AMSSetLogKeyIfNeeded();
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:state];
    v13 = 138543874;
    v14 = v10;
    v15 = 2114;
    v16 = v11;
    v17 = 2114;
    v18 = v12;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unknown match state: %{public}@", &v13, 0x20u);
  }
}

- (void)addBiometricsState:(int64_t)state
{
  if (state == 1)
  {
    v3 = @"on";
  }

  else
  {
    if (state != 2)
    {
      return;
    }

    v3 = @"off";
  }

  [(AMSMetricsEvent *)self setProperty:v3 forBodyKey:@"bioAuthCommerceSetting"];
}

- (void)addClientMetadataForPaymentSheetRequest:(id)request
{
  requestCopy = request;
  salableInfoLabel = [requestCopy salableInfoLabel];

  if (salableInfoLabel)
  {
    salableInfoLabel2 = [requestCopy salableInfoLabel];
    v6 = [AMSPaymentSheetRequest attributedStringByRemovingPlaceholderTagsFromAttributedString:salableInfoLabel2];
    string = [v6 string];

    [(AMSMetricsEvent *)self setProperty:string forBodyKey:@"message"];
  }
}

- (void)addClientMetadataForPurchaseInfo:(id)info metricsDictionary:(id)dictionary
{
  v25[1] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  dictionaryCopy = dictionary;
  buyParams = [infoCopy buyParams];
  stringValue = [buyParams stringValue];

  if (stringValue)
  {
    v24 = @"buyParams";
    v25[0] = stringValue;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    [(AMSMetricsEvent *)self setProperty:v10 forBodyKey:@"details"];
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"mtClientId"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;

    if (v12)
    {
      [(AMSMetricsEvent *)self setProperty:v12 forBodyKey:@"clientId"];
    }
  }

  else
  {

    v12 = 0;
  }

  [(AMSMetricsEvent *)self setProperty:@"SignIn" forBodyKey:@"dialogType"];
  clientInfo = [infoCopy clientInfo];
  v14 = [AMSUserAgent userAgentForProcessInfo:clientInfo];

  if (v14)
  {
    [(AMSMetricsEvent *)self setProperty:v14 forBodyKey:@"userAgent"];
  }

  clientInfo2 = [infoCopy clientInfo];
  proxyAppBundleID = [clientInfo2 proxyAppBundleID];

  if (proxyAppBundleID || ([infoCopy clientInfo], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "mappedBundleInfo"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "bundleIdentifier"), proxyAppBundleID = objc_claimAutoreleasedReturnValue(), v18, v17, proxyAppBundleID) || (objc_msgSend(infoCopy, "clientInfo"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "bundleIdentifier"), proxyAppBundleID = objc_claimAutoreleasedReturnValue(), v19, proxyAppBundleID))
  {
    [(AMSMetricsEvent *)self setProperty:proxyAppBundleID forBodyKey:@"hostApp"];
  }

  v20 = [dictionaryCopy objectForKeyedSubscript:@"titleType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = v20;

    if (v21)
    {
      [(AMSMetricsEvent *)self setProperty:v21 forBodyKey:@"titleType"];
    }
  }

  else
  {

    v21 = 0;
  }

  v22 = [dictionaryCopy objectForKeyedSubscript:@"titleValue"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = v22;

    if (v23)
    {
      [(AMSMetricsEvent *)self setProperty:v23 forBodyKey:@"titleValue"];
    }
  }

  else
  {

    v23 = 0;
  }
}

- (void)addDualActionSuccess:(BOOL)success
{
  if (success)
  {
    v3 = @"success";
  }

  else
  {
    v3 = @"failure";
  }

  [(AMSMetricsEvent *)self setProperty:v3 forBodyKey:@"dualAction"];
}

+ (id)_propertyValueClassesForKnownProperties
{
  v9[19] = *MEMORY[0x1E69E9840];
  v8[0] = @"clientId";
  v9[0] = objc_opt_class();
  v8[1] = @"message";
  v9[1] = objc_opt_class();
  v8[2] = @"dialogType";
  v9[2] = objc_opt_class();
  v8[3] = @"mtClientId";
  v9[3] = objc_opt_class();
  v8[4] = @"titleType";
  v9[4] = objc_opt_class();
  v8[5] = @"titleValue";
  v9[5] = objc_opt_class();
  v8[6] = @"details";
  v9[6] = objc_opt_class();
  v8[7] = @"hostApp";
  v9[7] = objc_opt_class();
  v8[8] = @"userAgent";
  v9[8] = objc_opt_class();
  v8[9] = @"userActions";
  v9[9] = objc_opt_class();
  v8[10] = @"bioLockout";
  v9[10] = objc_opt_class();
  v8[11] = @"biometricType";
  v9[11] = objc_opt_class();
  v8[12] = @"dualAction";
  v9[12] = objc_opt_class();
  v8[13] = @"reason";
  v9[13] = objc_opt_class();
  v8[14] = @"responseTime";
  v9[14] = objc_opt_class();
  v8[15] = @"result";
  v9[15] = objc_opt_class();
  v8[16] = @"targetId";
  v9[16] = objc_opt_class();
  v8[17] = @"actionType";
  v9[17] = objc_opt_class();
  v8[18] = @"bioAuthCommerceSetting";
  v9[18] = objc_opt_class();
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:19];
  v4 = [v3 mutableCopy];

  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___AMSPaymentSheetMetricsEvent;
  v5 = objc_msgSendSuper2(&v7, sel__propertyValueClassesForKnownProperties);
  [v4 addEntriesFromDictionary:v5];

  return v4;
}

+ (id)_timestamp
{
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v4 = v3;

  v5 = MEMORY[0x1E696AEC0];
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:v4];
  v7 = [v5 stringWithFormat:@"%@", v6];

  return v7;
}

@end