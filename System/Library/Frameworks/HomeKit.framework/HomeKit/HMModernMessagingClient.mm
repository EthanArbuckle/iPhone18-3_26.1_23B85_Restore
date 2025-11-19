@interface HMModernMessagingClient
+ (id)logCategory;
- (HMHome)home;
- (HMModernMessagingClient)initWithHome:(id)a3 idsTopic:(id)a4;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (void)registerModernMessagingRequestHandlerWithMessageName:(id)a3 options:(id)a4 requestHandler:(id)a5 completionHandler:(id)a6;
- (void)sendModernMessagingRequestWithMessageName:(id)a3 destination:(id)a4 requestPayload:(id)a5 options:(id)a6 responseHandler:(id)a7 completionHandler:(id)a8;
- (void)unregisterModernMessagingRequestHandlerWithMessageName:(id)a3 completionHandler:(id)a4;
@end

@implementation HMModernMessagingClient

- (HMHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(HMModernMessagingClient *)self home];
  v5 = [v4 uuid];
  v6 = [v5 UUIDString];
  v7 = [(HMModernMessagingClient *)self idsTopic];
  v8 = [v3 stringWithFormat:@"%@:%@", v6, v7];

  return v8;
}

- (void)sendModernMessagingRequestWithMessageName:(id)a3 destination:(id)a4 requestPayload:(id)a5 options:(id)a6 responseHandler:(id)a7 completionHandler:(id)a8
{
  v45 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = objc_autoreleasePoolPush();
  v21 = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v23 = v33 = v16;
    v24 = HMFBooleanToString();
    *buf = 138544386;
    v36 = v23;
    v37 = 2112;
    v38 = v14;
    v39 = 2112;
    v40 = v15;
    v41 = 2112;
    v42 = v17;
    v43 = 2112;
    v44 = v24;
    _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_INFO, "%{public}@Sending hmmm message with message name: %@, destination: %@, options: %@, oneway: %@", buf, 0x34u);

    v16 = v33;
  }

  objc_autoreleasePoolPop(v20);
  v25 = [(HMModernMessagingClient *)v21 home];
  v26 = v25;
  if (v25)
  {
    [v25 sendModernMessagingRequestWithMessageName:v14 destination:v15 requestPayload:v16 options:v17 responseHandler:v18 completionHandler:v19];
  }

  else
  {
    v34 = v16;
    v27 = objc_autoreleasePoolPush();
    v28 = v21;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v30;
      _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_ERROR, "%{public}@Error while sending hmmm request handler: home is null", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
    v16 = v34;
    if (v19)
    {
      v31 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
      v19[2](v19, v31);
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)unregisterModernMessagingRequestHandlerWithMessageName:(id)a3 completionHandler:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v20 = 138543618;
    v21 = v11;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Unregistering hmmm request handler with message name: %@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMModernMessagingClient *)v9 home];
  v13 = v12;
  if (v12)
  {
    [v12 unregisterModernMessagingRequestHandlerWithMessageName:v6 completionHandler:v7];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v9;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v17;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Error while unregistering hmmm request handler: home is null", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    if (v7)
    {
      v18 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
      v7[2](v7, v18);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)registerModernMessagingRequestHandlerWithMessageName:(id)a3 options:(id)a4 requestHandler:(id)a5 completionHandler:(id)a6
{
  v32 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v26 = 138543874;
    v27 = v17;
    v28 = 2112;
    v29 = v10;
    v30 = 2112;
    v31 = v11;
    _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@Registering hmmm request handler with message name: %@, options: %@", &v26, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  v18 = [(HMModernMessagingClient *)v15 home];
  v19 = v18;
  if (v18)
  {
    [v18 registerModernMessagingRequestHandlerWithMessageName:v10 options:v11 requestHandler:v12 completionHandler:v13];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = v15;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v23;
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@Error while registering hmmm request handler: home is null", &v26, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    if (v13)
    {
      v24 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
      v13[2](v13, v24);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (id)attributeDescriptions
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [(HMModernMessagingClient *)self home];
  v5 = [v4 uuid];
  v6 = [v3 initWithName:@"HomeUUID" value:v5];
  v13[0] = v6;
  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  v8 = [(HMModernMessagingClient *)self idsTopic];
  v9 = [v7 initWithName:@"IDSTopic" value:v8];
  v13[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (HMModernMessagingClient)initWithHome:(id)a3 idsTopic:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = HMModernMessagingClient;
  v8 = [(HMModernMessagingClient *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_home, v6);
    v10 = [v7 copy];
    idsTopic = v9->_idsTopic;
    v9->_idsTopic = v10;
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6_44227 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6_44227, &__block_literal_global_44228);
  }

  v3 = logCategory__hmf_once_v7_44229;

  return v3;
}

uint64_t __38__HMModernMessagingClient_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v7_44229;
  logCategory__hmf_once_v7_44229 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end