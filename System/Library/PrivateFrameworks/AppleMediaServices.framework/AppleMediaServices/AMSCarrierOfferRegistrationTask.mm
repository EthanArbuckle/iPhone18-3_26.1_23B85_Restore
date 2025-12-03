@interface AMSCarrierOfferRegistrationTask
+ (AMSBagKeySet)bagKeySet;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)createBagForSubProfile;
+ (id)pollingIntervalFromBag:(id)bag;
- (AMSCarrierOfferRegistrationTask)initWithAccount:(id)account bag:(id)bag;
- (AMSCarrierOfferRegistrationTask)initWithAccount:(id)account bag:(id)bag carriers:(id)carriers checkOfferRequestEncoder:(id)encoder deviceGUID:(id)d msisdn:(id)msisdn pacTokenPromise:(id)promise privacyMappingResolver:(Class)self0 registrationRequestEncoder:(id)self1 urlSession:(id)self2;
- (AMSCarrierOfferRegistrationTask)initWithAccount:(id)account bag:(id)bag carriers:(id)carriers deviceGUID:(id)d msisdn:(id)msisdn;
- (id)_allowedServiceIdentifiersFromPrivacyMapping:(id)mapping;
- (id)_checkOffersBodyLimitedByAllowedServiceIdentifiers:(id)identifiers;
- (id)_checkOffersRequestLimitedByAllowedServiceIdentifiers:(id)identifiers;
- (id)_evaluationRequiredPrivacyMappingPair;
- (id)_hasOffersLimitedByAllowedServiceIdentifiers:(id)identifiers;
- (id)_includesAllowedCarrier;
- (id)_pacToken;
- (id)_parseCheckOffersResult:(id)result;
- (id)_performRegistrationFlowLimitedByAllowedServiceIdentifiers:(id)identifiers;
- (id)_registerCarrierOffersToAccountLimitedByAllowedServiceIdentifiers:(id)identifiers;
- (id)_registrationBodyLimitedByAllowedServiceIdentifiers:(id)identifiers;
- (id)_registrationRequestLimitedByAllowedServiceIdentifiers:(id)identifiers;
- (id)perform;
@end

@implementation AMSCarrierOfferRegistrationTask

- (AMSCarrierOfferRegistrationTask)initWithAccount:(id)account bag:(id)bag
{
  bagCopy = bag;
  accountCopy = account;
  v7 = +[AMSDevice carrierNames];
  v8 = [[AMSURLRequestEncoder alloc] initWithBag:bagCopy];
  v9 = +[AMSDevice deviceGUID];
  v10 = +[AMSDevice phoneNumber];
  v11 = +[AMSDevice voicePreferredPACToken];
  v12 = objc_opt_class();
  v13 = [[AMSURLRequestEncoder alloc] initWithBag:bagCopy];
  v14 = +[AMSURLSession defaultSession];
  v15 = [(AMSCarrierOfferRegistrationTask *)self initWithAccount:accountCopy bag:bagCopy carriers:v7 checkOfferRequestEncoder:v8 deviceGUID:v9 msisdn:v10 pacTokenPromise:v11 privacyMappingResolver:v12 registrationRequestEncoder:v13 urlSession:v14];

  return v15;
}

- (AMSCarrierOfferRegistrationTask)initWithAccount:(id)account bag:(id)bag carriers:(id)carriers deviceGUID:(id)d msisdn:(id)msisdn
{
  accountCopy = account;
  bagCopy = bag;
  carriersCopy = carriers;
  dCopy = d;
  msisdnCopy = msisdn;
  v24 = carriersCopy;
  if (!carriersCopy)
  {
    v24 = +[AMSDevice carrierNames];
  }

  v25 = [[AMSURLRequestEncoder alloc] initWithBag:bagCopy];
  v15 = dCopy;
  if (dCopy)
  {
    if (msisdnCopy)
    {
LABEL_5:
      v16 = 0;
      v17 = msisdnCopy;
      goto LABEL_8;
    }
  }

  else
  {
    v15 = +[AMSDevice deviceGUID];
    if (msisdnCopy)
    {
      goto LABEL_5;
    }
  }

  v17 = +[AMSDevice phoneNumber];
  v16 = +[AMSDevice voicePreferredPACToken];
LABEL_8:
  v18 = objc_opt_class();
  v19 = [[AMSURLRequestEncoder alloc] initWithBag:bagCopy];
  v20 = +[AMSURLSession defaultSession];
  v21 = [(AMSCarrierOfferRegistrationTask *)self initWithAccount:accountCopy bag:bagCopy carriers:v24 checkOfferRequestEncoder:v25 deviceGUID:v15 msisdn:v17 pacTokenPromise:v16 privacyMappingResolver:v18 registrationRequestEncoder:v19 urlSession:v20];

  if (msisdnCopy)
  {
    if (dCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {

    if (dCopy)
    {
      goto LABEL_10;
    }
  }

LABEL_10:
  if (!carriersCopy)
  {
  }

  return v21;
}

- (AMSCarrierOfferRegistrationTask)initWithAccount:(id)account bag:(id)bag carriers:(id)carriers checkOfferRequestEncoder:(id)encoder deviceGUID:(id)d msisdn:(id)msisdn pacTokenPromise:(id)promise privacyMappingResolver:(Class)self0 registrationRequestEncoder:(id)self1 urlSession:(id)self2
{
  accountCopy = account;
  bagCopy = bag;
  carriersCopy = carriers;
  carriersCopy2 = carriers;
  encoderCopy = encoder;
  dCopy = d;
  dCopy2 = d;
  msisdnCopy = msisdn;
  msisdnCopy2 = msisdn;
  promiseCopy = promise;
  requestEncoderCopy = requestEncoder;
  sessionCopy = session;
  v34.receiver = self;
  v34.super_class = AMSCarrierOfferRegistrationTask;
  v23 = [(AMSTask *)&v34 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_account, account);
    objc_storeStrong(&v24->_bag, bag);
    objc_storeStrong(&v24->_carriers, carriersCopy);
    objc_storeStrong(&v24->_checkOfferRequestEncoder, encoder);
    objc_storeStrong(&v24->_deviceGUID, dCopy);
    objc_storeStrong(&v24->_msisdn, msisdnCopy);
    objc_storeStrong(&v24->_pacTokenPromise, promise);
    objc_storeStrong(&v24->_privacyMappingResolver, resolver);
    objc_storeStrong(&v24->_registrationRequestEncoder, requestEncoder);
    objc_storeStrong(&v24->_urlSession, session);
  }

  return v24;
}

- (id)perform
{
  carriers = [(AMSCarrierOfferRegistrationTask *)self carriers];
  if (carriers && (v4 = carriers, -[AMSCarrierOfferRegistrationTask carriers](self, "carriers"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v4, v6))
  {
    msisdn = [(AMSCarrierOfferRegistrationTask *)self msisdn];

    if (msisdn)
    {
      deviceGUID = [(AMSCarrierOfferRegistrationTask *)self deviceGUID];

      if (deviceGUID)
      {
        account = [(AMSCarrierOfferRegistrationTask *)self account];

        if (account)
        {
          _evaluationRequiredPrivacyMappingPair = [(AMSCarrierOfferRegistrationTask *)self _evaluationRequiredPrivacyMappingPair];
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __42__AMSCarrierOfferRegistrationTask_perform__block_invoke;
          v15[3] = &unk_1E73B5B10;
          v15[4] = self;
          v11 = [_evaluationRequiredPrivacyMappingPair thenWithBlock:v15];
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

  _evaluationRequiredPrivacyMappingPair = [v12 invalidParameterError:v13];
  [v11 finishWithError:_evaluationRequiredPrivacyMappingPair];
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

+ (id)pollingIntervalFromBag:(id)bag
{
  v3 = [bag doubleForKey:@"channelOfferCheckFrequency"];
  valuePromise = [v3 valuePromise];
  v5 = [valuePromise thenWithBlock:&__block_literal_global_28];

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

- (id)_performRegistrationFlowLimitedByAllowedServiceIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __94__AMSCarrierOfferRegistrationTask__performRegistrationFlowLimitedByAllowedServiceIdentifiers___block_invoke;
  v8[3] = &unk_1E73B5B38;
  v8[4] = self;
  v9 = identifiersCopy;
  v5 = identifiersCopy;
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

- (id)_checkOffersRequestLimitedByAllowedServiceIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  checkOfferRequestEncoder = [(AMSCarrierOfferRegistrationTask *)self checkOfferRequestEncoder];
  [checkOfferRequestEncoder setRequestEncoding:3];

  clientInfo = [(AMSCarrierOfferRegistrationTask *)self clientInfo];
  checkOfferRequestEncoder2 = [(AMSCarrierOfferRegistrationTask *)self checkOfferRequestEncoder];
  [checkOfferRequestEncoder2 setClientInfo:clientInfo];

  v8 = [(AMSCarrierOfferRegistrationTask *)self _checkOffersBodyLimitedByAllowedServiceIdentifiers:identifiersCopy];

  v9 = [(AMSCarrierOfferRegistrationTask *)self bag];
  v10 = [v9 URLForKey:@"checkChannelOffers"];

  checkOfferRequestEncoder3 = [(AMSCarrierOfferRegistrationTask *)self checkOfferRequestEncoder];
  v12 = [checkOfferRequestEncoder3 requestWithMethod:4 bagURL:v10 parameters:v8];

  return v12;
}

- (id)_hasOffersLimitedByAllowedServiceIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  urlSession = [(AMSCarrierOfferRegistrationTask *)self urlSession];
  v6 = [(AMSCarrierOfferRegistrationTask *)self _checkOffersRequestLimitedByAllowedServiceIdentifiers:identifiersCopy];

  v7 = [urlSession dataTaskPromiseWithRequestPromise:v6];

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
  valuePromise = [v5 valuePromise];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__AMSCarrierOfferRegistrationTask__includesAllowedCarrier__block_invoke;
  v10[3] = &unk_1E73B5B60;
  v7 = v3;
  v11 = v7;
  selfCopy = self;
  [valuePromise addFinishBlock:v10];

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

- (id)_checkOffersBodyLimitedByAllowedServiceIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = objc_opt_new();
  msisdn = [(AMSCarrierOfferRegistrationTask *)self msisdn];
  [v5 setObject:msisdn forKeyedSubscript:@"msisdn"];

  array = [identifiersCopy array];

  [v5 setObject:array forKeyedSubscript:@"validLobs"];
  v8 = [v5 copy];

  return v8;
}

- (id)_pacToken
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  pacTokenPromise = [(AMSCarrierOfferRegistrationTask *)self pacTokenPromise];

  if (pacTokenPromise)
  {
    objc_initWeak(location, self);
    pacTokenPromise2 = [(AMSCarrierOfferRegistrationTask *)self pacTokenPromise];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __44__AMSCarrierOfferRegistrationTask__pacToken__block_invoke;
    v12[3] = &unk_1E73B5B88;
    objc_copyWeak(&v14, location);
    v13 = v3;
    [pacTokenPromise2 addFinishBlock:v12];

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

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      *location = 138543618;
      *&location[4] = v8;
      v16 = 2114;
      v17 = v9;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No PAC token available", location, 0x16u);
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

- (id)_parseCheckOffersResult:(id)result
{
  object = [result object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = object;
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
  msisdn = [(AMSCarrierOfferRegistrationTask *)self msisdn];
  v10 = [v8 numberWithBool:{objc_msgSend(v7, "containsObject:", msisdn)}];

  return v10;
}

- (id)_registrationBodyLimitedByAllowedServiceIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  msisdn = [(AMSCarrierOfferRegistrationTask *)self msisdn];
  [v6 setObject:msisdn forKeyedSubscript:@"msisdn"];

  deviceGUID = [(AMSCarrierOfferRegistrationTask *)self deviceGUID];
  [v6 setObject:deviceGUID forKeyedSubscript:@"guid"];

  array = [identifiersCopy array];

  [v6 setObject:array forKeyedSubscript:@"lobs"];
  _pacToken = [(AMSCarrierOfferRegistrationTask *)self _pacToken];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __87__AMSCarrierOfferRegistrationTask__registrationBodyLimitedByAllowedServiceIdentifiers___block_invoke;
  v14[3] = &unk_1E73B5BB0;
  v15 = v6;
  v11 = v6;
  v12 = [_pacToken thenWithBlock:v14];

  return v12;
}

AMSPromise *__87__AMSCarrierOfferRegistrationTask__registrationBodyLimitedByAllowedServiceIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 value];
  [*(a1 + 32) setObject:v3 forKeyedSubscript:@"pac"];

  v4 = *(a1 + 32);

  return [AMSPromise promiseWithResult:v4];
}

- (id)_registerCarrierOffersToAccountLimitedByAllowedServiceIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = objc_opt_new();
  urlSession = [(AMSCarrierOfferRegistrationTask *)self urlSession];
  v7 = [(AMSCarrierOfferRegistrationTask *)self _registrationRequestLimitedByAllowedServiceIdentifiers:identifiersCopy];

  v8 = [urlSession dataTaskPromiseWithRequestPromise:v7];

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

  valuePromise = [v5 valuePromise];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__AMSCarrierOfferRegistrationTask__evaluationRequiredPrivacyMappingPair__block_invoke;
  v9[3] = &unk_1E73B5C00;
  v7 = v3;
  v10 = v7;
  [valuePromise addFinishBlock:v9];

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

- (id)_allowedServiceIdentifiersFromPrivacyMapping:(id)mapping
{
  mappingCopy = mapping;
  privacyMappingResolver = [(AMSCarrierOfferRegistrationTask *)self privacyMappingResolver];
  account = [(AMSCarrierOfferRegistrationTask *)self account];
  v7 = [(objc_class *)privacyMappingResolver allowedIdentifiersFrom:mappingCopy forAccount:account];

  return v7;
}

- (id)_registrationRequestLimitedByAllowedServiceIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  registrationRequestEncoder = [(AMSCarrierOfferRegistrationTask *)self registrationRequestEncoder];
  [registrationRequestEncoder setRequestEncoding:3];

  account = [(AMSCarrierOfferRegistrationTask *)self account];
  registrationRequestEncoder2 = [(AMSCarrierOfferRegistrationTask *)self registrationRequestEncoder];
  [registrationRequestEncoder2 setAccount:account];

  clientInfo = [(AMSCarrierOfferRegistrationTask *)self clientInfo];
  registrationRequestEncoder3 = [(AMSCarrierOfferRegistrationTask *)self registrationRequestEncoder];
  [registrationRequestEncoder3 setClientInfo:clientInfo];

  v10 = [(AMSCarrierOfferRegistrationTask *)self _registrationBodyLimitedByAllowedServiceIdentifiers:identifiersCopy];

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
  bagSubProfile = [objc_opt_class() bagSubProfile];
  bagSubProfileVersion = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:bagSubProfile profileVersion:bagSubProfileVersion];

  return v4;
}

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(AMSBagKeySet);

  return v2;
}

@end