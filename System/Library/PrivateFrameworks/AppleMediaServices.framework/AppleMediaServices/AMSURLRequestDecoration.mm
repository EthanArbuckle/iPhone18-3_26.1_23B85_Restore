@interface AMSURLRequestDecoration
+ (BOOL)_shouldSendGUIDForRequest:(id)request patterns:(id)patterns schemes:(id)schemes;
+ (id)_addGUIDParameterToRequest:(id)request fromPromise:(id)promise shouldPreserveEncoding:(BOOL)encoding;
+ (id)addAbsintheHeadersToRequest:(id)request buyParams:(id)params bag:(id)bag shouldUseRemoteSigningIfAvailable:(BOOL)available;
+ (id)addAnisetteHeadersToRequest:(id)request account:(id)account type:(int64_t)type bag:(id)bag;
+ (id)addFPDIHeadersToRequest:(id)request buyParams:(id)params bag:(id)bag retryCount:(int64_t)count fairPlayDeviceIdentity:(id)identity fpdiNetworkProvider:(id)provider;
+ (id)addGUIDParameterToRequest:(id)request bag:(id)bag preservingQueryEncoding:(BOOL)encoding;
+ (id)addMescalHeaderToRequest:(id)request type:(int64_t)type bag:(id)bag logKey:(id)key;
+ (id)addStoreFrontHeaderToRequest:(id)request forAccount:(id)account mediaType:(id)type bag:(id)bag;
+ (id)addTreatmentHeadersToRequest:(id)request forTreatmentNamespace:(id)namespace;
@end

@implementation AMSURLRequestDecoration

+ (id)addMescalHeaderToRequest:(id)request type:(int64_t)type bag:(id)bag logKey:(id)key
{
  requestCopy = request;
  bagCopy = bag;
  keyCopy = key;
  v13 = AMSSetLogKey(keyCopy);
  if ([requestCopy ams_requestIsBagLoad])
  {
    v14 = +[AMSBinaryPromise promiseWithSuccess];
  }

  else
  {
    v15 = [AMSMescal signaturePromiseFromRequest:requestCopy type:type bag:bagCopy];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __68__AMSURLRequestDecoration_addMescalHeaderToRequest_type_bag_logKey___block_invoke;
    v21 = &unk_1E73BD200;
    v22 = keyCopy;
    selfCopy = self;
    v16 = [v15 continueWithBlock:&v18];

    v14 = [requestCopy ams_addHeadersFromPromise:{v16, v18, v19, v20, v21}];
  }

  return v14;
}

id __68__AMSURLRequestDecoration_addMescalHeaderToRequest_type_bag_logKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = AMSSetLogKey(v6);
  v9 = [v7 value];

  if (v5)
  {
    v10 = +[AMSLogConfig sharedConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = AMSLogKey();
      v13 = MEMORY[0x1E696AEC0];
      v14 = objc_opt_class();
      v15 = v14;
      if (v12)
      {
        a1 = AMSLogKey();
        [v13 stringWithFormat:@"%@: [%@] ", v15, a1];
      }

      else
      {
        [v13 stringWithFormat:@"%@: ", v14];
      }
      v16 = ;
      v27 = AMSLogableError(v5);
      *buf = 138543618;
      v33 = v16;
      v34 = 2114;
      v35 = v27;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to add mescal header. Error: %{public}@", buf, 0x16u);
      if (v12)
      {

        v16 = a1;
      }
    }

    v28 = [AMSPromise promiseWithError:v5];
  }

  else
  {
    if (v9)
    {
      v17 = [v9 base64EncodedStringWithOptions:0];
      v30 = @"X-Apple-ActionSignature";
      v31 = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v19 = [AMSPromise promiseWithResult:v18];

      goto LABEL_20;
    }

    v20 = +[AMSLogConfig sharedConfig];
    if (!v20)
    {
      v20 = +[AMSLogConfig sharedConfig];
    }

    v21 = [v20 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = AMSLogKey();
      v23 = MEMORY[0x1E696AEC0];
      v24 = objc_opt_class();
      v25 = v24;
      if (v22)
      {
        a1 = AMSLogKey();
        [v23 stringWithFormat:@"%@: [%@] ", v25, a1];
      }

      else
      {
        [v23 stringWithFormat:@"%@: ", v24];
      }
      v26 = ;
      *buf = 138543362;
      v33 = v26;
      _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@No Mescal signature was generated. No headers will be created for additon to request.", buf, 0xCu);
      if (v22)
      {

        v26 = a1;
      }
    }

    v28 = [AMSPromise promiseWithResult:MEMORY[0x1E695E0F8]];
  }

  v19 = v28;
LABEL_20:

  return v19;
}

+ (id)addAbsintheHeadersToRequest:(id)request buyParams:(id)params bag:(id)bag shouldUseRemoteSigningIfAvailable:(BOOL)available
{
  availableCopy = available;
  requestCopy = request;
  paramsCopy = params;
  bagCopy = bag;
  if (+[AMSDefaults enableRemoteSecuritySigning])
  {
    v13 = !availableCopy;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    if ([requestCopy ams_requestIsBagLoad])
    {
      v16 = +[AMSBinaryPromise promiseWithSuccess];
      goto LABEL_10;
    }

    v14 = [AMSAbsinthe headersForRequest:requestCopy buyParams:paramsCopy bag:bagCopy];
    v16 = [requestCopy ams_addHeadersFromPromise:v14];
  }

  else
  {
    v14 = +[AMSSigningSecurityService sharedService];
    v15 = [v14 headersForRequest:requestCopy buyParams:paramsCopy bag:bagCopy];
    v16 = [requestCopy ams_addHeadersFromPromise:v15];
  }

LABEL_10:
  v17 = AMSLogKey();
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __103__AMSURLRequestDecoration_addAbsintheHeadersToRequest_buyParams_bag_shouldUseRemoteSigningIfAvailable___block_invoke;
  v20[3] = &unk_1E73BBA10;
  v21 = v17;
  selfCopy = self;
  v18 = v17;
  [v16 addErrorBlock:v20];

  return v16;
}

void __103__AMSURLRequestDecoration_addAbsintheHeadersToRequest_buyParams_bag_shouldUseRemoteSigningIfAvailable___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedURLLoadingConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    if (v7)
    {
      [v6 stringWithFormat:@"%@: [%@] ", v8, *(a1 + 32)];
    }

    else
    {
      [v6 stringWithFormat:@"%@: ", v8, v11];
    }
    v9 = ;
    v10 = AMSLogableError(v3);
    *buf = 138543618;
    v13 = v9;
    v14 = 2114;
    v15 = v10;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed to add security signing headers. error = %{public}@", buf, 0x16u);
  }
}

+ (id)addFPDIHeadersToRequest:(id)request buyParams:(id)params bag:(id)bag retryCount:(int64_t)count fairPlayDeviceIdentity:(id)identity fpdiNetworkProvider:(id)provider
{
  requestCopy = request;
  paramsCopy = params;
  bagCopy = bag;
  identityCopy = identity;
  providerCopy = provider;
  ams_requestIsBagLoad = [requestCopy ams_requestIsBagLoad];
  if (!bagCopy || ams_requestIsBagLoad)
  {
    v25 = +[AMSBinaryPromise promiseWithSuccess];
  }

  else
  {
    v20 = objc_alloc_init(AMSMutableBinaryPromise);
    v21 = [[AMSSendableBag alloc] initWithWrappedBag:bagCopy];
    dictionaryForFPDI = [paramsCopy dictionaryForFPDI];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __119__AMSURLRequestDecoration_addFPDIHeadersToRequest_buyParams_bag_retryCount_fairPlayDeviceIdentity_fpdiNetworkProvider___block_invoke;
    v27[3] = &unk_1E73BD250;
    countCopy = count;
    v28 = requestCopy;
    v23 = v20;
    v29 = v23;
    v30 = bagCopy;
    selfCopy = self;
    [identityCopy headersFor:v28 bag:v21 buyParams:dictionaryForFPDI networkProvider:providerCopy completionHandler:v27];

    v24 = v30;
    v25 = v23;
  }

  return v25;
}

void __119__AMSURLRequestDecoration_addFPDIHeadersToRequest_buyParams_bag_retryCount_fairPlayDeviceIdentity_fpdiNetworkProvider___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5 && [v5 count])
  {
    v7 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v5];
    if (*(a1 + 56) >= 1)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", *(a1 + 56)];
      [v7 setObject:v8 forKeyedSubscript:@"X-Apple-FPDIRetryCount"];
    }

    v9 = *(a1 + 32);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __119__AMSURLRequestDecoration_addFPDIHeadersToRequest_buyParams_bag_retryCount_fairPlayDeviceIdentity_fpdiNetworkProvider___block_invoke_2;
    v29[3] = &unk_1E73BD228;
    v30 = v9;
    v31 = v7;
    v10 = v7;
    v11 = [v30 ams_modifyRequestWithBlock:v29];
    [*(a1 + 40) finishWithPromise:v11];

    goto LABEL_21;
  }

  if (!v6)
  {
    goto LABEL_10;
  }

  v12 = [v6 domain];
  v13 = v12;
  if (v12 == @"AMSErrorDomain")
  {
    v14 = [v6 code];

    if (v14 != 204)
    {
      goto LABEL_11;
    }

LABEL_10:
    [*(a1 + 40) finishWithSuccess];
    goto LABEL_21;
  }

LABEL_11:
  v15 = [AMSMetrics internalInstanceUsingBag:*(a1 + 48)];
  v16 = [v6 domain];
  v17 = AMSCustomError(v16, [v6 code], 0, 0, 0, 0);

  v18 = [[AMSMetricsLoggingEvent alloc] initWithSubsystem:@"FPDI" category:@"fpdi" error:v17];
  [v15 enqueueEvent:v18];
  v19 = +[AMSLogConfig sharedConfig];
  if (!v19)
  {
    v19 = +[AMSLogConfig sharedConfig];
  }

  v20 = [v19 OSLogObject];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v28 = v15;
    v21 = AMSLogKey();
    v22 = MEMORY[0x1E696AEC0];
    v23 = objc_opt_class();
    v24 = v23;
    if (v21)
    {
      v27 = AMSLogKey();
      [v22 stringWithFormat:@"%@: [%@] ", v24, v27];
    }

    else
    {
      [v22 stringWithFormat:@"%@: ", v23];
    }
    v25 = ;
    v26 = AMSLogableError(v6);
    *buf = 138543618;
    v33 = v25;
    v34 = 2114;
    v35 = v26;
    _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to add FPDI signing headers. error = %{public}@", buf, 0x16u);
    if (v21)
    {

      v25 = v27;
    }

    v15 = v28;
  }

  [*(a1 + 40) finishWithError:v6];
LABEL_21:
}

void __119__AMSURLRequestDecoration_addFPDIHeadersToRequest_buyParams_bag_retryCount_fairPlayDeviceIdentity_fpdiNetworkProvider___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v2 ams_addHeaders:v3];
  v4[2](v4, 1, 0);
}

+ (id)addAnisetteHeadersToRequest:(id)request account:(id)account type:(int64_t)type bag:(id)bag
{
  requestCopy = request;
  accountCopy = account;
  bagCopy = bag;
  ams_isEphemeralAccount = [accountCopy ams_isEphemeralAccount];
  if (type != 2 && ams_isEphemeralAccount || [requestCopy ams_requestIsBagLoad])
  {
    v13 = +[AMSBinaryPromise promiseWithSuccess];
  }

  else
  {
    v14 = [AMSAnisette headersForRequest:requestCopy account:accountCopy type:type bag:bagCopy];
    v13 = [requestCopy ams_addHeadersFromPromise:v14];
  }

  return v13;
}

+ (id)addTreatmentHeadersToRequest:(id)request forTreatmentNamespace:(id)namespace
{
  v43 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  namespaceCopy = namespace;
  if (namespaceCopy)
  {
    v8 = AMSLogKey();
    v9 = +[AMSLogConfig sharedConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = objc_opt_class();
      if (v8)
      {
        [v11 stringWithFormat:@"%@: [%@] ", v12, v8];
      }

      else
      {
        [v11 stringWithFormat:@"%@: ", v12, v30];
      }
      v20 = ;
      *buf = 138543618;
      v40 = v20;
      v41 = 2114;
      v42 = namespaceCopy;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@Fetching treatment area identifiers (namespace: %{public}@)", buf, 0x16u);
    }

    v21 = +[AMSTreatmentStore defaultTreatmentStore];
    v22 = [MEMORY[0x1E695DFD8] setWithObject:namespaceCopy];
    v23 = [v21 areasForNamespaces:v22];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __78__AMSURLRequestDecoration_addTreatmentHeadersToRequest_forTreatmentNamespace___block_invoke;
    v34[3] = &unk_1E73B2EC8;
    v35 = namespaceCopy;
    v24 = v8;
    v37 = v21;
    selfCopy = self;
    v36 = v24;
    v25 = v21;
    v26 = [v23 continueWithBlock:v34];

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __78__AMSURLRequestDecoration_addTreatmentHeadersToRequest_forTreatmentNamespace___block_invoke_5;
    v31[3] = &unk_1E73BBA10;
    v32 = v24;
    selfCopy2 = self;
    v27 = v24;
    [v26 addErrorBlock:v31];
    v28 = [requestCopy ams_addHeadersFromPromise:v26];
  }

  else
  {
    v13 = +[AMSLogConfig sharedConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      v15 = AMSLogKey();
      v16 = MEMORY[0x1E696AEC0];
      v17 = objc_opt_class();
      v18 = v17;
      if (v15)
      {
        self = AMSLogKey();
        [v16 stringWithFormat:@"%@: [%@] ", v18, self];
      }

      else
      {
        [v16 stringWithFormat:@"%@: ", v17];
      }
      selfCopy3 = ;
      *buf = 138543362;
      v40 = selfCopy3;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_INFO, "%{public}@No treatment namespace was provided. Skipping header creation.", buf, 0xCu);
      if (v15)
      {

        selfCopy3 = self;
      }
    }

    v28 = +[AMSBinaryPromise promiseWithSuccess];
  }

  return v28;
}

id __78__AMSURLRequestDecoration_addTreatmentHeadersToRequest_forTreatmentNamespace___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [a2 objectForKey:*(a1 + 32)];
  if ([v3 count])
  {
    v4 = +[AMSLogConfig sharedConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 40);
      v7 = MEMORY[0x1E696AEC0];
      v8 = objc_opt_class();
      if (v6)
      {
        [v7 stringWithFormat:@"%@: [%@] ", v8, *(a1 + 40)];
      }

      else
      {
        [v7 stringWithFormat:@"%@: ", v8, v16];
      }
      v10 = ;
      *buf = 138543618;
      v23 = v10;
      v24 = 2114;
      v25 = v3;
      _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_INFO, "%{public}@Fetching treatments (areaIDs: %{public}@)", buf, 0x16u);
    }

    v11 = [*(a1 + 48) activeTreatmentsForAreas:v3];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __78__AMSURLRequestDecoration_addTreatmentHeadersToRequest_forTreatmentNamespace___block_invoke_33;
    v17[3] = &unk_1E73BD2B8;
    v12 = *(a1 + 40);
    v14 = *(a1 + 48);
    v13 = *(a1 + 56);
    v18 = v12;
    v21 = v13;
    v19 = v14;
    v20 = v3;
    v9 = [v11 thenWithBlock:v17];
  }

  else
  {
    v9 = [AMSPromise promiseWithResult:MEMORY[0x1E695E0F8]];
  }

  return v9;
}

id __78__AMSURLRequestDecoration_addTreatmentHeadersToRequest_forTreatmentNamespace___block_invoke_33(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    if (v6)
    {
      [v7 stringWithFormat:@"%@: [%@] ", v8, *(a1 + 32)];
    }

    else
    {
      [v7 stringWithFormat:@"%@: ", v8, v25];
    }
    v9 = ;
    *buf = 138543618;
    v30 = v9;
    v31 = 2114;
    v32 = @"x-apple-ab";
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_INFO, "%{public}@%{public}@ header", buf, 0x16u);
  }

  v10 = [*(a1 + 40) treatmentsPayloadForTreatments:v3];
  v11 = [v10 thenWithBlock:&__block_literal_global_146];

  v12 = +[AMSLogConfig sharedConfig];
  if (!v12)
  {
    v12 = +[AMSLogConfig sharedConfig];
  }

  v13 = [v12 OSLogObject];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = *(a1 + 32);
    v15 = MEMORY[0x1E696AEC0];
    v16 = objc_opt_class();
    if (v14)
    {
      [v15 stringWithFormat:@"%@: [%@] ", v16, *(a1 + 32)];
    }

    else
    {
      [v15 stringWithFormat:@"%@: ", v16, v25];
    }
    v17 = ;
    *buf = 138543618;
    v30 = v17;
    v31 = 2114;
    v32 = @"x-apple-abc";
    _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_INFO, "%{public}@%{public}@ header", buf, 0x16u);
  }

  v18 = [*(a1 + 40) areasWithIDs:*(a1 + 48)];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __78__AMSURLRequestDecoration_addTreatmentHeadersToRequest_forTreatmentNamespace___block_invoke_36;
  v26[3] = &unk_1E73B5C28;
  v27 = v3;
  v19 = v3;
  v20 = [v18 thenWithBlock:v26];

  v28[0] = v11;
  v28[1] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  v22 = [AMSPromise promiseWithSome:v21];
  v23 = [v22 thenWithBlock:&__block_literal_global_48_3];

  return v23;
}

id __78__AMSURLRequestDecoration_addTreatmentHeadersToRequest_forTreatmentNamespace___block_invoke_34(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  if ([v2 length])
  {
    v6 = @"x-apple-ab";
    v7[0] = v2;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F8];
  }

  v4 = [AMSPromise promiseWithResult:v3];

  return v4;
}

id __78__AMSURLRequestDecoration_addTreatmentHeadersToRequest_forTreatmentNamespace___block_invoke_36(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v5 objectForKey:{v10, v18}];
        if ([v11 cacheable])
        {
          v12 = [*(a1 + 32) objectForKey:v10];
          v13 = [v12 identifier];
          if (v13)
          {
            [v4 insertObject:v13 atIndex:{objc_msgSend(v4, "indexOfObject:inSortedRange:options:usingComparator:", v13, 0, objc_msgSend(v4, "count"), 1024, &__block_literal_global_40_1)}];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v22 = @"x-apple-abc";
    v14 = [v4 componentsJoinedByString:{@", "}];
    v23 = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  }

  else
  {
    v15 = MEMORY[0x1E695E0F8];
  }

  v16 = [AMSPromise promiseWithResult:v15, v18];

  return v16;
}

id __78__AMSURLRequestDecoration_addTreatmentHeadersToRequest_forTreatmentNamespace___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 ams_reduceWithInitialResult:MEMORY[0x1E695E0F8] updateAccumulatingResult:&__block_literal_global_51_1];
  v3 = [AMSPromise promiseWithResult:v2];

  return v3;
}

void __78__AMSURLRequestDecoration_addTreatmentHeadersToRequest_forTreatmentNamespace___block_invoke_5(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    if (v7)
    {
      [v6 stringWithFormat:@"%@: [%@] ", v8, *(a1 + 32)];
    }

    else
    {
      [v6 stringWithFormat:@"%@: ", v8, v11];
    }
    v9 = ;
    v10 = AMSLogableError(v3);
    *buf = 138543618;
    v13 = v9;
    v14 = 2114;
    v15 = v10;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed adding AB payload header. error = %{public}@", buf, 0x16u);
  }
}

+ (id)addGUIDParameterToRequest:(id)request bag:(id)bag preservingQueryEncoding:(BOOL)encoding
{
  encodingCopy = encoding;
  v37 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  bagCopy = bag;
  if (bagCopy)
  {
    v10 = +[AMSDevice deviceGUID];
    if (v10)
    {
      v29 = [bagCopy arrayForKey:@"guid-urls/regex"];
      valuePromise = [v29 valuePromise];
      v34[0] = valuePromise;
      v11 = [bagCopy arrayForKey:@"guid-urls/schemes"];
      valuePromise2 = [v11 valuePromise];
      v34[1] = valuePromise2;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
      v13 = v27 = encodingCopy;
      v14 = [AMSPromise promiseWithAll:v13];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __81__AMSURLRequestDecoration_addGUIDParameterToRequest_bag_preservingQueryEncoding___block_invoke;
      v30[3] = &unk_1E73BB760;
      selfCopy = self;
      v15 = requestCopy;
      v31 = v15;
      v10 = v10;
      v32 = v10;
      v16 = [v14 continueWithBlock:v30];

      v17 = [self _addGUIDParameterToRequest:v15 fromPromise:v16 shouldPreserveEncoding:v27];
    }

    else
    {
      v17 = +[AMSBinaryPromise promiseWithSuccess];
    }
  }

  else
  {
    v18 = requestCopy;
    v19 = +[AMSLogConfig sharedConfig];
    if (!v19)
    {
      v19 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v19 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v21 = AMSLogKey();
      v22 = MEMORY[0x1E696AEC0];
      v23 = objc_opt_class();
      v24 = v23;
      if (v21)
      {
        self = AMSLogKey();
        [v22 stringWithFormat:@"%@: [%@] ", v24, self];
      }

      else
      {
        [v22 stringWithFormat:@"%@: ", v23];
      }
      selfCopy2 = ;
      *buf = 138543362;
      v36 = selfCopy2;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@Skipping GUID parameter addition as bag was not provided.", buf, 0xCu);
      if (v21)
      {

        selfCopy2 = self;
      }
    }

    v10 = AMSError(2, @"Failed to add GUID parameter", @"Bag was not provided", 0);
    v17 = [AMSBinaryPromise promiseWithError:v10];
    requestCopy = v18;
  }

  return v17;
}

id __81__AMSURLRequestDecoration_addGUIDParameterToRequest_bag_preservingQueryEncoding___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if ([v6 ams_isBagValueMissingError])
    {
      v8 = +[AMSOptional optionalWithNil];
      v9 = [AMSPromise promiseWithResult:v8];
    }

    else
    {
      v9 = [AMSPromise promiseWithError:v7];
    }
  }

  else
  {
    v10 = [v5 objectAtIndexedSubscript:0];
    v11 = [v5 objectAtIndexedSubscript:1];
    v12 = [*(a1 + 48) _shouldSendGUIDForRequest:*(a1 + 32) patterns:v10 schemes:v11];
    v13 = [AMSOptional alloc];
    v14 = 0;
    if (v12)
    {
      v14 = *(a1 + 40);
    }

    v15 = [(AMSOptional *)v13 initWithValue:v14];
    v9 = [AMSPromise promiseWithResult:v15];
  }

  return v9;
}

+ (id)addStoreFrontHeaderToRequest:(id)request forAccount:(id)account mediaType:(id)type bag:(id)bag
{
  requestCopy = request;
  bagCopy = bag;
  typeCopy = type;
  accountCopy = account;
  v14 = objc_alloc_init(AMSMutablePromise);
  completionHandlerAdapter = [(AMSPromise *)v14 completionHandlerAdapter];
  [AMSStorefrontHeaderValueCreation storefrontHeaderValueForAccount:accountCopy bag:bagCopy mediaType:typeCopy allowFailedSuffixFetch:1 completionHandler:completionHandlerAdapter];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __81__AMSURLRequestDecoration_addStoreFrontHeaderToRequest_forAccount_mediaType_bag___block_invoke;
  v23[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v23[4] = self;
  [(AMSPromise *)v14 addErrorBlock:v23];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __81__AMSURLRequestDecoration_addStoreFrontHeaderToRequest_forAccount_mediaType_bag___block_invoke_64;
  v20[3] = &unk_1E73B32C8;
  v21 = requestCopy;
  selfCopy = self;
  v16 = requestCopy;
  v17 = [(AMSMutablePromise *)v14 thenWithBlock:v20];
  v18 = [v16 ams_addHeadersFromPromise:v17];

  return v18;
}

void __81__AMSURLRequestDecoration_addStoreFrontHeaderToRequest_forAccount_mediaType_bag___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = AMSLogKey();
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = v8;
    if (v6)
    {
      a1 = AMSLogKey();
      [v7 stringWithFormat:@"%@: [%@] ", v9, a1];
    }

    else
    {
      [v7 stringWithFormat:@"%@: ", v8];
    }
    v10 = ;
    v11 = AMSLogableError(v3);
    *buf = 138543618;
    v13 = v10;
    v14 = 2114;
    v15 = v11;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_ERROR, "%{public}@Failed to create storefront header. error = %{public}@", buf, 0x16u);
    if (v6)
    {

      v10 = a1;
    }
  }
}

id __81__AMSURLRequestDecoration_addStoreFrontHeaderToRequest_forAccount_mediaType_bag___block_invoke_64(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) valueForHTTPHeaderField:@"X-Apple-Store-Front"];
  if (v4)
  {
    v5 = +[AMSLogConfig sharedConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = AMSLogKey();
      v8 = MEMORY[0x1E696AEC0];
      v9 = objc_opt_class();
      v10 = v9;
      if (v7)
      {
        a1 = AMSLogKey();
        [v8 stringWithFormat:@"%@: [%@] ", v10, a1];
      }

      else
      {
        [v8 stringWithFormat:@"%@: ", v9];
      }
      v11 = ;
      v12 = AMSHashIfNeeded(v4);
      v13 = AMSHashIfNeeded(v3);
      *buf = 138543874;
      v20 = v11;
      v21 = 2114;
      v22 = v12;
      v23 = 2114;
      v24 = v13;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Request already has storefront header set which will be replaced. originalStorefront = %{public}@ | newStorefront = %{public}@", buf, 0x20u);
      if (v7)
      {

        v11 = a1;
      }
    }
  }

  v17 = @"X-Apple-Store-Front";
  v18 = v3;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v15 = [AMSPromise promiseWithResult:v14];

  return v15;
}

+ (BOOL)_shouldSendGUIDForRequest:(id)request patterns:(id)patterns schemes:(id)schemes
{
  v24 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  patternsCopy = patterns;
  schemesCopy = schemes;
  if (+[AMSDefaults alwaysSendGUID])
  {
    LOBYTE(v10) = 1;
  }

  else if ([patternsCopy count])
  {
    v11 = [requestCopy URL];
    scheme = [v11 scheme];
    LODWORD(v10) = [schemesCopy containsObject:scheme];

    if (v10)
    {
      v13 = [requestCopy URL];
      absoluteString = [v13 absoluteString];

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v15 = patternsCopy;
      v10 = [v15 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        v16 = *v20;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v20 != v16)
            {
              objc_enumerationMutation(v15);
            }

            if ([absoluteString rangeOfString:*(*(&v19 + 1) + 8 * i) options:{1024, v19}] != 0x7FFFFFFFFFFFFFFFLL)
            {
              LOBYTE(v10) = 1;
              goto LABEL_16;
            }
          }

          v10 = [v15 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

LABEL_16:
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

+ (id)_addGUIDParameterToRequest:(id)request fromPromise:(id)promise shouldPreserveEncoding:(BOOL)encoding
{
  requestCopy = request;
  promiseCopy = promise;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __89__AMSURLRequestDecoration__addGUIDParameterToRequest_fromPromise_shouldPreserveEncoding___block_invoke;
  v14[3] = &unk_1E73BD308;
  v16 = requestCopy;
  selfCopy = self;
  v15 = promiseCopy;
  encodingCopy = encoding;
  v10 = requestCopy;
  v11 = promiseCopy;
  v12 = [v10 ams_modifyRequestWithBlock:v14];

  return v12;
}

void __89__AMSURLRequestDecoration__addGUIDParameterToRequest_fromPromise_shouldPreserveEncoding___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89__AMSURLRequestDecoration__addGUIDParameterToRequest_fromPromise_shouldPreserveEncoding___block_invoke_2;
  v8[3] = &unk_1E73BD2E0;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v11 = *(a1 + 48);
  v6 = v4;
  v12 = *(a1 + 56);
  v9 = v6;
  v10 = v3;
  v7 = v3;
  [v5 addFinishBlock:v8];
}

void __89__AMSURLRequestDecoration__addGUIDParameterToRequest_fromPromise_shouldPreserveEncoding___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
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
      v18 = AMSLogableError(v7);
      *buf = 138543618;
      v22 = v14;
      v23 = 2114;
      v24 = v18;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@GUID parameter creation failed. error = %{public}@", buf, 0x16u);
      if (v10)
      {

        v14 = v3;
      }
    }

    goto LABEL_13;
  }

  v15 = [v6 value];

  if (v15)
  {
    v8 = [*(a1 + 32) URL];
    v19 = @"guid";
    v9 = [v6 value];
    v20 = v9;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v17 = [v8 ams_URLByAppendingQueryParameters:v16 preservingQueryEncoding:*(a1 + 56)];
    [*(a1 + 32) setURL:v17];

LABEL_13:
  }

  (*(*(a1 + 40) + 16))();
}

@end