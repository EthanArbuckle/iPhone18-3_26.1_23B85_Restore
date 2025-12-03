@interface AMSDeviceOfferRegistrationTask
+ (AMSBagKeySet)bagKeySet;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)createBagForSubProfile;
- (AMSDeviceOfferRegistrationTask)initWithAccount:(id)account bag:(id)bag;
- (AMSDeviceOfferRegistrationTask)initWithAccount:(id)account bag:(id)bag deviceGUID:(id)d deviceOffersStore:(id)store eligibilityTask:(id)task masterSerialNumber:(id)number privacyValidator:(id)validator urlSession:(id)self0;
- (BOOL)_isDeviceGroupRegistrationAllowed;
- (BOOL)_isEligibilityCallsAllowed;
- (BOOL)_isRegistrationAllowed;
- (id)_accountEligibleSerialsFromDeviceOffers:(id)offers accountOffers:(id)accountOffers;
- (id)_bucketedOffers:(id)offers;
- (id)_companionSerialNumbers;
- (id)_deviceOffersURL;
- (id)_eligibilityQualifiedRegistrationGroupsWithAccount:(id)account pendingRegistrationGroups:(id)groups;
- (id)_filteredRegistrationGroups:(id)groups;
- (id)_handleRegistrationResult:(id)result;
- (id)_latestDeviceGroups;
- (id)_latestOffersWithFetchedDeviceOffers:(id)offers offersStore:(id)store;
- (id)_lightweightDeviceOffersURL;
- (id)_offersDecodedFromResult:(id)result;
- (id)_performLightweightRequestWithAccount:(id)account;
- (id)_performRegistrationRequestWithAccount:(id)account;
- (id)_registrationEndpointPOSTCompanionBodyWithDeviceGroups:(id)groups companionSerialNumbers:(id)numbers;
- (id)_registrationEndpointPOSTDeviceGroupsBody:(id)body;
- (id)_registrationEndpointPOSTParametersWithRegistrationGroups:(id)groups companionSerialNumbers:(id)numbers;
- (id)_registrationGroupsFrom:(id)from matching:(id)matching;
- (id)_registrationRequestEncoderWithAccount:(id)account;
- (id)_serialNumberDenyList;
- (id)_urlRequestWithBagURL:(id)l;
- (id)perform;
- (void)_updateWithDeviceOffers:(id)offers;
@end

@implementation AMSDeviceOfferRegistrationTask

- (AMSDeviceOfferRegistrationTask)initWithAccount:(id)account bag:(id)bag
{
  bagCopy = bag;
  accountCopy = account;
  v8 = +[AMSDevice serialNumber];
  v9 = +[AMSDevice deviceGUID];
  v10 = objc_alloc_init(AMSDeviceOffersStore);
  v11 = +[AMSURLSession defaultSession];
  v12 = [[AMSDeviceOfferEligibilityTask alloc] initWithBag:bagCopy deviceGUID:v9 masterSerialNumber:v8 urlSession:v11];
  v13 = [[AMSDeviceOfferRegistrationPrivacyValidator alloc] initWithAccount:accountCopy];
  v14 = +[AMSURLSession defaultSession];
  v15 = [(AMSDeviceOfferRegistrationTask *)self initWithAccount:accountCopy bag:bagCopy deviceGUID:v9 deviceOffersStore:v10 eligibilityTask:v12 masterSerialNumber:v8 privacyValidator:v13 urlSession:v14];

  return v15;
}

- (AMSDeviceOfferRegistrationTask)initWithAccount:(id)account bag:(id)bag deviceGUID:(id)d deviceOffersStore:(id)store eligibilityTask:(id)task masterSerialNumber:(id)number privacyValidator:(id)validator urlSession:(id)self0
{
  accountCopy = account;
  bagCopy = bag;
  dCopy = d;
  storeCopy = store;
  taskCopy = task;
  numberCopy = number;
  validatorCopy = validator;
  sessionCopy = session;
  v28.receiver = self;
  v28.super_class = AMSDeviceOfferRegistrationTask;
  v19 = [(AMSTask *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_account, account);
    objc_storeStrong(&v20->_bag, bag);
    objc_storeStrong(&v20->_deviceGUID, d);
    objc_storeStrong(&v20->_deviceOffersStore, store);
    objc_storeStrong(&v20->_eligibilityTask, task);
    objc_storeStrong(&v20->_masterSerialNumber, number);
    objc_storeStrong(&v20->_privacyValidator, validator);
    objc_storeStrong(&v20->_urlSession, session);
  }

  return v20;
}

- (id)perform
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__AMSDeviceOfferRegistrationTask_perform__block_invoke;
  v4[3] = &unk_1E73B3588;
  v4[4] = self;
  v2 = [(AMSTask *)self performTaskWithPromiseBlock:v4];

  return v2;
}

id __41__AMSDeviceOfferRegistrationTask_perform__block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) masterSerialNumber];

  if (!v2)
  {
    v11 = +[AMSLogConfig sharedPrivacyConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      v40 = 138543618;
      v41 = v13;
      v42 = 2114;
      v43 = v14;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Registration cannot be performed: Missing serial number. Check entitlements", &v40, 0x16u);
    }

    v9 = @"Invalid Parameter";
    v10 = @"No serial number found for primary/master device";
    v15 = 2;
    goto LABEL_31;
  }

  if (([*(a1 + 32) _isRegistrationAllowed] & 1) == 0)
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
      v40 = 138543618;
      v41 = v18;
      v42 = 2114;
      v43 = v19;
      _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Registration temporarily disabled", &v40, 0x16u);
    }

    v9 = @"Action Denied";
    v10 = @"Registration is temporarily disabled";
    goto LABEL_30;
  }

  v3 = [*(a1 + 32) registrationGroups];
  if ([v3 count])
  {
    v4 = [*(a1 + 32) _isDeviceGroupRegistrationAllowed];

    if ((v4 & 1) == 0)
    {
      v5 = +[AMSLogConfig sharedPrivacyConfig];
      if (!v5)
      {
        v5 = +[AMSLogConfig sharedConfig];
      }

      v6 = [v5 OSLogObject];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = objc_opt_class();
        v8 = AMSLogKey();
        v40 = 138543618;
        v41 = v7;
        v42 = 2114;
        v43 = v8;
        _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Registration temporarily disabled for task with device groups", &v40, 0x16u);
      }

      v9 = @"Action Denied";
      v10 = @"Registration is temporarily disabled for device group calls";
LABEL_30:
      v15 = 11;
LABEL_31:
      v23 = AMSError(v15, v9, v10, 0);
      v30 = [AMSPromise promiseWithError:v23];
LABEL_32:
      v25 = v30;
      goto LABEL_33;
    }
  }

  else
  {
  }

  v20 = [*(a1 + 32) privacyValidator];
  v21 = [v20 canMasterDevicePerformRegistration];

  if ((v21 & 1) == 0)
  {
    v26 = +[AMSLogConfig sharedPrivacyConfig];
    if (!v26)
    {
      v26 = +[AMSLogConfig sharedConfig];
    }

    v27 = [v26 OSLogObject];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = objc_opt_class();
      v29 = AMSLogKey();
      v40 = 138543618;
      v41 = v28;
      v42 = 2114;
      v43 = v29;
      _os_log_impl(&dword_192869000, v27, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Master device failed GDPR validation", &v40, 0x16u);
    }

    v9 = @"Action Denied";
    v10 = @"Master device lacks necessary GDPR acknowledgments";
    goto LABEL_30;
  }

  v22 = [*(a1 + 32) account];
  if (v22)
  {
    v23 = v22;
    if ([v22 ams_isLocalAccount])
    {
      v24 = AMSError(2, @"Invalid Parameter", @"We cannot use the local account to register and retrive device offers.", 0);
      v25 = [AMSPromise promiseWithError:v24];

      goto LABEL_33;
    }

    v33 = +[AMSLogConfig sharedPrivacyConfig];
    if (!v33)
    {
      v33 = +[AMSLogConfig sharedConfig];
    }

    v34 = [v33 OSLogObject];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = objc_opt_class();
      v36 = AMSLogKey();
      v37 = AMSHashIfNeeded(v23);
      v40 = 138543874;
      v41 = v35;
      v42 = 2114;
      v43 = v36;
      v44 = 2114;
      v45 = v37;
      _os_log_impl(&dword_192869000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting device offer registration task. account = %{public}@", &v40, 0x20u);
    }

    v38 = [*(a1 + 32) lightweightCheckOnly];
    v39 = *(a1 + 32);
    if (v38)
    {
      [v39 _performLightweightRequestWithAccount:v23];
    }

    else
    {
      [v39 _performRegistrationRequestWithAccount:v23];
    }
    v30 = ;
    goto LABEL_32;
  }

  v32 = AMSError(2, @"Invalid Parameter", @"No account specified for registering device offers", 0);
  v25 = [AMSPromise promiseWithError:v32];

  v23 = 0;
LABEL_33:

  return v25;
}

- (id)_performLightweightRequestWithAccount:(id)account
{
  accountCopy = account;
  _lightweightDeviceOffersURL = [(AMSDeviceOfferRegistrationTask *)self _lightweightDeviceOffersURL];
  v6 = [(AMSDeviceOfferRegistrationTask *)self _registrationRequestEncoderWithAccount:accountCopy];

  v7 = [(AMSDeviceOfferRegistrationTask *)self _urlRequestWithBagURL:_lightweightDeviceOffersURL];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__AMSDeviceOfferRegistrationTask__performLightweightRequestWithAccount___block_invoke;
  v15[3] = &unk_1E73B6EB0;
  v16 = v6;
  v8 = v6;
  v9 = [v7 thenWithBlock:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__AMSDeviceOfferRegistrationTask__performLightweightRequestWithAccount___block_invoke_2;
  v14[3] = &unk_1E73B3510;
  v14[4] = self;
  v10 = [v9 thenWithBlock:v14];
  v11 = [(AMSDeviceOfferRegistrationTask *)self _sanitizedResultPromise:v10];
  v12 = [(AMSDeviceOfferRegistrationTask *)self _handleRegistrationResult:v11];

  return v12;
}

id __72__AMSDeviceOfferRegistrationTask__performLightweightRequestWithAccount___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setHTTPMethod:@"GET"];
  v4 = [*(a1 + 32) requestByEncodingRequest:v3 parameters:0];

  return v4;
}

id __72__AMSDeviceOfferRegistrationTask__performLightweightRequestWithAccount___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedPrivacyConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    v11 = 138543618;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Performing network component of registration request", &v11, 0x16u);
  }

  v8 = [*(a1 + 32) urlSession];
  v9 = [v8 dataTaskPromiseWithRequest:v3];

  return v9;
}

- (id)_performRegistrationRequestWithAccount:(id)account
{
  v89 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  _latestDeviceGroups = [(AMSDeviceOfferRegistrationTask *)self _latestDeviceGroups];
  v6 = [(AMSDeviceOfferRegistrationTask *)self _filteredRegistrationGroups:_latestDeviceGroups];
  deviceOffersStore = [(AMSDeviceOfferRegistrationTask *)self deviceOffersStore];
  [deviceOffersStore setCachedRegistrationGroups:_latestDeviceGroups];

  v8 = MEMORY[0x1E695DFA8];
  _serialNumberDenyList = [(AMSDeviceOfferRegistrationTask *)self _serialNumberDenyList];
  v10 = [v8 setWithSet:_serialNumberDenyList];

  v11 = [(AMSDeviceOfferRegistrationTask *)self _eligibilityQualifiedRegistrationGroupsWithAccount:accountCopy pendingRegistrationGroups:v6];
  v81 = 0;
  v68 = [v11 resultWithError:&v81];
  v12 = v81;
  v66 = v6;
  v67 = _latestDeviceGroups;
  v64 = v12;
  v65 = v11;
  if (v12)
  {
    v13 = v12;
    v14 = +[AMSLogConfig sharedPrivacyConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v14 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = AMSLogKey();
      v18 = AMSLogableError(v13);
      *buf = 138543874;
      v84 = v16;
      v85 = 2114;
      v86 = v17;
      v87 = 2114;
      v88 = v18;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to determine qualifying device groups. Proceeding with registration without groups. Error: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v14 = v6;
    v19 = [v14 countByEnumeratingWithState:&v77 objects:v82 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = accountCopy;
      v22 = *v78;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v78 != v22)
          {
            objc_enumerationMutation(v14);
          }

          registrationItems = [*(*(&v77 + 1) + 8 * i) registrationItems];
          v25 = [registrationItems ams_mapWithTransform:&__block_literal_global_43];
          [v10 addObjectsFromArray:v25];
        }

        v20 = [v14 countByEnumeratingWithState:&v77 objects:v82 count:16];
      }

      while (v20);
      accountCopy = v21;
    }
  }

  _companionSerialNumbers = [(AMSDeviceOfferRegistrationTask *)self _companionSerialNumbers];
  v27 = v68;
  v63 = _companionSerialNumbers;
  if (-[AMSDeviceOfferRegistrationTask ignoreRegistrationDenyList](self, "ignoreRegistrationDenyList") || [v68 count] || objc_msgSend(_companionSerialNumbers, "count") || (-[AMSDeviceOfferRegistrationTask masterSerialNumber](self, "masterSerialNumber"), v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v10, "containsObject:", v28), v28, !v29))
  {
    _deviceOffersURL = [(AMSDeviceOfferRegistrationTask *)self _deviceOffersURL];
    v59 = accountCopy;
    v34 = [(AMSDeviceOfferRegistrationTask *)self _registrationRequestEncoderWithAccount:accountCopy];
    v61 = _deviceOffersURL;
    v35 = [(AMSDeviceOfferRegistrationTask *)self _urlRequestWithBagURL:_deviceOffersURL];
    v36 = [(AMSDeviceOfferRegistrationTask *)self _registrationEndpointPOSTParametersWithRegistrationGroups:v68 companionSerialNumbers:_companionSerialNumbers];
    v37 = +[AMSLogConfig sharedPrivacyConfig];
    if (!v37)
    {
      v37 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v37 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v39 = objc_opt_class();
      v40 = AMSLogKey();
      *buf = 138543618;
      v84 = v39;
      v85 = 2114;
      v86 = v40;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Registration parameters generated.", buf, 0x16u);

      v27 = v68;
    }

    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __73__AMSDeviceOfferRegistrationTask__performRegistrationRequestWithAccount___block_invoke_74;
    v74[3] = &unk_1E73B6EF8;
    v74[4] = self;
    v75 = v34;
    v76 = v36;
    v41 = v36;
    v42 = v34;
    v43 = [v35 thenWithBlock:v74];
    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 3221225472;
    v73[2] = __73__AMSDeviceOfferRegistrationTask__performRegistrationRequestWithAccount___block_invoke_78;
    v73[3] = &unk_1E73B3510;
    v73[4] = self;
    v44 = [v43 thenWithBlock:v73];
    [(AMSDeviceOfferRegistrationTask *)self _sanitizedResultPromise:v44];
    v46 = v45 = v35;
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __73__AMSDeviceOfferRegistrationTask__performRegistrationRequestWithAccount___block_invoke_79;
    v69[3] = &unk_1E73B6F20;
    v47 = v63;
    v70 = v63;
    v71 = v10;
    selfCopy = self;
    [v46 addSuccessBlock:v69];
    v48 = [(AMSDeviceOfferRegistrationTask *)self _handleRegistrationResult:v46];

    accountCopy = v59;
    v49 = v61;
  }

  else
  {
    v30 = +[AMSDevice deviceOffers];
    v31 = v30;
    if (v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = objc_opt_new();
    }

    v49 = v32;

    allObjects = [v49 allObjects];
    v52 = [allObjects ams_mapWithTransform:&__block_literal_global_69];

    v53 = +[AMSLogConfig sharedPrivacyConfig];
    if (!v53)
    {
      v53 = +[AMSLogConfig sharedConfig];
    }

    v60 = v52;
    oSLogObject3 = [v53 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v55 = objc_opt_class();
      AMSLogKey();
      v56 = v62 = v49;
      *buf = 138543874;
      v84 = v55;
      v85 = 2114;
      v86 = v56;
      v87 = 2114;
      v88 = v60;
      _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] All device groups, companions, and master are registered. Returning cached offers: %{public}@", buf, 0x20u);

      v49 = v62;
    }

    deviceOffersStore2 = [(AMSDeviceOfferRegistrationTask *)self deviceOffersStore];
    allObjects2 = [v10 allObjects];
    [deviceOffersStore2 setDeviceRegistrationDenyList:allObjects2];

    v48 = [AMSPromise promiseWithResult:v49];
    v45 = v60;
    v47 = v63;
  }

  return v48;
}

id __73__AMSDeviceOfferRegistrationTask__performRegistrationRequestWithAccount___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = a2;
  v4 = [v3 description];
  v5 = [v3 dsid];

  v6 = [v2 stringWithFormat:@"<%@ %@>", v4, v5];

  return v6;
}

id __73__AMSDeviceOfferRegistrationTask__performRegistrationRequestWithAccount___block_invoke_74(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedPrivacyConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Building registration request.", &v10, 0x16u);
  }

  [v3 setHTTPMethod:@"POST"];
  [v3 ams_addRequestTimestampHeader];
  v8 = [*(a1 + 40) requestByEncodingRequest:v3 parameters:*(a1 + 48)];

  return v8;
}

id __73__AMSDeviceOfferRegistrationTask__performRegistrationRequestWithAccount___block_invoke_78(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedPrivacyConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    v11 = 138543618;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Performing network component of registration request", &v11, 0x16u);
  }

  v8 = [*(a1 + 32) urlSession];
  v9 = [v8 dataTaskPromiseWithRequest:v3];

  return v9;
}

void __73__AMSDeviceOfferRegistrationTask__performRegistrationRequestWithAccount___block_invoke_79(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) addObjectsFromArray:?];
  }

  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) masterSerialNumber];
  [v2 addObject:v3];

  v5 = [*(a1 + 48) deviceOffersStore];
  v4 = [*(a1 + 40) allObjects];
  [v5 setDeviceRegistrationDenyList:v4];
}

- (id)_registrationEndpointPOSTCompanionBodyWithDeviceGroups:(id)groups companionSerialNumbers:(id)numbers
{
  numbersCopy = numbers;
  v7 = [(AMSDeviceOfferRegistrationTask *)self _registrationEndpointPOSTDeviceGroupsBody:groups];
  v8 = [numbersCopy ams_mapWithTransform:&__block_literal_global_83];

  v9 = objc_opt_new();
  [v9 addObjectsFromArray:v7];
  [v9 addObjectsFromArray:v8];
  v10 = [v9 copy];

  return v10;
}

id __112__AMSDeviceOfferRegistrationTask__registrationEndpointPOSTCompanionBodyWithDeviceGroups_companionSerialNumbers___block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"serialNumber";
  v7[0] = a2;
  v2 = MEMORY[0x1E695DF20];
  v3 = a2;
  v4 = [v2 dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

- (id)_registrationEndpointPOSTDeviceGroupsBody:(id)body
{
  bodyCopy = body;
  v4 = bodyCopy;
  if (bodyCopy && [bodyCopy count])
  {
    v5 = [v4 ams_mapWithTransform:&__block_literal_global_88_0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __76__AMSDeviceOfferRegistrationTask__registrationEndpointPOSTDeviceGroupsBody___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [v2 registrationItems];

  v5 = [v4 ams_mapWithTransform:&__block_literal_global_92];
  [v3 setObject:v5 forKeyedSubscript:@"deviceGroup"];

  v6 = [v3 copy];

  return v6;
}

id __76__AMSDeviceOfferRegistrationTask__registrationEndpointPOSTDeviceGroupsBody___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [v2 serialNumber];
  [v3 setObject:v4 forKeyedSubscript:@"serialNumber"];

  v5 = [v2 model];
  [v3 setObject:v5 forKeyedSubscript:@"productType"];

  v6 = [v2 validationData];

  v7 = [v6 base64EncodedStringWithOptions:0];
  [v3 setObject:v7 forKeyedSubscript:@"certificate"];

  v8 = [v3 copy];

  return v8;
}

- (id)_registrationEndpointPOSTParametersWithRegistrationGroups:(id)groups companionSerialNumbers:(id)numbers
{
  v39 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  numbersCopy = numbers;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  deviceGUID = [(AMSDeviceOfferRegistrationTask *)self deviceGUID];
  if ([deviceGUID length])
  {
    [v8 setObject:deviceGUID forKeyedSubscript:@"guid"];
  }

  masterSerialNumber = [(AMSDeviceOfferRegistrationTask *)self masterSerialNumber];
  if ([masterSerialNumber length])
  {
    [v8 setObject:masterSerialNumber forKeyedSubscript:@"serialNumber"];
  }

  v11 = [(AMSDeviceOfferRegistrationTask *)self _registrationEndpointPOSTCompanionBodyWithDeviceGroups:groupsCopy companionSerialNumbers:numbersCopy];
  [v8 setObject:v11 forKeyedSubscript:@"companionDevices"];

  offerIdentifiers = [(AMSDeviceOfferRegistrationTask *)self offerIdentifiers];
  v13 = [offerIdentifiers count];

  v14 = +[AMSLogConfig sharedPrivacyConfig];
  v15 = v14;
  if (v13)
  {
    if (!v14)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v15 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v31 = masterSerialNumber;
      v17 = deviceGUID;
      v18 = numbersCopy;
      v19 = groupsCopy;
      v20 = objc_opt_class();
      v21 = AMSLogKey();
      offerIdentifiers2 = [(AMSDeviceOfferRegistrationTask *)self offerIdentifiers];
      *buf = 138543874;
      v34 = v20;
      groupsCopy = v19;
      numbersCopy = v18;
      deviceGUID = v17;
      masterSerialNumber = v31;
      v35 = 2114;
      v36 = v21;
      v37 = 2114;
      v38 = offerIdentifiers2;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Offer identifiers were specified for request: %{public}@", buf, 0x20u);
    }

    offerIdentifiers3 = [(AMSDeviceOfferRegistrationTask *)self offerIdentifiers];
    v24 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"self" ascending:1];
    v32 = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
    v15 = [offerIdentifiers3 sortedArrayUsingDescriptors:v25];

    [v8 setObject:v15 forKeyedSubscript:@"services"];
  }

  else
  {
    if (!v14)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v15 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v27 = objc_opt_class();
      v28 = AMSLogKey();
      *buf = 138543618;
      v34 = v27;
      v35 = 2114;
      v36 = v28;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No offer identifiers were specified for the request.", buf, 0x16u);
    }
  }

  v29 = [v8 copy];

  return v29;
}

- (id)_accountEligibleSerialsFromDeviceOffers:(id)offers accountOffers:(id)accountOffers
{
  v44 = *MEMORY[0x1E69E9840];
  offersCopy = offers;
  v6 = MEMORY[0x1E695DFD8];
  v7 = [accountOffers ams_mapWithTransformIgnoresNil:&__block_literal_global_100];
  v8 = [v6 setWithArray:v7];

  v9 = +[AMSLogConfig sharedConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v9 OSLogObject];
  v30 = v8;
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = AMSLogKey();
    *buf = 138543874;
    v39 = v11;
    v40 = 2114;
    v41 = v12;
    v42 = 2114;
    v43 = v30;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Matching serials to offers. Eligible identifiers: %{public}@.", buf, 0x20u);

    v8 = v30;
  }

  v31 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = offersCopy;
  v13 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  v15 = 0x1E73B0000uLL;
  if (v13)
  {
    v16 = v13;
    v17 = *v34;
    *&v14 = 138543874;
    v29 = v14;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v33 + 1) + 8 * i);
        offerIdentifier = [v19 offerIdentifier];
        if (offerIdentifier && [v8 containsObject:offerIdentifier])
        {
          sharedConfig = [*(v15 + 3552) sharedConfig];
          if (!sharedConfig)
          {
            sharedConfig = [*(v15 + 3552) sharedConfig];
          }

          oSLogObject2 = [sharedConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
          {
            v23 = objc_opt_class();
            v24 = AMSLogKey();
            serialNumbers = [v19 serialNumbers];
            *buf = v29;
            v39 = v23;
            v8 = v30;
            v40 = 2114;
            v41 = v24;
            v42 = 2114;
            v43 = serialNumbers;
            _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Adding serials: %{public}@.", buf, 0x20u);

            v15 = 0x1E73B0000;
          }

          serialNumbers2 = [v19 serialNumbers];
          [v31 unionSet:serialNumbers2];
        }
      }

      v16 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v16);
  }

  v27 = [v31 copy];

  return v27;
}

- (id)_filteredRegistrationGroups:(id)groups
{
  groupsCopy = groups;
  _serialNumberDenyList = [(AMSDeviceOfferRegistrationTask *)self _serialNumberDenyList];
  v6 = MEMORY[0x1E695DFD8];
  deviceOffersStore = [(AMSDeviceOfferRegistrationTask *)self deviceOffersStore];
  cachedRegistrationGroups = [deviceOffersStore cachedRegistrationGroups];
  v9 = cachedRegistrationGroups;
  if (cachedRegistrationGroups)
  {
    v10 = cachedRegistrationGroups;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  v11 = [v6 setWithArray:v10];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __62__AMSDeviceOfferRegistrationTask__filteredRegistrationGroups___block_invoke;
  v16[3] = &unk_1E73B6F90;
  v16[4] = self;
  v17 = v11;
  v18 = _serialNumberDenyList;
  v12 = _serialNumberDenyList;
  v13 = v11;
  v14 = [groupsCopy ams_filterUsingTest:v16];

  return v14;
}

uint64_t __62__AMSDeviceOfferRegistrationTask__filteredRegistrationGroups___block_invoke(id *a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a2;
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
    *buf = 138543874;
    v30 = v6;
    v31 = 2114;
    v32 = v7;
    v33 = 2114;
    v34 = v3;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Checking privacy requirements for: %{public}@.", buf, 0x20u);
  }

  v8 = [a1[4] privacyValidator];
  v9 = [v8 isPrivacyRequirementMetForOptions:{objc_msgSend(v3, "validationOptions")}];

  if ((v9 & 1) == 0)
  {
    v22 = +[AMSLogConfig sharedConfig];
    if (!v22)
    {
      v22 = +[AMSLogConfig sharedConfig];
    }

    v23 = [v22 OSLogObject];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_opt_class();
      v25 = AMSLogKey();
      *buf = 138543874;
      v30 = v24;
      v31 = 2114;
      v32 = v25;
      v33 = 2114;
      v34 = v3;
      _os_log_impl(&dword_192869000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Privacy requirement not met for: %{public}@", buf, 0x20u);
    }

    v21 = 0;
    goto LABEL_26;
  }

  if ([a1[5] containsObject:v3] && a1[6])
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
      v13 = AMSLogKey();
      v14 = a1[6];
      *buf = 138544130;
      v30 = v12;
      v31 = 2114;
      v32 = v13;
      v33 = 2114;
      v34 = v3;
      v35 = 2114;
      v36 = v14;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Checking denylist for: %{public}@. Denylist: %{public}@", buf, 0x2Au);
    }

    v15 = [v3 registrationItems];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __62__AMSDeviceOfferRegistrationTask__filteredRegistrationGroups___block_invoke_101;
    v27[3] = &unk_1E73B6F68;
    v28 = a1[6];
    v16 = [v15 ams_allWithTest:v27];

    if (v16)
    {
      v17 = +[AMSLogConfig sharedConfig];
      if (!v17)
      {
        v17 = +[AMSLogConfig sharedConfig];
      }

      v18 = [v17 OSLogObject];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = objc_opt_class();
        v20 = AMSLogKey();
        *buf = 138543874;
        v30 = v19;
        v31 = 2114;
        v32 = v20;
        v33 = 2114;
        v34 = v3;
        _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Group not eligible: %{public}@", buf, 0x20u);
      }

      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    v22 = v28;
LABEL_26:

    goto LABEL_27;
  }

  v21 = 1;
LABEL_27:

  return v21;
}

uint64_t __62__AMSDeviceOfferRegistrationTask__filteredRegistrationGroups___block_invoke_101(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 serialNumber];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (id)_companionSerialNumbers
{
  deviceOffersStore = [(AMSDeviceOfferRegistrationTask *)self deviceOffersStore];
  companionSerialNumbers = [deviceOffersStore companionSerialNumbers];

  _serialNumberDenyList = [(AMSDeviceOfferRegistrationTask *)self _serialNumberDenyList];
  v6 = _serialNumberDenyList;
  if (_serialNumberDenyList)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__AMSDeviceOfferRegistrationTask__companionSerialNumbers__block_invoke;
    v9[3] = &unk_1E73B2E28;
    v10 = _serialNumberDenyList;
    v7 = [companionSerialNumbers ams_filterUsingTest:v9];

    companionSerialNumbers = v7;
  }

  return companionSerialNumbers;
}

- (id)_serialNumberDenyList
{
  if ([(AMSDeviceOfferRegistrationTask *)self ignoreRegistrationDenyList])
  {
    v3 = 0;
  }

  else
  {
    deviceOffersStore = [(AMSDeviceOfferRegistrationTask *)self deviceOffersStore];
    deviceRegistrationDenyList = [deviceOffersStore deviceRegistrationDenyList];
    v6 = deviceRegistrationDenyList;
    v7 = MEMORY[0x1E695E0F0];
    if (deviceRegistrationDenyList)
    {
      v7 = deviceRegistrationDenyList;
    }

    v8 = v7;

    v3 = [MEMORY[0x1E695DFD8] setWithArray:v8];
  }

  return v3;
}

- (id)_eligibilityQualifiedRegistrationGroupsWithAccount:(id)account pendingRegistrationGroups:(id)groups
{
  v33 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  groupsCopy = groups;
  if ([(AMSDeviceOfferRegistrationTask *)self _isEligibilityCallsAllowed])
  {
    if (groupsCopy && [groupsCopy count])
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v30 = __Block_byref_object_copy__23;
      v31 = __Block_byref_object_dispose__23;
      v32 = MEMORY[0x1E695E0F0];
      eligibilityTask = [(AMSDeviceOfferRegistrationTask *)self eligibilityTask];
      clientInfo = [(AMSDeviceOfferRegistrationTask *)self clientInfo];
      v10 = [eligibilityTask performAnonymousDeviceEligibility:groupsCopy clientInfo:clientInfo];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __111__AMSDeviceOfferRegistrationTask__eligibilityQualifiedRegistrationGroupsWithAccount_pendingRegistrationGroups___block_invoke;
      v26[3] = &unk_1E73B6FB8;
      v26[4] = self;
      v28 = buf;
      v27 = accountCopy;
      v11 = [v10 thenWithBlock:v26];

      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __111__AMSDeviceOfferRegistrationTask__eligibilityQualifiedRegistrationGroupsWithAccount_pendingRegistrationGroups___block_invoke_109;
      v23[3] = &unk_1E73B6FB8;
      v23[4] = self;
      v25 = buf;
      v24 = groupsCopy;
      v12 = [v11 thenWithBlock:v23];

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v18 = +[AMSLogConfig sharedPrivacyConfig];
      if (!v18)
      {
        v18 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v18 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_opt_class();
        v21 = AMSLogKey();
        *buf = 138543618;
        *&buf[4] = v20;
        *&buf[12] = 2114;
        *&buf[14] = v21;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Registration Request - No valid device groups, skipping group eligibility checks", buf, 0x16u);
      }

      v12 = [AMSPromise promiseWithResult:MEMORY[0x1E695E0F0]];
    }
  }

  else
  {
    v13 = +[AMSLogConfig sharedPrivacyConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = AMSLogKey();
      *buf = 138543618;
      *&buf[4] = v15;
      *&buf[12] = 2114;
      *&buf[14] = v16;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Eligibility calls disabled", buf, 0x16u);
    }

    v17 = AMSError(11, @"Action Denied", @"Eligibility is temporarily disabled", 0);
    v12 = [AMSPromise promiseWithError:v17];
  }

  return v12;
}

id __111__AMSDeviceOfferRegistrationTask__eligibilityQualifiedRegistrationGroupsWithAccount_pendingRegistrationGroups___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedPrivacyConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    v17 = 138543618;
    v18 = v6;
    v19 = 2114;
    v20 = v7;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Registration Request - Device offers retrieved from anonymous device eligibility@", &v17, 0x16u);
  }

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v3;
  v10 = v3;

  v11 = [*(a1 + 32) eligibilityTask];
  v12 = *(a1 + 40);
  v13 = *(*(*(a1 + 48) + 8) + 40);
  v14 = [*(a1 + 32) clientInfo];
  v15 = [v11 performAccountEligibility:v12 forOffers:v13 clientInfo:v14];

  return v15;
}

id __111__AMSDeviceOfferRegistrationTask__eligibilityQualifiedRegistrationGroupsWithAccount_pendingRegistrationGroups___block_invoke_109(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedPrivacyConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    v12 = 138543618;
    v13 = v6;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Registration Request - Account eligibility complete@", &v12, 0x16u);
  }

  v8 = [*(a1 + 32) _accountEligibleSerialsFromDeviceOffers:*(*(*(a1 + 48) + 8) + 40) accountOffers:v3];

  v9 = [*(a1 + 32) _registrationGroupsFrom:*(a1 + 40) matching:v8];
  v10 = [AMSPromise promiseWithResult:v9];

  return v10;
}

- (id)_registrationGroupsFrom:(id)from matching:(id)matching
{
  matchingCopy = matching;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__AMSDeviceOfferRegistrationTask__registrationGroupsFrom_matching___block_invoke;
  v9[3] = &unk_1E73B6FE0;
  v10 = matchingCopy;
  v6 = matchingCopy;
  v7 = [from ams_filterUsingTest:v9];

  return v7;
}

BOOL __67__AMSDeviceOfferRegistrationTask__registrationGroupsFrom_matching___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 registrationItems];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__AMSDeviceOfferRegistrationTask__registrationGroupsFrom_matching___block_invoke_2;
  v6[3] = &unk_1E73B6F68;
  v7 = *(a1 + 32);
  v4 = [v3 ams_firstObjectPassingTest:v6];

  return v4 != 0;
}

uint64_t __67__AMSDeviceOfferRegistrationTask__registrationGroupsFrom_matching___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 serialNumber];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (id)_latestDeviceGroups
{
  registrationGroups = [(AMSDeviceOfferRegistrationTask *)self registrationGroups];

  if (registrationGroups)
  {
    v4 = MEMORY[0x1E695DFA8];
    registrationGroups2 = [(AMSDeviceOfferRegistrationTask *)self registrationGroups];
    deviceOffersStore2 = [v4 setWithArray:registrationGroups2];

    deviceOffersStore = [(AMSDeviceOfferRegistrationTask *)self deviceOffersStore];
    cachedRegistrationGroups = [deviceOffersStore cachedRegistrationGroups];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __53__AMSDeviceOfferRegistrationTask__latestDeviceGroups__block_invoke;
    v12[3] = &unk_1E73B6FE0;
    v12[4] = self;
    v9 = [cachedRegistrationGroups ams_filterUsingTest:v12];

    if (v9)
    {
      [deviceOffersStore2 addObjectsFromArray:v9];
    }

    allObjects = [deviceOffersStore2 allObjects];
  }

  else
  {
    deviceOffersStore2 = [(AMSDeviceOfferRegistrationTask *)self deviceOffersStore];
    allObjects = [deviceOffersStore2 cachedRegistrationGroups];
  }

  return allObjects;
}

uint64_t __53__AMSDeviceOfferRegistrationTask__latestDeviceGroups__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) registrationGroups];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__AMSDeviceOfferRegistrationTask__latestDeviceGroups__block_invoke_2;
  v8[3] = &unk_1E73B6FE0;
  v9 = v3;
  v5 = v3;
  v6 = [v4 ams_anyWithTest:v8];

  return v6 ^ 1u;
}

- (id)_bucketedOffers:(id)offers
{
  v22 = *MEMORY[0x1E69E9840];
  offersCopy = offers;
  v4 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = offersCopy;
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

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:{@"offerIdentifier", v17}];
        if (v11)
        {
          v12 = [v4 objectForKeyedSubscript:v11];

          if (!v12)
          {
            v13 = objc_opt_new();
            [v4 setObject:v13 forKeyedSubscript:v11];
          }

          v14 = [v4 objectForKeyedSubscript:v11];
          [v14 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = [v4 copy];

  return v15;
}

- (id)_handleRegistrationResult:(id)result
{
  resultCopy = result;
  v5 = AMSLogKey();
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__AMSDeviceOfferRegistrationTask__handleRegistrationResult___block_invoke;
  v14[3] = &unk_1E73B32F0;
  v6 = v5;
  v15 = v6;
  selfCopy = self;
  [resultCopy addErrorBlock:v14];
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__AMSDeviceOfferRegistrationTask__handleRegistrationResult___block_invoke_114;
  v10[3] = &unk_1E73B7030;
  v10[4] = self;
  v7 = v6;
  v11 = v7;
  objc_copyWeak(&v12, &location);
  v8 = [resultCopy thenWithBlock:v10];
  objc_destroyWeak(&v12);

  objc_destroyWeak(&location);

  return v8;
}

void __60__AMSDeviceOfferRegistrationTask__handleRegistrationResult___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AMSSetLogKey(*(a1 + 32));
  v5 = +[AMSLogConfig sharedConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    v9 = 138543874;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Device offers registration failed: %{public}@", &v9, 0x20u);
  }
}

id __60__AMSDeviceOfferRegistrationTask__handleRegistrationResult___block_invoke_114(id *a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedPrivacyConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    *buf = 138543618;
    v32 = v6;
    v33 = 2114;
    v34 = v7;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Registration response received.", buf, 0x16u);
  }

  v8 = AMSSetLogKey(a1[5]);
  v9 = [v3 object];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v10 objectForKeyedSubscript:@"offers"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __60__AMSDeviceOfferRegistrationTask__handleRegistrationResult___block_invoke_118;
  v30[3] = &unk_1E73B7008;
  v30[4] = a1[4];
  v13 = [v12 ams_mapWithTransform:v30];

  v14 = [v13 count];
  v15 = +[AMSLogConfig sharedPrivacyConfig];
  v16 = v15;
  if (v14)
  {
    if (!v15)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    v17 = [v16 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained(a1 + 6);
      v19 = objc_opt_class();
      v20 = AMSLogKey();
      *buf = 138543874;
      v32 = v19;
      v33 = 2114;
      v34 = v20;
      v35 = 2114;
      v36 = v13;
      _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Device offers retrieved from server: %{public}@", buf, 0x20u);
    }

    [a1[4] _updateWithDeviceOffers:v13];
  }

  else
  {
    if (!v15)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    v21 = [v16 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_loadWeakRetained(a1 + 6);
      v23 = objc_opt_class();
      v24 = AMSLogKey();
      *buf = 138543618;
      v32 = v23;
      v33 = 2114;
      v34 = v24;
      _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No device offers retrieved from server. Offers may exist locally.", buf, 0x16u);
    }
  }

  v25 = +[AMSDevice deviceOffers];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = MEMORY[0x1E695E0F0];
  }

  v28 = [AMSPromise promiseWithResult:v27];

  return v28;
}

id __60__AMSDeviceOfferRegistrationTask__handleRegistrationResult___block_invoke_118(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 mutableCopy];
  v6 = v3;
  if (v5)
  {
    v7 = [*(a1 + 32) account];
    v8 = [v7 ams_DSID];

    v6 = v3;
    if (v8)
    {
      v9 = [*(a1 + 32) account];
      v10 = [v9 ams_DSID];
      [v5 setObject:v10 forKeyedSubscript:@"dsid"];

      v6 = v5;
    }
  }

  v11 = v6;

  return v11;
}

- (id)_latestOffersWithFetchedDeviceOffers:(id)offers offersStore:(id)store
{
  v44 = *MEMORY[0x1E69E9840];
  offersCopy = offers;
  storeCopy = store;
  offerIdentifiers = [(AMSDeviceOfferRegistrationTask *)self offerIdentifiers];
  if (offerIdentifiers && (v9 = offerIdentifiers, -[AMSDeviceOfferRegistrationTask offerIdentifiers](self, "offerIdentifiers"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 count], v10, v9, v11))
  {
    v12 = MEMORY[0x1E695DF90];
    deviceOffers = [storeCopy deviceOffers];
    v14 = deviceOffers;
    if (deviceOffers)
    {
      v15 = deviceOffers;
    }

    else
    {
      v15 = MEMORY[0x1E695E0F0];
    }

    v16 = [(AMSDeviceOfferRegistrationTask *)self _bucketedOffers:v15];
    v17 = [v12 dictionaryWithDictionary:v16];

    v18 = [(AMSDeviceOfferRegistrationTask *)self _bucketedOffers:offersCopy];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    allKeys = [v18 allKeys];
    v20 = [allKeys countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v39;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v39 != v22)
          {
            objc_enumerationMutation(allKeys);
          }

          v24 = *(*(&v38 + 1) + 8 * i);
          v25 = [v18 objectForKeyedSubscript:v24];
          [v17 setObject:v25 forKeyedSubscript:v24];
        }

        v21 = [allKeys countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v21);
    }

    v26 = objc_opt_new();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    allValues = [v17 allValues];
    v28 = [allValues countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v35;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v35 != v30)
          {
            objc_enumerationMutation(allValues);
          }

          [v26 addObjectsFromArray:*(*(&v34 + 1) + 8 * j)];
        }

        v29 = [allValues countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v29);
    }

    v32 = [v26 copy];
  }

  else
  {
    v32 = offersCopy;
  }

  return v32;
}

- (id)_offersDecodedFromResult:(id)result
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

  v6 = [v5 objectForKeyedSubscript:@"offers"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__AMSDeviceOfferRegistrationTask__offersDecodedFromResult___block_invoke;
  v10[3] = &unk_1E73B6DF8;
  v10[4] = self;
  v8 = [v7 ams_mapWithTransform:v10];

  return v8;
}

AMSDeviceOffer *__59__AMSDeviceOfferRegistrationTask__offersDecodedFromResult___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[AMSLogConfig sharedPrivacyConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    v9 = 138543874;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    v13 = 2114;
    v14 = v2;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Decoding %{public}@", &v9, 0x20u);
  }

  v7 = [[AMSDeviceOffer alloc] initWithDictionary:v2];

  return v7;
}

id __58__AMSDeviceOfferRegistrationTask__sanitizedResultPromise___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 objectForKeyedSubscript:@"errorNumber"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;

    if (v6)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Promise finished with server error code %@", v6];
      v8 = AMSError(0, @"Registration task failure", v7, 0);
      v9 = [AMSPromise promiseWithError:v8];

      goto LABEL_9;
    }
  }

  else
  {
  }

  v9 = [AMSPromise promiseWithResult:v2];
  v6 = 0;
LABEL_9:

  return v9;
}

- (void)_updateWithDeviceOffers:(id)offers
{
  offersCopy = offers;
  account = [(AMSDeviceOfferRegistrationTask *)self account];
  v6 = AMSLogKey();
  [AMSDevice tearDownAllDeviceOfferFollowUpsForAccount:account logKey:v6];

  deviceOffersStore = [(AMSDeviceOfferRegistrationTask *)self deviceOffersStore];
  v8 = [(AMSDeviceOfferRegistrationTask *)self _latestOffersWithFetchedDeviceOffers:offersCopy offersStore:deviceOffersStore];

  [AMSDevice saveDeviceOffers:v8];
  account2 = [(AMSDeviceOfferRegistrationTask *)self account];
  v9 = [(AMSDeviceOfferRegistrationTask *)self bag];
  v10 = AMSLogKey();
  [AMSDevice postAllDeviceOfferFollowUpsForAccount:account2 priority:0 bag:v9 logKey:v10];
}

- (BOOL)_isRegistrationAllowed
{
  v2 = [(AMSDeviceOfferRegistrationTask *)self bag];
  v3 = [v2 stringForKey:@"registrationDisableState"];
  v4 = [v3 valueWithError:0];

  if (v4)
  {
    v5 = [v4 isEqualToString:@"3"] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (BOOL)_isEligibilityCallsAllowed
{
  v2 = [(AMSDeviceOfferRegistrationTask *)self bag];
  v3 = [v2 stringForKey:@"registrationDisableState"];
  v4 = [v3 valueWithError:0];

  return v4 == 0;
}

- (BOOL)_isDeviceGroupRegistrationAllowed
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(AMSDeviceOfferRegistrationTask *)self bag];
  v4 = [v3 stringForKey:@"registrationDisableState"];
  v5 = [v4 valueWithError:0];

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
    v12 = 138543874;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] DISABLE STATE %{public}@", &v12, 0x20u);
  }

  if (v5)
  {
    if ([(AMSDeviceOfferRegistrationTask *)self _isRegistrationAllowed])
    {
      v10 = [v5 isEqualToString:@"2"] ^ 1;
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return v10;
}

- (id)_lightweightDeviceOffersURL
{
  v2 = [(AMSDeviceOfferRegistrationTask *)self bag];
  v3 = [v2 URLForKey:@"deviceOffersByCreationDate"];

  return v3;
}

- (id)_deviceOffersURL
{
  v2 = [(AMSDeviceOfferRegistrationTask *)self bag];
  v3 = [v2 URLForKey:@"deviceOffers"];

  return v3;
}

- (id)_urlRequestWithBagURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v4 = objc_alloc_init(AMSMutablePromise);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__AMSDeviceOfferRegistrationTask__urlRequestWithBagURL___block_invoke;
    v8[3] = &unk_1E73B7078;
    v5 = v4;
    v9 = v5;
    [lCopy valueWithCompletion:v8];
  }

  else
  {
    v6 = AMSError(2, @"URL Request could not be created", @"bagURL is nil", 0);
    v5 = [AMSPromise promiseWithError:v6];
  }

  return v5;
}

void __56__AMSDeviceOfferRegistrationTask__urlRequestWithBagURL___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = *(a1 + 32);

    [v5 finishWithError:a4];
  }

  else
  {
    v6 = [MEMORY[0x1E695AC18] requestWithURL:a2];
    [*(a1 + 32) finishWithResult:v6];
  }
}

- (id)_registrationRequestEncoderWithAccount:(id)account
{
  accountCopy = account;
  v5 = [AMSURLRequestEncoder alloc];
  v6 = [(AMSDeviceOfferRegistrationTask *)self bag];
  v7 = [(AMSURLRequestEncoder *)v5 initWithBag:v6];

  [(AMSURLRequestEncoder *)v7 setRequestEncoding:2];
  [(AMSURLRequestEncoder *)v7 setAccount:accountCopy];

  [(AMSURLRequestEncoder *)v7 setDialogOptions:1];
  v8 = AMSLogKey();
  [(AMSURLRequestEncoder *)v7 setLogUUID:v8];

  [(AMSURLRequestEncoder *)v7 setEnableRemoteSecuritySigning:1];
  clientInfo = [(AMSDeviceOfferRegistrationTask *)self clientInfo];

  if (clientInfo)
  {
    clientInfo2 = [(AMSDeviceOfferRegistrationTask *)self clientInfo];
    [(AMSURLRequestEncoder *)v7 setClientInfo:clientInfo2];
  }

  return v7;
}

+ (NSString)bagSubProfile
{
  if (_MergedGlobals_1_8 != -1)
  {
    dispatch_once(&_MergedGlobals_1_8, &__block_literal_global_150);
  }

  v3 = qword_1ED6E1E88;

  return v3;
}

void __47__AMSDeviceOfferRegistrationTask_bagSubProfile__block_invoke()
{
  v0 = qword_1ED6E1E88;
  qword_1ED6E1E88 = @"AMSDeviceOfferRegistrationTask";
}

+ (NSString)bagSubProfileVersion
{
  if (qword_1ED6E1E90 != -1)
  {
    dispatch_once(&qword_1ED6E1E90, &__block_literal_global_155_0);
  }

  v3 = qword_1ED6E1E98;

  return v3;
}

void __54__AMSDeviceOfferRegistrationTask_bagSubProfileVersion__block_invoke()
{
  v0 = qword_1ED6E1E98;
  qword_1ED6E1E98 = @"1";
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