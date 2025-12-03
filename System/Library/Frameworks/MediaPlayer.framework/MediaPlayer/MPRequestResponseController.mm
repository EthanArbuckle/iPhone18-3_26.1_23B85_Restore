@interface MPRequestResponseController
- (MPRequestResponseController)init;
- (MPRequestResponseControllerDelegate)delegate;
- (id)_onQueue_stateDictionary;
- (id)request;
- (id)response;
- (void)_onQueue_reloadIfNeeded;
- (void)_onQueue_scheduleRetryAfterInterval:(double)interval;
- (void)_onQueue_updateRequestID;
- (void)_responseDidInvalidate:(id)invalidate;
- (void)beginAutomaticResponseLoading;
- (void)dealloc;
- (void)endAutomaticResponseLoading;
- (void)reloadIfNeeded;
- (void)setNeedsReload;
- (void)setNeedsReloadForSignificantRequestChange;
- (void)setRequest:(id)request;
- (void)setResponse:(id)response;
@end

@implementation MPRequestResponseController

- (id)request
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__28637;
  v10 = __Block_byref_object_dispose__28638;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__MPRequestResponseController_request__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)beginAutomaticResponseLoading
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__MPRequestResponseController_beginAutomaticResponseLoading__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __60__MPRequestResponseController_beginAutomaticResponseLoading__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  ++*(*(a1 + 32) + 8);
  v2 = *(a1 + 32);
  if ((*(v2 + 24) & 1) == 0)
  {
    v3 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(a1 + 32) + 80);
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "RRC %{public}@: Starting automatic reloading", &v7, 0xCu);
    }

    v2 = *(a1 + 32);
  }

  *(v2 + 24) = 1;
  if (*(*(a1 + 32) + 25) == 1)
  {
    v5 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(*(a1 + 32) + 80);
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_INFO, "RRC %{public}@: Reloading [automatic, beginLoading]", &v7, 0xCu);
    }

    [*(a1 + 32) _onQueue_reloadIfNeeded];
  }
}

- (void)_onQueue_reloadIfNeeded
{
  v27 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  retryTimer = self->_retryTimer;
  if (retryTimer)
  {
    dispatch_source_cancel(retryTimer);
    v5 = self->_retryTimer;
    self->_retryTimer = 0;
  }

  request = self->_request;
  if (request)
  {
    if (self->_cancelToken)
    {
      v7 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = self->_request;
        *buf = 138543362;
        v26 = v8;
        v9 = "RRC %{public}@: Request loading skipped [already loading]";
LABEL_15:
        _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_INFO, v9, buf, 0xCu);
      }
    }

    else if (self->_needsReload)
    {
      self->_needsReload = 0;
      v11 = request;
      v12 = self->_requestID;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v14 = objc_opt_respondsToSelector();

      if (v14)
      {
        dispatch_assert_queue_not_V2(self->_calloutQueue);
        calloutQueue = self->_calloutQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __54__MPRequestResponseController__onQueue_reloadIfNeeded__block_invoke;
        block[3] = &unk_1E7682518;
        block[4] = self;
        dispatch_sync(calloutQueue, block);
      }

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __54__MPRequestResponseController__onQueue_reloadIfNeeded__block_invoke_2;
      v20[3] = &unk_1E767A7C0;
      v20[4] = self;
      v21 = v11;
      v22 = v12;
      v23 = a2;
      v16 = v12;
      v7 = v11;
      v17 = [v7 performWithCompletion:v20];
      cancelToken = self->_cancelToken;
      self->_cancelToken = v17;
    }

    else
    {
      v7 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v19 = self->_request;
        *buf = 138543362;
        v26 = v19;
        v9 = "RRC %{public}@: Request loading skipped [not needed]";
        goto LABEL_15;
      }
    }
  }

  else
  {
    v7 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = self->_request;
      *buf = 138543362;
      v26 = v10;
      v9 = "RRC %{public}@: Request loading skipped [no request]";
      goto LABEL_15;
    }
  }
}

uint64_t __35__MPRequestResponseController_init__block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  objc_copyWeak(&v3, &location);
  v1 = MSVLogAddStateHandler();
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
  return v1;
}

- (MPRequestResponseController)init
{
  v13.receiver = self;
  v13.super_class = MPRequestResponseController;
  v2 = [(MPRequestResponseController *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.MediaPlayer/MPRequestResponseController", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_USER_INITIATED, 0);
    v8 = dispatch_queue_create("com.apple.MediaPlayer/MPRequestResponseController.calloutQueue", v7);
    calloutQueue = v2->_calloutQueue;
    v2->_calloutQueue = v8;

    v2->_retryInterval = 0.25;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __35__MPRequestResponseController_init__block_invoke;
    v11[3] = &unk_1E7681F08;
    v12 = v2;
    v12->_stateHandle = __35__MPRequestResponseController_init__block_invoke(v11);
  }

  return v2;
}

- (void)_onQueue_updateRequestID
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = MSVNanoIDCreateTaggedPointer();
  requestID = self->_requestID;
  self->_requestID = v3;
}

void __54__MPRequestResponseController__onQueue_reloadIfNeeded__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!(v5 | v6))
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"MPRequestResponseController.m" lineNumber:350 description:@"Must get a response or an error"];
  }

  v7 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = *(a1 + 40);
    *buf = 138543618;
    v26 = v8;
    v27 = 2048;
    v28 = v9;
    v10 = v8;
    _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_INFO, "RRC <%{public}@ %p>: Request finished loading", buf, 0x16u);
  }

  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = *(v12 + 112);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __54__MPRequestResponseController__onQueue_reloadIfNeeded__block_invoke_85;
  v19[3] = &unk_1E767A798;
  v19[4] = v12;
  v20 = v6;
  v21 = v11;
  v22 = v5;
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v23 = v14;
  v24 = v15;
  v16 = v5;
  v17 = v6;
  dispatch_async(v13, v19);
}

void __54__MPRequestResponseController__onQueue_reloadIfNeeded__block_invoke_85(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegate];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__MPRequestResponseController__onQueue_reloadIfNeeded__block_invoke_2_86;
  aBlock[3] = &unk_1E76823C0;
  aBlock[4] = *(a1 + 32);
  v3 = v2;
  v38 = v3;
  v4 = _Block_copy(aBlock);
  if (*(a1 + 40))
  {
    v5 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      v8 = *(a1 + 40);
      v7 = *(a1 + 48);
      *buf = 138543874;
      v40 = v6;
      v41 = 2048;
      v42 = v7;
      v43 = 2114;
      v44 = v8;
      v9 = v6;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_ERROR, "RRC <%{public}@ %p>: Request failed with error: %{public}@", buf, 0x20u);
    }

    v10 = *(*(a1 + 32) + 24);
    v11 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = objc_opt_class();
      v13 = *(a1 + 48);
      *buf = 138543874;
      v40 = v12;
      v41 = 2048;
      v42 = v13;
      v43 = 1024;
      LODWORD(v44) = v10;
      v14 = v12;
      _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_DEBUG, "RRC <%{public}@ %p>: Recovering from error. shouldRetry: %d", buf, 0x1Cu);
    }

    if (objc_opt_respondsToSelector())
    {
      v10 = [v3 controller:*(a1 + 32) shouldRetryFailedRequestWithError:*(a1 + 40)];
      v15 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = objc_opt_class();
        v17 = *(a1 + 48);
        *buf = 138544130;
        v40 = v16;
        v41 = 2048;
        v42 = v17;
        v43 = 2048;
        v44 = v3;
        v45 = 1024;
        v46 = v10;
        v18 = v16;
        _os_log_impl(&dword_1A238D000, v15, OS_LOG_TYPE_DEBUG, "RRC <%{public}@ %p>: Delegate %p returned shouldRetry: %d", buf, 0x26u);
      }
    }

    v20 = *(a1 + 32);
    v19 = *(a1 + 40);
    v21 = *(v20 + 104);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__MPRequestResponseController__onQueue_reloadIfNeeded__block_invoke_91;
    block[3] = &unk_1E767A6F8;
    block[4] = v20;
    v22 = &v35;
    v35 = v19;
    v36 = v10;
    dispatch_async(v21, block);
    v4[2](v4);
  }

  else
  {
    v23 = *(a1 + 32);
    v24 = *(v23 + 104);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __54__MPRequestResponseController__onQueue_reloadIfNeeded__block_invoke_92;
    v27[3] = &unk_1E767A770;
    v27[4] = v23;
    v22 = &v28;
    v28 = *(a1 + 56);
    v29 = *(a1 + 64);
    v30 = v3;
    v25 = *(a1 + 48);
    v26 = *(a1 + 72);
    v31 = v25;
    v33 = v26;
    v32 = v4;
    dispatch_async(v24, v27);
  }
}

- (MPRequestResponseControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __54__MPRequestResponseController__onQueue_reloadIfNeeded__block_invoke_92(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 40) = 0x3FD0000000000000;
  objc_storeStrong((*(a1 + 32) + 64), *(a1 + 40));
  v2 = *(a1 + 32);
  if (*(v2 + 16) == *(a1 + 48))
  {
    v5 = *(v2 + 112);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__MPRequestResponseController__onQueue_reloadIfNeeded__block_invoke_2_93;
    block[3] = &unk_1E767A748;
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    v6 = *(a1 + 40);
    v7 = *(a1 + 32);
    v13 = v6;
    v14 = v7;
    v9 = *(a1 + 72);
    v8 = v9;
    v15 = v9;
    dispatch_async(v5, block);
  }

  else
  {
    v3 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(*(a1 + 32) + 80);
      *buf = 138543362;
      v17 = v4;
      _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_INFO, "RRC %{public}@: Reloading [retry mismatched request revision]", buf, 0xCu);
    }

    dispatch_async(*(*(a1 + 32) + 112), *(a1 + 72));
    [*(a1 + 32) _onQueue_reloadIfNeeded];
  }
}

- (void)setNeedsReload
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__MPRequestResponseController_setNeedsReload__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(queue, block);
}

void __45__MPRequestResponseController_setNeedsReload__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _onQueue_updateRequestID];
  v2 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 80);
    v11 = 138543362;
    v12 = v3;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "RRC %{public}@: Needs reload [request by client]", &v11, 0xCu);
  }

  v4 = *(a1 + 32);
  if (*(v4 + 32))
  {
    v5 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(*(a1 + 32) + 80);
      v11 = 138543362;
      v12 = v6;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_INFO, "RRC %{public}@: Canceling request [request by client]", &v11, 0xCu);
    }

    [*(*(a1 + 32) + 32) cancel];
    v7 = *(a1 + 32);
    v8 = *(v7 + 32);
    *(v7 + 32) = 0;

    v4 = *(a1 + 32);
  }

  if ((*(v4 + 25) & 1) == 0)
  {
    *(v4 + 25) = 1;
    if (*(*(a1 + 32) + 24) == 1)
    {
      v9 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(*(a1 + 32) + 80);
        v11 = 138543362;
        v12 = v10;
        _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_DEFAULT, "RRC %{public}@: Reloading [automatic, requested by client]", &v11, 0xCu);
      }

      [*(a1 + 32) _onQueue_reloadIfNeeded];
    }
  }
}

- (void)setNeedsReloadForSignificantRequestChange
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__MPRequestResponseController_setNeedsReloadForSignificantRequestChange__block_invoke;
  block[3] = &unk_1E76819F0;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(queue, block);
  if (*(v9 + 24) == 1)
  {
    calloutQueue = self->_calloutQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __72__MPRequestResponseController_setNeedsReloadForSignificantRequestChange__block_invoke_2;
    v6[3] = &unk_1E7682398;
    v6[4] = self;
    v6[5] = a2;
    dispatch_async(calloutQueue, v6);
  }

  [(MPRequestResponseController *)self setNeedsReload];
  _Block_object_dispose(&v8, 8);
}

- (id)response
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__28637;
  v10 = __Block_byref_object_dispose__28638;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__MPRequestResponseController_response__block_invoke;
  v5[3] = &unk_1E76819F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __54__MPRequestResponseController__onQueue_reloadIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  [WeakRetained willBeginLoadingRequestForController:*(a1 + 32)];
}

uint64_t __54__MPRequestResponseController__onQueue_reloadIfNeeded__block_invoke_2_86(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 112));
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);

    return [v3 didFinishLoadingRequestForController:v4];
  }

  return result;
}

void __54__MPRequestResponseController__onQueue_reloadIfNeeded__block_invoke_91(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = objc_opt_class();
    v4 = *(*(a1 + 32) + 80);
    v14 = 138543618;
    v15 = v3;
    v16 = 2048;
    v17 = v4;
    v5 = v3;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_INFO, "RRC <%{public}@ %p>: Needs reload [failed request]", &v14, 0x16u);
  }

  *(*(a1 + 32) + 25) = 1;
  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = 0;

  objc_storeStrong((*(a1 + 32) + 56), *(a1 + 40));
  if (*(a1 + 48) == 1)
  {
    v8 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = *(a1 + 32);
      v11 = *(v10 + 80);
      v12 = *(v10 + 40);
      v14 = 138543874;
      v15 = v9;
      v16 = 2048;
      v17 = v11;
      v18 = 2048;
      v19 = v12;
      v13 = v9;
      _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_INFO, "RRC <%{public}@ %p>: Scheduling retry after %fs", &v14, 0x20u);
    }

    [*(a1 + 32) _onQueue_scheduleRetryAfterInterval:*(*(a1 + 32) + 40)];
  }
}

void __54__MPRequestResponseController__onQueue_reloadIfNeeded__block_invoke_2_93(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_respondsToSelector();
  v3 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v4)
    {
      v5 = objc_opt_class();
      v7 = *(a1 + 40);
      v6 = *(a1 + 48);
      v8 = *(a1 + 32);
      *buf = 138544130;
      v33 = v5;
      v34 = 2048;
      v35 = v7;
      v36 = 2048;
      v37 = v6;
      v38 = 2048;
      v39 = v8;
      v9 = v5;
      _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEBUG, "RRC <%{public}@ %p>: Deferring replacement of %p to delegate %p", buf, 0x2Au);
    }

    v10 = objc_alloc(MEMORY[0x1E69B13F0]);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __54__MPRequestResponseController__onQueue_reloadIfNeeded__block_invoke_94;
    v28[3] = &unk_1E767A680;
    v11 = *(a1 + 56);
    v31 = *(a1 + 72);
    v28[4] = v11;
    v29 = *(a1 + 40);
    v30 = *(a1 + 32);
    v12 = [v10 initWithTimeout:v28 interruptionHandler:9.0];
    v13 = *(a1 + 56);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __54__MPRequestResponseController__onQueue_reloadIfNeeded__block_invoke_95;
    v23[3] = &unk_1E767A720;
    v24 = v12;
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v16 = *(a1 + 32);
    *&v17 = *(a1 + 48);
    *(&v17 + 1) = *(a1 + 56);
    *&v18 = v15;
    *(&v18 + 1) = v16;
    v25 = v18;
    v26 = v17;
    v27 = *(a1 + 64);
    v19 = v12;
    [v14 controller:v13 defersResponseReplacement:v23];
  }

  else
  {
    if (v4)
    {
      v20 = objc_opt_class();
      v21 = *(a1 + 40);
      *buf = 138543618;
      v33 = v20;
      v34 = 2048;
      v35 = v21;
      v22 = v20;
      _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEBUG, "RRC <%{public}@ %p>: Replacing response", buf, 0x16u);
    }

    [*(a1 + 56) setResponse:*(a1 + 48)];
    (*(*(a1 + 64) + 16))();
  }
}

void __54__MPRequestResponseController__onQueue_reloadIfNeeded__block_invoke_94(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2 == 1)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a1[7] object:a1[4] file:@"MPRequestResponseController.m" lineNumber:394 description:@"MPRequestResponseController delegate did not call block passed to defersResponseReplacement."];
  }

  v3 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = objc_opt_class();
    v5 = a1[5];
    v6 = a1[6];
    v9 = 138543874;
    v10 = v4;
    v11 = 2048;
    v12 = v5;
    v13 = 2048;
    v14 = v6;
    v7 = v4;
    _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_ERROR, "RRC <%{public}@ %p>: Delegate %p timeout replacing response.", &v9, 0x20u);
  }
}

void __54__MPRequestResponseController__onQueue_reloadIfNeeded__block_invoke_95(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) disarm];
  v2 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = objc_opt_class();
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v8 = 138544130;
    v9 = v3;
    v10 = 2048;
    v11 = v4;
    v12 = 2048;
    v13 = v5;
    v14 = 2048;
    v15 = v6;
    v7 = v3;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEBUG, "RRC <%{public}@ %p>: Delegate %p replacing response with %p", &v8, 0x2Au);
  }

  [*(a1 + 64) setResponse:*(a1 + 56)];
  dispatch_async(*(*(a1 + 64) + 112), *(a1 + 72));
}

- (void)_onQueue_scheduleRetryAfterInterval:(double)interval
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_retryTimer)
  {
    objc_initWeak(&location, self);
    v5 = self->_queue;
    v6 = dispatch_get_global_queue(21, 0);
    v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v6);
    retryTimer = self->_retryTimer;
    self->_retryTimer = v7;

    v9 = self->_retryTimer;
    v10 = dispatch_time(0, (interval * 1000000000.0));
    dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
    v11 = self->_retryTimer;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __67__MPRequestResponseController__onQueue_scheduleRetryAfterInterval___block_invoke;
    v13[3] = &unk_1E767A6D0;
    v14 = v5;
    v12 = v5;
    objc_copyWeak(v15, &location);
    v15[1] = *&interval;
    dispatch_source_set_event_handler(v11, v13);
    dispatch_resume(self->_retryTimer);
    objc_destroyWeak(v15);

    objc_destroyWeak(&location);
  }
}

void __67__MPRequestResponseController__onQueue_scheduleRetryAfterInterval___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __67__MPRequestResponseController__onQueue_scheduleRetryAfterInterval___block_invoke_2;
  v3[3] = &unk_1E767A6A8;
  objc_copyWeak(v4, (a1 + 40));
  v4[1] = *(a1 + 48);
  dispatch_async(v2, v3);
  objc_destroyWeak(v4);
}

void __67__MPRequestResponseController__onQueue_scheduleRetryAfterInterval___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(WeakRetained + 25) == 1)
    {
      *(WeakRetained + 5) = fmin(*(a1 + 40) * 1.20000005, 15.0);
      v4 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = v3[10];
        v10 = 138543362;
        v11 = v5;
        _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_INFO, "RRC %{public}@: Reloading [retry, failed request]", &v10, 0xCu);
      }

      [v3 _onQueue_reloadIfNeeded];
    }

    else
    {
      v6 = *(WeakRetained + 6);
      if (v6)
      {
        dispatch_source_cancel(v6);
        v7 = v3[6];
        v3[6] = 0;
      }

      v8 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = v3[10];
        v10 = 138543362;
        v11 = v9;
        _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_DEBUG, "RRC %{public}@: Scheduled reload skipped.", &v10, 0xCu);
      }
    }
  }
}

- (id)_onQueue_stateDictionary
{
  v22[8] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v3 = self->_request;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = MEMORY[0x1E695DF90];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p>", objc_opt_class(), self, @"_obj"];
  v22[0] = v6;
  v21[1] = @"automaticLoad";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldAutomaticallyLoad];
  v22[1] = v7;
  v21[2] = @"observers";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_numberOfObservers];
  v22[2] = v8;
  v21[3] = @"needsReload";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_needsReload];
  v10 = v9;
  requestID = self->_requestID;
  weakRetained = @"<NULL>";
  if (!requestID)
  {
    requestID = @"<NULL>";
  }

  v22[3] = v9;
  v22[4] = requestID;
  v21[4] = @"requestID";
  v21[5] = @"request";
  if (v3)
  {
    v13 = v3;
  }

  else
  {
    v13 = @"<NULL>";
  }

  response = self->_response;
  if (!response)
  {
    response = @"<NULL>";
  }

  v22[5] = v13;
  v22[6] = response;
  v21[6] = @"response";
  v21[7] = @"delegate";
  if (WeakRetained)
  {
    weakRetained = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p>", objc_opt_class(), WeakRetained];
  }

  v22[7] = weakRetained;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:8];
  v16 = [v5 dictionaryWithDictionary:v15];

  if (WeakRetained)
  {
  }

  v17 = self->_pendingResponse;
  if (v17)
  {
    [v16 setObject:v17 forKeyedSubscript:@"pendingResponse"];
  }

  v18 = self->_lastError;
  if (v18)
  {
    [v16 setObject:v18 forKeyedSubscript:@"lastError"];
  }

  if (self->_retryInterval != 0.25)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [v16 setObject:v19 forKeyedSubscript:@"retryInterval"];
  }

  return v16;
}

- (void)_responseDidInvalidate:(id)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__MPRequestResponseController__responseDidInvalidate___block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(queue, block);
}

void __54__MPRequestResponseController__responseDidInvalidate___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 80);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_INFO, "RRC %{public}@: Needs reload [response invalid]", &v6, 0xCu);
  }

  *(*(a1 + 32) + 25) = 1;
  if (*(*(a1 + 32) + 24) == 1)
  {
    v4 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(*(a1 + 32) + 80);
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_INFO, "RRC %{public}@: Reloading [automatic, response invalid]", &v6, 0xCu);
    }

    [*(a1 + 32) _onQueue_reloadIfNeeded];
  }
}

- (void)reloadIfNeeded
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__MPRequestResponseController_reloadIfNeeded__block_invoke;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __45__MPRequestResponseController_reloadIfNeeded__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 80);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_INFO, "RRC %{public}@: Reloading [requested by client]", &v5, 0xCu);
  }

  return [*(a1 + 32) _onQueue_reloadIfNeeded];
}

void __72__MPRequestResponseController_setNeedsReloadForSignificantRequestChange__block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 80);
  v3 = [*(a1 + 32) delegate];
  v4 = objc_opt_respondsToSelector();
  v5 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v6)
    {
      *buf = 138543874;
      v26 = v2;
      v27 = 2048;
      v28 = 0;
      v29 = 2048;
      v30 = v3;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEBUG, "RRC %{public}@: Deferring clearing of %p to delegate %p", buf, 0x20u);
    }

    v7 = objc_alloc(MEMORY[0x1E69B13F0]);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __72__MPRequestResponseController_setNeedsReloadForSignificantRequestChange__block_invoke_34;
    v21[3] = &unk_1E767A680;
    v8 = *(a1 + 32);
    v24 = *(a1 + 40);
    v21[4] = v8;
    v9 = v2;
    v22 = v9;
    v10 = v3;
    v23 = v10;
    v11 = [v7 initWithTimeout:v21 interruptionHandler:9.0];
    v12 = *(a1 + 32);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __72__MPRequestResponseController_setNeedsReloadForSignificantRequestChange__block_invoke_39;
    v16[3] = &unk_1E767C7D0;
    v17 = v11;
    v18 = v9;
    v13 = v10;
    v14 = *(a1 + 32);
    v19 = v13;
    v20 = v14;
    v15 = v11;
    [v13 controller:v12 defersResponseReplacement:v16];
  }

  else
  {
    if (v6)
    {
      *buf = 138543362;
      v26 = v2;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEBUG, "RRC %{public}@: Clearing response", buf, 0xCu);
    }

    [*(a1 + 32) setResponse:0];
  }
}

void __72__MPRequestResponseController_setNeedsReloadForSignificantRequestChange__block_invoke_34(void *a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2 == 1)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a1[7] object:a1[4] file:@"MPRequestResponseController.m" lineNumber:212 description:@"MPRequestResponseController delegate did not call block passed to defersResponseReplacement."];
  }

  v3 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = a1[5];
    v5 = a1[6];
    v7 = 138543618;
    v8 = v4;
    v9 = 2048;
    v10 = v5;
    _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_ERROR, "RRC %{public}@: Delegate %p timeout replacing response.", &v7, 0x16u);
  }
}

uint64_t __72__MPRequestResponseController_setNeedsReloadForSignificantRequestChange__block_invoke_39(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) disarm];
  v2 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = 138543874;
    v7 = v3;
    v8 = 2048;
    v9 = v4;
    v10 = 2048;
    v11 = 0;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEBUG, "RRC %{public}@: Delegate %p clearing response with %p", &v6, 0x20u);
  }

  return [*(a1 + 56) setResponse:0];
}

- (void)endAutomaticResponseLoading
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__MPRequestResponseController_endAutomaticResponseLoading__block_invoke;
  v6[3] = &unk_1E76819F0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  if (*(v8 + 24) == 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPRequestResponseController.m" lineNumber:173 description:@"Mismatched begin/endAutomaticResponseLoading."];
  }

  _Block_object_dispose(&v7, 8);
}

void __58__MPRequestResponseController_endAutomaticResponseLoading__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 8) < 1;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && --*(*(a1 + 32) + 8) <= 0)
  {
    v2 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*(a1 + 32) + 80);
      v4 = 138543362;
      v5 = v3;
      _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "RRC %{public}@: Ending automatic reloading", &v4, 0xCu);
    }

    *(*(a1 + 32) + 24) = 0;
  }
}

- (void)setResponse:(id)response
{
  responseCopy = response;
  if (responseCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"MPRequestResponseController.m" lineNumber:103 description:@"Response must be subclass of MPResponse."];
    }
  }

  response = [(MPRequestResponseController *)self response];

  if (response != responseCopy)
  {
    [(MPRequestResponseController *)self willChangeValueForKey:@"response"];
    queue = self->_queue;
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __43__MPRequestResponseController_setResponse___block_invoke;
    v12 = &unk_1E76823C0;
    selfCopy = self;
    v14 = responseCopy;
    dispatch_async(queue, &v9);
    [(MPRequestResponseController *)self didChangeValueForKey:@"response", v9, v10, v11, v12, selfCopy];
  }
}

uint64_t __43__MPRequestResponseController_setResponse___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 88))
  {
    v2 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 32);
      v5 = *(v3 + 80);
      v4 = *(v3 + 88);
      v33 = 138543618;
      v34 = v5;
      v35 = 2048;
      v36 = v4;
      _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEBUG, "RRC %{public}@: Removing observer for %p", &v33, 0x16u);
    }

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 removeObserver:*(a1 + 32) name:MPResponseDidInvalidateNotification object:*(*(a1 + 32) + 88)];
  }

  v7 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 40);
    v9 = *(*(a1 + 32) + 80);
    v33 = 138543618;
    v34 = v9;
    v35 = 2048;
    v36 = v8;
    _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEBUG, "RRC %{public}@: Updating response to %p", &v33, 0x16u);
  }

  objc_storeStrong((*(a1 + 32) + 88), *(a1 + 40));
  v10 = *(a1 + 32);
  v11 = *(v10 + 56);
  *(v10 + 56) = 0;

  v12 = *(a1 + 32);
  v13 = *(v12 + 64);
  *(v12 + 64) = 0;

  v14 = *(a1 + 32);
  v15 = *(v14 + 32);
  *(v14 + 32) = 0;

  result = *(a1 + 40);
  if (result)
  {
    v17 = [result isValid];
    v18 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
    v19 = v18;
    if ((v17 & 1) == 0)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v31 = *(*(a1 + 32) + 80);
        v33 = 138543362;
        v34 = v31;
        _os_log_impl(&dword_1A238D000, v19, OS_LOG_TYPE_INFO, "RRC %{public}@: Needs reload [response invalid before -setResponse:]", &v33, 0xCu);
      }

      *(*(a1 + 32) + 25) = 1;
      v26 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        goto LABEL_21;
      }

      v32 = *(*(a1 + 32) + 80);
      v33 = 138543362;
      v34 = v32;
      v28 = "RRC %{public}@: Reloading [response invalid before -setResponse:]";
      v29 = v26;
      v30 = OS_LOG_TYPE_INFO;
      goto LABEL_20;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v20 = *(a1 + 32);
      v22 = *(v20 + 80);
      v21 = *(v20 + 88);
      v33 = 138543618;
      v34 = v22;
      v35 = 2048;
      v36 = v21;
      _os_log_impl(&dword_1A238D000, v19, OS_LOG_TYPE_DEBUG, "RRC %{public}@: Adding observer for %p", &v33, 0x16u);
    }

    v23 = [MEMORY[0x1E696AD88] defaultCenter];
    [v23 addObserver:*(a1 + 32) selector:sel__responseDidInvalidate_ name:MPResponseDidInvalidateNotification object:*(*(a1 + 32) + 88)];

    result = [*(a1 + 40) isValid];
    if ((result & 1) == 0)
    {
      v24 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(*(a1 + 32) + 80);
        v33 = 138543362;
        v34 = v25;
        _os_log_impl(&dword_1A238D000, v24, OS_LOG_TYPE_DEFAULT, "RRC %{public}@: Needs reload [response invalid before -setResponse: after adding observer]", &v33, 0xCu);
      }

      *(*(a1 + 32) + 25) = 1;
      v26 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      v27 = *(*(a1 + 32) + 80);
      v33 = 138543362;
      v34 = v27;
      v28 = "RRC %{public}@: Reloading [response invalid before -setResponse: after adding observer]";
      v29 = v26;
      v30 = OS_LOG_TYPE_DEFAULT;
LABEL_20:
      _os_log_impl(&dword_1A238D000, v29, v30, v28, &v33, 0xCu);
LABEL_21:

      return [*(a1 + 32) _onQueue_reloadIfNeeded];
    }
  }

  return result;
}

- (void)setRequest:(id)request
{
  requestCopy = request;
  if (requestCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"MPRequestResponseController.m" lineNumber:69 description:@"Request must be subclass of MPRequest."];
    }
  }

  request = [(MPRequestResponseController *)self request];

  if (request != requestCopy)
  {
    [(MPRequestResponseController *)self willChangeValueForKey:@"request"];
    queue = self->_queue;
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __42__MPRequestResponseController_setRequest___block_invoke;
    v12 = &unk_1E76823C0;
    selfCopy = self;
    v14 = requestCopy;
    dispatch_async(queue, &v9);
    [(MPRequestResponseController *)self didChangeValueForKey:@"request", v9, v10, v11, v12, selfCopy];
  }
}

void __42__MPRequestResponseController_setRequest___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 32))
  {
    v3 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(*(a1 + 32) + 80);
      v11 = 138543362;
      v12 = v4;
      _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_INFO, "RRC %{public}@: Canceling request [request changed]", &v11, 0xCu);
    }

    [*(*(a1 + 32) + 32) cancel];
    v5 = *(a1 + 32);
    v6 = *(v5 + 32);
    *(v5 + 32) = 0;

    v2 = *(a1 + 32);
  }

  objc_storeStrong((v2 + 80), *(a1 + 40));
  [*(a1 + 32) _onQueue_updateRequestID];
  v7 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "RRC %{public}@: Needs reload [request changed]", &v11, 0xCu);
  }

  *(*(a1 + 32) + 25) = 1;
  if (*(*(a1 + 32) + 24) == 1)
  {
    v9 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_DEFAULT, "RRC %{public}@: Reloading [automatic, request changed]", &v11, 0xCu);
    }

    [*(a1 + 32) _onQueue_reloadIfNeeded];
  }
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  MEMORY[0x1A58DF190](self->_stateHandle, a2);
  if (self->_shouldAutomaticallyLoad)
  {
    v3 = os_log_create("com.apple.amp.mediaplayer", "Middleware");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      request = self->_request;
      *buf = 138543362;
      v7 = request;
      _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "RRC %{public}@: Ending automatic reloading [dealloc]", buf, 0xCu);
    }
  }

  v5.receiver = self;
  v5.super_class = MPRequestResponseController;
  [(MPRequestResponseController *)&v5 dealloc];
}

uint64_t __35__MPRequestResponseController_init__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = WeakRetained;
    if (WeakRetained)
    {
      v8 = [WeakRetained _onQueue_stateDictionary];
      v9 = v5[2](v5, v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end