@interface ASDCheckQueueRequest
- (ASDCheckQueueRequest)initWithOptions:(id)options;
- (void)dealloc;
- (void)sendRequestCompletionBlock:(id)block;
@end

@implementation ASDCheckQueueRequest

- (ASDCheckQueueRequest)initWithOptions:(id)options
{
  optionsCopy = options;
  v15.receiver = self;
  v15.super_class = ASDCheckQueueRequest;
  v5 = [(ASDCheckQueueRequest *)&v15 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.appstoredaemonframework.ASDCheckQueueRequest.access", v6);
    accessQueue = v5->_accessQueue;
    v5->_accessQueue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.appstoredaemonframework.ASDCheckQueueRequest.callout", v9);
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
  v3.super_class = ASDCheckQueueRequest;
  [(ASDCheckQueueRequest *)&v3 dealloc];
}

- (void)sendRequestCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (self)
  {
    if (!blockCopy)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"nil block"];
    }

    accessQueue = self->_accessQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__ASDCheckQueueRequest__sendRequestWithCompletionBlock___block_invoke;
    v7[3] = &unk_1E7CDBE48;
    v7[4] = self;
    v8 = v5;
    dispatch_async(accessQueue, v7);
  }
}

void __56__ASDCheckQueueRequest__sendRequestWithCompletionBlock___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (!v3)
  {
    if ([(ASDBaseClient *)*(a1 + 32) _clientHasEntitlement:?]|| [(ASDBaseClient *)v2 _clientHasEntitlement:?]|| ([(ASDBaseClient *)v2 _clientHasASDEntitlement:?]& 1) != 0)
    {
      goto LABEL_8;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = objc_opt_class();
      v9 = v15;
      _os_log_error_impl(&dword_1B8220000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@]: Treating as legacy client", buf, 0xCu);
    }

    if ([(ASDBaseClient *)v2 _clientHasEntitlement:?])
    {
LABEL_8:
      v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.appstored.xpc.storequeue" options:0];
      v5 = *(v2 + 24);
      *(v2 + 24) = v4;

      v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3049ED8];
      [*(v2 + 24) setRemoteObjectInterface:v6];
      [*(v2 + 24) setInvalidationHandler:&__block_literal_global_2];
      [*(v2 + 24) setInterruptionHandler:&__block_literal_global_76];
      [*(v2 + 24) _setQueue:*(v2 + 8)];
      [*(v2 + 24) resume];
    }

    v2 = *(a1 + 32);
    v3 = *(v2 + 24);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__ASDCheckQueueRequest__sendRequestWithCompletionBlock___block_invoke_2;
  v12[3] = &unk_1E7CDBDF8;
  v12[4] = v2;
  v13 = *(a1 + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__ASDCheckQueueRequest__sendRequestWithCompletionBlock___block_invoke_5;
  v10[3] = &unk_1E7CDBE20;
  v7 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v7;
  [v2 _call:v3 run:v12 error:v10];

  v8 = *MEMORY[0x1E69E9840];
}

void __56__ASDCheckQueueRequest__sendRequestWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = *(*(a1 + 32) + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__ASDCheckQueueRequest__sendRequestWithCompletionBlock___block_invoke_3;
  v6[3] = &unk_1E7CDBDD0;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [a2 checkQueueWithOptions:v4 completionBlock:v6];
}

void __56__ASDCheckQueueRequest__sendRequestWithCompletionBlock___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__ASDCheckQueueRequest__sendRequestWithCompletionBlock___block_invoke_4;
    block[3] = &unk_1E7CDBB30;
    v10 = v6;
    v9 = v5;
    v11 = a2;
    dispatch_async(v7, block);
  }
}

uint64_t __56__ASDCheckQueueRequest__sendRequestWithCompletionBlock___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  return (*(v2 + 16))(v2, v3);
}

void __56__ASDCheckQueueRequest__sendRequestWithCompletionBlock___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 16);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __56__ASDCheckQueueRequest__sendRequestWithCompletionBlock___block_invoke_6;
    v6[3] = &unk_1E7CDB890;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __40__ASDCheckQueueRequest__setupConnection__block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_1B8220000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Invalidate", v0, 2u);
  }
}

void __40__ASDCheckQueueRequest__setupConnection__block_invoke_74()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_1B8220000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Interrupt", v0, 2u);
  }
}

@end