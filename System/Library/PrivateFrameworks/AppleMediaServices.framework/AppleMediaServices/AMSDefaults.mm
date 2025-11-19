@interface AMSDefaults
+ (BOOL)QAMode;
+ (BOOL)_BOOLForKey:(id)a3 defaultValue:(BOOL)a4 domain:(__CFString *)a5;
+ (BOOL)_resultFromSampleSession:(id)a3 isActive:(BOOL *)a4;
+ (BOOL)autoSyncDisabledForMetricsIdentifierStore;
+ (BOOL)debugUIDynamicUIEnabled;
+ (BOOL)debugUIMessagingUIEnabled;
+ (BOOL)devMode;
+ (BOOL)deviceIsBundleOverride;
+ (BOOL)reviewComposerDemoMode;
+ (BOOL)shouldSampleWithPercentage:(double)a3 sessionDuration:(double)a4 identifier:(id)a5;
+ (NSDictionary)journeysURLOverrides;
+ (NSDictionary)jsSourceOverrides;
+ (NSDictionary)marketingItemOverrides;
+ (NSDictionary)sourceOverrides;
+ (NSDictionary)treatmentOverrides;
+ (NSDictionary)ttrMetricsClickStreamUserIdHistory;
+ (id)_allKeysForDomain:(__CFString *)a3;
+ (id)_valueForKey:(id)a3 domain:(__CFString *)a4;
+ (id)journeysURLOverride;
+ (id)sharedStoreReviewMetricsForProcess:(id)a3;
+ (id)storefrontSuffixes;
+ (int64_t)_integerForKey:(id)a3 defaultValue:(int64_t)a4 domain:(__CFString *)a5;
+ (void)_cleanupSampleSessions;
+ (void)_setBool:(BOOL)a3 forKey:(id)a4 domain:(__CFString *)a5;
+ (void)_setInteger:(int64_t)a3 forKey:(id)a4;
+ (void)_setValue:(id)a3 forKey:(id)a4 domain:(__CFString *)a5;
+ (void)setDemoAccount:(id)a3;
+ (void)setJourneysURLOverride:(id)a3;
+ (void)setJourneysURLOverrides:(id)a3;
+ (void)setJsSourceOverrides:(id)a3;
+ (void)setMarketingItemOverrides:(id)a3;
+ (void)setSharedStoreReviewMetrics:(id)a3 forProcess:(id)a4;
+ (void)setSourceOverrides:(id)a3;
+ (void)setStorefrontSuffixes:(id)a3;
+ (void)setTtrMetricsClickStreamUserIdHistory:(id)a3;
+ (void)shouldSampleWithPercentageValue:(id)a3 sessionDurationValue:(id)a4 identifier:(id)a5 completion:(id)a6;
+ (void)updateBadgeIdsForBundle:(id)a3 block:(id)a4;
- (BOOL)autoSyncDisabledForAccountData;
- (BOOL)autoSyncDisabledForTSDataSync;
- (void)setAutoSyncDisabledForAccountData:(BOOL)a3;
- (void)setAutoSyncDisabledForTSDataSync:(BOOL)a3;
@end

@implementation AMSDefaults

+ (id)storefrontSuffixes
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = +[AMSUnitTests isRunningUnitTests];
  v5 = +[AMSLogConfig sharedConfig];
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = AMSLogKey();
      v9 = MEMORY[0x1E696AEC0];
      v10 = objc_opt_class();
      v11 = v10;
      if (v8)
      {
        v2 = AMSLogKey();
        [v9 stringWithFormat:@"%@: [%@] ", v11, v2];
      }

      else
      {
        [v9 stringWithFormat:@"%@: ", v10];
      }
      v12 = ;
      *buf = 138543362;
      v22 = v12;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@Unexpected storefrontSuffixes access. Clients should not directly access this property. This is a bug that must be fixed.", buf, 0xCu);
      if (v8)
      {

        v12 = v2;
      }
    }

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    v13 = +[AMSLogConfig sharedConfig];
    [v6 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v13 userInfo:0];
  }

  else
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v6 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v14 = AMSLogKey();
      v15 = MEMORY[0x1E696AEC0];
      v16 = objc_opt_class();
      v17 = v16;
      if (v14)
      {
        v2 = AMSLogKey();
        [v15 stringWithFormat:@"%@: [%@] ", v17, v2];
      }

      else
      {
        [v15 stringWithFormat:@"%@: ", v16];
      }
      v18 = ;
      *buf = 138543362;
      v22 = v18;
      _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_FAULT, "%{public}@Unexpected storefrontSuffixes access. Clients should not directly access this property. This is a bug that must be fixed.", buf, 0xCu);
      if (v14)
      {

        v18 = v2;
      }
    }
  }

  v19 = [a1 _valueForKey:@"AMSStorefrontSuffixes"];

  return v19;
}

+ (BOOL)QAMode
{
  has_internal_content = os_variant_has_internal_content();
  if (has_internal_content)
  {

    LOBYTE(has_internal_content) = [a1 _BOOLForKey:@"AMSQAMode" defaultValue:0];
  }

  return has_internal_content;
}

+ (NSDictionary)treatmentOverrides
{
  v2 = [a1 _valueForKey:@"AMSTreatmentOverrides"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  v5 = v4;

  return v4;
}

+ (BOOL)debugUIDynamicUIEnabled
{
  v2 = +[AMSDefaults debugUI];
  v3 = [v2 objectForKeyedSubscript:@"DynamicUI"];

  if (v3)
  {
    v4 = [v2 objectForKeyedSubscript:@"DynamicUI"];
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

+ (BOOL)debugUIMessagingUIEnabled
{
  v2 = +[AMSDefaults debugUI];
  v3 = [v2 objectForKeyedSubscript:@"MessagingUI"];

  if (v3)
  {
    v4 = [v2 objectForKeyedSubscript:@"MessagingUI"];
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

+ (BOOL)deviceIsBundleOverride
{
  has_internal_content = os_variant_has_internal_content();
  if (has_internal_content)
  {

    LOBYTE(has_internal_content) = [a1 _BOOLForKey:@"AMSDeviceIsBundleOverride" defaultValue:0];
  }

  return has_internal_content;
}

+ (BOOL)devMode
{
  has_internal_content = os_variant_has_internal_content();
  if (has_internal_content)
  {

    LOBYTE(has_internal_content) = [a1 _BOOLForKey:@"AMSDevMode" defaultValue:0];
  }

  return has_internal_content;
}

+ (id)journeysURLOverride
{
  v2 = [a1 _valueForKey:@"AMSJourneysURLOverride"];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (NSDictionary)journeysURLOverrides
{
  v2 = [a1 _valueForKey:@"urlOverrides" domain:@"com.apple.amsengagementd"];
  v3 = [v2 ams_mapWithTransform:&__block_literal_global_36];

  return v3;
}

AMSPair *__35__AMSDefaults_journeysURLOverrides__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [AMSPair alloc];
  v7 = [MEMORY[0x1E695DFF8] URLWithString:v4];

  v8 = [(AMSPair *)v6 initWithFirst:v5 second:v7];

  return v8;
}

+ (NSDictionary)marketingItemOverrides
{
  v2 = [a1 _valueForKey:@"AMSMarketingItemOverrides"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;

    if (v3)
    {
      v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v3 options:4 error:0];
      goto LABEL_6;
    }
  }

  else
  {

    v3 = 0;
  }

  v4 = 0;
LABEL_6:

  return v4;
}

+ (NSDictionary)jsSourceOverrides
{
  v2 = [a1 _valueForKey:@"AMSJSSourceOverrides"];
  v3 = [v2 ams_mapWithTransform:&__block_literal_global_328];

  return v3;
}

AMSPair *__32__AMSDefaults_jsSourceOverrides__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [AMSPair alloc];
  v7 = [MEMORY[0x1E695DFF8] URLWithString:v4];

  v8 = [(AMSPair *)v6 initWithFirst:v5 second:v7];

  return v8;
}

+ (BOOL)autoSyncDisabledForMetricsIdentifierStore
{
  has_internal_content = os_variant_has_internal_content();
  if (has_internal_content)
  {

    LOBYTE(has_internal_content) = [a1 _BOOLForKey:@"AMSAutoSyncDisabledForMetricsIdentifierStore" defaultValue:0];
  }

  return has_internal_content;
}

- (BOOL)autoSyncDisabledForAccountData
{
  has_internal_content = os_variant_has_internal_content();
  if (has_internal_content)
  {
    v3 = objc_opt_class();

    LOBYTE(has_internal_content) = [v3 _BOOLForKey:@"AMSAutoSyncDisabledForAccountData" defaultValue:0];
  }

  return has_internal_content;
}

- (BOOL)autoSyncDisabledForTSDataSync
{
  has_internal_content = os_variant_has_internal_content();
  if (has_internal_content)
  {
    v3 = objc_opt_class();

    LOBYTE(has_internal_content) = [v3 _BOOLForKey:@"AMSAutoSyncDisabledForTSDataSync" defaultValue:0];
  }

  return has_internal_content;
}

+ (NSDictionary)ttrMetricsClickStreamUserIdHistory
{
  if (os_variant_has_internal_content())
  {
    v3 = [a1 _valueForKey:@"AMSTTRMetricsClickStreamUserIdHistory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }
  }

  v3 = MEMORY[0x1E695E0F8];
LABEL_5:

  return v3;
}

+ (BOOL)reviewComposerDemoMode
{
  has_internal_content = os_variant_has_internal_content();
  if (has_internal_content)
  {

    LOBYTE(has_internal_content) = [a1 _BOOLForKey:@"AMSReviewComposerDemoMode" defaultValue:0];
  }

  return has_internal_content;
}

+ (id)sharedStoreReviewMetricsForProcess:(id)a3
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"AMSSharedStoreReviewMetrics", a3];
  v5 = [a1 _valueForKey:v4];

  return v5;
}

+ (NSDictionary)sourceOverrides
{
  v2 = [a1 _valueForKey:@"AMSSourceOverrides"];
  v3 = [v2 ams_mapWithTransform:&__block_literal_global_335];

  return v3;
}

AMSPair *__30__AMSDefaults_sourceOverrides__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [AMSPair alloc];
  v7 = [MEMORY[0x1E695DFF8] URLWithString:v4];

  v8 = [(AMSPair *)v6 initWithFirst:v5 second:v7];

  return v8;
}

+ (void)setJsSourceOverrides:(id)a3
{
  v4 = [a3 ams_mapWithTransform:&__block_literal_global_338];
  [a1 _setValue:v4 forKey:@"AMSJSSourceOverrides"];
}

AMSPair *__36__AMSDefaults_setJsSourceOverrides___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [AMSPair alloc];
  v7 = [v4 absoluteString];

  v8 = [(AMSPair *)v6 initWithFirst:v5 second:v7];

  return v8;
}

+ (void)setJourneysURLOverride:(id)a3
{
  v4 = [a3 absoluteString];
  [a1 _setValue:v4 forKey:@"AMSJourneysURLOverride"];
}

+ (void)setJourneysURLOverrides:(id)a3
{
  v4 = [a3 ams_mapWithTransform:&__block_literal_global_340];
  [a1 _setValue:v4 forKey:@"urlOverrides" domain:@"com.apple.amsengagementd"];
}

AMSPair *__39__AMSDefaults_setJourneysURLOverrides___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [AMSPair alloc];
  v7 = [v4 absoluteString];

  v8 = [(AMSPair *)v6 initWithFirst:v5 second:v7];

  return v8;
}

+ (void)setMarketingItemOverrides:(id)a3
{
  v4 = [MEMORY[0x1E696ACB0] dataWithJSONObject:a3 options:4 error:0];
  [a1 _setValue:v4 forKey:@"AMSMarketingItemOverrides"];
}

- (void)setAutoSyncDisabledForAccountData:(BOOL)a3
{
  v3 = a3;
  v4 = objc_opt_class();

  [v4 _setBool:v3 forKey:@"AMSAutoSyncDisabledForAccountData"];
}

- (void)setAutoSyncDisabledForTSDataSync:(BOOL)a3
{
  v3 = a3;
  v4 = objc_opt_class();

  [v4 _setBool:v3 forKey:@"AMSAutoSyncDisabledForTSDataSync"];
}

+ (void)setTtrMetricsClickStreamUserIdHistory:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    [a1 _setValue:v4 forKey:@"AMSTTRMetricsClickStreamUserIdHistory"];
  }
}

+ (void)setSharedStoreReviewMetrics:(id)a3 forProcess:(id)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a3;
  v8 = [v6 stringWithFormat:@"%@-%@", @"AMSSharedStoreReviewMetrics", a4];
  [a1 _setValue:v7 forKey:v8];
}

+ (void)setSourceOverrides:(id)a3
{
  v4 = [a3 ams_mapWithTransform:&__block_literal_global_342];
  [a1 _setValue:v4 forKey:@"AMSSourceOverrides"];
}

AMSPair *__34__AMSDefaults_setSourceOverrides___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [AMSPair alloc];
  v7 = [v4 absoluteString];

  v8 = [(AMSPair *)v6 initWithFirst:v5 second:v7];

  return v8;
}

+ (BOOL)shouldSampleWithPercentage:(double)a3 sessionDuration:(double)a4 identifier:(id)a5
{
  v22[3] = *MEMORY[0x1E69E9840];
  v8 = a5;
  [a1 _cleanupSampleSessions];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", @"AMSSamplingSession", v8];

  v10 = [a1 _valueForKey:v9];
  v20 = 0;
  v11 = [a1 _resultFromSampleSession:v10 isActive:&v20];
  if (v20)
  {
    LOBYTE(v12) = v11;
  }

  else
  {
    +[AMSRandomNumberGenerator normalizedRandomDouble];
    v14 = v13 <= 1.0;
    if (v13 > a3)
    {
      v14 = 0;
    }

    v12 = v13 >= 0.0 && v14;
    if (a4 > 0.0)
    {
      v21[0] = @"date";
      v15 = [MEMORY[0x1E695DF00] date];
      v22[0] = v15;
      v21[1] = @"result";
      v16 = [MEMORY[0x1E696AD98] numberWithBool:v12];
      v22[1] = v16;
      v21[2] = @"duration";
      v17 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
      v22[2] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];

      [a1 _setValue:v18 forKey:v9];
    }
  }

  return v12;
}

+ (void)shouldSampleWithPercentageValue:(id)a3 sessionDurationValue:(id)a4 identifier:(id)a5 completion:(id)a6
{
  v32 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10)
  {
    v14 = AMSLogKey();
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __90__AMSDefaults_shouldSampleWithPercentageValue_sessionDurationValue_identifier_completion___block_invoke;
    v20[3] = &unk_1E73B6808;
    v21 = v14;
    v25 = a1;
    v22 = v12;
    v24 = v13;
    v23 = v11;
    v15 = v14;
    [v10 valueWithCompletion:v20];
  }

  else
  {
    v16 = +[AMSLogConfig sharedConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    v17 = [v16 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = objc_opt_class();
      v19 = AMSLogKey();
      *buf = 138543874;
      v27 = v18;
      v28 = 2114;
      v29 = v19;
      v30 = 2114;
      v31 = v12;
      _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] No percentage provided for identifier: %{public}@", buf, 0x20u);
    }

    (*(v13 + 2))(v13, 0);
  }
}

void __90__AMSDefaults_shouldSampleWithPercentageValue_sessionDurationValue_identifier_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  v8 = AMSSetLogKey(*(a1 + 32));
  if (v7)
  {
    if ([v7 ams_isBagValueMissingError])
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __90__AMSDefaults_shouldSampleWithPercentageValue_sessionDurationValue_identifier_completion___block_invoke_2;
      block[3] = &unk_1E73B40A8;
      v34 = *(a1 + 64);
      v33 = *(a1 + 40);
      if (kAMSUserDefaultsDebugUIMessagingUI_block_invoke_logOnceToken__COUNTER__ != -1)
      {
        dispatch_once(&kAMSUserDefaultsDebugUIMessagingUI_block_invoke_logOnceToken__COUNTER__, block);
      }

      v9 = v33;
      goto LABEL_17;
    }

    v9 = +[AMSLogConfig sharedConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v9 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
LABEL_16:

LABEL_17:
      v20 = *(*(a1 + 56) + 16);
      goto LABEL_18;
    }

    v18 = objc_opt_class();
    v13 = AMSLogKey();
    v19 = *(a1 + 40);
    *buf = 138544130;
    v36 = v18;
    v37 = 2114;
    v38 = v13;
    v39 = 2114;
    v40 = v19;
    v41 = 2114;
    v42 = v7;
    v15 = "%{public}@: [%{public}@] Unable to fetch percentage for identifier: %{public}@. %{public}@";
    v16 = v11;
    v17 = 42;
LABEL_15:
    _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_INFO, v15, buf, v17);

    goto LABEL_16;
  }

  [v6 doubleValue];
  if (v10 == 0.0)
  {
    v9 = +[AMSLogConfig sharedConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v9 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    v12 = objc_opt_class();
    v13 = AMSLogKey();
    v14 = *(a1 + 40);
    *buf = 138543874;
    v36 = v12;
    v37 = 2114;
    v38 = v13;
    v39 = 2114;
    v40 = v14;
    v15 = "%{public}@: [%{public}@] Expected non-zero percentage for identifier: %{public}@.";
    v16 = v11;
    v17 = 32;
    goto LABEL_15;
  }

  v21 = v10;
  v22 = *(a1 + 48);
  if (v22)
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __90__AMSDefaults_shouldSampleWithPercentageValue_sessionDurationValue_identifier_completion___block_invoke_348;
    v28[3] = &unk_1E73B67E0;
    v23 = *(a1 + 32);
    v24 = *(a1 + 64);
    v25 = *(a1 + 40);
    v31 = v21;
    *&v26 = *(a1 + 56);
    *(&v26 + 1) = v24;
    *&v27 = v23;
    *(&v27 + 1) = v25;
    v29 = v27;
    v30 = v26;
    [v22 valueWithCompletion:v28];

    goto LABEL_19;
  }

  [AMSDefaults shouldSampleWithPercentage:*(a1 + 40) sessionDuration:v10 identifier:0.0];
  v20 = *(*(a1 + 56) + 16);
LABEL_18:
  v20();
LABEL_19:
}

void __90__AMSDefaults_shouldSampleWithPercentageValue_sessionDurationValue_identifier_completion___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = +[AMSLogConfig sharedConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = AMSLogKey();
    v6 = *(a1 + 32);
    v7 = 138543874;
    v8 = v4;
    v9 = 2114;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_192869000, v3, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Percentage bag value not provided for identifier: %{public}@.", &v7, 0x20u);
  }
}

void __90__AMSDefaults_shouldSampleWithPercentageValue_sessionDurationValue_identifier_completion___block_invoke_348(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  v8 = AMSSetLogKey(*(a1 + 32));
  if (v7)
  {
    v9 = +[AMSLogConfig sharedConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      v13 = *(a1 + 40);
      v15 = 138544130;
      v16 = v11;
      v17 = 2114;
      v18 = v12;
      v19 = 2114;
      v20 = v13;
      v21 = 2114;
      v22 = v7;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Unable to fetch duration for identifier: %{public}@. %{public}@", &v15, 0x2Au);
    }
  }

  [v6 doubleValue];
  [AMSDefaults shouldSampleWithPercentage:*(a1 + 40) sessionDuration:*(a1 + 64) identifier:v14];
  (*(*(a1 + 48) + 16))();
}

+ (void)updateBadgeIdsForBundle:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    if (_MergedGlobals_99 != -1)
    {
      dispatch_once(&_MergedGlobals_99, &__block_literal_global_351);
    }

    v8 = qword_1ED6E2888;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__AMSDefaults_updateBadgeIdsForBundle_block___block_invoke_2;
    block[3] = &unk_1E73B6830;
    v11 = v6;
    v13 = a1;
    v12 = v7;
    v9 = v8;
    dispatch_sync(v9, block);
  }
}

uint64_t __45__AMSDefaults_updateBadgeIdsForBundle_block___block_invoke()
{
  qword_1ED6E2888 = dispatch_queue_create("com.apple.AMSDefaults.badging", 0);

  return MEMORY[0x1EEE66BB8]();
}

void __45__AMSDefaults_updateBadgeIdsForBundle_block___block_invoke_2(uint64_t a1)
{
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Badges:%@", *(a1 + 32)];
  v2 = [*(a1 + 48) _valueForKey:?];
  v3 = v2;
  v4 = MEMORY[0x1E695E0F0];
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  v6 = [MEMORY[0x1E695DFA8] setWithArray:v5];

  if ((*(*(a1 + 40) + 16))())
  {
    if (![v6 count])
    {

      v6 = 0;
    }

    v7 = *(a1 + 48);
    v8 = [v6 allObjects];
    [v7 _setValue:v8 forKey:v9];
  }
}

+ (id)_allKeysForDomain:(__CFString *)a3
{
  CFPreferencesAppSynchronize(a3);
  v4 = CFPreferencesCopyKeyList(a3, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);

  return v4;
}

+ (BOOL)_BOOLForKey:(id)a3 defaultValue:(BOOL)a4 domain:(__CFString *)a5
{
  v7 = a3;
  CFPreferencesAppSynchronize(a5);
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v7, a5, &keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat)
  {
    return AppBooleanValue != 0;
  }

  else
  {
    return a4;
  }
}

+ (void)_cleanupSampleSessions
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__AMSDefaults__cleanupSampleSessions__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_cleanupSampleSessions_onceToken[0] != -1)
  {
    dispatch_once(_cleanupSampleSessions_onceToken, block);
  }
}

void __37__AMSDefaults__cleanupSampleSessions__block_invoke(uint64_t a1)
{
  v2 = dispatch_get_global_queue(-2, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__AMSDefaults__cleanupSampleSessions__block_invoke_2;
  v7[3] = &__block_descriptor_40_e5_v8__0l;
  v7[4] = *(a1 + 32);
  v3 = v7;
  v4 = AMSLogKey();
  v5 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchAfter_block_invoke;
  block[3] = &unk_1E73B36D0;
  v9 = v4;
  v10 = v3;
  v6 = v4;
  dispatch_after(v5, v2, block);
}

void __37__AMSDefaults__cleanupSampleSessions__block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) allKeys];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v16;
    *&v4 = 138543618;
    v13 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        if ([v8 hasPrefix:{@"AMSSamplingSession", v13}])
        {
          v14 = 0;
          v9 = [*(a1 + 32) _valueForKey:v8];
          [*(a1 + 32) _resultFromSampleSession:v9 isActive:&v14];
          if ((v14 & 1) == 0)
          {
            v10 = +[AMSLogConfig sharedConfig];
            if (!v10)
            {
              v10 = +[AMSLogConfig sharedConfig];
            }

            v11 = [v10 OSLogObject];
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v12 = objc_opt_class();
              *buf = v13;
              v20 = v12;
              v21 = 2114;
              v22 = v8;
              _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Clearing expired sampling session: %{public}@", buf, 0x16u);
            }

            [*(a1 + 32) _setValue:0 forKey:v8];
          }
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v5);
  }
}

+ (int64_t)_integerForKey:(id)a3 defaultValue:(int64_t)a4 domain:(__CFString *)a5
{
  v7 = a3;
  CFPreferencesAppSynchronize(a5);
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(v7, a5, &keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat)
  {
    return AppIntegerValue;
  }

  else
  {
    return a4;
  }
}

+ (BOOL)_resultFromSampleSession:(id)a3 isActive:(BOOL *)a4
{
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"date"];
  v7 = [v5 objectForKeyedSubscript:@"result"];
  v8 = [v7 BOOLValue];

  v9 = [v5 objectForKeyedSubscript:@"duration"];

  v10 = [v9 BOOLValue];
  v11 = [MEMORY[0x1E695DF00] date];
  if (!v6)
  {
LABEL_4:
    v8 = 0;
    if (a4)
    {
      *a4 = 0;
    }

    goto LABEL_9;
  }

  v12 = [v6 dateByAddingTimeInterval:v10];
  if ([v11 compare:v12] != -1)
  {

    goto LABEL_4;
  }

  if (a4)
  {
    *a4 = 1;
  }

LABEL_9:
  return v8;
}

+ (void)_setBool:(BOOL)a3 forKey:(id)a4 domain:(__CFString *)a5
{
  v6 = MEMORY[0x1E695E4D0];
  if (!a3)
  {
    v6 = MEMORY[0x1E695E4C0];
  }

  CFPreferencesSetAppValue(a4, *v6, a5);

  CFPreferencesAppSynchronize(a5);
}

+ (void)_setInteger:(int64_t)a3 forKey:(id)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithInteger:a3];
  [a1 _setValue:v8 forKey:v7];
}

+ (void)_setValue:(id)a3 forKey:(id)a4 domain:(__CFString *)a5
{
  CFPreferencesSetAppValue(a4, a3, a5);

  CFPreferencesAppSynchronize(a5);
}

+ (id)_valueForKey:(id)a3 domain:(__CFString *)a4
{
  v5 = a3;
  CFPreferencesAppSynchronize(a4);
  v6 = CFPreferencesCopyAppValue(v5, a4);

  return v6;
}

+ (void)setDemoAccount:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [AMSSetDemoAccountTask alloc];
  v5 = [v3 first];
  v6 = [v3 second];

  v7 = [(AMSSetDemoAccountTask *)v4 initWithUsername:v5 password:v6];
  v8 = AMSAccountMediaTypeAppStoreSandbox;
  v9 = [(AMSSetDemoAccountTask *)v7 clientInfo];
  [v9 setAccountMediaType:v8];

  v10 = [(AMSSetDemoAccountTask *)v7 performTask];
  v18 = 0;
  v11 = [v10 resultWithError:&v18];
  v12 = v18;

  if (!v11)
  {
    v13 = +[AMSLogConfig sharedAccountsConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = AMSLogKey();
      v17 = AMSHashIfNeeded(v12);
      *buf = 138543874;
      v20 = v15;
      v21 = 2114;
      v22 = v16;
      v23 = 2114;
      v24 = v17;
      _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to setup the demo account. error = %{public}@", buf, 0x20u);
    }
  }
}

+ (void)setStorefrontSuffixes:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[AMSUnitTests isRunningUnitTests];
  v7 = +[AMSLogConfig sharedConfig];
  v8 = v7;
  if (v6)
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = AMSLogKey();
      v11 = MEMORY[0x1E696AEC0];
      v12 = objc_opt_class();
      v13 = v12;
      if (v10)
      {
        v3 = AMSLogKey();
        [v11 stringWithFormat:@"%@: [%@] ", v13, v3];
      }

      else
      {
        [v11 stringWithFormat:@"%@: ", v12];
      }
      v14 = ;
      *buf = 138543362;
      v22 = v14;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@Unexpected storefrontSuffixes access. Clients should not directly access this property. This is a bug that must be fixed.", buf, 0xCu);
      if (v10)
      {

        v14 = v3;
      }
    }

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    v15 = +[AMSLogConfig sharedConfig];
    [v8 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v15 userInfo:0];
  }

  else
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v8 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      v16 = AMSLogKey();
      v17 = MEMORY[0x1E696AEC0];
      v18 = objc_opt_class();
      v19 = v18;
      if (v16)
      {
        v3 = AMSLogKey();
        [v17 stringWithFormat:@"%@: [%@] ", v19, v3];
      }

      else
      {
        [v17 stringWithFormat:@"%@: ", v18];
      }
      v20 = ;
      *buf = 138543362;
      v22 = v20;
      _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_FAULT, "%{public}@Unexpected storefrontSuffixes access. Clients should not directly access this property. This is a bug that must be fixed.", buf, 0xCu);
      if (v16)
      {

        v20 = v3;
      }
    }
  }

  [a1 _setValue:v5 forKey:@"AMSStorefrontSuffixes"];
}

@end