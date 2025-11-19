@interface AMSAuthenticateMetrics
+ (id)_eventWithTopic:(id)a3;
+ (id)_metricsInstanceWithBag:(id)a3;
+ (id)bagSubProfile;
+ (id)bagSubProfileVersion;
+ (id)createBagForSubProfile;
- (AMSAuthenticateMetrics)init;
- (AMSAuthenticateMetrics)initWithBag:(id)a3;
- (BOOL)_isTopicDefined:(id)a3;
- (id)_authenticationTypeStringFor:(unint64_t)a3;
- (id)_clampTimeStampValue:(id)a3;
- (id)_credentialSourceStringFor:(unint64_t)a3;
- (id)_durationSinceDate:(id)a3;
- (id)_enqueueEventWithTopic:(id)a3 properties:(id)a4;
- (id)_enqueueEvents:(id)a3;
- (id)_enqueueProperties:(id)a3 account:(id)a4;
- (id)_eventTime;
- (id)_topicFromBag;
- (id)_userIdForBagNamespace:(id)a3;
- (id)enqueueAuthKitBeginEventWithOptions:(id)a3 account:(id)a4;
- (id)enqueueAuthKitFinishEventWithOptions:(id)a3 account:(id)a4 error:(id)a5;
- (id)enqueueAuthenticationBeginEventWithOptions:(id)a3 serverRequested:(BOOL)a4 account:(id)a5;
- (id)enqueueVerifyCredentialsBeginEventWithOptions:(id)a3 account:(id)a4;
- (id)enqueueVerifyCredentialsFinishEventWithOptions:(id)a3 account:(id)a4 error:(id)a5;
- (id)enqueueWithEvent:(unint64_t)a3 context:(id)a4;
- (void)flushEvents;
@end

@implementation AMSAuthenticateMetrics

- (AMSAuthenticateMetrics)init
{
  v3 = [objc_opt_class() createBagForSubProfile];
  v4 = [(AMSAuthenticateMetrics *)self initWithBag:v3];

  return v4;
}

- (AMSAuthenticateMetrics)initWithBag:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = AMSAuthenticateMetrics;
  v6 = [(AMSAuthenticateMetrics *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bag, a3);
    beginDate = v7->_beginDate;
    v7->_beginDate = 0;

    v9 = [AMSAuthenticateMetrics _metricsInstanceWithBag:v7->_bag];
    metrics = v7->_metrics;
    v7->_metrics = v9;
  }

  return v7;
}

- (id)enqueueWithEvent:(unint64_t)a3 context:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v8 = [v6 options];
      v9 = [v7 account];
      v10 = [v7 error];
      v11 = [(AMSAuthenticateMetrics *)self enqueueAuthKitFinishEventWithOptions:v8 account:v9 error:v10];
      goto LABEL_10;
    }

    if (a3 != 3)
    {
      if (a3 == 4)
      {
        v8 = [v6 options];
        v9 = [v7 account];
        v10 = [v7 error];
        v11 = [(AMSAuthenticateMetrics *)self enqueueVerifyCredentialsFinishEventWithOptions:v8 account:v9 error:v10];
LABEL_10:
        v13 = v11;

LABEL_13:
        goto LABEL_14;
      }

      goto LABEL_18;
    }

    v8 = [v6 options];
    v9 = [v7 account];
    v12 = [(AMSAuthenticateMetrics *)self enqueueVerifyCredentialsBeginEventWithOptions:v8 account:v9];
LABEL_12:
    v13 = v12;
    goto LABEL_13;
  }

  if (!a3)
  {
    v8 = [v6 options];
    v15 = [v7 isServerRequested];
    v16 = [v7 account];
    v13 = [(AMSAuthenticateMetrics *)self enqueueAuthenticationBeginEventWithOptions:v8 serverRequested:v15 account:v16];

    goto LABEL_14;
  }

  if (a3 == 1)
  {
    v8 = [v6 options];
    v9 = [v7 account];
    v12 = [(AMSAuthenticateMetrics *)self enqueueAuthKitBeginEventWithOptions:v8 account:v9];
    goto LABEL_12;
  }

LABEL_18:
  v8 = AMSError(2, @"Unrecognized metrics event", @"The provided AMSAuthenticateMetricsEvent was not recognized", 0);
  v13 = [AMSBinaryPromise promiseWithError:v8];
LABEL_14:

  return v13;
}

- (void)flushEvents
{
  v3 = [(AMSAuthenticateMetrics *)self metrics];
  v4 = [v3 flush];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__AMSAuthenticateMetrics_flushEvents__block_invoke;
  v5[3] = &unk_1E73B3A88;
  v5[4] = self;
  [v4 addFinishBlock:v5];
}

void __37__AMSAuthenticateMetrics_flushEvents__block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = +[AMSLogConfig sharedAccountsConfig];
  if (!v0)
  {
    v0 = +[AMSLogConfig sharedConfig];
  }

  v1 = [v0 OSLogObject];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    v2 = objc_opt_class();
    v3 = AMSLogKey();
    v4 = 138543618;
    v5 = v2;
    v6 = 2114;
    v7 = v3;
    _os_log_impl(&dword_192869000, v1, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Flushing Authentication Metrics", &v4, 0x16u);
  }
}

- (id)enqueueAuthenticationBeginEventWithOptions:(id)a3 serverRequested:(BOOL)a4 account:(id)a5
{
  v5 = a4;
  v21[4] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E695DF90];
  v20[0] = @"authenticationType";
  v9 = a5;
  v10 = a3;
  v11 = -[AMSAuthenticateMetrics _authenticationTypeStringFor:](self, "_authenticationTypeStringFor:", [v10 authenticationType]);
  v21[0] = v11;
  v21[1] = @"AuthenticationBegin";
  v20[1] = @"eventType";
  v20[2] = @"isServerRequested";
  if (v5)
  {
    v12 = @"true";
  }

  else
  {
    v12 = @"false";
  }

  v21[2] = v12;
  v20[3] = @"supportsUI";
  if ([v10 allowServerDialogs])
  {
    v13 = @"true";
  }

  else
  {
    v13 = @"false";
  }

  v21[3] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:4];
  v15 = [v8 dictionaryWithDictionary:v14];

  v16 = [v10 metricsIdentifier];

  [v15 ams_setNullableObject:v16 forKey:@"multiUserIdentifier"];
  v17 = [v15 copy];
  v18 = [(AMSAuthenticateMetrics *)self _enqueueProperties:v17 account:v9];

  return v18;
}

- (id)enqueueAuthKitBeginEventWithOptions:(id)a3 account:(id)a4
{
  v20[3] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695DF00];
  v7 = a4;
  v8 = a3;
  v9 = [v6 date];
  [(AMSAuthenticateMetrics *)self setBeginDate:v9];

  v10 = MEMORY[0x1E695DF90];
  v19[0] = @"authenticationType";
  v11 = -[AMSAuthenticateMetrics _authenticationTypeStringFor:](self, "_authenticationTypeStringFor:", [v8 authenticationType]);
  v20[0] = v11;
  v20[1] = @"AuthKitAuthenticationBegin";
  v19[1] = @"eventType";
  v19[2] = @"supportsUI";
  v12 = [v8 allowServerDialogs];
  v13 = @"false";
  if (v12)
  {
    v13 = @"true";
  }

  v20[2] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v15 = [v10 dictionaryWithDictionary:v14];

  v16 = [v8 metricsIdentifier];

  [v15 ams_setNullableObject:v16 forKey:@"multiUserIdentifier"];
  v17 = [(AMSAuthenticateMetrics *)self _enqueueProperties:v15 account:v7];

  return v17;
}

- (id)enqueueAuthKitFinishEventWithOptions:(id)a3 account:(id)a4 error:(id)a5
{
  v23[2] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = MEMORY[0x1E695DF90];
  v22[0] = @"authenticationType";
  v10 = a4;
  v11 = a3;
  v12 = -[AMSAuthenticateMetrics _authenticationTypeStringFor:](self, "_authenticationTypeStringFor:", [v11 authenticationType]);
  v22[1] = @"duration";
  v23[0] = v12;
  v13 = [(AMSAuthenticateMetrics *)self beginDate];
  v14 = [(AMSAuthenticateMetrics *)self _durationSinceDate:v13];
  v23[1] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v16 = [v9 dictionaryWithDictionary:v15];

  v17 = [v11 metricsIdentifier];

  [v16 ams_setNullableObject:v17 forKey:@"multiUserIdentifier"];
  if (v8)
  {
    [v16 setObject:@"AuthKitAuthenticationFailure" forKey:@"eventType"];
    v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "code")}];
    [v16 setObject:v18 forKey:@"errorCode"];
  }

  else
  {
    [v16 setObject:@"AuthKitAuthenticationSuccess" forKey:@"eventType"];
  }

  v19 = [v16 copy];
  v20 = [(AMSAuthenticateMetrics *)self _enqueueProperties:v19 account:v10];

  return v20;
}

- (id)enqueueVerifyCredentialsBeginEventWithOptions:(id)a3 account:(id)a4
{
  v20[3] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695DF00];
  v7 = a4;
  v8 = a3;
  v9 = [v6 date];
  [(AMSAuthenticateMetrics *)self setBeginDate:v9];

  v10 = MEMORY[0x1E695DF90];
  v19[0] = @"credentialSource";
  v11 = -[AMSAuthenticateMetrics _credentialSourceStringFor:](self, "_credentialSourceStringFor:", [v8 credentialSource]);
  v20[0] = v11;
  v20[1] = @"CommerceAuthenticationBegin";
  v19[1] = @"eventType";
  v19[2] = @"supportsUI";
  v12 = [v8 allowServerDialogs];
  v13 = @"false";
  if (v12)
  {
    v13 = @"true";
  }

  v20[2] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v15 = [v10 dictionaryWithDictionary:v14];

  v16 = [v8 metricsIdentifier];

  [v15 ams_setNullableObject:v16 forKey:@"multiUserIdentifier"];
  v17 = [(AMSAuthenticateMetrics *)self _enqueueProperties:v15 account:v7];

  return v17;
}

- (id)enqueueVerifyCredentialsFinishEventWithOptions:(id)a3 account:(id)a4 error:(id)a5
{
  v23[2] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = MEMORY[0x1E695DF90];
  v22[0] = @"credentialSource";
  v10 = a4;
  v11 = a3;
  v12 = -[AMSAuthenticateMetrics _credentialSourceStringFor:](self, "_credentialSourceStringFor:", [v11 credentialSource]);
  v22[1] = @"duration";
  v23[0] = v12;
  v13 = [(AMSAuthenticateMetrics *)self beginDate];
  v14 = [(AMSAuthenticateMetrics *)self _durationSinceDate:v13];
  v23[1] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v16 = [v9 dictionaryWithDictionary:v15];

  v17 = [v11 metricsIdentifier];

  [v16 ams_setNullableObject:v17 forKey:@"multiUserIdentifier"];
  if (v8)
  {
    [v16 setObject:@"CommerceAuthenticationFailure" forKey:@"eventType"];
    v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "code")}];
    [v16 setObject:v18 forKey:@"errorCode"];
  }

  else
  {
    [v16 setObject:@"CommerceAuthenticationSuccess" forKey:@"eventType"];
  }

  v19 = [v16 copy];
  v20 = [(AMSAuthenticateMetrics *)self _enqueueProperties:v19 account:v10];

  return v20;
}

+ (id)bagSubProfile
{
  if (_MergedGlobals_86 != -1)
  {
    dispatch_once(&_MergedGlobals_86, &__block_literal_global_10);
  }

  v3 = qword_1ED6E2748;

  return v3;
}

void __39__AMSAuthenticateMetrics_bagSubProfile__block_invoke()
{
  v0 = qword_1ED6E2748;
  qword_1ED6E2748 = @"AMSCore";
}

+ (id)bagSubProfileVersion
{
  if (qword_1ED6E2750 != -1)
  {
    dispatch_once(&qword_1ED6E2750, &__block_literal_global_85);
  }

  v3 = qword_1ED6E2758;

  return v3;
}

void __46__AMSAuthenticateMetrics_bagSubProfileVersion__block_invoke()
{
  v0 = qword_1ED6E2758;
  qword_1ED6E2758 = @"1";
}

+ (id)createBagForSubProfile
{
  v2 = [objc_opt_class() bagSubProfile];
  v3 = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:v2 profileVersion:v3];

  return v4;
}

+ (id)_metricsInstanceWithBag:(id)a3
{
  v3 = a3;
  v4 = [[AMSMetrics alloc] initWithContainerID:0x1F07216F8 bag:v3];

  return v4;
}

+ (id)_eventWithTopic:(id)a3
{
  v3 = a3;
  v4 = [[AMSMetricsEvent alloc] initWithTopic:v3];

  [(AMSMetricsEvent *)v4 setCheckDiagnosticsAndUsageSetting:1];

  return v4;
}

- (id)_topicFromBag
{
  v3 = [(AMSAuthenticateMetrics *)self bag];
  objc_opt_class();
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(AMSAuthenticateMetrics *)self bag];
    [v5 setDefaultValue:@"_topic_not_defined_" forKey:@"authPerfTopicName"];
  }

  v6 = [(AMSAuthenticateMetrics *)self bag];
  v7 = [v6 stringForKey:@"authPerfTopicName"];
  v8 = [v7 valuePromise];

  return v8;
}

- (id)_authenticationTypeStringFor:(unint64_t)a3
{
  if (a3 > 3)
  {
    return @"unrecognized";
  }

  else
  {
    return off_1E73B3AD0[a3];
  }
}

- (id)_clampTimeStampValue:(id)a3
{
  v3 = 4000 * ([a3 longLongValue] / 4000);
  v4 = MEMORY[0x1E696AD98];

  return [v4 numberWithLongLong:v3];
}

- (id)_eventTime
{
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [AMSMetrics serverTimeFromDate:v3];
  v5 = [(AMSAuthenticateMetrics *)self _clampTimeStampValue:v4];

  return v5;
}

- (id)_credentialSourceStringFor:(unint64_t)a3
{
  if (a3 > 6)
  {
    return @"unrecognized";
  }

  else
  {
    return off_1E73B3AF0[a3];
  }
}

- (id)_durationSinceDate:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E695DF00];
    v5 = a3;
    v6 = [v4 date];
    [v6 timeIntervalSinceDate:v5];
    v8 = v7;

    v9 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
  }

  else
  {
    v9 = &unk_1F0778F68;
  }

  return v9;
}

- (id)_enqueueEvents:(id)a3
{
  v4 = a3;
  v5 = [(AMSAuthenticateMetrics *)self metrics];
  v6 = [v5 promiseForEnqueueingEvents:v4];

  return v6;
}

- (id)_enqueueProperties:(id)a3 account:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a3)
  {
    v7 = [a3 mutableCopy];
    if ([(AMSAuthenticateMetrics *)self _accountIsSecondaryHomeUser:v6])
    {
      v8 = @"authPerformanceSecondary";
    }

    else
    {
      v8 = @"authPerformance";
    }

    v9 = +[AMSLogConfig sharedAccountsConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      v13 = AMSHashIfNeeded(v7);
      v14 = AMSHashIfNeeded(v6);
      *buf = 138544130;
      v32 = v11;
      v33 = 2114;
      v34 = v12;
      v35 = 2114;
      v36 = v13;
      v37 = 2114;
      v38 = v14;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Creating Event with properties = %{public}@ using account = %{public}@", buf, 0x2Au);
    }

    v15 = objc_alloc_init(AMSMutableBinaryPromise);
    v16 = [(AMSAuthenticateMetrics *)self _topicFromBag];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __53__AMSAuthenticateMetrics__enqueueProperties_account___block_invoke;
    v26[3] = &unk_1E73B3AB0;
    v17 = v15;
    v27 = v17;
    v28 = self;
    v29 = v8;
    v30 = v7;
    v18 = v7;
    [v16 resultWithCompletion:v26];

    v19 = v30;
    v20 = v17;
  }

  else
  {
    v21 = +[AMSLogConfig sharedAccountsConfig];
    if (!v21)
    {
      v21 = +[AMSLogConfig sharedConfig];
    }

    v22 = [v21 OSLogObject];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      v24 = AMSLogKey();
      *buf = 138543618;
      v32 = v23;
      v33 = 2114;
      v34 = v24;
      _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Attempted to enqueue event without properties.", buf, 0x16u);
    }

    v18 = AMSError(2, @"Missing Properties", 0, 0);
    v20 = [AMSBinaryPromise promiseWithError:v18];
  }

  return v20;
}

void __53__AMSAuthenticateMetrics__enqueueProperties_account___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) finishWithError:a3];
  }

  else if ([*(a1 + 40) _isTopicDefined:v5])
  {
    v6 = +[AMSLogConfig sharedAccountsConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      *buf = 138543874;
      v20 = v8;
      v21 = 2114;
      v22 = v9;
      v23 = 2114;
      v24 = v5;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEBUG, "%{public}@: [%{public}@] Queue Metrics Event for topic %{public}@", buf, 0x20u);
    }

    v10 = [*(a1 + 40) _userIdForBagNamespace:*(a1 + 48)];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __53__AMSAuthenticateMetrics__enqueueProperties_account___block_invoke_121;
    v15[3] = &unk_1E73B3AB0;
    v14 = *(a1 + 32);
    v11 = v14.i64[0];
    v16 = vextq_s8(v14, v14, 8uLL);
    v17 = *(a1 + 56);
    v18 = v5;
    [v10 resultWithCompletion:v15];
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = AMSError(2, @"Topic string not found", 0, 0);
    [v12 finishWithError:v13];
  }
}

void __53__AMSAuthenticateMetrics__enqueueProperties_account___block_invoke_121(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!a2 || v5)
  {
    v14 = +[AMSLogConfig sharedAccountsConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = AMSLogKey();
      v18 = AMSLogableError(v6);
      v21 = 138543874;
      v22 = v16;
      v23 = 2114;
      v24 = v17;
      v25 = 2114;
      v26 = v18;
      _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to create metrics event due to an error while fetching userId. error = %{public}@", &v21, 0x20u);
    }

    v19 = *(a1 + 40);
    v20 = AMSError(2, @"Unable to enqueue event", @"Failed to create event, userId key not found in store", v6);
    [v19 finishWithError:v20];
  }

  else
  {
    [*(a1 + 48) ams_setNullableObject:a2 forKey:@"userId"];
    v7 = *(a1 + 48);
    v8 = [*(a1 + 32) _eventTime];
    [v7 ams_setNullableObject:v8 forKey:0x1F0730718];

    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = *(a1 + 56);
    v12 = [*(a1 + 48) copy];
    v13 = [v10 _enqueueEventWithTopic:v11 properties:v12];
    [v9 finishWithPromise:v13];
  }
}

- (id)_enqueueEventWithTopic:(id)a3 properties:(id)a4
{
  v30[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [objc_opt_class() _eventWithTopic:v6];
    [v9 addPropertiesWithDictionary:v8];
    v10 = +[AMSLogConfig sharedAccountsConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = AMSLogKey();
      v22 = 138543874;
      v23 = v12;
      v24 = 2114;
      v25 = v13;
      v26 = 2114;
      v27 = v9;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Queueing Metrics Event = %{public}@", &v22, 0x20u);
    }

    v30[0] = v9;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    v15 = [(AMSAuthenticateMetrics *)self _enqueueEvents:v14];
  }

  else
  {
    v16 = +[AMSLogConfig sharedAccountsConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    v17 = [v16 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = objc_opt_class();
      v19 = AMSLogKey();
      v20 = AMSHashIfNeeded(v8);
      v22 = 138544130;
      v23 = v18;
      v24 = 2114;
      v25 = v19;
      v26 = 2114;
      v27 = v6;
      v28 = 2114;
      v29 = v20;
      _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Attempted to enqueue event without topic or properties. topic = %{public}@ properties = %{public}@", &v22, 0x2Au);
    }

    v9 = AMSError(2, @"Missing topic or properties", 0, 0);
    v15 = [AMSBinaryPromise promiseWithError:v9];
  }

  return v15;
}

- (BOOL)_isTopicDefined:(id)a3
{
  v4 = [a3 isEqualToString:@"_topic_not_defined_"] ^ 1;
  if (a3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (id)_userIdForBagNamespace:(id)a3
{
  v4 = a3;
  v5 = [(AMSAuthenticateMetrics *)self bag];
  v6 = [AMSMetricsIdentifierStore identifierForAccount:0 bag:v5 bagNamespace:v4 keyName:@"userId"];

  return v6;
}

@end