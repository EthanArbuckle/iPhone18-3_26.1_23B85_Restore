@interface HMTRSession
- (HMTRSession)initWithSession:(id)session;
- (TRSession)session;
- (void)sendRequestData:(id)data qualityOfService:(int64_t)service responseHandler:(id)handler;
@end

@implementation HMTRSession

- (TRSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

- (void)sendRequestData:(id)data qualityOfService:(int64_t)service responseHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  v10 = [[HMDeviceSetupRequestMessage alloc] initWithPayload:dataCopy];
  [(HMDeviceSetupRequestMessage *)v10 setQualityOfService:service];
  objc_initWeak(&location, self);
  session = [(HMTRSession *)self session];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__HMTRSession_sendRequestData_qualityOfService_responseHandler___block_invoke;
  v14[3] = &unk_1E7549308;
  objc_copyWeak(&v17, &location);
  v12 = v10;
  v15 = v12;
  v13 = handlerCopy;
  v16 = v13;
  [session sendRequest:v12 withResponseHandler:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __64__HMTRSession_sendRequestData_qualityOfService_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = v5;
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

  v12 = v8;
  if (!(v8 | v11))
  {
    v13 = objc_autoreleasePoolPush();
    v14 = WeakRetained;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v17 = *(a1 + 32);
      v21 = 138543874;
      v22 = v16;
      v23 = 2112;
      v24 = v17;
      v25 = 2112;
      v26 = v9;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Received an unexpected request: %@ response: %@", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:22];
  }

  v18 = *(a1 + 40);
  v19 = [v11 payload];
  (*(v18 + 16))(v18, v12, v19);

  v20 = *MEMORY[0x1E69E9840];
}

- (HMTRSession)initWithSession:(id)session
{
  sessionCopy = session;
  v8.receiver = self;
  v8.super_class = HMTRSession;
  v5 = [(HMTRSession *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_session, sessionCopy);
  }

  return v6;
}

@end