@interface AMSMetricsEvent
+ (id)_buyParamsFromString:(id)string;
+ (id)_buyParamsStringFromAuthenticationContext:(id)context;
+ (id)_deepCopiedAndSanitizedTopLevelDictionaryFromDictionary:(id)dictionary;
+ (id)_deepCopiedJSONObjectOrNilForObject:(id)object;
+ (id)_deepCopiedJSONObjectOrNilForObject:(id)object key:(id)key enforcingClassUsingKnownPropertiesClassMapping:(id)mapping;
+ (id)_propertyValueClassesForKnownProperties;
+ (id)_topicFromAuthenticationContext:(id)context;
+ (id)createEventFromAuthenticationContext:(id)context error:(id)error;
+ (id)metricsAuthenticationAttemptDictionaryForAuthKitError:(id)error;
+ (id)sanitizedObject:(id)object;
- (ACAccount)account;
- (AMSMetricsEvent)initWithCoder:(id)coder;
- (AMSMetricsEvent)initWithTopic:(id)topic;
- (BOOL)checkDiagnosticsAndUsageSetting;
- (BOOL)enableAccountIdentifierAutoDecoration;
- (BOOL)engagementEvent;
- (BOOL)isAccountIdentifierAutoDecorationEnabled;
- (BOOL)isAnonymous;
- (BOOL)preventSampling;
- (BOOL)suppressEngagement;
- (NSDate)clientOnlyEventDate;
- (NSDictionary)databaseEventBody;
- (NSDictionary)dictionaryForPosting;
- (NSDictionary)underlyingDictionary;
- (NSNumber)databasePID;
- (id)_initWithSanitizedUnderlyingDictionary:(id)dictionary account:(id)account databasePID:(id)d;
- (id)_initWithUnderlyingDictionary:(id)dictionary account:(id)account databasePID:(id)d addBasefields:(BOOL)basefields;
- (id)_propertyForBodyKey:(id)key clientOnly:(BOOL)only;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initForEngagement;
- (void)_setProperty:(id)property forBodyKey:(id)key clientOnly:(BOOL)only;
- (void)addPropertiesWithDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
- (void)removePropertiesForKeys:(id)keys;
- (void)setAccount:(id)account;
- (void)setAnonymous:(BOOL)anonymous;
- (void)setCheckDiagnosticsAndUsageSetting:(BOOL)setting;
- (void)setClientOnlyEventDate:(id)date;
- (void)setEnableAccountIdentifierAutoDecoration:(BOOL)decoration;
- (void)setPreventSampling:(BOOL)sampling;
- (void)setSuppressEngagement:(BOOL)engagement;
@end

@implementation AMSMetricsEvent

+ (id)_propertyValueClassesForKnownProperties
{
  v5[22] = *MEMORY[0x1E69E9840];
  v4[0] = @"app";
  v5[0] = objc_opt_class();
  v4[1] = @"appVersion";
  v5[1] = objc_opt_class();
  v4[2] = @"anonymous";
  v5[2] = objc_opt_class();
  v4[3] = @"baseVersion";
  v5[3] = objc_opt_class();
  v4[4] = @"canaryIdentifier";
  v5[4] = objc_opt_class();
  v4[5] = @"clientEventId";
  v5[5] = objc_opt_class();
  v4[6] = @"clientId";
  v5[6] = objc_opt_class();
  v4[7] = @"engagementMetrics";
  v5[7] = objc_opt_class();
  v4[8] = @"eventTime";
  v5[8] = objc_opt_class();
  v4[9] = @"eventType";
  v5[9] = objc_opt_class();
  v4[10] = @"eventVersion";
  v5[10] = objc_opt_class();
  v4[11] = @"osBuildVersion";
  v5[11] = objc_opt_class();
  v4[12] = @"osName";
  v5[12] = objc_opt_class();
  v4[13] = @"osVersion";
  v5[13] = objc_opt_class();
  v4[14] = @"timezoneOffset";
  v5[14] = objc_opt_class();
  v4[15] = @"topic";
  v5[15] = objc_opt_class();
  v4[16] = @"clientOnlyProperties";
  v5[16] = objc_opt_class();
  v4[17] = @"checkDU";
  v5[17] = objc_opt_class();
  v4[18] = @"diagnosticsSubmissionBugType";
  v5[18] = objc_opt_class();
  v4[19] = @"preventSampling";
  v5[19] = objc_opt_class();
  v4[20] = @"engagementEvent";
  v5[20] = objc_opt_class();
  v4[21] = @"suppressEngagement";
  v5[21] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:22];

  return v2;
}

- (ACAccount)account
{
  os_unfair_lock_lock_with_options();
  v3 = self->_account;
  os_unfair_lock_unlock(&self->_internalStateLock);

  return v3;
}

- (BOOL)engagementEvent
{
  v2 = [(AMSMetricsEvent *)self _propertyForBodyKey:@"engagementEvent" clientOnly:1];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (NSDictionary)underlyingDictionary
{
  os_unfair_lock_lock_with_options();
  v3 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:self->_underlyingDictionary copyItems:1];
  os_unfair_lock_unlock(&self->_internalStateLock);

  return v3;
}

- (BOOL)checkDiagnosticsAndUsageSetting
{
  v2 = [(AMSMetricsEvent *)self _propertyForBodyKey:@"checkDU" clientOnly:1];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)suppressEngagement
{
  v2 = [(AMSMetricsEvent *)self _propertyForBodyKey:@"suppressEngagement" clientOnly:1];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isAnonymous
{
  v2 = [(AMSMetricsEvent *)self propertyForBodyKey:@"anonymous"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (NSDictionary)databaseEventBody
{
  underlyingDictionaryOverride = [(AMSMetricsEvent *)self underlyingDictionaryOverride];
  v4 = [underlyingDictionaryOverride mutableCopy];

  if (!v4)
  {
    os_unfair_lock_lock_with_options();
    v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:self->_underlyingDictionary copyItems:1];
    os_unfair_lock_unlock(&self->_internalStateLock);
  }

  v5 = +[AMSDefaults metricsCanaryIdentifier];
  if ([v5 length])
  {
    [v4 setObject:v5 forKeyedSubscript:@"canaryIdentifier"];
  }

  return v4;
}

+ (id)createEventFromAuthenticationContext:(id)context error:(id)error
{
  v24[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  errorCopy = error;
  v8 = [self _topicFromAuthenticationContext:contextCopy];
  if (v8)
  {
    v9 = [[AMSMetricsEvent alloc] initWithTopic:v8];
    [(AMSMetricsEvent *)v9 setProperty:@"SignIn" forBodyKey:@"dialogType"];
    [(AMSMetricsEvent *)v9 setProperty:@"dialog" forBodyKey:@"eventType"];
    username = [contextCopy username];
    v11 = [username length];

    if (v11)
    {
      v12 = @"Password";
    }

    else
    {
      v12 = @"UserNamePassword";
    }

    [(AMSMetricsEvent *)v9 setProperty:v12 forBodyKey:@"dialogId"];
    v13 = @"Ok";
    if (errorCopy)
    {
      if ([errorCopy code] == -7003)
      {
        v13 = @"Cancel";
        v14 = @"cancel";
      }

      else
      {
        v14 = @"enterPassword";
      }

      v15 = @"failure";
    }

    else
    {
      v14 = @"ok";
      v15 = @"success";
    }

    [(AMSMetricsEvent *)v9 setProperty:v14 forBodyKey:@"actionType"];
    [(AMSMetricsEvent *)v9 setProperty:v15 forBodyKey:@"result"];
    [(AMSMetricsEvent *)v9 setProperty:v13 forBodyKey:@"targetId"];
    clientInfo = [contextCopy clientInfo];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [clientInfo objectForKeyedSubscript:@"metricsAuthenticationAttempts"];
      [(AMSMetricsEvent *)v9 setProperty:v17 forBodyKey:@"userActions"];
    }

    v18 = [self _buyParamsStringFromAuthenticationContext:contextCopy];
    v19 = v18;
    if (v18)
    {
      v23 = @"buyParams";
      v24[0] = v18;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      [(AMSMetricsEvent *)v9 setProperty:v20 forBodyKey:@"details"];
    }

    v21 = [clientInfo objectForKeyedSubscript:@"AMSAuthenticateOptionsUserAgentKey"];
    if (v21)
    {
      [(AMSMetricsEvent *)v9 setProperty:v21 forBodyKey:@"userAgent"];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)metricsAuthenticationAttemptDictionaryForAuthKitError:(id)error
{
  errorCopy = error;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v4 setObject:@"authenticate" forKeyedSubscript:@"targetId"];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v7 = v6;

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", (v7 * 1000.0)];
  [v4 setObject:v8 forKeyedSubscript:@"responseTime"];
  if (errorCopy)
  {
    [v4 setObject:@"failure" forKeyedSubscript:@"result"];
    code = [errorCopy code];
    v10 = @"unknown";
    if (code == -7006)
    {
      v10 = @"invalidCredentials";
    }

    if (code == -7010)
    {
      v10 = @"badServerResponse";
    }

    if (code == -7028)
    {
      v11 = @"maxNumberOfAttemptsReached";
    }

    else
    {
      v11 = v10;
    }

    v12 = @"reason";
  }

  else
  {
    v11 = @"success";
    v12 = @"result";
  }

  [v4 setObject:v11 forKeyedSubscript:v12];

  return v4;
}

+ (id)_buyParamsFromString:(id)string
{
  v22 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [stringCopy componentsSeparatedByString:@"&"];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v17 + 1) + 8 * i) componentsSeparatedByString:@"="];
        if ([v10 count] == 2)
        {
          v11 = [v10 objectAtIndexedSubscript:0];
          v12 = [v10 objectAtIndexedSubscript:1];
          v13 = v12;
          if (v11)
          {
            v14 = v12 == 0;
          }

          else
          {
            v14 = 1;
          }

          if (!v14)
          {
            [v4 setObject:v12 forKeyedSubscript:v11];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = [v4 copy];

  return v15;
}

+ (id)_buyParamsStringFromAuthenticationContext:(id)context
{
  clientInfo = [context clientInfo];
  v4 = [clientInfo objectForKeyedSubscript:@"AMSAuthenticateOptionsCreateAccountQueryParamsKey"];

  if (v4)
  {
    v5 = [v4 objectForKeyedSubscript:@"product"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_topicFromAuthenticationContext:(id)context
{
  v4 = [self _buyParamsStringFromAuthenticationContext:context];
  if (v4)
  {
    v5 = [self _buyParamsFromString:v4];
    v6 = [v5 objectForKeyedSubscript:@"mtTopic"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)initForEngagement
{
  v3 = AMSMetricsEventDefaultUnderlyingDictionary();
  v4 = [v3 objectForKeyedSubscript:@"clientOnlyProperties"];
  [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"engagementEvent"];

  v5 = [(AMSMetricsEvent *)self _initWithSanitizedUnderlyingDictionary:v3 account:0 databasePID:0];
  return v5;
}

- (id)_initWithSanitizedUnderlyingDictionary:(id)dictionary account:(id)account databasePID:(id)d
{
  dictionaryCopy = dictionary;
  accountCopy = account;
  dCopy = d;
  v15.receiver = self;
  v15.super_class = AMSMetricsEvent;
  v12 = [(AMSMetricsEvent *)&v15 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    v12->_internalStateLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v12->_underlyingDictionary, dictionary);
    objc_storeStrong(p_isa + 3, account);
    objc_storeStrong(p_isa + 4, d);
  }

  return p_isa;
}

- (id)_initWithUnderlyingDictionary:(id)dictionary account:(id)account databasePID:(id)d addBasefields:(BOOL)basefields
{
  if (basefields)
  {
    dCopy = d;
    accountCopy = account;
    dictionaryCopy = dictionary;
    v13 = AMSMetricsEventDefaultUnderlyingDictionary();
    dictionaryCopy2 = [AMSMetricsEvent _deepCopiedAndSanitizedTopLevelDictionaryFromDictionary:dictionaryCopy];

    [v13 addEntriesFromDictionary:dictionaryCopy2];
  }

  else
  {
    dCopy2 = d;
    accountCopy2 = account;
    dictionaryCopy2 = dictionary;
    v13 = [AMSMetricsEvent _deepCopiedAndSanitizedTopLevelDictionaryFromDictionary:dictionaryCopy2];
  }

  v17 = [(AMSMetricsEvent *)self _initWithSanitizedUnderlyingDictionary:v13 account:account databasePID:d];
  return v17;
}

- (AMSMetricsEvent)initWithTopic:(id)topic
{
  v39 = *MEMORY[0x1E69E9840];
  topicCopy = topic;
  v32.receiver = self;
  v32.super_class = AMSMetricsEvent;
  v5 = [(AMSMetricsEvent *)&v32 init];
  v6 = v5;
  if (v5)
  {
    v5->_internalStateLock._os_unfair_lock_opaque = 0;
    v7 = AMSMetricsEventDefaultUnderlyingDictionary();
    underlyingDictionary = v6->_underlyingDictionary;
    v6->_underlyingDictionary = v7;

    v9 = 0x1E696A000uLL;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      defaultCenter = [topicCopy copy];
      [(NSMutableDictionary *)v6->_underlyingDictionary setObject:defaultCenter forKeyedSubscript:@"topic"];
    }

    else
    {
      v11 = +[AMSUnitTests isRunningUnitTests];
      v12 = +[AMSLogConfig sharedMetricsConfig];
      defaultCenter = v12;
      if (v11)
      {
        if (!v12)
        {
          defaultCenter = +[AMSLogConfig sharedConfig];
        }

        oSLogObject = [defaultCenter OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
        {
          v14 = AMSLogKey();
          v15 = MEMORY[0x1E696AEC0];
          v16 = objc_opt_class();
          v17 = v16;
          if (v14)
          {
            v9 = AMSLogKey();
            [v15 stringWithFormat:@"%@: [%@] ", v17, v9];
          }

          else
          {
            [v15 stringWithFormat:@"%@: ", v16];
          }
          v18 = ;
          v25 = AMSHashIfNeeded(topicCopy);
          v26 = objc_opt_class();
          *buf = 138543874;
          v34 = v18;
          v35 = 2114;
          v36 = v25;
          v37 = 2114;
          v38 = v26;
          v27 = v26;
          _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@Attempting to construct metrics event with non-NSString topic: topic = %{public}@, topic class = %{public}@", buf, 0x20u);
          if (v14)
          {

            v18 = v9;
          }
        }

        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        oSLogObject2 = +[AMSLogConfig sharedMetricsConfig];
        [defaultCenter postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:oSLogObject2 userInfo:0];
      }

      else
      {
        if (!v12)
        {
          defaultCenter = +[AMSLogConfig sharedConfig];
        }

        oSLogObject2 = [defaultCenter OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_FAULT))
        {
          v20 = AMSLogKey();
          v21 = MEMORY[0x1E696AEC0];
          v22 = objc_opt_class();
          v23 = v22;
          if (v20)
          {
            v9 = AMSLogKey();
            [v21 stringWithFormat:@"%@: [%@] ", v23, v9];
          }

          else
          {
            [v21 stringWithFormat:@"%@: ", v22];
          }
          v24 = ;
          v28 = AMSHashIfNeeded(topicCopy);
          v29 = objc_opt_class();
          *buf = 138543874;
          v34 = v24;
          v35 = 2114;
          v36 = v28;
          v37 = 2114;
          v38 = v29;
          v30 = v29;
          _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_FAULT, "%{public}@Attempting to construct metrics event with non-NSString topic: topic = %{public}@, topic class = %{public}@", buf, 0x20u);
          if (v20)
          {

            v24 = v9;
          }
        }
      }
    }

    if ([topicCopy isEqual:0x1F0733698])
    {
      [(AMSMetricsEvent *)v6 setCheckDiagnosticsAndUsageSetting:1];
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  os_unfair_lock_lock_with_options();
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:self->_underlyingDictionary copyItems:1];
  account = self->_account;
  v7 = self->_databasePID;
  v8 = account;
  os_unfair_lock_unlock(&self->_internalStateLock);
  v9 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "_initWithSanitizedUnderlyingDictionary:account:databasePID:", v5, v8, v7}];

  return v9;
}

- (NSDictionary)dictionaryForPosting
{
  v40 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock_with_options();
  v4 = [(NSMutableDictionary *)self->_underlyingDictionary mutableCopy];
  os_unfair_lock_unlock(&self->_internalStateLock);
  [v4 removeObjectForKey:@"clientOnlyProperties"];
  v5 = [v4 objectForKey:@"canonicalAccountIdentifierOverride"];

  if (v5)
  {
    v6 = +[AMSUnitTests isRunningUnitTests];
    v7 = +[AMSLogConfig sharedMetricsConfig];
    defaultCenter = v7;
    if (v6)
    {
      if (!v7)
      {
        defaultCenter = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [defaultCenter OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v10 = AMSLogKey();
        v11 = MEMORY[0x1E696AEC0];
        v12 = objc_opt_class();
        v13 = v12;
        if (v10)
        {
          v2 = AMSLogKey();
          [v11 stringWithFormat:@"%@: [%@] ", v13, v2];
        }

        else
        {
          [v11 stringWithFormat:@"%@: ", v12];
        }
        v14 = ;
        *buf = 138543362;
        v39 = v14;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@canonicalAccountIdentifierOverride property exists in metrics event when posting; removing it.", buf, 0xCu);
        if (v10)
        {

          v14 = v2;
        }
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      oSLogObject2 = +[AMSLogConfig sharedMetricsConfig];
      [defaultCenter postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:oSLogObject2 userInfo:0];
    }

    else
    {
      if (!v7)
      {
        defaultCenter = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [defaultCenter OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_FAULT))
      {
        v16 = AMSLogKey();
        v17 = MEMORY[0x1E696AEC0];
        v18 = objc_opt_class();
        v19 = v18;
        if (v16)
        {
          v2 = AMSLogKey();
          [v17 stringWithFormat:@"%@: [%@] ", v19, v2];
        }

        else
        {
          [v17 stringWithFormat:@"%@: ", v18];
        }
        v20 = ;
        *buf = 138543362;
        v39 = v20;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_FAULT, "%{public}@canonicalAccountIdentifierOverride property exists in metrics event when posting; removing it.", buf, 0xCu);
        if (v16)
        {

          v20 = v2;
        }
      }
    }

    [v4 removeObjectForKey:@"canonicalAccountIdentifierOverride"];
  }

  v21 = [v4 objectForKey:@"enableAccountIdentifierAutoDecoration"];

  if (v21)
  {
    v22 = +[AMSUnitTests isRunningUnitTests];
    v23 = +[AMSLogConfig sharedMetricsConfig];
    defaultCenter2 = v23;
    if (v22)
    {
      if (!v23)
      {
        defaultCenter2 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [defaultCenter2 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        v26 = AMSLogKey();
        v27 = MEMORY[0x1E696AEC0];
        v28 = objc_opt_class();
        v29 = v28;
        if (v26)
        {
          self = AMSLogKey();
          [v27 stringWithFormat:@"%@: [%@] ", v29, self];
        }

        else
        {
          [v27 stringWithFormat:@"%@: ", v28];
        }
        selfCopy = ;
        *buf = 138543362;
        v39 = selfCopy;
        _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@enableAccountIdentifierAutoDecoration property exists in metrics event when posting; removing it.", buf, 0xCu);
        if (v26)
        {

          selfCopy = self;
        }
      }

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      oSLogObject4 = +[AMSLogConfig sharedMetricsConfig];
      [defaultCenter2 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:oSLogObject4 userInfo:0];
    }

    else
    {
      if (!v23)
      {
        defaultCenter2 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject4 = [defaultCenter2 OSLogObject];
      if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_FAULT))
      {
        v32 = AMSLogKey();
        v33 = MEMORY[0x1E696AEC0];
        v34 = objc_opt_class();
        v35 = v34;
        if (v32)
        {
          self = AMSLogKey();
          [v33 stringWithFormat:@"%@: [%@] ", v35, self];
        }

        else
        {
          [v33 stringWithFormat:@"%@: ", v34];
        }
        selfCopy2 = ;
        *buf = 138543362;
        v39 = selfCopy2;
        _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_FAULT, "%{public}@enableAccountIdentifierAutoDecoration property exists in metrics event when posting; removing it.", buf, 0xCu);
        if (v32)
        {

          selfCopy2 = self;
        }
      }
    }

    [v4 removeObjectForKey:@"enableAccountIdentifierAutoDecoration"];
  }

  return v4;
}

+ (id)sanitizedObject:(id)object
{
  v40 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = objectCopy;
LABEL_5:
    v6 = v5;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = MEMORY[0x1E696AEC0];
    [objectCopy timeIntervalSince1970];
    v5 = [v8 stringWithFormat:@"%lld", v9];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = [objectCopy base64EncodedStringWithOptions:0];
    v6 = [v10 stringWithFormat:@"%@", v11];
LABEL_34:

    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v11 = objectCopy;
    v12 = [v11 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v35;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v35 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v34 + 1) + 8 * i);
          v17 = objc_autoreleasePoolPush();
          v18 = [self sanitizedObject:v16];
          if (v18)
          {
            [v6 addObject:v18];
          }

          objc_autoreleasePoolPop(v17);
        }

        v13 = [v11 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v13);
    }

    goto LABEL_34;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v11 = objectCopy;
    v19 = [v11 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v31;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(v11);
          }

          v23 = *(*(&v30 + 1) + 8 * j);
          v24 = objc_autoreleasePoolPush();
          v25 = [self sanitizedObject:v23];
          if (v25)
          {
            [v6 addObject:v25];
          }

          objc_autoreleasePoolPop(v24);
        }

        v20 = [v11 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v20);
    }

    goto LABEL_34;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __35__AMSMetricsEvent_sanitizedObject___block_invoke;
    v27[3] = &unk_1E73B9998;
    selfCopy = self;
    v6 = v26;
    v28 = v6;
    [objectCopy enumerateKeysAndObjectsUsingBlock:v27];
  }

  else
  {
    v6 = 0;
  }

LABEL_6:

  return v6;
}

void __35__AMSMetricsEvent_sanitizedObject___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [*(a1 + 40) sanitizedObject:v5];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && v7)
  {
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
  }

  objc_autoreleasePoolPop(v6);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  os_unfair_lock_lock_with_options();
  v5 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:self->_underlyingDictionary copyItems:1];
  os_unfair_lock_unlock(&self->_internalStateLock);
  [coderCopy encodeObject:v5 forKey:@"underlyingDictionary"];
}

- (AMSMetricsEvent)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  ams_JSONClasses = [v4 ams_JSONClasses];
  v7 = [coderCopy decodeObjectOfClasses:ams_JSONClasses forKey:@"underlyingDictionary"];

  v8 = [(AMSMetricsEvent *)self initWithUnderlyingDictionary:v7];
  return v8;
}

- (BOOL)enableAccountIdentifierAutoDecoration
{
  v2 = [(AMSMetricsEvent *)self _propertyForBodyKey:@"enableAccountIdentifierAutoDecoration" clientOnly:1];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (NSDate)clientOnlyEventDate
{
  v2 = [(AMSMetricsEvent *)self _propertyForBodyKey:@"clientOnlyEventDate" clientOnly:1];
  if (v2)
  {
    [AMSMetrics timeIntervalFromServerTime:v2];
    [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:?];
  }

  else
  {
    [MEMORY[0x1E695DF00] date];
  }
  v3 = ;

  return v3;
}

- (void)setClientOnlyEventDate:(id)date
{
  v4 = [AMSMetrics serverTimeFromDate:date];
  [(AMSMetricsEvent *)self _setProperty:v4 forBodyKey:@"clientOnlyEventDate" clientOnly:1];
}

- (BOOL)isAccountIdentifierAutoDecorationEnabled
{
  if (![(AMSMetricsEvent *)self enableAccountIdentifierAutoDecoration])
  {
    return 0;
  }

  v3 = [(AMSMetricsEvent *)self propertyForBodyKey:@"enableAccountIdentifierAutoDecoration"];
  if (v3)
  {
    v4 = [(AMSMetricsEvent *)self propertyForBodyKey:@"enableAccountIdentifierAutoDecoration"];
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (BOOL)preventSampling
{
  v2 = [(AMSMetricsEvent *)self _propertyForBodyKey:@"preventSampling" clientOnly:1];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setAnonymous:(BOOL)anonymous
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:anonymous];
  [(AMSMetricsEvent *)self setProperty:v4 forBodyKey:@"anonymous"];
}

- (void)setCheckDiagnosticsAndUsageSetting:(BOOL)setting
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:setting];
  [(AMSMetricsEvent *)self _setProperty:v4 forBodyKey:@"checkDU" clientOnly:1];
}

- (void)setEnableAccountIdentifierAutoDecoration:(BOOL)decoration
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:decoration];
  [(AMSMetricsEvent *)self _setProperty:v4 forBodyKey:@"enableAccountIdentifierAutoDecoration" clientOnly:1];
}

- (void)setPreventSampling:(BOOL)sampling
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:sampling];
  [(AMSMetricsEvent *)self _setProperty:v4 forBodyKey:@"preventSampling" clientOnly:1];
}

- (void)setSuppressEngagement:(BOOL)engagement
{
  engagementCopy = engagement;
  v14 = *MEMORY[0x1E69E9840];
  if ([(AMSMetricsEvent *)self engagementEvent])
  {
    v5 = +[AMSLogConfig sharedMetricsConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = AMSLogKey();
      *buf = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v8;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Attempting to suppress engagement for engagement event", buf, 0x16u);
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:engagementCopy];
    [AMSMetricsEvent _setProperty:"_setProperty:forBodyKey:clientOnly:" forBodyKey:? clientOnly:?];
  }
}

- (void)setAccount:(id)account
{
  accountCopy = account;
  os_unfair_lock_lock_with_options();
  account = self->_account;
  self->_account = accountCopy;

  os_unfair_lock_unlock(&self->_internalStateLock);
}

- (NSNumber)databasePID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_databasePID;
  os_unfair_lock_unlock(&self->_internalStateLock);

  return v3;
}

- (void)addPropertiesWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7 = [objc_opt_class() _deepCopiedAndSanitizedTopLevelDictionaryFromDictionary:dictionaryCopy];

  topic = [(AMSMetricsEvent *)self topic];
  v6 = [topic isEqualToString:0x1F0733698];

  if (v6)
  {
    [v7 setObject:0x1F0733698 forKeyedSubscript:@"topic"];
  }

  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_underlyingDictionary addEntriesFromDictionary:v7];
  os_unfair_lock_unlock(&self->_internalStateLock);
}

- (void)removePropertiesForKeys:(id)keys
{
  keysCopy = keys;
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_underlyingDictionary removeObjectsForKeys:keysCopy];

  os_unfair_lock_unlock(&self->_internalStateLock);
}

- (id)_propertyForBodyKey:(id)key clientOnly:(BOOL)only
{
  onlyCopy = only;
  keyCopy = key;
  os_unfair_lock_lock_with_options();
  underlyingDictionary = self->_underlyingDictionary;
  if (onlyCopy)
  {
    v8 = [(NSMutableDictionary *)underlyingDictionary objectForKeyedSubscript:@"clientOnlyProperties"];
    v9 = [v8 objectForKeyedSubscript:keyCopy];
  }

  else
  {
    v9 = [(NSMutableDictionary *)underlyingDictionary objectForKeyedSubscript:keyCopy];
  }

  os_unfair_lock_unlock(&self->_internalStateLock);

  return v9;
}

- (void)_setProperty:(id)property forBodyKey:(id)key clientOnly:(BOOL)only
{
  onlyCopy = only;
  propertyCopy = property;
  keyCopy = key;
  if (!propertyCopy)
  {
    v10 = 0;
LABEL_5:
    os_unfair_lock_lock_with_options();
    v11 = self->_underlyingDictionary;
    if (onlyCopy)
    {
      v12 = [(NSMutableDictionary *)self->_underlyingDictionary objectForKeyedSubscript:@"clientOnlyProperties"];

      if (v12)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v12;
          goto LABEL_12;
        }

        v11 = [(NSMutableDictionary *)v12 mutableCopy];
      }

      else
      {
        v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      [(NSMutableDictionary *)self->_underlyingDictionary setObject:v11 forKeyedSubscript:@"clientOnlyProperties"];
    }

LABEL_12:
    [(NSMutableDictionary *)v11 setObject:v10 forKeyedSubscript:keyCopy];
    os_unfair_lock_unlock(&self->_internalStateLock);

    goto LABEL_13;
  }

  _propertyValueClassesForKnownProperties = [objc_opt_class() _propertyValueClassesForKnownProperties];
  v10 = [AMSMetricsEvent _deepCopiedJSONObjectOrNilForObject:propertyCopy key:keyCopy enforcingClassUsingKnownPropertiesClassMapping:_propertyValueClassesForKnownProperties];

  if (v10)
  {
    goto LABEL_5;
  }

LABEL_13:
}

+ (id)_deepCopiedJSONObjectOrNilForObject:(id)object
{
  v25[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v5 = MEMORY[0x1E696ACB0];
  v25[0] = objectCopy;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  LOBYTE(v5) = [v5 isValidJSONObject:v6];

  if (v5)
  {
    v7 = AMSMetricsEventDeepCopyJSONObject(objectCopy);
  }

  else
  {
    v8 = MEMORY[0x1E696ACB0];
    v24 = objectCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    v17 = 0;
    v10 = [v8 dataWithJSONObject:v9 options:0 error:&v17];
    v11 = v17;

    v12 = +[AMSLogConfig sharedMetricsConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v12 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v14 = AMSLogKey();
      v15 = AMSLogableError(v11);
      *buf = 138543874;
      selfCopy = self;
      v20 = 2114;
      v21 = v14;
      v22 = 2114;
      v23 = v15;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error converting object to JSON data: %{public}@", buf, 0x20u);
    }

    v7 = 0;
  }

  return v7;
}

+ (id)_deepCopiedJSONObjectOrNilForObject:(id)object key:(id)key enforcingClassUsingKnownPropertiesClassMapping:(id)mapping
{
  v51 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  keyCopy = key;
  mappingCopy = mapping;
  v11 = [AMSMetricsEvent _deepCopiedJSONObjectOrNilForObject:objectCopy];
  if (!v11)
  {
    v18 = +[AMSLogConfig sharedMetricsConfig];
    if (!v18)
    {
      v18 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v18 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v20 = AMSLogKey();
      v21 = AMSHashIfNeeded(keyCopy);
      v22 = AMSHashIfNeeded(objectCopy);
      *buf = 138544130;
      selfCopy4 = self;
      v41 = 2114;
      v42 = v20;
      v43 = 2114;
      v44 = v21;
      v45 = 2114;
      v46 = v22;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] [FILE A RADAR] Invalid metrics property. Property must be JSON serializable. Key: %{public}@ Property: %{public}@", buf, 0x2Au);
    }

    goto LABEL_15;
  }

  v12 = [mappingCopy objectForKeyedSubscript:keyCopy];
  if (v12)
  {
    v13 = v12;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = +[AMSLogConfig sharedMetricsConfig];
      if (!v14)
      {
        v14 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v14 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v16 = AMSLogKey();
        v17 = AMSHashIfNeeded(keyCopy);
        *buf = 138544130;
        selfCopy4 = self;
        v41 = 2114;
        v42 = v16;
        v43 = 2114;
        v44 = v17;
        v45 = 2114;
        v46 = v13;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Attempting to set NSNull as property value from dictionary: key = %{public}@, expected value class = %{public}@. Not setting any value for this key.", buf, 0x2Au);
      }

      goto LABEL_9;
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v25 = +[AMSUnitTests isRunningUnitTests];
      v26 = +[AMSLogConfig sharedMetricsConfig];
      v14 = v26;
      if (v25)
      {
        if (!v26)
        {
          v14 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject3 = [v14 OSLogObject];
        if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
        {
          v37 = AMSLogKey();
          v36 = AMSHashIfNeeded(keyCopy);
          v28 = AMSHashIfNeeded(v11);
          *buf = 138544642;
          selfCopy4 = self;
          v41 = 2114;
          v42 = v37;
          v43 = 2114;
          v44 = v36;
          v45 = 2114;
          v46 = v28;
          v47 = 2114;
          v48 = objc_opt_class();
          v49 = 2114;
          v50 = v13;
          v29 = v48;
          _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Attempting to set property of invalid class from dictionary: key = %{public}@, value = %{public}@, value class = %{public}@, expected class = %{public}@", buf, 0x3Eu);
        }

        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        v31 = +[AMSLogConfig sharedMetricsConfig];
        [defaultCenter postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v31 userInfo:0];

        goto LABEL_15;
      }

      if (!v26)
      {
        v14 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject4 = [v14 OSLogObject];
      if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_FAULT))
      {
        v38 = AMSLogKey();
        v33 = AMSHashIfNeeded(keyCopy);
        v34 = AMSHashIfNeeded(v11);
        *buf = 138544642;
        selfCopy4 = self;
        v41 = 2114;
        v42 = v38;
        v43 = 2114;
        v44 = v33;
        v45 = 2114;
        v46 = v34;
        v47 = 2114;
        v48 = objc_opt_class();
        v49 = 2114;
        v50 = v13;
        v35 = v48;
        _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_FAULT, "%{public}@: [%{public}@] Attempting to set property of invalid class from dictionary: key = %{public}@, value = %{public}@, value class = %{public}@, expected class = %{public}@", buf, 0x3Eu);
      }

LABEL_9:
LABEL_15:
      v23 = 0;
      goto LABEL_18;
    }
  }

  v23 = v11;
LABEL_18:

  return v23;
}

+ (id)_deepCopiedAndSanitizedTopLevelDictionaryFromDictionary:(id)dictionary
{
  v39 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v27 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(dictionaryCopy, "count")}];
  selfCopy = self;
  _propertyValueClassesForKnownProperties = [self _propertyValueClassesForKnownProperties];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = dictionaryCopy;
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v29;
    v10 = @"topic";
    *&v7 = 138543874;
    v24 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v12;
          v15 = v14;
          if ([v14 isEqualToString:@"mtTopic"])
          {
            [v27 objectForKeyedSubscript:v10];
            v17 = v16 = v10;

            if (v17)
            {
              v10 = v16;
              goto LABEL_19;
            }

            v15 = v16;
            v10 = v16;
          }

          oSLogObject = [v5 objectForKeyedSubscript:{v14, v24}];
          v22 = [AMSMetricsEvent _deepCopiedJSONObjectOrNilForObject:oSLogObject key:v15 enforcingClassUsingKnownPropertiesClassMapping:_propertyValueClassesForKnownProperties];
          if (v22)
          {
            [v27 setObject:v22 forKeyedSubscript:v15];
          }
        }

        else
        {
          v15 = +[AMSLogConfig sharedMetricsConfig];
          if (!v15)
          {
            v15 = +[AMSLogConfig sharedConfig];
          }

          oSLogObject = [v15 OSLogObject];
          if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
          {
            AMSLogKey();
            v20 = v19 = v10;
            v21 = AMSHashIfNeeded(v12);
            *buf = v24;
            v33 = selfCopy;
            v34 = 2114;
            v35 = v20;
            v36 = 2114;
            v37 = v21;
            _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Attempting to add a property with non-NSString key: %{public}@", buf, 0x20u);

            v10 = v19;
          }
        }

        v14 = v15;
LABEL_19:

        objc_autoreleasePoolPop(v13);
      }

      v8 = [v5 countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v8);
  }

  return v27;
}

@end