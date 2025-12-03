@interface ASDManagedApplicationRequest
- (ASDManagedApplicationRequest)initWithOptions:(id)options;
- (void)dealloc;
- (void)sendRequestWithCompletionBlock:(id)block;
@end

@implementation ASDManagedApplicationRequest

- (ASDManagedApplicationRequest)initWithOptions:(id)options
{
  optionsCopy = options;
  v15.receiver = self;
  v15.super_class = ASDManagedApplicationRequest;
  v5 = [(ASDManagedApplicationRequest *)&v15 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.appstoredaemonframework.ASDClaimApplicationsRequest.access", v6);
    accessQueue = v5->_accessQueue;
    v5->_accessQueue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.appstoredaemonframework.ASDClaimApplicationsRequest.callout", v9);
    calloutQueue = v5->_calloutQueue;
    v5->_calloutQueue = v10;

    v12 = [optionsCopy copy];
    options = v5->_options;
    v5->_options = v12;
  }

  return v5;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = ASDManagedApplicationRequest;
  [(ASDManagedApplicationRequest *)&v3 dealloc];
}

- (void)sendRequestWithCompletionBlock:(id)block
{
  v5 = self->_options;
  blockCopy = block;
  if (!blockCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"nil block"];
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__ASDManagedApplicationRequest__sendRequestCompletionWithOptions_completionBlock___block_invoke;
  block[3] = &unk_1E7CDBF88;
  block[4] = self;
  v8 = v5;
  v11 = v8;
  v9 = blockCopy;
  v12 = v9;
  dispatch_async(accessQueue, block);
}

void __82__ASDManagedApplicationRequest__sendRequestCompletionWithOptions_completionBlock___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (!v3)
  {
    if ([(ASDBaseClient *)*(a1 + 32) _clientHasEntitlement:?]|| [(ASDBaseClient *)v2 _clientHasEntitlement:?])
    {
      goto LABEL_7;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = objc_opt_class();
      v10 = v18;
      _os_log_error_impl(&dword_1B8220000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@]: Treating as legacy client", buf, 0xCu);
    }

    if ([(ASDBaseClient *)v2 _clientHasEntitlement:?])
    {
LABEL_7:
      v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.appstored.xpc.storequeue" options:0];
      v5 = *(v2 + 24);
      *(v2 + 24) = v4;

      v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3049ED8];
      [*(v2 + 24) setRemoteObjectInterface:v6];
      [*(v2 + 24) setInvalidationHandler:&__block_literal_global_5];
      [*(v2 + 24) setInterruptionHandler:&__block_literal_global_73_0];
      [*(v2 + 24) _setQueue:*(v2 + 8)];
      [*(v2 + 24) resume];
    }

    v2 = *(a1 + 32);
    v3 = *(v2 + 24);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82__ASDManagedApplicationRequest__sendRequestCompletionWithOptions_completionBlock___block_invoke_2;
  v13[3] = &unk_1E7CDBF60;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v14 = v7;
  v15 = v8;
  v16 = *(a1 + 48);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82__ASDManagedApplicationRequest__sendRequestCompletionWithOptions_completionBlock___block_invoke_6;
  v11[3] = &unk_1E7CDBAB8;
  v11[4] = *(a1 + 32);
  v12 = *(a1 + 48);
  [v2 _call:v3 run:v13 error:v11];

  v9 = *MEMORY[0x1E69E9840];
}

void __82__ASDManagedApplicationRequest__sendRequestCompletionWithOptions_completionBlock___block_invoke_2(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __82__ASDManagedApplicationRequest__sendRequestCompletionWithOptions_completionBlock___block_invoke_3;
  v5[3] = &unk_1E7CDC388;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 managedApplicationRequestWithOptions:v3 completionBlock:v5];
}

void __82__ASDManagedApplicationRequest__sendRequestCompletionWithOptions_completionBlock___block_invoke_3(uint64_t a1, char a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a3;
  v10 = a5;
  if (v10)
  {
    v11 = *(*(a1 + 32) + 16);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __82__ASDManagedApplicationRequest__sendRequestCompletionWithOptions_completionBlock___block_invoke_4;
    v24[3] = &unk_1E7CDBAE0;
    v12 = &v27;
    v27 = *(a1 + 40);
    v13 = &v25;
    v25 = v9;
    v14 = &v26;
    v26 = v10;
    v15 = v24;
    v16 = v11;
  }

  else
  {
    v17 = *(*(a1 + 32) + 16);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __82__ASDManagedApplicationRequest__sendRequestCompletionWithOptions_completionBlock___block_invoke_5;
    v19[3] = &unk_1E7CDC360;
    v12 = v22;
    v22[0] = *(a1 + 40);
    v23 = a2;
    v13 = &v20;
    v18 = v9;
    v22[1] = a4;
    v14 = &v21;
    v20 = v18;
    v21 = 0;
    v15 = v19;
    v16 = v17;
  }

  dispatch_async(v16, v15);
}

void __82__ASDManagedApplicationRequest__sendRequestCompletionWithOptions_completionBlock___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__ASDManagedApplicationRequest__sendRequestCompletionWithOptions_completionBlock___block_invoke_7;
  v7[3] = &unk_1E7CDB890;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __48__ASDManagedApplicationRequest__setupConnection__block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_1B8220000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Invalidate", v0, 2u);
  }
}

void __48__ASDManagedApplicationRequest__setupConnection__block_invoke_71()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_1B8220000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Interrupt", v0, 2u);
  }
}

@end