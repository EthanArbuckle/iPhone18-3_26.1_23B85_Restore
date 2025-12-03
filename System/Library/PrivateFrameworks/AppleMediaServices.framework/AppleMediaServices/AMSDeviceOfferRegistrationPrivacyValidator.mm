@interface AMSDeviceOfferRegistrationPrivacyValidator
+ (BOOL)_isPrivacyAcknowledgementForIdentifier:(id)identifier satisfiedOnAccount:(id)account;
+ (BOOL)_isPrivacyAcknowledgementForIdentifiers:(id)identifiers satisfiedOnAccount:(id)account;
+ (id)_identifiersForValidationOptions:(unint64_t)options;
+ (id)_minimumAcknowledgementVersionForIdentifier:(id)identifier;
+ (id)_privacyVersionMap;
- (AMSDeviceOfferRegistrationPrivacyValidator)initWithAccount:(id)account;
- (BOOL)canMasterDevicePerformRegistration;
- (BOOL)isPrivacyRequirementMetForOptions:(unint64_t)options;
@end

@implementation AMSDeviceOfferRegistrationPrivacyValidator

- (AMSDeviceOfferRegistrationPrivacyValidator)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = AMSDeviceOfferRegistrationPrivacyValidator;
  v6 = [(AMSDeviceOfferRegistrationPrivacyValidator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
  }

  return v7;
}

- (BOOL)canMasterDevicePerformRegistration
{
  _masterEligibilityPrivacyOptionsIdentifiers = [objc_opt_class() _masterEligibilityPrivacyOptionsIdentifiers];
  v4 = objc_opt_class();
  account = [(AMSDeviceOfferRegistrationPrivacyValidator *)self account];
  LOBYTE(v4) = [v4 _isPrivacyAcknowledgementForIdentifiers:_masterEligibilityPrivacyOptionsIdentifiers satisfiedOnAccount:account];

  return v4;
}

- (BOOL)isPrivacyRequirementMetForOptions:(unint64_t)options
{
  v4 = [objc_opt_class() _identifiersForValidationOptions:options];
  v5 = objc_opt_class();
  account = [(AMSDeviceOfferRegistrationPrivacyValidator *)self account];
  LOBYTE(v5) = [v5 _isPrivacyAcknowledgementForIdentifiers:v4 satisfiedOnAccount:account];

  return v5;
}

+ (id)_identifiersForValidationOptions:(unint64_t)options
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = +[AMSLogConfig sharedConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    v15 = 138543874;
    v16 = v6;
    v17 = 2114;
    v18 = v7;
    v19 = 2048;
    optionsCopy = options;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Identifier check value: %lu.", &v15, 0x20u);
  }

  if (options)
  {
    v8 = objc_opt_new();
    if (options)
    {
      v12 = +[AMSAcknowledgePrivacyTask _appleIDPrivacyIdentifier];
      [v8 addObject:v12];

      if ((options & 2) == 0)
      {
LABEL_8:
        if ((options & 4) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_18;
      }
    }

    else if ((options & 2) == 0)
    {
      goto LABEL_8;
    }

    v13 = +[AMSAcknowledgePrivacyTask _appleArcadePrivacyIdentifier];
    [v8 addObject:v13];

    if ((options & 4) == 0)
    {
LABEL_9:
      if ((options & 8) == 0)
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

    if ((options & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v10 = [MEMORY[0x1E695DFD8] setWithArray:MEMORY[0x1E695E0F0]];
LABEL_13:

  return v10;
}

+ (BOOL)_isPrivacyAcknowledgementForIdentifier:(id)identifier satisfiedOnAccount:(id)account
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  accountCopy = account;
  v8 = [self _minimumAcknowledgementVersionForIdentifier:identifierCopy];
  if (v8)
  {
    v9 = [AMSAcknowledgePrivacyTask hasPreviouslyAcknowledgedPrivacyIdentifier:identifierCopy account:accountCopy minimumVersion:v8];
  }

  else
  {
    v10 = +[AMSLogConfig sharedConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v10 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = AMSLogKey();
      v15 = 138543874;
      v16 = v12;
      v17 = 2114;
      v18 = v13;
      v19 = 2114;
      v20 = identifierCopy;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] No version specified for GDPR identifier [%{public}@], returning false", &v15, 0x20u);
    }

    v9 = 0;
  }

  return v9;
}

+ (BOOL)_isPrivacyAcknowledgementForIdentifiers:(id)identifiers satisfiedOnAccount:(id)account
{
  v26 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  accountCopy = account;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  if (identifiersCopy && [identifiersCopy count])
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __105__AMSDeviceOfferRegistrationPrivacyValidator__isPrivacyAcknowledgementForIdentifiers_satisfiedOnAccount___block_invoke;
    v14[3] = &unk_1E73B6E88;
    v16 = &v18;
    selfCopy = self;
    v15 = accountCopy;
    [identifiersCopy enumerateObjectsUsingBlock:v14];

    v8 = *(v19 + 24);
  }

  else
  {
    v9 = +[AMSLogConfig sharedConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      *buf = 138543618;
      v23 = v11;
      v24 = 2114;
      v25 = v12;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No required GDPR identifiers.", buf, 0x16u);
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

+ (id)_minimumAcknowledgementVersionForIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    _privacyVersionMap = [self _privacyVersionMap];
    v6 = [_privacyVersionMap objectForKeyedSubscript:identifierCopy];
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