@interface ASDExtensionRequest
- ($4DFF52677BE2162B325CDC3F816A46BC)beginRequestForHostContext:(Class)context XPCInterface:(id)interface;
- (ASDExtensionRequest)initWithExtension:(id)extension queue:(id)queue serviceTime:(double)time graceTime:(double)graceTime;
- (void)_cleanupPostExecution;
- (void)_endRequestWithCancelCall:(uint64_t)call;
- (void)_onRunQueue_beginRequestForHostContext:(void *)context XPCInterface:(uint64_t)interface retryCount:;
- (void)beginRequestForHostContext:(Class)context XPCInterface:(id)interface executionBlock:(id)block;
- (void)dealloc;
- (void)endRequest;
- (void)requestEnded;
@end

@implementation ASDExtensionRequest

- (ASDExtensionRequest)initWithExtension:(id)extension queue:(id)queue serviceTime:(double)time graceTime:(double)graceTime
{
  extensionCopy = extension;
  queueCopy = queue;
  v21.receiver = self;
  v21.super_class = ASDExtensionRequest;
  v13 = [(ASDExtensionRequest *)&v21 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_extension, extension);
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_attr_make_with_qos_class(v15, QOS_CLASS_UTILITY, 0);
    v17 = [MEMORY[0x1E696ABD0] globalStateQueueForExtension:extensionCopy];
    v18 = dispatch_queue_create_with_target_V2("com.apple.appstored.ASDExtensionRequest.dispatch", v16, v17);
    runQueue = v14->_runQueue;
    v14->_runQueue = v18;

    objc_storeStrong(&v14->_callbackQueue, queue);
    v14->_serviceTime = time;
    v14->_graceTime = graceTime;
  }

  return v14;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = ASDExtensionRequest;
  [(ASDExtensionRequest *)&v2 dealloc];
}

- (void)beginRequestForHostContext:(Class)context XPCInterface:(id)interface executionBlock:(id)block
{
  interfaceCopy = interface;
  blockCopy = block;
  v10 = ASDLogHandleForCategory(12);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1B8220000, v10, OS_LOG_TYPE_DEBUG, "ASDExtensionRequest begin request", buf, 2u);
  }

  runQueue = self->_runQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__ASDExtensionRequest_beginRequestForHostContext_XPCInterface_executionBlock___block_invoke;
  v14[3] = &unk_1E7CDBE70;
  v14[4] = self;
  v15 = interfaceCopy;
  v16 = blockCopy;
  contextCopy = context;
  v12 = blockCopy;
  v13 = interfaceCopy;
  dispatch_async(runQueue, v14);
}

void __78__ASDExtensionRequest_beginRequestForHostContext_XPCInterface_executionBlock___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  if (!v2)
  {
    [(ASDExtensionRequest *)*(a1 + 32) _onRunQueue_beginRequestForHostContext:*(a1 + 40) XPCInterface:0 retryCount:?];
    v2 = *(*(a1 + 32) + 64);
  }

  v3 = *(*(a1 + 32) + 56);
  v4 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__ASDExtensionRequest_beginRequestForHostContext_XPCInterface_executionBlock___block_invoke_2;
  block[3] = &unk_1E7CDBAE0;
  v5 = *(a1 + 48);
  v10 = v3;
  v11 = v5;
  v9 = v2;
  v6 = v3;
  v7 = v2;
  dispatch_async(v4, block);
}

- (void)_onRunQueue_beginRequestForHostContext:(void *)context XPCInterface:(uint64_t)interface retryCount:
{
  v58 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (!self)
  {
    goto LABEL_59;
  }

  v7 = *(self + 64);
  *(self + 64) = 0;

  v9 = (self + 56);
  v8 = *(self + 56);
  *(self + 56) = 0;

  v10 = *(self + 88);
  v52 = 0;
  v11 = [v10 beginExtensionRequestWithOptions:0 inputItems:0 error:&v52];
  v12 = v52;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (v11)
    {
      domain = ASDLogHandleForCategory(12);
      if (os_log_type_enabled(domain, OS_LOG_TYPE_FAULT))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v11;
        _os_log_fault_impl(&dword_1B8220000, domain, OS_LOG_TYPE_FAULT, "Wrong request identifier type: %{public}@", &buf, 0xCu);
      }

      goto LABEL_32;
    }

    domain = [v12 domain];
    code = [v12 code];
    if ([domain isEqualToString:*MEMORY[0x1E696A250]])
    {
      v15 = (code - 4096) < 0x81;
      v16 = code != 4102;
      LOBYTE(v17) = v16 && v15;
      if (v16 && v15)
      {
        v18 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v18 = OS_LOG_TYPE_FAULT;
      }
    }

    else
    {
      domain2 = [v12 domain];
      if ([domain2 isEqualToString:*MEMORY[0x1E69C4AD8]])
      {
        LODWORD(v17) = [v12 code] == 4;

        if (v17)
        {
          userInfo = [v12 userInfo];
          v17 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

          domain3 = [v17 domain];
          v22 = [domain3 isEqualToString:*MEMORY[0x1E696A798]];

          if (v22)
          {
            code2 = [v17 code];
            if (code2 == 80 || code2 == 85)
            {
              v18 = OS_LOG_TYPE_ERROR;
            }

            else
            {
              v18 = OS_LOG_TYPE_FAULT;
            }
          }

          else
          {
            v18 = OS_LOG_TYPE_FAULT;
          }

          LOBYTE(v17) = 0;
          goto LABEL_26;
        }
      }

      else
      {

        LOBYTE(v17) = 0;
      }

      v18 = OS_LOG_TYPE_FAULT;
    }

LABEL_26:
    v25 = ASDLogHandleForCategory(12);
    if (os_log_type_enabled(v25, v18))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v12;
      _os_log_impl(&dword_1B8220000, v25, v18, "Failed to begin extension request: %{public}@", &buf, 0xCu);
    }

    if (interface <= 0 && (v17 & 1) != 0)
    {
      v26 = ASDLogHandleForCategory(12);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = 2;
        _os_log_impl(&dword_1B8220000, v26, OS_LOG_TYPE_INFO, "Attempt #%ld", &buf, 0xCu);
      }

      [(ASDExtensionRequest *)self _onRunQueue_beginRequestForHostContext:a2 XPCInterface:contextCopy retryCount:1];
    }

    goto LABEL_32;
  }

  objc_storeStrong((self + 56), v11);
  if (interface < 1)
  {
    goto LABEL_33;
  }

  domain = ASDLogHandleForCategory(12);
  if (os_log_type_enabled(domain, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = 2;
    _os_log_impl(&dword_1B8220000, domain, OS_LOG_TYPE_DEFAULT, "Succeeded on attempt %ld", &buf, 0xCu);
  }

LABEL_32:

LABEL_33:
  if (*v9)
  {
    v27 = [*(self + 88) _extensionContextForUUID:?];
    if (objc_opt_isKindOfClass())
    {
      if (v27)
      {
        objc_initWeak(location, self);
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __86__ASDExtensionRequest__onRunQueue_beginRequestForHostContext_XPCInterface_retryCount___block_invoke;
        v50[3] = &unk_1E7CDBEC0;
        objc_copyWeak(&v51, location);
        v28 = MEMORY[0x1B8CBC4F0](v50);
        _auxiliaryConnection = [v27 _auxiliaryConnection];
        v30 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:v28];
        if ([v30 conformsToProtocol:contextCopy])
        {
          v31 = v30;
          v32 = *(self + 64);
          *(self + 64) = v31;
        }

        else
        {
          v32 = ASDLogHandleForCategory(12);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v30;
            _os_log_error_impl(&dword_1B8220000, v32, OS_LOG_TYPE_ERROR, "Wrong remote context proxy %{public}@", &buf, 0xCu);
          }
        }

        objc_destroyWeak(&v51);
        objc_destroyWeak(location);
      }

      goto LABEL_45;
    }

    v33 = ASDLogHandleForCategory(12);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v27;
      _os_log_error_impl(&dword_1B8220000, v33, OS_LOG_TYPE_ERROR, "Wrong host context %{public}@", &buf, 0xCu);
    }
  }

  v27 = 0;
LABEL_45:
  if (*(self + 64))
  {
    if (*(self + 24) > 0.0)
    {
      v34 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(self + 8));
      v35 = *(self + 32);
      *(self + 32) = v34;

      v36 = *(self + 32);
      v37 = dispatch_time(0, (*(self + 24) * 1000000000.0));
      dispatch_source_set_timer(v36, v37, 0xFFFFFFFFFFFFFFFFLL, 0);
      v38 = *(self + 32);
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v55 = __35__ASDExtensionRequest__startTimers__block_invoke;
      v56 = &unk_1E7CDB930;
      selfCopy = self;
      dispatch_source_set_event_handler(v38, &buf);
      if (*(self + 40) > 0.0)
      {
        v39 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(self + 8));
        v40 = *(self + 48);
        *(self + 48) = v39;

        v41 = *(self + 48);
        v42 = *(self + 24) - *(self + 40);
        v43 = dispatch_time(0, 1000000000 * (v42 & ~(v42 >> 63)));
        dispatch_source_set_timer(v41, v43, 0xFFFFFFFFFFFFFFFFLL, 0);
        v44 = *(self + 48);
        location[0] = MEMORY[0x1E69E9820];
        location[1] = 3221225472;
        location[2] = __35__ASDExtensionRequest__startTimers__block_invoke_2;
        location[3] = &unk_1E7CDB930;
        location[4] = self;
        dispatch_source_set_event_handler(v44, location);
        dispatch_resume(*(self + 48));
      }

      dispatch_resume(*(self + 32));
    }
  }

  else
  {
    if (!v12)
    {
      v12 = ASDErrorWithUnderlyingErrorAndDescription(0, @"ASDErrorDomain", 507, @"Couldn't create extension request");
    }

    if (*v9)
    {
      [*(self + 88) cancelExtensionRequestWithIdentifier:?];
    }

    if ((*(self + 72) & 1) == 0)
    {
      *(self + 72) = 1;
      if (*(self + 80))
      {
        v45 = *(self + 16);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __86__ASDExtensionRequest__onRunQueue_beginRequestForHostContext_XPCInterface_retryCount___block_invoke_9;
        block[3] = &unk_1E7CDB868;
        block[4] = self;
        v49 = v12;
        dispatch_async(v45, block);
      }
    }

    [(ASDExtensionRequest *)self _cleanupPostExecution];
  }

LABEL_59:
  v46 = *MEMORY[0x1E69E9840];
}

- ($4DFF52677BE2162B325CDC3F816A46BC)beginRequestForHostContext:(Class)context XPCInterface:(id)interface
{
  interfaceCopy = interface;
  v18 = 0;
  v19 = &v18;
  v20 = 0x4012000000;
  v21 = __Block_byref_object_copy__1;
  v22 = __Block_byref_object_dispose__1;
  v23 = 512;
  v24 = 0;
  v25 = 0;
  runQueue = self->_runQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__ASDExtensionRequest_beginRequestForHostContext_XPCInterface___block_invoke;
  v14[3] = &unk_1E7CDBE98;
  v14[4] = self;
  v15 = interfaceCopy;
  v16 = &v18;
  contextCopy = context;
  v8 = interfaceCopy;
  dispatch_async_and_wait(runQueue, v14);
  v9 = v19;
  v10 = v19[6];
  v11 = v9[7];

  _Block_object_dispose(&v18, 8);
  v12 = v10;
  v13 = v11;
  result.var1 = v13;
  result.var0 = v12;
  return result;
}

void __63__ASDExtensionRequest_beginRequestForHostContext_XPCInterface___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  if (!v3)
  {
    [(ASDExtensionRequest *)v2 _onRunQueue_beginRequestForHostContext:*(a1 + 40) XPCInterface:0 retryCount:?];
    v3 = *(*(a1 + 32) + 64);
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 48), v3);
  v4 = *(*(a1 + 32) + 56);
  v5 = (*(*(a1 + 48) + 8) + 56);

  objc_storeStrong(v5, v4);
}

void __86__ASDExtensionRequest__onRunQueue_beginRequestForHostContext_XPCInterface_retryCount___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = ASDLogHandleForCategory(12);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v12 = v3;
      _os_log_error_impl(&dword_1B8220000, v5, OS_LOG_TYPE_ERROR, "Remote context error %{public}@", buf, 0xCu);
    }

    v6 = WeakRetained[1];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __86__ASDExtensionRequest__onRunQueue_beginRequestForHostContext_XPCInterface_retryCount___block_invoke_6;
    v8[3] = &unk_1E7CDB868;
    v9 = WeakRetained;
    v10 = v3;
    dispatch_async(v6, v8);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __86__ASDExtensionRequest__onRunQueue_beginRequestForHostContext_XPCInterface_retryCount___block_invoke_6(uint64_t a1)
{
  [(ASDExtensionRequest *)*(a1 + 32) _cleanupPostExecution];
  v2 = *(a1 + 32);
  if ((*(v2 + 72) & 1) == 0)
  {
    *(v2 + 72) = 1;
    v3 = *(a1 + 32);
    if (v3[10])
    {
      v4 = v3[2];
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __86__ASDExtensionRequest__onRunQueue_beginRequestForHostContext_XPCInterface_retryCount___block_invoke_2;
      v5[3] = &unk_1E7CDB868;
      v6 = v3;
      v7 = *(a1 + 40);
      dispatch_async(v4, v5);
    }
  }
}

- (void)_cleanupPostExecution
{
  if (self)
  {
    v2 = self[6];
    if (v2)
    {
      dispatch_source_cancel(v2);
      v3 = self[6];
      self[6] = 0;
    }

    v4 = self[4];
    if (v4)
    {
      dispatch_source_cancel(v4);
      v5 = self[4];
      self[4] = 0;
    }

    v6 = self[8];
    self[8] = 0;

    v7 = self[7];
    self[7] = 0;
  }
}

- (void)endRequest
{
  v3 = ASDLogHandleForCategory(12);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_1B8220000, v3, OS_LOG_TYPE_DEBUG, "ASDExtensionRequest end request", v4, 2u);
  }

  [(ASDExtensionRequest *)self _endRequestWithCancelCall:?];
}

- (void)_endRequestWithCancelCall:(uint64_t)call
{
  if (call)
  {
    v2 = *(call + 8);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __49__ASDExtensionRequest__endRequestWithCancelCall___block_invoke;
    v3[3] = &unk_1E7CDBEE8;
    v3[4] = call;
    v4 = a2;
    dispatch_async(v2, v3);
  }
}

- (void)requestEnded
{
  v3 = ASDLogHandleForCategory(12);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_1B8220000, v3, OS_LOG_TYPE_DEBUG, "ASDExtensionRequest request ended", v4, 2u);
  }

  [(ASDExtensionRequest *)self _endRequestWithCancelCall:?];
}

void __49__ASDExtensionRequest__endRequestWithCancelCall___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 56))
  {
    if (*(v2 + 40) > 0.0)
    {
      [*(v2 + 64) serviceExtensionPerformCleanup];
      v2 = *(a1 + 32);
    }

    if (*(a1 + 40) == 1)
    {
      [*(v2 + 88) cancelExtensionRequestWithIdentifier:*(v2 + 56)];
      v2 = *(a1 + 32);
    }

    [(ASDExtensionRequest *)v2 _cleanupPostExecution];
  }
}

void __35__ASDExtensionRequest__startTimers__block_invoke(uint64_t a1)
{
  v2 = ASDLogHandleForCategory(12);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1B8220000, v2, OS_LOG_TYPE_ERROR, "Extension request timeout", buf, 2u);
  }

  v3 = *(a1 + 32);
  if (*(v3 + 56))
  {
    [*(v3 + 88) cancelExtensionRequestWithIdentifier:?];
    v3 = *(a1 + 32);
  }

  if ((*(v3 + 72) & 1) == 0)
  {
    *(v3 + 72) = 1;
    v3 = *(a1 + 32);
    if (*(v3 + 80))
    {
      v4 = *(v3 + 16);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __35__ASDExtensionRequest__startTimers__block_invoke_10;
      block[3] = &unk_1E7CDB930;
      block[4] = v3;
      dispatch_async(v4, block);
      v3 = *(a1 + 32);
    }
  }

  [(ASDExtensionRequest *)v3 _cleanupPostExecution];
}

void __35__ASDExtensionRequest__startTimers__block_invoke_10(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 80);
  v3 = ASDErrorWithUnderlyingErrorAndDescription(0, @"ASDErrorDomain", 515, @"Request timeout");
  (*(v2 + 16))(v2, v1, v3);
}

void __35__ASDExtensionRequest__startTimers__block_invoke_2(uint64_t a1)
{
  v2 = ASDLogHandleForCategory(12);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B8220000, v2, OS_LOG_TYPE_INFO, "Extension request time will expire", v5, 2u);
  }

  [*(*(a1 + 32) + 64) serviceExtensionTimeWillExpire];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = 0;
}

@end