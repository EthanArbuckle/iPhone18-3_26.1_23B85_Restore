@interface MPStoreModelRequestOperation
- (MPStoreModelRequestOperation)init;
- (MPStoreModelRequestOperation)initWithRequest:(id)request responseHandler:(id)handler;
- (double)remainingTimeInterval;
- (id)_URLLoadRequestWithRequest:(id)request requestContext:(id)context;
- (void)_executeItemMetadataLoadForRequestedItemIdentifiers:(id)identifiers reason:(unint64_t)reason requestContext:(id)context;
- (void)_executeURLLoadWithRequest:(id)request storeURLBag:(id)bag requestContext:(id)context;
- (void)_executeURLLoadWithRequests:(id)requests storeURLBag:(id)bag requestContext:(id)context;
- (void)_finishWithResponse:(id)response error:(id)error;
- (void)_handleTimeout;
- (void)_tearDownTimeoutTimerSource;
- (void)cancel;
- (void)dealloc;
- (void)execute;
- (void)finishWithError:(id)error;
@end

@implementation MPStoreModelRequestOperation

- (id)_URLLoadRequestWithRequest:(id)request requestContext:(id)context
{
  contextCopy = context;
  request = self->_request;
  requestCopy = request;
  if (([(MPStoreModelRequest *)request authenticationOptions]& 1) != 0)
  {
    clientInfo = [contextCopy clientInfo];
    v11 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
    v12 = MEMORY[0x1E69E43B0];
    clientIdentifier = [clientInfo clientIdentifier];
    clientVersion = [clientInfo clientVersion];
    v15 = [v12 clientInfoForMusicKitRequestWithClientIdentifier:clientIdentifier clientVersion:clientVersion bundleIdentifier:v11];

    v16 = objc_alloc(MEMORY[0x1E69E4478]);
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __74__MPStoreModelRequestOperation__URLLoadRequestWithRequest_requestContext___block_invoke;
    v24 = &unk_1E767C7F8;
    v25 = v15;
    v26 = contextCopy;
    v17 = v15;
    v18 = [v16 initWithBlock:&v21];
    v19 = objc_alloc(MEMORY[0x1E69E4480]);
    v9 = [v19 initWithURLRequest:requestCopy requestContext:{v18, v21, v22, v23, v24}];

    requestCopy = clientInfo;
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E69E4620]) initWithURLRequest:requestCopy requestContext:contextCopy];
  }

  return v9;
}

void __74__MPStoreModelRequestOperation__URLLoadRequestWithRequest_requestContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setClientInfo:v3];
  v5 = [*(a1 + 40) identity];
  [v4 setIdentity:v5];
}

- (void)_tearDownTimeoutTimerSource
{
  timeoutTimerSource = self->_timeoutTimerSource;
  if (timeoutTimerSource)
  {
    dispatch_source_cancel(timeoutTimerSource);
    v4 = self->_timeoutTimerSource;
    self->_timeoutTimerSource = 0;
  }
}

- (void)_handleTimeout
{
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A978] code:-1001 userInfo:0];
  [(MPStoreModelRequestOperation *)self _finishWithResponse:0 error:v3];

  [(MPStoreModelRequestOperation *)self cancel];
}

- (void)_executeURLLoadWithRequests:(id)requests storeURLBag:(id)bag requestContext:(id)context
{
  v38 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  contextCopy = context;
  v22 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(requestsCopy, "count")}];
  v8 = objc_opt_new();
  v9 = dispatch_group_create();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = requestsCopy;
  v10 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v34;
    do
    {
      v13 = 0;
      do
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v33 + 1) + 8 * v13);
        dispatch_group_enter(v9);
        v15 = [(MPStoreModelRequestOperation *)self _URLLoadRequestWithRequest:v14 requestContext:contextCopy];
        highPrioritySession = [MEMORY[0x1E69E4678] highPrioritySession];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __87__MPStoreModelRequestOperation__executeURLLoadWithRequests_storeURLBag_requestContext___block_invoke;
        v28[3] = &unk_1E767C7A8;
        v28[4] = self;
        v29 = v8;
        v30 = v22;
        v31 = v14;
        v32 = v9;
        [highPrioritySession enqueueDataRequest:v15 withCompletionHandler:v28];

        ++v13;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v11);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__MPStoreModelRequestOperation__executeURLLoadWithRequests_storeURLBag_requestContext___block_invoke_3;
  block[3] = &unk_1E767C7D0;
  block[4] = self;
  v25 = v8;
  v17 = v8;
  v26 = obj;
  v27 = v22;
  v18 = v22;
  v19 = obj;
  v20 = v17;
  dispatch_group_notify(v9, MEMORY[0x1E69E96A0], block);
}

void __87__MPStoreModelRequestOperation__executeURLLoadWithRequests_storeURLBag_requestContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 272);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__MPStoreModelRequestOperation__executeURLLoadWithRequests_storeURLBag_requestContext___block_invoke_2;
  block[3] = &unk_1E767C780;
  v13 = v6;
  v14 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v15 = v8;
  v16 = v9;
  v17 = v5;
  v10 = v5;
  v11 = v6;
  dispatch_sync(v7, block);
  dispatch_group_leave(*(a1 + 64));
}

void __87__MPStoreModelRequestOperation__executeURLLoadWithRequests_storeURLBag_requestContext___block_invoke_3(id *a1)
{
  v35[1] = *MEMORY[0x1E69E9840];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v2 = *(a1[4] + 34);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__MPStoreModelRequestOperation__executeURLLoadWithRequests_storeURLBag_requestContext___block_invoke_4;
  block[3] = &unk_1E76819F0;
  v26 = &v27;
  v25 = a1[5];
  dispatch_sync(v2, block);
  v3 = v28[3];
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = a1[4];
      v5 = [a1[5] firstObject];
      [v4 _finishWithResponse:0 error:v5];
    }

    else
    {
      v15 = MEMORY[0x1E696ABC0];
      v16 = a1[5];
      v34 = @"errors";
      v35[0] = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
      v5 = [v15 errorWithDomain:@"MPMusicAPIErrorDomain" code:1000 userInfo:v17];

      [a1[4] _finishWithResponse:0 error:v5];
    }
  }

  else
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a1[6], "count")}];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = a1[6];
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v33 count:16];
    if (v7)
    {
      v8 = *v21;
      do
      {
        v9 = 0;
        do
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [a1[7] objectForKeyedSubscript:*(*(&v20 + 1) + 8 * v9)];
          if (v10)
          {
            [v5 addObject:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v20 objects:v33 count:16];
      }

      while (v7);
    }

    v11 = [v5 count];
    if (v11 >= [a1[6] count])
    {
      v18 = a1[4];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __87__MPStoreModelRequestOperation__executeURLLoadWithRequests_storeURLBag_requestContext___block_invoke_5;
      v19[3] = &unk_1E767D7C8;
      v19[4] = v18;
      [v18 produceResponseWithLoadedOutput:v5 completion:v19];
    }

    else
    {
      v12 = MEMORY[0x1E696ABC0];
      v31 = *MEMORY[0x1E696A278];
      v32 = @"Failed to get response body objects for each request in the compound URL load group.";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v14 = [v12 errorWithDomain:@"MPMusicAPIErrorDomain" code:1000 userInfo:v13];

      [a1[4] _finishWithResponse:0 error:v14];
    }
  }

  _Block_object_dispose(&v27, 8);
}

uint64_t __87__MPStoreModelRequestOperation__executeURLLoadWithRequests_storeURLBag_requestContext___block_invoke_4(uint64_t a1)
{
  result = [*(a1 + 32) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __87__MPStoreModelRequestOperation__executeURLLoadWithRequests_storeURLBag_requestContext___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);

    [v2 addObject:?];
  }

  else
  {
    v3 = [*(a1 + 64) parsedBody];
    [*(a1 + 48) setObject:v3 forKeyedSubscript:*(a1 + 56)];
  }
}

- (void)_executeURLLoadWithRequest:(id)request storeURLBag:(id)bag requestContext:(id)context
{
  v6 = [(MPStoreModelRequestOperation *)self _URLLoadRequestWithRequest:request requestContext:context];
  highPrioritySession = [MEMORY[0x1E69E4678] highPrioritySession];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86__MPStoreModelRequestOperation__executeURLLoadWithRequest_storeURLBag_requestContext___block_invoke;
  v8[3] = &unk_1E767D208;
  v8[4] = self;
  [highPrioritySession enqueueDataRequest:v6 withCompletionHandler:v8];
}

void __86__MPStoreModelRequestOperation__executeURLLoadWithRequest_storeURLBag_requestContext___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = *(a1 + 32);

    [v4 _finishWithResponse:0 error:a3];
  }

  else
  {
    v6 = [a2 parsedBody];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __86__MPStoreModelRequestOperation__executeURLLoadWithRequest_storeURLBag_requestContext___block_invoke_2;
    v7[3] = &unk_1E767D7C8;
    v7[4] = *(a1 + 32);
    [v3 produceResponseWithLoadedOutput:v6 completion:v7];
  }
}

- (void)_executeItemMetadataLoadForRequestedItemIdentifiers:(id)identifiers reason:(unint64_t)reason requestContext:(id)context
{
  contextCopy = context;
  identifiersCopy = identifiers;
  v10 = objc_alloc_init(MPStoreItemMetadataRequest);
  clientInfo = [contextCopy clientInfo];
  [(MPStoreItemMetadataRequest *)v10 setClientInfo:clientInfo];

  identity = [contextCopy identity];

  [(MPStoreItemMetadataRequest *)v10 setUserIdentity:identity];
  [(MPStoreItemMetadataRequest *)v10 setItemIdentifiers:identifiersCopy];

  [(MPStoreItemMetadataRequest *)v10 setReason:reason];
  [(MPStoreItemMetadataRequest *)v10 setQualityOfService:[(MPStoreModelRequestOperation *)self qualityOfService]];
  v13 = +[MPStoreItemMetadataRequestController sharedStoreItemMetadataRequestController];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __106__MPStoreModelRequestOperation__executeItemMetadataLoadForRequestedItemIdentifiers_reason_requestContext___block_invoke;
  v15[3] = &unk_1E767C758;
  v15[4] = self;
  v14 = [v13 getStoreItemMetadataForRequest:v10 responseHandler:v15];
}

void __106__MPStoreModelRequestOperation__executeItemMetadataLoadForRequestedItemIdentifiers_reason_requestContext___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    [*(a1 + 32) _finishWithResponse:0 error:a3];
  }

  else if ([v5 isFinalResponse])
  {
    v7 = *(a1 + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __106__MPStoreModelRequestOperation__executeItemMetadataLoadForRequestedItemIdentifiers_reason_requestContext___block_invoke_2;
    v8[3] = &unk_1E767D7C8;
    v8[4] = v7;
    [v7 produceResponseWithLoadedOutput:v6 completion:v8];
  }
}

- (void)_finishWithResponse:(id)response error:(id)error
{
  responseCopy = response;
  accessSerialQueue = self->_accessSerialQueue;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __58__MPStoreModelRequestOperation__finishWithResponse_error___block_invoke;
  v13 = &unk_1E76823C0;
  selfCopy = self;
  v15 = responseCopy;
  v8 = responseCopy;
  errorCopy = error;
  dispatch_sync(accessSerialQueue, &v10);
  [(MPStoreModelRequestOperation *)self finishWithError:errorCopy, v10, v11, v12, v13, selfCopy];
}

void __58__MPStoreModelRequestOperation__finishWithResponse_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _tearDownTimeoutTimerSource];
  v2 = *(a1 + 40);
  v3 = (*(a1 + 32) + 288);

  objc_storeStrong(v3, v2);
}

- (double)remainingTimeInterval
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  accessSerialQueue = self->_accessSerialQueue;
  v11 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__MPStoreModelRequestOperation_remainingTimeInterval__block_invoke;
  block[3] = &unk_1E767D4B8;
  block[4] = self;
  block[5] = &v12;
  block[6] = &v8;
  dispatch_sync(accessSerialQueue, block);
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v4 = v13[3] + v9[3] - v3;
  if (v4 >= 0.0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v5;
}

uint64_t __53__MPStoreModelRequestOperation_remainingTimeInterval__block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 24) = *(a1[4] + 296);
  v2 = a1[4];
  [v2[39] timeoutInterval];
  result = [v2 adjustTimeoutInterval:?];
  *(*(a1[6] + 8) + 24) = v4;
  return result;
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__10;
  v19 = __Block_byref_object_dispose__11;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__37123;
  accessSerialQueue = self->_accessSerialQueue;
  v13 = __Block_byref_object_dispose__37124;
  v14 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__MPStoreModelRequestOperation_finishWithError___block_invoke;
  block[3] = &unk_1E767D4B8;
  block[4] = self;
  block[5] = &v9;
  block[6] = &v15;
  dispatch_sync(accessSerialQueue, block);
  v6 = v16[5];
  if (v6)
  {
    (*(v6 + 16))(v6, v10[5], errorCopy);
  }

  v7.receiver = self;
  v7.super_class = MPStoreModelRequestOperation;
  [(MPAsyncOperation *)&v7 finishWithError:errorCopy];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
}

void __48__MPStoreModelRequestOperation_finishWithError___block_invoke(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 288));
  v2 = _Block_copy(*(a1[4] + 320));
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[4];
  v6 = *(v5 + 320);
  *(v5 + 320) = 0;
}

- (void)execute
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v4 = v3;
  [(MPStoreModelRequest *)self->_request timeoutInterval];
  v6 = v5;
  objc_initWeak(&location, self);
  accessSerialQueue = self->_accessSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__MPStoreModelRequestOperation_execute__block_invoke;
  block[3] = &unk_1E767C708;
  block[4] = self;
  v22[1] = v4;
  v22[2] = v6;
  objc_copyWeak(v22, &location);
  dispatch_async(accessSerialQueue, block);
  defaultInfo = [MEMORY[0x1E69E43B0] defaultInfo];
  clientIdentifier = [(MPStoreModelRequest *)self->_request clientIdentifier];
  clientVersion = [(MPStoreModelRequest *)self->_request clientVersion];
  if (clientIdentifier | clientVersion)
  {
    v11 = [defaultInfo mutableCopy];
    v12 = v11;
    if (clientIdentifier)
    {
      [v11 setClientIdentifier:clientIdentifier];
    }

    if (clientVersion)
    {
      [v12 setClientVersion:clientVersion];
    }

    v13 = [v12 copy];

    defaultInfo = v13;
  }

  v14 = objc_alloc(MEMORY[0x1E69E4618]);
  userIdentity = [(MPAsyncOperation *)self userIdentity];
  v16 = [v14 initWithIdentity:userIdentity clientInfo:defaultInfo];

  mEMORY[0x1E69E4658] = [MEMORY[0x1E69E4658] sharedBagProvider];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __39__MPStoreModelRequestOperation_execute__block_invoke_3;
  v19[3] = &unk_1E767C730;
  v19[4] = self;
  v18 = v16;
  v20 = v18;
  [mEMORY[0x1E69E4658] getBagForRequestContext:v18 withCompletionHandler:v19];

  objc_destroyWeak(v22);
  objc_destroyWeak(&location);
}

void __39__MPStoreModelRequestOperation_execute__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 296) = *(a1 + 48);
  v2 = dispatch_get_global_queue(-32768, 0);
  v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v2);
  v4 = *(a1 + 32);
  v5 = *(v4 + 304);
  *(v4 + 304) = v3;

  v6 = *(*(a1 + 32) + 304);
  v7 = dispatch_time(0, (*(a1 + 56) * 1000000000.0));
  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  v8 = *(*(a1 + 32) + 304);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __39__MPStoreModelRequestOperation_execute__block_invoke_2;
  handler[3] = &unk_1E76825E8;
  objc_copyWeak(&v10, (a1 + 40));
  dispatch_source_set_event_handler(v8, handler);
  dispatch_resume(*(*(a1 + 32) + 304));
  objc_destroyWeak(&v10);
}

void __39__MPStoreModelRequestOperation_execute__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.mediaplayer", "Default");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = [v5 serverEnvironment];
      v11 = [v5 serverCorrelationKey];
      v12 = [v6 msv_description];
      *buf = 138544130;
      v26 = v9;
      v27 = 2114;
      v28 = v10;
      v29 = 2114;
      v30 = v11;
      v31 = 2114;
      v32 = v12;
      _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_ERROR, "%{public}@: Got bag from server environment '%{public}@' with correlation key '%{public}@'. error=%{public}@", buf, 0x2Au);
    }

    [*(a1 + 32) _finishWithResponse:0 error:v6];
    goto LABEL_18;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    v14 = [v5 serverEnvironment];
    v15 = [v5 serverCorrelationKey];
    *buf = 138543874;
    v26 = v13;
    v27 = 2114;
    v28 = v14;
    v29 = 2114;
    v30 = v15;
    _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Got bag from server environment '%{public}@' with correlation key '%{public}@'.", buf, 0x20u);
  }

  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v16 = *(a1 + 32);
    v24 = 0;
    v17 = [v16 configurationForLoadingModelDataWithStoreURLBag:v5 error:&v24];
    v18 = v24;
    if (v18)
    {
      [*(a1 + 32) _finishWithResponse:0 error:v18];
LABEL_17:

      goto LABEL_18;
    }

    v19 = [v17 type];
    if (v19 == 2)
    {
      v23 = *(a1 + 32);
      v21 = [v17 URLRequests];
      [v23 _executeURLLoadWithRequests:v21 storeURLBag:v5 requestContext:*(a1 + 40)];
    }

    else if (v19 == 1)
    {
      v22 = *(a1 + 32);
      v21 = [v17 requestedItemIdentifiers];
      [v22 _executeItemMetadataLoadForRequestedItemIdentifiers:v21 reason:objc_msgSend(v17 requestContext:{"itemMetadataRequestReason"), *(a1 + 40)}];
    }

    else
    {
      if (v19)
      {
        goto LABEL_17;
      }

      v20 = *(a1 + 32);
      v21 = [v17 URLRequest];
      [v20 _executeURLLoadWithRequest:v21 storeURLBag:v5 requestContext:*(a1 + 40)];
    }

    goto LABEL_17;
  }

LABEL_18:
}

void __39__MPStoreModelRequestOperation_execute__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _handleTimeout];
    WeakRetained = v2;
  }
}

- (void)cancel
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__37123;
  v10 = __Block_byref_object_dispose__37124;
  v11 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__MPStoreModelRequestOperation_cancel__block_invoke;
  block[3] = &unk_1E76819F0;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(accessSerialQueue, block);
  [v7[5] cancel];
  v4.receiver = self;
  v4.super_class = MPStoreModelRequestOperation;
  [(MPAsyncOperation *)&v4 cancel];
  _Block_object_dispose(&v6, 8);
}

- (void)dealloc
{
  [(MPStoreModelRequestOperation *)self _tearDownTimeoutTimerSource];
  v3.receiver = self;
  v3.super_class = MPStoreModelRequestOperation;
  [(MPStoreModelRequestOperation *)&v3 dealloc];
}

- (MPStoreModelRequestOperation)initWithRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = [(MPStoreModelRequestOperation *)self init];
  if (v8)
  {
    v9 = [requestCopy copy];
    request = v8->_request;
    v8->_request = v9;

    v11 = [handlerCopy copy];
    responseHandler = v8->_responseHandler;
    v8->_responseHandler = v11;
  }

  return v8;
}

- (MPStoreModelRequestOperation)init
{
  v6.receiver = self;
  v6.super_class = MPStoreModelRequestOperation;
  v2 = [(MPAsyncOperation *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.MediaPlayer.MPStoreModelRequestOperation.accessSerialQueue", 0);
    accessSerialQueue = v2->_accessSerialQueue;
    v2->_accessSerialQueue = v3;
  }

  return v2;
}

@end