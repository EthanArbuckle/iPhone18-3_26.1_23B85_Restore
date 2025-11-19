@interface NSFileProviderService
- (NSFileProviderService)initWithName:(id)a3 endpointCreatingProxy:(id)a4 requestFinishedGroup:(id)a5;
- (id)fetchFileProviderConnectionAndReturnError:(id *)a3;
- (void)dealloc;
- (void)getFileProviderConnectionWithCompletionHandler:(void *)completionHandler;
@end

@implementation NSFileProviderService

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  dispatch_group_leave(self->_requestFinishedGroup);
  dispatch_release(self->_requestFinishedGroup);
  v3.receiver = self;
  v3.super_class = NSFileProviderService;
  [(NSFileProviderService *)&v3 dealloc];
}

- (NSFileProviderService)initWithName:(id)a3 endpointCreatingProxy:(id)a4 requestFinishedGroup:(id)a5
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = NSFileProviderService;
  v8 = [(NSFileProviderService *)&v10 init];
  if (v8)
  {
    *(v8 + 1) = [a3 copy];
    *(v8 + 2) = a4;
    *(v8 + 3) = a5;
    dispatch_retain(a5);
    dispatch_group_enter(*(v8 + 3));
  }

  return v8;
}

- (void)getFileProviderConnectionWithCompletionHandler:(void *)completionHandler
{
  v9[5] = *MEMORY[0x1E69E9840];
  endpointCreatingProxy = self->_endpointCreatingProxy;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__NSFileProviderService_getFileProviderConnectionWithCompletionHandler___block_invoke;
  v9[3] = &unk_1E69F3938;
  v9[4] = completionHandler;
  v6 = [endpointCreatingProxy remoteObjectProxyWithErrorHandler:v9];
  name = self->_name;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__NSFileProviderService_getFileProviderConnectionWithCompletionHandler___block_invoke_3;
  v8[3] = &unk_1E69F3988;
  v8[4] = self;
  v8[5] = completionHandler;
  [v6 getListenerEndpointForServiceName:name completionHandler:v8];
}

void __72__NSFileProviderService_getFileProviderConnectionWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  block[6] = *MEMORY[0x1E69E9840];
  v4 = qos_class_self();
  global_queue = dispatch_get_global_queue(v4, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__NSFileProviderService_getFileProviderConnectionWithCompletionHandler___block_invoke_2;
  block[3] = &unk_1E69F3910;
  v6 = *(a1 + 32);
  block[4] = a2;
  block[5] = v6;
  dispatch_async(global_queue, block);
}

void __72__NSFileProviderService_getFileProviderConnectionWithCompletionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = qos_class_self();
  global_queue = dispatch_get_global_queue(v6, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__NSFileProviderService_getFileProviderConnectionWithCompletionHandler___block_invoke_4;
  block[3] = &unk_1E69F3960;
  block[4] = a3;
  block[5] = a2;
  v9 = *(a1 + 32);
  dispatch_async(global_queue, block);
}

void __72__NSFileProviderService_getFileProviderConnectionWithCompletionHandler___block_invoke_4(void *a1)
{
  v5[5] = *MEMORY[0x1E69E9840];
  if (a1[4])
  {
    v2 = *(a1[7] + 16);

    v2();
  }

  else
  {
    v3 = [[NSXPCConnection alloc] initWithListenerEndpoint:a1[5]];
    v4 = *(a1[6] + 24);
    dispatch_group_enter(v4);
    dispatch_retain(v4);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __72__NSFileProviderService_getFileProviderConnectionWithCompletionHandler___block_invoke_5;
    v5[3] = &unk_1E69F2C00;
    v5[4] = v4;
    [(NSXPCConnection *)v3 set_additionalInvalidationHandler:v5];
    (*(a1[7] + 16))();
  }
}

void __72__NSFileProviderService_getFileProviderConnectionWithCompletionHandler___block_invoke_5(uint64_t a1)
{
  dispatch_group_leave(*(a1 + 32));
  v2 = *(a1 + 32);

  dispatch_release(v2);
}

- (id)fetchFileProviderConnectionAndReturnError:(id *)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = __Block_byref_object_copy__4;
  v25 = __Block_byref_object_dispose__4;
  v26 = 0;
  endpointCreatingProxy = self->_endpointCreatingProxy;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __67__NSFileProviderService_fetchFileProviderConnectionAndReturnError___block_invoke;
  v20[3] = &unk_1E69F39B0;
  v20[4] = &v21;
  v6 = [endpointCreatingProxy synchronousRemoteObjectProxyWithErrorHandler:v20];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy__4;
  v18 = __Block_byref_object_dispose__4;
  v19 = 0;
  name = self->_name;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__NSFileProviderService_fetchFileProviderConnectionAndReturnError___block_invoke_2;
  v13[3] = &unk_1E69F39D8;
  v13[5] = &v21;
  v13[6] = &v14;
  v13[4] = self;
  [v6 getListenerEndpointForServiceName:name completionHandler:v13];
  v8 = v22;
  v9 = v22[5];
  if (v9)
  {
    if (a3)
    {
      *a3 = v9;
      v9 = v8[5];
    }

    v10 = v9;
    v11 = 0;
  }

  else
  {
    v11 = v15[5];
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v21, 8);
  return v11;
}

id __67__NSFileProviderService_fetchFileProviderConnectionAndReturnError___block_invoke(uint64_t a1, void *a2)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

id __67__NSFileProviderService_fetchFileProviderConnectionAndReturnError___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v6[5] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    result = a3;
    *(*(a1[5] + 8) + 40) = result;
  }

  else
  {
    *(*(a1[6] + 8) + 40) = [[NSXPCConnection alloc] initWithListenerEndpoint:a2];
    v5 = *(a1[4] + 24);
    dispatch_group_enter(v5);
    dispatch_retain(v5);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __67__NSFileProviderService_fetchFileProviderConnectionAndReturnError___block_invoke_3;
    v6[3] = &unk_1E69F2C00;
    v6[4] = v5;
    return [*(*(a1[6] + 8) + 40) set_additionalInvalidationHandler:v6];
  }

  return result;
}

void __67__NSFileProviderService_fetchFileProviderConnectionAndReturnError___block_invoke_3(uint64_t a1)
{
  dispatch_group_leave(*(a1 + 32));
  v2 = *(a1 + 32);

  dispatch_release(v2);
}

@end