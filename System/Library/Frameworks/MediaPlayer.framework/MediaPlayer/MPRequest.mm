@interface MPRequest
+ (Class)responseClass;
- (MPRequest)init;
- (NSString)description;
- (id)_stateDumpObject;
- (id)copyWithZone:(_NSZone *)zone;
- (id)performWithCompletion:(id)completion;
- (void)_performWithCompletion:(id)completion;
- (void)cancel;
@end

@implementation MPRequest

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  label = [(MPRequest *)self label];
  v6 = [v3 stringWithFormat:@"<%@: %p label=%@>", v4, self, label];

  return v6;
}

- (MPRequest)init
{
  v3.receiver = self;
  v3.super_class = MPRequest;
  result = [(MPRequest *)&v3 init];
  if (result)
  {
    result->_qualityOfService = -1;
  }

  return result;
}

- (void)cancel
{
  cleanupQueue = self->_cleanupQueue;
  if (cleanupQueue)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __19__MPRequest_cancel__block_invoke;
    block[3] = &unk_1E7682518;
    block[4] = self;
    dispatch_sync(cleanupQueue, block);
  }
}

- (void)_performWithCompletion:(id)completion
{
  v61 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  queue = self->_queue;
  self->_queue = v5;

  v7 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  calloutQueue = self->_calloutQueue;
  self->_calloutQueue = v7;

  if (self->_qualityOfService)
  {
    [(NSOperationQueue *)self->_queue setQualityOfService:?];
    [(NSOperationQueue *)self->_calloutQueue setQualityOfService:self->_qualityOfService];
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.MediaPlaybackCore/%@", objc_opt_class()];
  [(NSOperationQueue *)self->_queue setName:v9];

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.MediaPlaybackCore/%@.callout", objc_opt_class()];
  [(NSOperationQueue *)self->_calloutQueue setName:v10];

  v11 = [MPMiddlewareOperationMap mapForRequest:self];
  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v13 = dispatch_queue_create("com.apple.MPRequest.invalidationQueue", v12);

  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x3032000000;
  v56[3] = __Block_byref_object_copy__28203;
  v56[4] = __Block_byref_object_dispose__28204;
  v57 = 0;
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x2020000000;
  v55 = 0;
  v14 = MEMORY[0x1E696AAE0];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __36__MPRequest__performWithCompletion___block_invoke;
  v48[3] = &unk_1E767CAD0;
  v31 = completionCopy;
  v51 = v31;
  v48[4] = self;
  v32 = v11;
  v49 = v32;
  v33 = v13;
  v50 = v33;
  v52 = v56;
  v53 = v54;
  v15 = [v14 blockOperationWithBlock:v48];
  [v15 setQualityOfService:{-[MPRequest qualityOfService](self, "qualityOfService")}];
  allOperations = [v32 allOperations];
  v17 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = [allOperations valueForKeyPath:@"class.description"];
    v19 = [v18 componentsJoinedByString:{@", "}];
    *buf = 138543362;
    v60 = v19;
    _os_log_impl(&dword_1A238D000, v17, OS_LOG_TYPE_DEBUG, "MIDDLEWARE: [%{public}@]", buf, 0xCu);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = allOperations;
  v20 = [obj countByEnumeratingWithState:&v44 objects:v58 count:16];
  if (v20)
  {
    v21 = *v45;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v45 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v44 + 1) + 8 * i);
        if ([v23 conformsToProtocol:&unk_1F1574B50])
        {
          v24 = v23;
          v25 = objc_opt_class();
          v26 = NSStringFromClass(v25);
          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 3221225472;
          v38[2] = __36__MPRequest__performWithCompletion___block_invoke_113;
          v38[3] = &unk_1E767A650;
          v42 = v54;
          v27 = v26;
          v39 = v27;
          selfCopy = self;
          v41 = v33;
          v43 = v56;
          [v24 setInvalidationHandler:v38];
        }

        [v23 setQualityOfService:{-[MPRequest qualityOfService](self, "qualityOfService")}];
        [v15 addDependency:v23];
      }

      v20 = [obj countByEnumeratingWithState:&v44 objects:v58 count:16];
    }

    while (v20);
  }

  cleanupQueue = self->_cleanupQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__MPRequest__performWithCompletion___block_invoke_2_116;
  block[3] = &unk_1E76800A0;
  block[4] = self;
  v36 = obj;
  v37 = v15;
  v29 = v15;
  v30 = obj;
  dispatch_sync(cleanupQueue, block);

  _Block_object_dispose(v54, 8);
  _Block_object_dispose(v56, 8);
}

void __36__MPRequest__performWithCompletion___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __36__MPRequest__performWithCompletion___block_invoke_2;
  aBlock[3] = &unk_1E767A628;
  v2 = *(a1 + 56);
  v29 = a1;
  aBlock[4] = *(a1 + 32);
  v43 = v2;
  v25 = _Block_copy(aBlock);
  if (*(*(a1 + 32) + 40))
  {
    v25[2](v25, 0);
  }

  else
  {
    v3 = objc_alloc([objc_opt_class() responseClass]);
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) allMiddleware];
    val = [v3 initWithRequest:v4 middleware:v5];

    objc_initWeak(&location, val);
    v6 = *(a1 + 48);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__MPRequest__performWithCompletion___block_invoke_4;
    block[3] = &unk_1E767D0A0;
    block[4] = *(a1 + 64);
    objc_copyWeak(&v40, &location);
    dispatch_sync(v6, block);
    if (*(*(*(a1 + 72) + 8) + 24) == 1)
    {
      v7 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 32);
        *buf = 138543362;
        v47 = v8;
        _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_INFO, "INVALIDATE: Response invalid before completion. Request: %{public}@", buf, 0xCu);
      }

      [val invalidate];
    }

    v9 = [MEMORY[0x1E695DF70] array];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v10 = [*(a1 + 40) allMiddleware];
    v11 = [v10 countByEnumeratingWithState:&v35 objects:v45 count:16];
    if (v11)
    {
      obj = v10;
      v27 = *v36;
      do
      {
        v28 = v11;
        for (i = 0; i != v28; ++i)
        {
          if (*v36 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v35 + 1) + 8 * i);
          v13 = [MEMORY[0x1E695DF70] array];
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v14 = [*(v29 + 40) operationsForMiddleware:v30];
          v15 = [v14 countByEnumeratingWithState:&v31 objects:v44 count:16];
          if (v15)
          {
            v16 = *v32;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v32 != v16)
                {
                  objc_enumerationMutation(v14);
                }

                v18 = *(*(&v31 + 1) + 8 * j);
                if ([v18 conformsToProtocol:&unk_1F1574B50])
                {
                  v19 = v18;
                  v20 = [v19 invalidationObservers];
                  [v13 addObjectsFromArray:v20];

                  v21 = [v19 error];
                  LOBYTE(v20) = v21 == 0;

                  if ((v20 & 1) == 0)
                  {
                    v22 = [v19 error];
                    [v9 addObject:v22];
                  }
                }
              }

              v15 = [v14 countByEnumeratingWithState:&v31 objects:v44 count:16];
            }

            while (v15);
          }

          if ([v13 count])
          {
            [v30 setInvalidationObservers:v13];
          }
        }

        v10 = obj;
        v11 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
      }

      while (v11);
    }

    if ([v9 count])
    {
      v23 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPRequestErrorDomain" code:1 underlyingErrors:v9 debugDescription:@"Errors found in middleware operations"];
      (v25[2])(v25, 0, v23);
    }

    else
    {
      (v25[2])(v25, val, 0);
    }

    objc_destroyWeak(&v40);
    objc_destroyWeak(&location);
  }
}

void __36__MPRequest__performWithCompletion___block_invoke_113(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1[7] + 8) + 24);
  v5 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = a1[4];
      v8 = a1[5];
      *buf = 138543874;
      v17 = v7;
      v18 = 2114;
      v19 = v3;
      v20 = 2114;
      v21 = v8;
      v9 = "INVALIDATE: Middleware: %{public}@ [%{public}@, but already invalid] request: %{public}@";
      v10 = v6;
      v11 = OS_LOG_TYPE_INFO;
LABEL_6:
      _os_log_impl(&dword_1A238D000, v10, v11, v9, buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = a1[4];
    v13 = a1[5];
    *buf = 138543874;
    v17 = v12;
    v18 = 2114;
    v19 = v3;
    v20 = 2114;
    v21 = v13;
    v9 = "INVALIDATE: Middleware: %{public}@ [%{public}@] request: %{public}@";
    v10 = v6;
    v11 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  v14 = a1[6];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__MPRequest__performWithCompletion___block_invoke_114;
  block[3] = &unk_1E7680410;
  block[4] = a1[8];
  dispatch_sync(v14, block);
  *(*(a1[7] + 8) + 24) = 1;
}

uint64_t __36__MPRequest__performWithCompletion___block_invoke_2_116(void *a1)
{
  [*(a1[4] + 56) addOperations:a1[5] waitUntilFinished:0];
  v2 = *(a1[4] + 32);
  v3 = a1[6];

  return [v2 addOperation:v3];
}

uint64_t __36__MPRequest__performWithCompletion___block_invoke_114(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __36__MPRequest__performWithCompletion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__MPRequest__performWithCompletion___block_invoke_3;
  block[3] = &unk_1E7682518;
  block[4] = v2;
  dispatch_sync(v3, block);
}

void __36__MPRequest__performWithCompletion___block_invoke_4(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __36__MPRequest__performWithCompletion___block_invoke_5;
  aBlock[3] = &unk_1E76825E8;
  objc_copyWeak(&v6, (a1 + 40));
  v2 = _Block_copy(aBlock);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  objc_destroyWeak(&v6);
}

void __36__MPRequest__performWithCompletion___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

void __36__MPRequest__performWithCompletion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  *(v2 + 56) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = 0;
}

- (id)_stateDumpObject
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"label";
  label = [(MPRequest *)self label];
  v3 = label;
  v4 = @"<NULL>";
  if (label)
  {
    v4 = label;
  }

  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

- (id)performWithCompletion:(id)completion
{
  v53 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v6 = [(MPRequest *)self copy];
  date = [MEMORY[0x1E695DF00] date];
  v8 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v50 = v6;
    v51 = 2114;
    selfCopy = self;
    _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_INFO, "START Request: %{public}@ aka [%{public}@]", buf, 0x16u);
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.MediaPlaybackCore/%@.cleanup", objc_opt_class()];
  uTF8String = [v9 UTF8String];
  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v12 = dispatch_queue_create(uTF8String, v11);
  v13 = v6[6];
  v6[6] = v12;

  [objc_opt_class() expectedMaximumResponseTimeInterval];
  v15 = v14;
  [(MPRequest *)self timeoutInterval];
  v16 = 0;
  if (v15 >= v17)
  {
    cleanupQueue = [v6 cleanupQueue];
    v19 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, cleanupQueue);

    v20 = dispatch_time(0, (v15 * 1000000000.0));
    dispatch_source_set_timer(v19, v20, 0x3B9ACA00uLL, 0x3B9ACA00uLL);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __35__MPRequest_performWithCompletion___block_invoke;
    handler[3] = &unk_1E76823C0;
    v16 = v19;
    v47 = v16;
    v48 = v6;
    dispatch_source_set_event_handler(v16, handler);
    dispatch_resume(v16);
  }

  [(MPRequest *)self timeoutInterval];
  if (v21 <= 0.0)
  {
    v26 = 0;
  }

  else
  {
    v22 = dispatch_get_global_queue(17, 0);
    v23 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v22);

    [(MPRequest *)self timeoutInterval];
    v25 = dispatch_time(0, (v24 * 1000000000.0));
    dispatch_source_set_timer(v23, v25, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __35__MPRequest_performWithCompletion___block_invoke_82;
    v42[3] = &unk_1E76800A0;
    v26 = v23;
    v43 = v26;
    selfCopy2 = self;
    v45 = v6;
    dispatch_source_set_event_handler(v26, v42);
    dispatch_resume(v26);
  }

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __35__MPRequest_performWithCompletion___block_invoke_84;
  v35[3] = &unk_1E767A600;
  v40 = completionCopy;
  v41 = a2;
  v35[4] = self;
  v27 = v6;
  v36 = v27;
  v37 = v16;
  v38 = v26;
  v39 = date;
  v28 = date;
  v29 = v26;
  v30 = v16;
  v31 = completionCopy;
  [v27 prepareForResponseWithCompletion:v35];
  v32 = v39;
  v33 = v27;

  return v27;
}

void __35__MPRequest_performWithCompletion___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  dispatch_source_cancel(*(a1 + 32));
  v28 = a1;
  v2 = [*(a1 + 40) queue];
  v3 = [v2 operations];

  v4 = os_log_create("com.apple.amp.mediaplayer", "Middleware_Oversize");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = [v3 valueForKeyPath:@"class.description"];
    v7 = [v6 componentsJoinedByString:{@", "}];
    *buf = 138543618;
    v36 = v5;
    v37 = 2114;
    v38 = v7;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "TIMEOUT Request: %{public}@ timing out. Remaining operations: [%{public}@]", buf, 0x16u);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = v3;
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v31;
    v13 = &selRef_home_didAddRoom_toZone_;
    v14 = "com.apple.amp.mediaplayer";
    v15 = "Middleware_Oversize";
    *&v10 = 138543618;
    v27 = v10;
    do
    {
      v16 = 0;
      v29 = v11;
      do
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v17 = *(*(&v30 + 1) + 8 * v16);
        if ([v17 conformsToProtocol:{v13[151], v27}])
        {
          v18 = v17;
          if (objc_opt_respondsToSelector())
          {
            v19 = os_log_create(v14, v15);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v20 = v12;
              v21 = v15;
              v22 = v13;
              v23 = v8;
              v24 = v14;
              v25 = *(v28 + 40);
              v26 = [v18 timeoutDescription];
              *buf = v27;
              v36 = v25;
              v14 = v24;
              v8 = v23;
              v13 = v22;
              v15 = v21;
              v12 = v20;
              v11 = v29;
              v37 = 2114;
              v38 = v26;
              _os_log_impl(&dword_1A238D000, v19, OS_LOG_TYPE_DEFAULT, "TIMEOUT Request: %{public}@ Operation: %{public}@", buf, 0x16u);
            }
          }
        }

        ++v16;
      }

      while (v11 != v16);
      v11 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v11);
  }
}

uint64_t __35__MPRequest_performWithCompletion___block_invoke_82(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  dispatch_source_cancel(*(a1 + 32));
  v2 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 40);
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_ERROR, "TIMEOUT Request: %{public}@ timing out.", &v8, 0xCu);
  }

  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPRequestErrorDomain" code:2 userInfo:0];
  v5 = *(a1 + 48);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return [*(a1 + 48) cancel];
}

void __35__MPRequest_performWithCompletion___block_invoke_84(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 72) + 16);

    v3();
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x1E69B13F0]);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __35__MPRequest_performWithCompletion___block_invoke_2;
    v22[3] = &unk_1E7681E88;
    v5 = *(a1 + 80);
    v16 = *(a1 + 32);
    v6 = *(&v16 + 1);
    *&v7 = *(a1 + 72);
    *(&v7 + 1) = v5;
    v23 = v16;
    v24 = v7;
    v8 = [v4 initWithDeallocHandler:v22];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __35__MPRequest_performWithCompletion___block_invoke_3;
    v17[3] = &unk_1E767A5D8;
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    *&v13 = v11;
    *(&v13 + 1) = v12;
    *&v14 = v9;
    *(&v14 + 1) = v10;
    v18 = v14;
    v19 = v13;
    v20 = v8;
    v21 = *(a1 + 72);
    v15 = v8;
    [v9 _performWithCompletion:v17];
  }
}

void __35__MPRequest_performWithCompletion___block_invoke_2(void *a1)
{
  if (MSVDeviceOSIsInternalInstall())
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    [v3 handleFailureInMethod:a1[7] object:a1[4] file:@"MPRequest.m" lineNumber:105 description:{@"-[MPRequest _performWithCompletion: failed to call completion %@", a1[5]}];
  }

  v2 = a1[6];
  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPRequestErrorDomain" code:2 userInfo:0];
  (*(v2 + 16))(v2, 0, v4);
}

void __35__MPRequest_performWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (v8)
  {
    dispatch_source_cancel(v8);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    dispatch_source_cancel(v9);
  }

  [*(a1 + 56) timeIntervalSinceNow];
  if (v10 >= 0.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = -v10;
  }

  v12 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
  v13 = v12;
  if (v6)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = [v6 msv_description];
      v17 = 138544130;
      v18 = v14;
      v19 = 2114;
      v20 = v5;
      v21 = 2048;
      v22 = v11;
      v23 = 2114;
      v24 = v15;
      _os_log_impl(&dword_1A238D000, v13, OS_LOG_TYPE_ERROR, "FINISH Request: %{public}@ Response: %{public}@ [%fs] error=%{public}@", &v17, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v16 = *(a1 + 32);
    v17 = 138543874;
    v18 = v16;
    v19 = 2114;
    v20 = v5;
    v21 = 2048;
    v22 = v11;
    _os_log_impl(&dword_1A238D000, v13, OS_LOG_TYPE_INFO, "FINISH Request: %{public}@ Response: %{public}@ [%fs]", &v17, 0x20u);
  }

  [*(a1 + 64) disarm];
  (*(*(a1 + 72) + 16))();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  label = [(MPRequest *)self label];
  v6 = [label copy];
  [v4 setLabel:v6];

  middlewareClasses = [(MPRequest *)self middlewareClasses];
  v8 = [middlewareClasses copy];
  [v4 setMiddlewareClasses:v8];

  [v4 setQualityOfService:{-[MPRequest qualityOfService](self, "qualityOfService")}];
  [(MPRequest *)self timeoutInterval];
  [v4 setTimeoutInterval:?];
  return v4;
}

+ (Class)responseClass
{
  v4 = [objc_opt_class() instanceMethodForSelector:a2];
  if (v4 == [objc_opt_class() instanceMethodForSelector:a2])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPRequest.m" lineNumber:26 description:{@"Subclass %@ must implement -%@ defined in %@.", v8, v9, @"[MPRequest class]"}];
  }

  return objc_opt_class();
}

@end