@interface ASDFairPlayService
+ (ASDFairPlayService)defaultService;
- (BOOL)importKeybag:(id)a3 error:(id *)a4;
- (BOOL)importSubscriptionKeybag:(id)a3 error:(id *)a4;
- (id)_synchronousRemoteObjectProxyWithErrorHandler:(uint64_t)a1;
- (id)generateKeybagRequestForDSID:(unint64_t)a3 error:(id *)a4;
- (id)generateSubscriptionRequestForDSID:(unint64_t)a3 error:(id *)a4;
@end

@implementation ASDFairPlayService

+ (ASDFairPlayService)defaultService
{
  if (qword_1ED90D5B0 != -1)
  {
    dispatch_once(&qword_1ED90D5B0, &__block_literal_global_17);
  }

  v3 = _MergedGlobals_43;

  return v3;
}

void __36__ASDFairPlayService_defaultService__block_invoke()
{
  v0 = [ASDFairPlayService alloc];
  v1 = +[ASDServiceBroker defaultBroker];
  v4 = v1;
  if (v0)
  {
    v5.receiver = v0;
    v5.super_class = ASDFairPlayService;
    v2 = objc_msgSendSuper2(&v5, sel_init);
    v0 = v2;
    if (v2)
    {
      objc_storeStrong(&v2->_serviceBroker, v1);
    }
  }

  v3 = _MergedGlobals_43;
  _MergedGlobals_43 = v0;
}

- (id)generateKeybagRequestForDSID:(unint64_t)a3 error:(id *)a4
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__10;
  v22 = __Block_byref_object_dispose__10;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__10;
  v16 = __Block_byref_object_dispose__10;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__ASDFairPlayService_generateKeybagRequestForDSID_error___block_invoke;
  v11[3] = &unk_1E7CDBB80;
  v11[4] = &v12;
  v6 = [(ASDFairPlayService *)self _synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__ASDFairPlayService_generateKeybagRequestForDSID_error___block_invoke_2;
  v10[3] = &unk_1E7CDD0F8;
  v10[4] = &v18;
  v10[5] = &v12;
  [v6 generateKeybagRequestForDSID:a3 completionHandler:v10];
  if (a4)
  {
    v7 = v13[5];
    if (v7)
    {
      *a4 = v7;
    }
  }

  v8 = v19[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);

  return v8;
}

- (id)_synchronousRemoteObjectProxyWithErrorHandler:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 8);
    v9 = 0;
    v5 = [v4 getFairPlayServiceWithError:&v9];
    v6 = v9;
    if (v5)
    {
      v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v3];
    }

    else
    {
      v3[2](v3, v6);
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __57__ASDFairPlayService_generateKeybagRequestForDSID_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)generateSubscriptionRequestForDSID:(unint64_t)a3 error:(id *)a4
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__10;
  v22 = __Block_byref_object_dispose__10;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__10;
  v16 = __Block_byref_object_dispose__10;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__ASDFairPlayService_generateSubscriptionRequestForDSID_error___block_invoke;
  v11[3] = &unk_1E7CDBB80;
  v11[4] = &v12;
  v6 = [(ASDFairPlayService *)self _synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__ASDFairPlayService_generateSubscriptionRequestForDSID_error___block_invoke_2;
  v10[3] = &unk_1E7CDD0F8;
  v10[4] = &v18;
  v10[5] = &v12;
  [v6 generateSubscriptionRequestForDSID:a3 completionHandler:v10];
  if (a4)
  {
    v7 = v13[5];
    if (v7)
    {
      *a4 = v7;
    }
  }

  v8 = v19[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);

  return v8;
}

void __63__ASDFairPlayService_generateSubscriptionRequestForDSID_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (BOOL)importKeybag:(id)a3 error:(id *)a4
{
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__10;
  v18 = __Block_byref_object_dispose__10;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __41__ASDFairPlayService_importKeybag_error___block_invoke;
  v13[3] = &unk_1E7CDBB80;
  v13[4] = &v14;
  v7 = [(ASDFairPlayService *)self _synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __41__ASDFairPlayService_importKeybag_error___block_invoke_2;
  v12[3] = &unk_1E7CDBB80;
  v12[4] = &v14;
  [v7 importKeybag:v6 completionHandler:v12];
  v8 = v15;
  if (a4)
  {
    v9 = v15[5];
    if (v9)
    {
      *a4 = v9;
      v8 = v15;
    }
  }

  v10 = v8[5] == 0;

  _Block_object_dispose(&v14, 8);
  return v10;
}

- (BOOL)importSubscriptionKeybag:(id)a3 error:(id *)a4
{
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__10;
  v18 = __Block_byref_object_dispose__10;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__ASDFairPlayService_importSubscriptionKeybag_error___block_invoke;
  v13[3] = &unk_1E7CDBB80;
  v13[4] = &v14;
  v7 = [(ASDFairPlayService *)self _synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__ASDFairPlayService_importSubscriptionKeybag_error___block_invoke_2;
  v12[3] = &unk_1E7CDBB80;
  v12[4] = &v14;
  [v7 importSubscriptionKeybag:v6 completionHandler:v12];
  v8 = v15;
  if (a4)
  {
    v9 = v15[5];
    if (v9)
    {
      *a4 = v9;
      v8 = v15;
    }
  }

  v10 = v8[5] == 0;

  _Block_object_dispose(&v14, 8);
  return v10;
}

@end