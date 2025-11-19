@interface HMDeviceSetupOperationHandlerBase
+ (id)logCategory;
- (HMDeviceSetupOperationHandlerBase)initWithSetupSessionFactory:(id)a3;
- (id)logIdentifier;
- (void)configureSessionForMessages;
- (void)dealloc;
- (void)setupSession:(id)a3 didReceiveExchangeData:(id)a4 completionHandler:(id)a5;
@end

@implementation HMDeviceSetupOperationHandlerBase

- (id)logIdentifier
{
  v2 = [(HMDeviceSetupOperationHandlerBase *)self setupSession];
  v3 = [v2 identifier];
  v4 = [v3 UUIDString];

  return v4;
}

- (void)setupSession:(id)a3 didReceiveExchangeData:(id)a4 completionHandler:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v14;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Received request to send unexpected received exchange data, dropping", &v17, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  if (v10)
  {
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:48];
    v10[2](v10, 0, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)configureSessionForMessages
{
  v3 = [(HMDeviceSetupOperationHandlerBase *)self setupSession];
  [v3 configure];

  v4 = [(HMDeviceSetupOperationHandlerBase *)self setupSession];
  [v4 open];
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543618;
    v11 = v6;
    v12 = 2112;
    v13 = objc_opt_class();
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Deallocating %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDeviceSetupOperationHandlerBase *)v4 setupSession];
  [v7 cleanUpSession];

  v9.receiver = v4;
  v9.super_class = HMDeviceSetupOperationHandlerBase;
  [(HMDeviceSetupOperationHandlerBase *)&v9 dealloc];
  v8 = *MEMORY[0x1E69E9840];
}

- (HMDeviceSetupOperationHandlerBase)initWithSetupSessionFactory:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMDeviceSetupOperationHandlerBase;
  v5 = [(HMDeviceSetupOperationHandlerBase *)&v9 init];
  if (v5)
  {
    v6 = v4[2](v4, v5);
    setupSession = v5->_setupSession;
    v5->_setupSession = v6;
  }

  return v5;
}

HMDeviceSetupSession *__41__HMDeviceSetupOperationHandlerBase_init__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [HMDeviceSetupSession alloc];
  v4 = [MEMORY[0x1E696AFB0] UUID];
  v5 = [(HMDeviceSetupSession *)v3 initWithRole:1 identifier:v4 delegate:v2];

  return v5;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_24921 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_24921, &__block_literal_global_7_24922);
  }

  v3 = logCategory__hmf_once_v3_24923;

  return v3;
}

uint64_t __48__HMDeviceSetupOperationHandlerBase_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v3_24923;
  logCategory__hmf_once_v3_24923 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end