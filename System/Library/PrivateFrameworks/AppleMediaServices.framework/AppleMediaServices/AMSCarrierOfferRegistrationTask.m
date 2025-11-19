@interface AMSCarrierOfferRegistrationTask
+ (AMSBagKeySet)bagKeySet;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)createBagForSubProfile;
+ (id)pollingIntervalFromBag:(id)a3;
- (AMSCarrierOfferRegistrationTask)initWithAccount:(id)a3 bag:(id)a4;
- (AMSCarrierOfferRegistrationTask)initWithAccount:(id)a3 bag:(id)a4 carriers:(id)a5 checkOfferRequestEncoder:(id)a6 deviceGUID:(id)a7 msisdn:(id)a8 pacTokenPromise:(id)a9 privacyMappingResolver:(Class)a10 registrationRequestEncoder:(id)a11 urlSession:(id)a12;
- (AMSCarrierOfferRegistrationTask)initWithAccount:(id)a3 bag:(id)a4 carriers:(id)a5 deviceGUID:(id)a6 msisdn:(id)a7;
- (id)_allowedServiceIdentifiersFromPrivacyMapping:(id)a3;
- (id)_checkOffersBodyLimitedByAllowedServiceIdentifiers:(id)a3;
- (id)_checkOffersRequestLimitedByAllowedServiceIdentifiers:(id)a3;
- (id)_evaluationRequiredPrivacyMappingPair;
- (id)_hasOffersLimitedByAllowedServiceIdentifiers:(id)a3;
- (id)_includesAllowedCarrier;
- (id)_pacToken;
- (id)_parseCheckOffersResult:(id)a3;
- (id)_performRegistrationFlowLimitedByAllowedServiceIdentifiers:(id)a3;
- (id)_registerCarrierOffersToAccountLimitedByAllowedServiceIdentifiers:(id)a3;
- (id)_registrationBodyLimitedByAllowedServiceIdentifiers:(id)a3;
- (id)_registrationRequestLimitedByAllowedServiceIdentifiers:(id)a3;
- (id)perform;
@end

@implementation AMSCarrierOfferRegistrationTask

- (AMSCarrierOfferRegistrationTask)initWithAccount:(id)a3 bag:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[AMSDevice carrierNames];
  v8 = [[AMSURLRequestEncoder alloc] initWithBag:v5];
  v9 = +[AMSDevice deviceGUID];
  v10 = +[AMSDevice phoneNumber];
  v11 = +[AMSDevice voicePreferredPACToken];
  v12 = objc_opt_class();
  v13 = [[AMSURLRequestEncoder alloc] initWithBag:v5];
  v14 = +[AMSURLSession defaultSession];
  v15 = [(AMSCarrierOfferRegistrationTask *)self initWithAccount:v6 bag:v5 carriers:v7 checkOfferRequestEncoder:v8 deviceGUID:v9 msisdn:v10 pacTokenPromise:v11 privacyMappingResolver:v12 registrationRequestEncoder:v13 urlSession:v14];

  return v15;
}

- (AMSCarrierOfferRegistrationTask)initWithAccount:(id)a3 bag:(id)a4 carriers:(id)a5 deviceGUID:(id)a6 msisdn:(id)a7
{
  v26 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v24 = v12;
  if (!v12)
  {
    v24 = +[AMSDevice carrierNames];
  }

  v25 = [[AMSURLRequestEncoder alloc] initWithBag:v11];
  v15 = v13;
  if (v13)
  {
    if (v14)
    {
LABEL_5:
      v16 = 0;
      v17 = v14;
      goto LABEL_8;
    }
  }

  else
  {
    v15 = +[AMSDevice deviceGUID];
    if (v14)
    {
      goto LABEL_5;
    }
  }

  v17 = +[AMSDevice phoneNumber];
  v16 = +[AMSDevice voicePreferredPACToken];
LABEL_8:
  v18 = objc_opt_class();
  v19 = [[AMSURLRequestEncoder alloc] initWithBag:v11];
  v20 = +[AMSURLSession defaultSession];
  v21 = [(AMSCarrierOfferRegistrationTask *)self initWithAccount:v26 bag:v11 carriers:v24 checkOfferRequestEncoder:v25 deviceGUID:v15 msisdn:v17 pacTokenPromise:v16 privacyMappingResolver:v18 registrationRequestEncoder:v19 urlSession:v20];

  if (v14)
  {
    if (v13)
    {
      goto LABEL_10;
    }
  }

  else
  {

    if (v13)
    {
      goto LABEL_10;
    }
  }

LABEL_10:
  if (!v12)
  {
  }

  return v21;
}

- (AMSCarrierOfferRegistrationTask)initWithAccount:(id)a3 bag:(id)a4 carriers:(id)a5 checkOfferRequestEncoder:(id)a6 deviceGUID:(id)a7 msisdn:(id)a8 pacTokenPromise:(id)a9 privacyMappingResolver:(Class)a10 registrationRequestEncoder:(id)a11 urlSession:(id)a12
{
  v18 = a3;
  v33 = a4;
  v27 = a5;
  v32 = a5;
  v31 = a6;
  v28 = a7;
  v30 = a7;
  v29 = a8;
  v19 = a8;
  v20 = a9;
  v21 = a11;
  v22 = a12;
  v34.receiver = self;
  v34.super_class = AMSCarrierOfferRegistrationTask;
  v23 = [(AMSTask *)&v34 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_account, a3);
    objc_storeStrong(&v24->_bag, a4);
    objc_storeStrong(&v24->_carriers, v27);
    objc_storeStrong(&v24->_checkOfferRequestEncoder, a6);
    objc_storeStrong(&v24->_deviceGUID, v28);
    objc_storeStrong(&v24->_msisdn, v29);
    objc_storeStrong(&v24->_pacTokenPromise, a9);
    objc_storeStrong(&v24->_privacyMappingResolver, a10);
    objc_storeStrong(&v24->_registrationRequestEncoder, a11);
    objc_storeStrong(&v24->_urlSession, a12);
  }

  return v24;
}

- (id)perform
{
  v3 = [(AMSCarrierOfferRegistrationTask *)self carriers];
  if (v3 && (v4 = v3, -[AMSCarrierOfferRegistrationTask carriers](self, "carriers"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v4, v6))
  {
    v7 = [(AMSCarrierOfferRegistrationTask *)self msisdn];

    if (v7)
    {
      v8 = [(AMSCarrierOfferRegistrationTask *)self deviceGUID];

      if (v8)
      {
        v9 = [(AMSCarrierOfferRegistrationTask *)self account];

        if (v9)
        {
          v10 = [(AMSCarrierOfferRegistrationTask *)self _evaluationRequiredPrivacyMappingPair];
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __42__AMSCarrierOfferRegistrationTask_perform__block_invoke;
          v15[3] = &unk_1E73B5B10;
          v15[4] = self;
          v11 = [v10 thenWithBlock:v15];
          goto LABEL_9;
        }

        v11 = objc_opt_new();
        v12 = objc_opt_class();
        v13 = @"Task is missing account";
      }

      else
      {
        v11 = objc_opt_new();
        v12 = objc_opt_class();
        v13 = @"Task is missing device GUID";
      }
    }

    else
    {
      v11 = objc_opt_new();
      v12 = objc_opt_class();
      v13 = @"Task is missing a phone number/msisdn";
    }
  }

  else
  {
    v11 = objc_opt_new();
    v12 = objc_opt_class();
    v13 = @"Task is missing carrier names";
  }

  v10 = [v12 invalidParameterError:v13];
  [v11 finishWithError:v10];
LABEL_9:

  return v11;
}

id __42__AMSCarrierOfferRegistrationTask_perform__block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 first];
  if ([v4 BOOLValue])
  {
    v5 = [v3 second];

    if (v5)
    {
      v6 = +[AMSLogConfig sharedPrivacyConfig];
      if (!v6)
      {
        v6 = +[AMSLogConfig sharedConfig];
      }

      v7 = [v6 OSLogObject];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = objc_opt_class();
        v9 = AMSLogKey();
        v10 = [v3 second];
        v27 = 138543874;
        v28 = v8;
        v29 = 2114;
        v30 = v9;
        v31 = 2114;
        v32 = v10;
        _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Privacy requirements found: %{public}@", &v27, 0x20u);
      }

      v11 = MEMORY[0x1E695DFB8];
      v12 = *(a1 + 32);
      v13 = [v3 second];
      v14 = [v12 _allowedServiceIdentifiersFromPrivacyMapping:v13];
      v15 = [v11 orderedSetWithSet:v14];

      if ([v15 count])
      {
        v16 = +[AMSLogConfig sharedPrivacyConfig];
        if (!v16)
        {
          v16 = +[AMSLogConfig sharedConfig];
        }

        v17 = [v16 OSLogObject];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = objc_opt_class();
          v19 = AMSLogKey();
          v27 = 138543874;
          v28 = v18;
          v29 = 2114;
          v30 = v19;
          v31 = 2114;
          v32 = v15;
          _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Lobs qualifying: %{public}@", &v27, 0x20u);
        }

        v20 = [*(a1 + 32) _performRegistrationFlowLimitedByAllowedServiceIdentifiers:v15];
      }

      else
      {
        v25 = AMSError(6, @"Short circuiting carrier registration", @"No LoBs meet criteria for inclusion", 0);
        v20 = [AMSPromise promiseWithError:v25];
      }

      goto LABEL_21;
    }
  }

  else
  {
  }

  v21 = +[AMSLogConfig sharedPrivacyConfig];
  if (!v21)
  {
    v21 = +[AMSLogConfig sharedConfig];
  }

  v22 = [v21 OSLogObject];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = objc_opt_class();
    v24 = AMSLogKey();
    v27 = 138543618;
    v28 = v23;
    v29 = 2114;
    v30 = v24;
    _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No additional privacy reqs", &v27, 0x16u);
  }

  v20 = [*(a1 + 32) _performRegistrationFlowLimitedByAllowedServiceIdentifiers:0];
LABEL_21:

  return v20;
}

+ (id)pollingIntervalFromBag:(id)a3
{
  v3 = [a3 doubleForKey:@"channelOfferCheckFrequency"];
  v4 = [v3 valuePromise];
  v5 = [v4 thenWithBlock:&__block_literal_global_28];

  return v5;
}

id __58__AMSCarrierOfferRegistrationTask_pollingIntervalFromBag___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  [a2 doubleValue];
  v4 = [v2 numberWithDouble:v3 * 3600.0];
  v5 = [AMSPromise promiseWithResult:v4];

  return v5;
}

- (id)_performRegistrationFlowLimitedByAllowedServiceIdentifiers:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __94__AMSCarrierOfferRegistrationTask__performRegistrationFlowLimitedByAllowedServiceIdentifiers___block_invoke;
  v8[3] = &unk_1E73B5B38;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [(AMSTask *)self performTaskWithBlock:v8];

  return v6;
}

id __94__AMSCarrierOfferRegistrationTask__performRegistrationFlowLimitedByAllowedServiceIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) _includesAllowedCarrier];
  v53 = 0;
  v5 = [v4 resultWithError:&v53];
  v6 = v53;

  if (v6)
  {
    v7 = +[AMSLogConfig sharedPrivacyConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v11 = [*(a1 + 32) carriers];
      v12 = AMSLogableError(v6);
      *buf = 138544130;
      v55 = v9;
      v56 = 2114;
      v57 = v10;
      v58 = 2114;
      v59 = v11;
      v60 = 2114;
      v61 = v12;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Qualification check failed for carrier(s) %{public}@. Error: %{public}@.", buf, 0x2Au);
    }

    v13 = v6;
    v14 = 0;
    *a2 = v6;
  }

  else if ([v5 BOOLValue])
  {
    v15 = [*(a1 + 32) _hasOffersLimitedByAllowedServiceIdentifiers:*(a1 + 40)];
    v52 = 0;
    v16 = [v15 resultWithError:&v52];
    v17 = v52;

    if (v17)
    {
      v18 = +[AMSLogConfig sharedPrivacyConfig];
      if (!v18)
      {
        v18 = +[AMSLogConfig sharedConfig];
      }

      v19 = [v18 OSLogObject];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = objc_opt_class();
        AMSLogKey();
        v21 = v49 = v16;
        v22 = [*(a1 + 32) msisdn];
        v23 = AMSLogableError(v17);
        *buf = 138544130;
        v55 = v20;
        v56 = 2114;
        v57 = v21;
        v58 = 2114;
        v59 = v22;
        v60 = 2114;
        v61 = v23;
        _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to check offers for msisdn %{public}@. Error: %{public}@.", buf, 0x2Au);

        v16 = v49;
      }

      v24 = v17;
      v14 = 0;
      *a2 = v17;
    }

    else if ([v16 BOOLValue])
    {
      v30 = [*(a1 + 32) _registerCarrierOffersToAccountLimitedByAllowedServiceIdentifiers:*(a1 + 40)];
      v51 = 0;
      v31 = [v30 resultWithError:&v51];
      v32 = v51;

      v33 = +[AMSLogConfig sharedPrivacyConfig];
      v34 = v33;
      if (v32)
      {
        if (!v33)
        {
          v34 = +[AMSLogConfig sharedConfig];
        }

        v35 = [v34 OSLogObject];
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = objc_opt_class();
          v37 = AMSLogKey();
          AMSLogableError(v32);
          v38 = v50 = v16;
          *buf = 138543874;
          v55 = v36;
          v56 = 2114;
          v57 = v37;
          v58 = 2114;
          v59 = v38;
          _os_log_impl(&dword_192869000, v35, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Registration failed. Error: %{public}@.", buf, 0x20u);

          v16 = v50;
        }

        v39 = v32;
        v14 = 0;
        *a2 = v32;
      }

      else
      {
        if (!v33)
        {
          v34 = +[AMSLogConfig sharedConfig];
        }

        v45 = [v34 OSLogObject];
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = objc_opt_class();
          v47 = AMSLogKey();
          *buf = 138543874;
          v55 = v46;
          v56 = 2114;
          v57 = v47;
          v58 = 1024;
          LODWORD(v59) = v31;
          _os_log_impl(&dword_192869000, v45, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Registration succeeded: %d", buf, 0x1Cu);
        }

        v14 = [MEMORY[0x1E696AD98] numberWithBool:v31];
      }
    }

    else
    {
      v40 = +[AMSLogConfig sharedPrivacyConfig];
      if (!v40)
      {
        v40 = +[AMSLogConfig sharedConfig];
      }

      v41 = [v40 OSLogObject];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = objc_opt_class();
        v43 = AMSLogKey();
        v44 = [*(a1 + 32) msisdn];
        *buf = 138543874;
        v55 = v42;
        v56 = 2114;
        v57 = v43;
        v58 = 2114;
        v59 = v44;
        _os_log_impl(&dword_192869000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No offers for msisdn %{public}@", buf, 0x20u);
      }

      v14 = MEMORY[0x1E695E110];
    }
  }

  else
  {
    v25 = +[AMSLogConfig sharedPrivacyConfig];
    if (!v25)
    {
      v25 = +[AMSLogConfig sharedConfig];
    }

    v26 = [v25 OSLogObject];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = objc_opt_class();
      v28 = AMSLogKey();
      v29 = [*(a1 + 32) carriers];
      *buf = 138543874;
      v55 = v27;
      v56 = 2114;
      v57 = v28;
      v58 = 2114;
      v59 = v29;
      _os_log_impl(&dword_192869000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Carrier(s) do not qualify: %{public}@", buf, 0x20u);
    }

    v14 = MEMORY[0x1E695E110];
  }

  return v14;
}

- (id)_checkOffersRequestLimitedByAllowedServiceIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(AMSCarrierOfferRegistrationTask *)self checkOfferRequestEncoder];
  [v5 setRequestEncoding:3];

  v6 = [(AMSCarrierOfferRegistrationTask *)self clientInfo];
  v7 = [(AMSCarrierOfferRegistrationTask *)self checkOfferRequestEncoder];
  [v7 setClientInfo:v6];

  v8 = [(AMSCarrierOfferRegistrationTask *)self _checkOffersBodyLimitedByAllowedServiceIdentifiers:v4];

  v9 = [(AMSCarrierOfferRegistrationTask *)self bag];
  v10 = [v9 URLForKey:@"checkChannelOffers"];

  v11 = [(AMSCarrierOfferRegistrationTask *)self checkOfferRequestEncoder];
  v12 = [v11 requestWithMethod:4 bagURL:v10 parameters:v8];

  return v12;
}

- (id)_hasOffersLimitedByAllowedServiceIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(AMSCarrierOfferRegistrationTask *)self urlSession];
  v6 = [(AMSCarrierOfferRegistrationTask *)self _checkOffersRequestLimitedByAllowedServiceIdentifiers:v4];

  v7 = [v5 dataTaskPromiseWithRequestPromise:v6];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__AMSCarrierOfferRegistrationTask__hasOffersLimitedByAllowedServiceIdentifiers___block_invoke;
  v10[3] = &unk_1E73B3F48;
  v10[4] = self;
  v8 = [v7 thenWithBlock:v10];

  return v8;
}

id __80__AMSCarrierOfferRegistrationTask__hasOffersLimitedByAllowedServiceIdentifiers___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _parseCheckOffersResult:a2];
  v3 = [AMSPromise promiseWithResult:v2];

  return v3;
}

- (id)_includesAllowedCarrier
{
  v3 = objc_opt_new();
  v4 = [(AMSCarrierOfferRegistrationTask *)self bag];
  v5 = [v4 arrayForKey:@"channelSupportedCarriers"];
  v6 = [v5 valuePromise];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__AMSCarrierOfferRegistrationTask__includesAllowedCarrier__block_invoke;
  v10[3] = &unk_1E73B5B60;
  v7 = v3;
  v11 = v7;
  v12 = self;
  [v6 addFinishBlock:v10];

  v8 = v7;
  return v7;
}

void __58__AMSCarrierOfferRegistrationTask__includesAllowedCarrier__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = *(a1 + 32);

    [v4 finishWithError:?];
  }

  else
  {
    if (a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = MEMORY[0x1E695E0F0];
    }

    v6 = [MEMORY[0x1E695DFD8] setWithArray:v5];
    v7 = MEMORY[0x1E695DFD8];
    v8 = [*(a1 + 40) carriers];
    v9 = [v7 setWithArray:v8];

    v10 = [v9 intersectsSet:v6];
    v11 = +[AMSLogConfig sharedPrivacyConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      v17 = 138543874;
      v18 = v13;
      v19 = 2114;
      v20 = v14;
      v21 = 1024;
      v22 = v10;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Qualification result: %i", &v17, 0x1Cu);
    }

    v15 = *(a1 + 32);
    v16 = [MEMORY[0x1E696AD98] numberWithBool:v10];
    [v15 finishWithResult:v16];
  }
}

- (id)_checkOffersBodyLimitedByAllowedServiceIdentifiers:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(AMSCarrierOfferRegistrationTask *)self msisdn];
  [v5 setObject:v6 forKeyedSubscript:@"msisdn"];

  v7 = [v4 array];

  [v5 setObject:v7 forKeyedSubscript:@"validLobs"];
  v8 = [v5 copy];

  return v8;
}

- (id)_pacToken
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [(AMSCarrierOfferRegistrationTask *)self pacTokenPromise];

  if (v4)
  {
    objc_initWeak(location, self);
    v5 = [(AMSCarrierOfferRegistrationTask *)self pacTokenPromise];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __44__AMSCarrierOfferRegistrationTask__pacToken__block_invoke;
    v12[3] = &unk_1E73B5B88;
    objc_copyWeak(&v14, location);
    v13 = v3;
    [v5 addFinishBlock:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(location);
  }

  else
  {
    v6 = +[AMSLogConfig sharedPrivacyConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      *location = 138543618;
      *&location[4] = v8;
      v16 = 2114;
      v17 = v9;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No PAC token available", location, 0x16u);
    }

    v10 = +[AMSOptional optionalWithNil];
    [v3 finishWithResult:v10];
  }

  return v3;
}

void __44__AMSCarrierOfferRegistrationTask__pacToken__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v6)
  {
    v8 = +[AMSLogConfig sharedPrivacyConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      v12 = AMSLogableError(v6);
      v16 = 138543874;
      v17 = v10;
      v18 = 2114;
      v19 = v11;
      v20 = 2114;
      v21 = v12;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Could not retrieve PAC. Error: %{public}@", &v16, 0x20u);
    }

    v13 = *(a1 + 32);
    v14 = +[AMSOptional optionalWithNil];
  }

  else
  {
    v13 = *(a1 + 32);
    v14 = [AMSOptional optionalWithValue:v5];
  }

  v15 = v14;
  [v13 finishWithResult:v14];
}

- (id)_parseCheckOffersResult:(id)a3
{
  v4 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 objectForKeyedSubscript:@"msisdnsWithOffer"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = MEMORY[0x1E696AD98];
  v9 = [(AMSCarrierOfferRegistrationTask *)self msisdn];
  v10 = [v8 numberWithBool:{objc_msgSend(v7, "containsObject:", v9)}];

  return v10;
}

- (id)_registrationBodyLimitedByAllowedServiceIdentifiers:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = [(AMSCarrierOfferRegistrationTask *)self msisdn];
  [v6 setObject:v7 forKeyedSubscript:@"msisdn"];

  v8 = [(AMSCarrierOfferRegistrationTask *)self deviceGUID];
  [v6 setObject:v8 forKeyedSubscript:@"guid"];

  v9 = [v4 array];

  [v6 setObject:v9 forKeyedSubscript:@"lobs"];
  v10 = [(AMSCarrierOfferRegistrationTask *)self _pacToken];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __87__AMSCarrierOfferRegistrationTask__registrationBodyLimitedByAllowedServiceIdentifiers___block_invoke;
  v14[3] = &unk_1E73B5BB0;
  v15 = v6;
  v11 = v6;
  v12 = [v10 thenWithBlock:v14];

  return v12;
}

AMSPromise *__87__AMSCarrierOfferRegistrationTask__registrationBodyLimitedByAllowedServiceIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 value];
  [*(a1 + 32) setObject:v3 forKeyedSubscript:@"pac"];

  v4 = *(a1 + 32);

  return [AMSPromise promiseWithResult:v4];
}

- (id)_registerCarrierOffersToAccountLimitedByAllowedServiceIdentifiers:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(AMSCarrierOfferRegistrationTask *)self urlSession];
  v7 = [(AMSCarrierOfferRegistrationTask *)self _registrationRequestLimitedByAllowedServiceIdentifiers:v4];

  v8 = [v6 dataTaskPromiseWithRequestPromise:v7];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __101__AMSCarrierOfferRegistrationTask__registerCarrierOffersToAccountLimitedByAllowedServiceIdentifiers___block_invoke;
  v11[3] = &unk_1E73B5BD8;
  v9 = v5;
  v12 = v9;
  [v8 addFinishBlock:v11];

  return v9;
}

uint64_t __101__AMSCarrierOfferRegistrationTask__registerCarrierOffersToAccountLimitedByAllowedServiceIdentifiers___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return [v3 finishWithError:?];
  }

  else
  {
    return [v3 finishWithSuccess];
  }
}

- (id)_evaluationRequiredPrivacyMappingPair
{
  v3 = objc_opt_new();
  v4 = [(AMSCarrierOfferRegistrationTask *)self bag];
  v5 = [v4 dictionaryForKey:@"channelRegisterPrivacyMapping"];

  v6 = [v5 valuePromise];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__AMSCarrierOfferRegistrationTask__evaluationRequiredPrivacyMappingPair__block_invoke;
  v9[3] = &unk_1E73B5C00;
  v7 = v3;
  v10 = v7;
  [v6 addFinishBlock:v9];

  return v7;
}

void __72__AMSCarrierOfferRegistrationTask__evaluationRequiredPrivacyMappingPair__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v8 = *(a1 + 32);
    v14 = [AMSPair alloc];
    v10 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v11 = v14;
    v12 = v10;
    v13 = v16;
    goto LABEL_5;
  }

  v7 = [v5 code];
  v8 = *(a1 + 32);
  if (v7 == 204)
  {
    v9 = [AMSPair alloc];
    v10 = [MEMORY[0x1E696AD98] numberWithBool:0];
    v11 = v9;
    v12 = v10;
    v13 = 0;
LABEL_5:
    v15 = [(AMSPair *)v11 initWithFirst:v12 second:v13];
    [v8 finishWithResult:v15];

    goto LABEL_7;
  }

  [v8 finishWithError:v6];
LABEL_7:
}

- (id)_allowedServiceIdentifiersFromPrivacyMapping:(id)a3
{
  v4 = a3;
  v5 = [(AMSCarrierOfferRegistrationTask *)self privacyMappingResolver];
  v6 = [(AMSCarrierOfferRegistrationTask *)self account];
  v7 = [(objc_class *)v5 allowedIdentifiersFrom:v4 forAccount:v6];

  return v7;
}

- (id)_registrationRequestLimitedByAllowedServiceIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(AMSCarrierOfferRegistrationTask *)self registrationRequestEncoder];
  [v5 setRequestEncoding:3];

  v6 = [(AMSCarrierOfferRegistrationTask *)self account];
  v7 = [(AMSCarrierOfferRegistrationTask *)self registrationRequestEncoder];
  [v7 setAccount:v6];

  v8 = [(AMSCarrierOfferRegistrationTask *)self clientInfo];
  v9 = [(AMSCarrierOfferRegistrationTask *)self registrationRequestEncoder];
  [v9 setClientInfo:v8];

  v10 = [(AMSCarrierOfferRegistrationTask *)self _registrationBodyLimitedByAllowedServiceIdentifiers:v4];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __90__AMSCarrierOfferRegistrationTask__registrationRequestLimitedByAllowedServiceIdentifiers___block_invoke;
  v13[3] = &unk_1E73B5C28;
  v13[4] = self;
  v11 = [v10 thenWithBlock:v13];

  return v11;
}

id __90__AMSCarrierOfferRegistrationTask__registrationRequestLimitedByAllowedServiceIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 bag];
  v6 = [v5 URLForKey:@"channelRegisterPhoneNumber"];

  v7 = [*(a1 + 32) registrationRequestEncoder];
  v8 = [v7 requestWithMethod:4 bagURL:v6 parameters:v4];

  return v8;
}

+ (NSString)bagSubProfile
{
  if (_MergedGlobals_1_6 != -1)
  {
    dispatch_once(&_MergedGlobals_1_6, &__block_literal_global_68);
  }

  v3 = qword_1ED6E1E38;

  return v3;
}

void __48__AMSCarrierOfferRegistrationTask_bagSubProfile__block_invoke()
{
  v0 = qword_1ED6E1E38;
  qword_1ED6E1E38 = @"AMSCarrierOfferRegistrationTask";
}

+ (NSString)bagSubProfileVersion
{
  if (qword_1ED6E1E40 != -1)
  {
    dispatch_once(&qword_1ED6E1E40, &__block_literal_global_73);
  }

  v3 = qword_1ED6E1E48;

  return v3;
}

void __55__AMSCarrierOfferRegistrationTask_bagSubProfileVersion__block_invoke()
{
  v0 = qword_1ED6E1E48;
  qword_1ED6E1E48 = @"1";
}

+ (id)createBagForSubProfile
{
  v2 = [objc_opt_class() bagSubProfile];
  v3 = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:v2 profileVersion:v3];

  return v4;
}

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(AMSBagKeySet);

  return v2;
}

@end