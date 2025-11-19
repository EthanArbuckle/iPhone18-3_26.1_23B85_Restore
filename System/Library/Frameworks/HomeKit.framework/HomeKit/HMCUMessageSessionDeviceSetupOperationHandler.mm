@interface HMCUMessageSessionDeviceSetupOperationHandler
- (int)convertSetupErrorToOSStatus:(id)a3;
- (void)_handleReceivedRequestDictionary:(id)a3 responseHandler:(id)a4;
- (void)registerMessageHandlersForMessageSession:(id)a3;
@end

@implementation HMCUMessageSessionDeviceSetupOperationHandler

- (int)convertSetupErrorToOSStatus:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:@"HMErrorDomain"];

  if (v5)
  {
    v6 = -27480;
  }

  else
  {
    v7 = [v3 domain];
    v8 = [v7 isEqualToString:*MEMORY[0x1E69A2978]];

    if (!v8)
    {
      v9 = -6700;
      goto LABEL_7;
    }

    v6 = -15080;
  }

  v9 = (v6 | 0x40000) + [v3 code];
LABEL_7:

  return v9;
}

- (void)_handleReceivedRequestDictionary:(id)a3 responseHandler:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"TRRequestMessageHandler"];
  v9 = [v6 dataForKey:@"da"];
  v10 = [v6 hmf_numberForKey:@"qos"];
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      v12 = [v10 integerValue];
    }

    else
    {
      v12 = -1;
    }

    [v8 markWithReason:@"Received request"];
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v23;
      v34 = 2112;
      v35 = v6;
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_INFO, "%{public}@Received request: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    objc_initWeak(buf, v21);
    v24 = [(HMDeviceSetupOperationHandlerBase *)v21 setupSession];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __98__HMCUMessageSessionDeviceSetupOperationHandler__handleReceivedRequestDictionary_responseHandler___block_invoke;
    v26[3] = &unk_1E754BD08;
    v27 = v8;
    objc_copyWeak(&v29, buf);
    v28 = v7;
    [v24 sendExchangeData:v9 qualityOfService:v12 completionHandler:v26];

    objc_destroyWeak(&v29);
    objc_destroyWeak(buf);
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v16;
      v34 = 2112;
      v35 = v6;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Received an unexpected request with no data %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [MEMORY[0x1E696ABC0] hmErrorWithCode:27];
    v18 = [v17 code];
    v30 = @"err";
    v31 = v17;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    (*(v7 + 2))(v7, (v18 + 300200), 0, v19);
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __98__HMCUMessageSessionDeviceSetupOperationHandler__handleReceivedRequestDictionary_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) begin];
  v7 = [MEMORY[0x1E695DF90] dictionary];
  [v7 setObject:v5 forKeyedSubscript:@"da"];
  [v7 setObject:v6 forKeyedSubscript:@"err"];
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
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Sending response payload: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  if (v6)
  {
    [v10 convertSetupErrorToOSStatus:v6];
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) end];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)registerMessageHandlersForMessageSession:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Registering the handlers", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v12.receiver = v6;
  v12.super_class = HMCUMessageSessionDeviceSetupOperationHandler;
  [(HMDeviceSetupOperationHandlerBase *)&v12 configureSessionForMessages];
  objc_initWeak(buf, v6);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __90__HMCUMessageSessionDeviceSetupOperationHandler_registerMessageHandlersForMessageSession___block_invoke;
  v10[3] = &unk_1E754BCE0;
  objc_copyWeak(&v11, buf);
  [v4 registerRequestID:@"HMDSS.cu.rq" options:0 handler:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);

  v9 = *MEMORY[0x1E69E9840];
}

void __90__HMCUMessageSessionDeviceSetupOperationHandler_registerMessageHandlersForMessageSession___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleReceivedRequestDictionary:v7 responseHandler:v6];
}

@end