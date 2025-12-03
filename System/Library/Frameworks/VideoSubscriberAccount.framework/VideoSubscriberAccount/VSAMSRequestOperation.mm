@interface VSAMSRequestOperation
- (VSAMSRequestOperation)init;
- (VSAMSRequestOperation)initWithRequest:(id)request;
- (void)cancel;
- (void)executionDidBegin;
- (void)urlForRequestType:(unint64_t)type completionHandler:(id)handler;
@end

@implementation VSAMSRequestOperation

- (VSAMSRequestOperation)initWithRequest:(id)request
{
  requestCopy = request;
  v6 = [(VSAMSRequestOperation *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, request);
  }

  return v7;
}

- (VSAMSRequestOperation)init
{
  v11.receiver = self;
  v11.super_class = VSAMSRequestOperation;
  v2 = [(VSAMSRequestOperation *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(VSOptional);
    v4 = v2->_result;
    v2->_result = v3;

    v5 = MEMORY[0x277CCABD8];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 queueWithName:v7];
    privateQueue = v2->_privateQueue;
    v2->_privateQueue = v8;
  }

  return v2;
}

- (void)executionDidBegin
{
  request = [(VSAMSRequestOperation *)self request];
  requestType = [request requestType];

  request2 = [(VSAMSRequestOperation *)self request];
  methodName = [request2 methodName];

  request3 = [(VSAMSRequestOperation *)self request];
  parameters = [request3 parameters];

  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__VSAMSRequestOperation_executionDidBegin__block_invoke;
  v11[3] = &unk_278B73260;
  v9 = methodName;
  v12 = v9;
  v10 = parameters;
  v13 = v10;
  objc_copyWeak(&v14, &location);
  [(VSAMSRequestOperation *)self urlForRequestType:requestType completionHandler:v11];
  objc_destroyWeak(&v14);

  objc_destroyWeak(&location);
}

void __42__VSAMSRequestOperation_executionDidBegin__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v21 = v6;
    v20 = v5;
    v8 = [MEMORY[0x277CCAB70] requestWithURL:?];
    [v8 setHTTPMethod:*(a1 + 32)];
    v9 = [MEMORY[0x277CEE3F8] vs_defaultBag];
    v19 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    v10 = [objc_alloc(MEMORY[0x277CEE6F0]) initWithConfiguration:v19];
    v11 = [objc_alloc(MEMORY[0x277CEE578]) initWithClientIdentifier:@"VideoSubscriberAccount" bag:v9];
    [v11 setSession:v10];
    v12 = [objc_alloc(MEMORY[0x277CEE550]) initWithTokenService:v11];
    [v10 setProtocolHandler:v12];
    v13 = [objc_alloc(MEMORY[0x277CEE558]) initWithTokenService:v11 bag:v9];
    v14 = [v13 requestByEncodingRequest:v8 parameters:*(a1 + 40)];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __42__VSAMSRequestOperation_executionDidBegin__block_invoke_2;
    v22[3] = &unk_278B73238;
    objc_copyWeak(&v24, (a1 + 48));
    v15 = v10;
    v23 = v15;
    [v14 addFinishBlock:v22];

    objc_destroyWeak(&v24);
    v7 = v21;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (!v7)
    {
      v7 = VSPrivateErrorWithRecoverySuggestion(-25, 0, 0);
      if (!v7)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The errorOrNil parameter must not be nil."];
      }
    }

    v17 = [VSFailable failableWithError:v7];
    v18 = [VSOptional optionalWithObject:v17];
    [WeakRetained setResult:v18];

    [WeakRetained finishExecutionIfPossible];
  }
}

void __42__VSAMSRequestOperation_executionDidBegin__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v6)
  {
    v8 = v6;
    v9 = VSErrorLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __42__VSAMSRequestOperation_executionDidBegin__block_invoke_2_cold_1();
    }
  }

  else
  {
    if (v5)
    {
      v8 = v5;
      v12 = [*(a1 + 32) dataTaskPromiseWithRequest:v8];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __42__VSAMSRequestOperation_executionDidBegin__block_invoke_17;
      v14[3] = &unk_278B73210;
      objc_copyWeak(&v15, (a1 + 40));
      [v12 addFinishBlock:v14];
      objc_destroyWeak(&v15);

      goto LABEL_8;
    }

    v13 = VSErrorLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __42__VSAMSRequestOperation_executionDidBegin__block_invoke_2_cold_2(WeakRetained, v13);
    }

    v8 = VSPrivateErrorWithRecoverySuggestion(-25, 0, 0);
  }

  v10 = [VSFailable failableWithError:v8];
  v11 = [VSOptional optionalWithObject:v10];
  [WeakRetained setResult:v11];

  [WeakRetained finishExecutionIfPossible];
LABEL_8:
}

void __42__VSAMSRequestOperation_executionDidBegin__block_invoke_17(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v6)
  {
    v8 = v6;
    v9 = VSErrorLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __42__VSAMSRequestOperation_executionDidBegin__block_invoke_17_cold_1();
    }

LABEL_5:
    v10 = [VSFailable failableWithError:v8];
    v11 = [VSOptional optionalWithObject:v10];
    [WeakRetained setResult:v11];
    goto LABEL_10;
  }

  if (!v5)
  {
    v14 = VSErrorLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __42__VSAMSRequestOperation_executionDidBegin__block_invoke_17_cold_2(WeakRetained, v14);
    }

    v8 = VSPrivateErrorWithRecoverySuggestion(-25, 0, 0);
    goto LABEL_5;
  }

  v8 = v5;
  v12 = VSDefaultLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = WeakRetained;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_23AB8E000, v12, OS_LOG_TYPE_DEFAULT, "AMS request %@ returned result %@", &v15, 0x16u);
  }

  v10 = [v8 data];
  v11 = [VSFailable failableWithObject:v10];
  v13 = [VSOptional optionalWithObject:v11];
  [WeakRetained setResult:v13];

LABEL_10:
  [WeakRetained finishExecutionIfPossible];
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = VSAMSRequestOperation;
  [(VSAsyncOperation *)&v4 cancel];
  privateQueue = [(VSAMSRequestOperation *)self privateQueue];
  [privateQueue cancelAllOperations];
}

- (void)urlForRequestType:(unint64_t)type completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_alloc_init(VSAMSBagLoadOperation);
  [(VSAMSBagLoadOperation *)v7 setBagKey:@"countryCode"];
  v8 = objc_alloc_init(VSAMSBagLoadOperation);
  [(VSAMSBagLoadOperation *)v8 setBagKey:@"apps-media-api-host"];
  v9 = objc_alloc_init(VSAMSBagLoadOperation);
  [(VSAMSBagLoadOperation *)v9 setBagKey:@"language-tag"];
  objc_initWeak(&location, v7);
  objc_initWeak(&from, v8);
  objc_initWeak(&v24, v9);
  objc_initWeak(&v23, self);
  v10 = MEMORY[0x277CCA8C8];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __61__VSAMSRequestOperation_urlForRequestType_completionHandler___block_invoke;
  v17 = &unk_278B73288;
  objc_copyWeak(&v19, &location);
  objc_copyWeak(&v20, &from);
  objc_copyWeak(&v21, &v24);
  objc_copyWeak(v22, &v23);
  v22[1] = type;
  v11 = handlerCopy;
  v18 = v11;
  v12 = [v10 blockOperationWithBlock:&v14];
  v13 = [(VSAMSRequestOperation *)self privateQueue:v14];
  [v12 addDependency:v7];
  [v12 addDependency:v8];
  [v12 addDependency:v9];
  [v13 addOperation:v7];
  [v13 addOperation:v8];
  [v13 addOperation:v9];
  [v13 addOperation:v12];

  objc_destroyWeak(v22);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __61__VSAMSRequestOperation_urlForRequestType_completionHandler___block_invoke(uint64_t a1)
{
  v1 = a1;
  v100[2] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained((v1 + 48));
  v4 = objc_loadWeakRetained((v1 + 56));
  v5 = objc_loadWeakRetained((v1 + 64));
  v6 = [WeakRetained value];
  v7 = [v3 value];
  v8 = [v4 value];
  v9 = [WeakRetained error];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v92 = v5;
    v12 = v1;
    v13 = WeakRetained;
    v14 = v6;
    v15 = v7;
    v16 = v8;
    v17 = [v3 error];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = [v4 error];
    }

    v20 = v19;

    v11 = v20;
    v8 = v16;
    v7 = v15;
    v6 = v14;
    WeakRetained = v13;
    v1 = v12;
    v5 = v92;
  }

  if (v6 && v7 && v8)
  {
    v85 = v11;
    v86 = v3;
    v93 = v5;
    v21 = v6;
    v88 = v7;
    v22 = v7;
    v84 = v8;
    v23 = v8;
    v24 = objc_alloc_init(MEMORY[0x277CCACE0]);
    [v24 setScheme:@"https"];
    v91 = v22;
    [v24 setHost:v22];
    v25 = +[VSDevice currentDevice];
    v26 = MEMORY[0x277CCAD18];
    v82 = v25;
    v27 = [v25 stringForAMSPlatform];
    v28 = [v26 queryItemWithName:@"platform" value:v27];

    v83 = v23;
    v89 = [MEMORY[0x277CCAD18] queryItemWithName:@"l" value:v23];
    v90 = v28;
    v100[0] = v28;
    v100[1] = v89;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v100 count:2];
    [v24 setQueryItems:v29];

    v30 = *(v1 + 72);
    v87 = v4;
    if (v30 <= 2)
    {
      v5 = v93;
      if (!v30)
      {
        v80 = v21;
        v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"/v1/catalog/%@/tv-providers", v21];
        [v24 setPath:v46];
        v77 = [MEMORY[0x277CCAD18] queryItemWithName:@"include" value:@"apps"];
        v74 = [MEMORY[0x277CCAD18] queryItemWithName:@"redef[multiple-system-operators]" value:@"tv-providers"];
        v47 = [MEMORY[0x277CCAD18] queryItemWithName:@"extend" value:@"externalVersionId"];
        v48 = [v24 queryItems];
        v99[0] = v77;
        v99[1] = v74;
        v99[2] = v47;
        v49 = v47;
        v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v99 count:3];
        v51 = [v48 arrayByAddingObjectsFromArray:v50];
        [v24 setQueryItems:v51];

        v32 = v46;
        v5 = v93;
        v21 = v80;

        v31 = v91;
        v7 = v88;
        goto LABEL_36;
      }

      if (v30 != 1)
      {
        v31 = v91;
        if (v30 == 2)
        {
          [v24 setPath:@"/v1/storefronts"];
          v97[0] = v90;
          v97[1] = v89;
          v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:2];
          [v24 setQueryItems:v32];
LABEL_36:
        }

LABEL_37:
        v72 = [v24 URL];
        (*(*(v1 + 32) + 16))();

        v3 = v86;
        v4 = v87;
        v8 = v84;
        v11 = v85;
        goto LABEL_38;
      }

      v81 = v21;
      v61 = [MEMORY[0x277CCACA8] stringWithFormat:@"/v1/catalog/%@/apps", v21];
      [v24 setPath:v61];
      v78 = [MEMORY[0x277CCAD18] queryItemWithName:@"filter[supportsTVProviders]" value:@"true"];
      v75 = [MEMORY[0x277CCAD18] queryItemWithName:@"fields" value:{@"name, artwork, deviceFamilies"}];
      v62 = [v24 queryItems];
      v98[0] = v78;
      v98[1] = v75;
      v63 = [MEMORY[0x277CBEA60] arrayWithObjects:v98 count:2];
      v64 = [v62 arrayByAddingObjectsFromArray:v63];
      [v24 setQueryItems:v64];

      v32 = v61;
      v5 = v93;
      v21 = v81;

LABEL_35:
      v31 = v91;
      goto LABEL_36;
    }

    if (v30 == 3)
    {
      v52 = MEMORY[0x277CCACA8];
      v53 = [v93 request];
      v54 = [v53 providerIdentifier];

      if (!v54)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [[strongSelf request] providerIdentifier] parameter must not be nil."];
      }

      v55 = [v93 request];
      v56 = [v55 providerIdentifier];

      v57 = [v52 stringWithFormat:@"/v1/catalog/%@/tv-providers/%@/channel-apps", v21, v56];

      [v24 setPath:v57];
      v76 = [MEMORY[0x277CCAD18] queryItemWithName:@"redef[multiple-system-operators]" value:@"tv-providers"];
      v73 = [MEMORY[0x277CCAD18] queryItemWithName:@"extend" value:@"externalVersionId"];
      v58 = [v24 queryItems];
      v96[0] = v76;
      v96[1] = v73;
      v59 = MEMORY[0x277CBEA60];
      v60 = v96;
    }

    else
    {
      v31 = v91;
      if (v30 != 4)
      {
        v5 = v93;
        if (v30 != 5)
        {
          goto LABEL_37;
        }

        v34 = MEMORY[0x277CCACA8];
        v35 = [v93 request];
        v36 = [v35 providerIdentifier];

        if (!v36)
        {
          [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [[strongSelf request] providerIdentifier] parameter must not be nil."];
        }

        v37 = [v93 request];
        v38 = [v37 providerIdentifier];

        [v34 stringWithFormat:@"/v1/catalog/%@/tv-providers/%@", v21, v38];
        v39 = v79 = v21;

        [v24 setPath:v39];
        v76 = [MEMORY[0x277CCAD18] queryItemWithName:@"redef[multiple-system-operators]" value:@"tv-providers"];
        v73 = [MEMORY[0x277CCAD18] queryItemWithName:@"extend" value:@"externalVersionId"];
        v40 = [MEMORY[0x277CCAD18] queryItemWithName:@"include" value:{@"apps, channel-apps, subscription-apps"}];
        v41 = [v24 queryItems];
        v94[0] = v76;
        v94[1] = v73;
        v94[2] = v40;
        v42 = v40;
        v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:3];
        v44 = [v41 arrayByAddingObjectsFromArray:v43];
        [v24 setQueryItems:v44];

        v32 = v39;
        v21 = v79;

        goto LABEL_34;
      }

      v65 = MEMORY[0x277CCACA8];
      v66 = [v93 request];
      v67 = [v66 providerIdentifier];

      if (!v67)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [[strongSelf request] providerIdentifier] parameter must not be nil."];
      }

      v68 = [v93 request];
      v69 = [v68 providerIdentifier];

      v57 = [v65 stringWithFormat:@"/v1/catalog/%@/tv-providers/%@/subscription-apps", v21, v69];

      [v24 setPath:v57];
      v76 = [MEMORY[0x277CCAD18] queryItemWithName:@"redef[multiple-system-operators]" value:@"tv-providers"];
      v73 = [MEMORY[0x277CCAD18] queryItemWithName:@"extend" value:@"externalVersionId"];
      v58 = [v24 queryItems];
      v95[0] = v76;
      v95[1] = v73;
      v59 = MEMORY[0x277CBEA60];
      v60 = v95;
    }

    v70 = [v59 arrayWithObjects:v60 count:2];
    v71 = [v58 arrayByAddingObjectsFromArray:v70];
    [v24 setQueryItems:v71];

    v32 = v57;
LABEL_34:

    v5 = v93;
    goto LABEL_35;
  }

  if (v11)
  {
    v33 = v11;
  }

  else
  {
    v33 = VSPrivateErrorWithRecoverySuggestion(-25, 0, 0);
  }

  v45 = v33;
  (*(*(v1 + 32) + 16))();

LABEL_38:
}

void __42__VSAMSRequestOperation_executionDidBegin__block_invoke_2_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "AMS signing request %@ did not return a request or error.", &v2, 0xCu);
}

void __42__VSAMSRequestOperation_executionDidBegin__block_invoke_17_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "AMS Request %@ did not return a result or error.", &v2, 0xCu);
}

@end