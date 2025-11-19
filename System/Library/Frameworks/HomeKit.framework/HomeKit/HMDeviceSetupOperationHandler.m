@interface HMDeviceSetupOperationHandler
- (void)_handleReceivedRequest:(id)a3 responseHandler:(id)a4;
- (void)registerMessageHandlersForSession:(id)a3;
@end

@implementation HMDeviceSetupOperationHandler

- (void)_handleReceivedRequest:(id)a3 responseHandler:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"TRRequestMessageHandler"];
  v9 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    [v8 markWithReason:@"Received request"];
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v15;
      v31 = 2112;
      v32 = v9;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Received request: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [v11 qualityOfService];
    objc_initWeak(buf, v13);
    v17 = [(HMDeviceSetupOperationHandlerBase *)v13 setupSession];
    v18 = [v11 payload];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __72__HMDeviceSetupOperationHandler__handleReceivedRequest_responseHandler___block_invoke;
    v25[3] = &unk_1E754BD08;
    v26 = v8;
    v27 = v7;
    objc_copyWeak(&v28, buf);
    [v17 sendExchangeData:v18 qualityOfService:v16 completionHandler:v25];

    objc_destroyWeak(&v28);
    objc_destroyWeak(buf);
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v22;
      v31 = 2112;
      v32 = v9;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Received an unexpected request: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    if (v7)
    {
      v23 = [MEMORY[0x1E696ABC0] hmErrorWithCode:22];
      (*(v7 + 2))(v7, v23, 0);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __72__HMDeviceSetupOperationHandler__handleReceivedRequest_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) begin];
  if (*(a1 + 40))
  {
    v7 = [[HMDeviceSetupResponseMessage alloc] initWithPayload:v5];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [*(a1 + 32) markWithReason:@"Sending response"];
    v9 = objc_autoreleasePoolPush();
    v10 = WeakRetained;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Sending response: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    (*(*(a1 + 40) + 16))();
  }

  [*(a1 + 32) end];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)registerMessageHandlersForSession:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v15 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Registering the handlers", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v13.receiver = v6;
  v13.super_class = HMDeviceSetupOperationHandler;
  [(HMDeviceSetupOperationHandlerBase *)&v13 configureSessionForMessages];
  objc_initWeak(buf, v6);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__HMDeviceSetupOperationHandler_registerMessageHandlersForSession___block_invoke;
  aBlock[3] = &unk_1E7547B18;
  objc_copyWeak(&v12, buf);
  v9 = _Block_copy(aBlock);
  [v4 setRequestHandler:v9 forRequestClass:objc_opt_class()];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);

  v10 = *MEMORY[0x1E69E9840];
}

void __67__HMDeviceSetupOperationHandler_registerMessageHandlersForSession___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleReceivedRequest:v6 responseHandler:v5];
}

@end