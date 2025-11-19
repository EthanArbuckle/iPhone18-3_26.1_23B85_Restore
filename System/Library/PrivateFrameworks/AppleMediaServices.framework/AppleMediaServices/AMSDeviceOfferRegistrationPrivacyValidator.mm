@interface AMSDeviceOfferRegistrationPrivacyValidator
+ (BOOL)_isPrivacyAcknowledgementForIdentifier:(id)a3 satisfiedOnAccount:(id)a4;
+ (BOOL)_isPrivacyAcknowledgementForIdentifiers:(id)a3 satisfiedOnAccount:(id)a4;
+ (id)_identifiersForValidationOptions:(unint64_t)a3;
+ (id)_minimumAcknowledgementVersionForIdentifier:(id)a3;
+ (id)_privacyVersionMap;
- (AMSDeviceOfferRegistrationPrivacyValidator)initWithAccount:(id)a3;
- (BOOL)canMasterDevicePerformRegistration;
- (BOOL)isPrivacyRequirementMetForOptions:(unint64_t)a3;
@end

@implementation AMSDeviceOfferRegistrationPrivacyValidator

- (AMSDeviceOfferRegistrationPrivacyValidator)initWithAccount:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMSDeviceOfferRegistrationPrivacyValidator;
  v6 = [(AMSDeviceOfferRegistrationPrivacyValidator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
  }

  return v7;
}

- (BOOL)canMasterDevicePerformRegistration
{
  v3 = [objc_opt_class() _masterEligibilityPrivacyOptionsIdentifiers];
  v4 = objc_opt_class();
  v5 = [(AMSDeviceOfferRegistrationPrivacyValidator *)self account];
  LOBYTE(v4) = [v4 _isPrivacyAcknowledgementForIdentifiers:v3 satisfiedOnAccount:v5];

  return v4;
}

- (BOOL)isPrivacyRequirementMetForOptions:(unint64_t)a3
{
  v4 = [objc_opt_class() _identifiersForValidationOptions:a3];
  v5 = objc_opt_class();
  v6 = [(AMSDeviceOfferRegistrationPrivacyValidator *)self account];
  LOBYTE(v5) = [v5 _isPrivacyAcknowledgementForIdentifiers:v4 satisfiedOnAccount:v6];

  return v5;
}

+ (id)_identifiersForValidationOptions:(unint64_t)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = +[AMSLogConfig sharedConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    v15 = 138543874;
    v16 = v6;
    v17 = 2114;
    v18 = v7;
    v19 = 2048;
    v20 = a3;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Identifier check value: %lu.", &v15, 0x20u);
  }

  if (a3)
  {
    v8 = objc_opt_new();
    if (a3)
    {
      v12 = +[AMSAcknowledgePrivacyTask _appleIDPrivacyIdentifier];
      [v8 addObject:v12];

      if ((a3 & 2) == 0)
      {
LABEL_8:
        if ((a3 & 4) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_18;
      }
    }

    else if ((a3 & 2) == 0)
    {
      goto LABEL_8;
    }

    v13 = +[AMSAcknowledgePrivacyTask _appleArcadePrivacyIdentifier];
    [v8 addObject:v13];

    if ((a3 & 4) == 0)
    {
LABEL_9:
      if ((a3 & 8) == 0)
      {
LABEL_11:
        v10 = [v8 copy];

        goto LABEL_13;
      }

LABEL_10:
      v9 = +[AMSAcknowledgePrivacyTask _appleTVAppPrivacyIdentifier];
      [v8 addObject:v9];

      goto LABEL_11;
    }

LABEL_18:
    v14 = +[AMSAcknowledgePrivacyTask _appleMusicAppPrivacyIdentifier];
    [v8 addObject:v14];

    if ((a3 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v10 = [MEMORY[0x1E695DFD8] setWithArray:MEMORY[0x1E695E0F0]];
LABEL_13:

  return v10;
}

+ (BOOL)_isPrivacyAcknowledgementForIdentifier:(id)a3 satisfiedOnAccount:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [a1 _minimumAcknowledgementVersionForIdentifier:v6];
  if (v8)
  {
    v9 = [AMSAcknowledgePrivacyTask hasPreviouslyAcknowledgedPrivacyIdentifier:v6 account:v7 minimumVersion:v8];
  }

  else
  {
    v10 = +[AMSLogConfig sharedConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = AMSLogKey();
      v15 = 138543874;
      v16 = v12;
      v17 = 2114;
      v18 = v13;
      v19 = 2114;
      v20 = v6;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] No version specified for GDPR identifier [%{public}@], returning false", &v15, 0x20u);
    }

    v9 = 0;
  }

  return v9;
}

+ (BOOL)_isPrivacyAcknowledgementForIdentifiers:(id)a3 satisfiedOnAccount:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  if (v6 && [v6 count])
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __105__AMSDeviceOfferRegistrationPrivacyValidator__isPrivacyAcknowledgementForIdentifiers_satisfiedOnAccount___block_invoke;
    v14[3] = &unk_1E73B6E88;
    v16 = &v18;
    v17 = a1;
    v15 = v7;
    [v6 enumerateObjectsUsingBlock:v14];

    v8 = *(v19 + 24);
  }

  else
  {
    v9 = +[AMSLogConfig sharedConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      *buf = 138543618;
      v23 = v11;
      v24 = 2114;
      v25 = v12;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No required GDPR identifiers.", buf, 0x16u);
    }

    v8 = 1;
    *(v19 + 24) = 1;
  }

  _Block_object_dispose(&v18, 8);

  return v8 & 1;
}

void __105__AMSDeviceOfferRegistrationPrivacyValidator__isPrivacyAcknowledgementForIdentifiers_satisfiedOnAccount___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(*(a1 + 40) + 8);
  if (*(v6 + 24))
  {
    v7 = 1;
  }

  else
  {
    v7 = [*(a1 + 48) _isPrivacyAcknowledgementForIdentifier:v5 satisfiedOnAccount:*(a1 + 32)];
    v6 = *(*(a1 + 40) + 8);
  }

  *(v6 + 24) = v7;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  v8 = +[AMSLogConfig sharedConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = AMSLogKey();
    v12 = *(*(*(a1 + 40) + 8) + 24);
    v13 = 138544130;
    v14 = v10;
    v15 = 2114;
    v16 = v11;
    v17 = 2114;
    v18 = v5;
    v19 = 1024;
    v20 = v12;
    _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Identifier check %{public}@ : %i.", &v13, 0x26u);
  }
}

+ (id)_minimumAcknowledgementVersionForIdentifier:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [a1 _privacyVersionMap];
    v6 = [v5 objectForKeyedSubscript:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_privacyVersionMap
{
  v2 = objc_opt_new();
  v3 = +[AMSAcknowledgePrivacyTask _appleIDPrivacyIdentifier];
  v4 = +[AMSAcknowledgePrivacyTask _appleArcadePrivacyIdentifier];
  v5 = +[AMSAcknowledgePrivacyTask _appleMusicAppPrivacyIdentifier];
  v6 = +[AMSAcknowledgePrivacyTask _appleTVAppPrivacyIdentifier];
  [v2 setObject:&unk_1F0779448 forKeyedSubscript:v3];
  [v2 setObject:&unk_1F0779448 forKeyedSubscript:v4];
  [v2 setObject:&unk_1F0779460 forKeyedSubscript:v5];
  [v2 setObject:&unk_1F0779478 forKeyedSubscript:v6];
  v7 = [v2 copy];

  return v7;
}

@end