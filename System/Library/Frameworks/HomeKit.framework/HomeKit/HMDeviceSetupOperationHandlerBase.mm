@interface HMDeviceSetupOperationHandlerBase
+ (id)logCategory;
- (HMDeviceSetupOperationHandlerBase)initWithSetupSessionFactory:(id)factory;
- (id)logIdentifier;
- (void)configureSessionForMessages;
- (void)dealloc;
- (void)setupSession:(id)session didReceiveExchangeData:(id)data completionHandler:(id)handler;
@end

@implementation HMDeviceSetupOperationHandlerBase

- (id)logIdentifier
{
  setupSession = [(HMDeviceSetupOperationHandlerBase *)self setupSession];
  identifier = [setupSession identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (void)setupSession:(id)session didReceiveExchangeData:(id)data completionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  dataCopy = data;
  handlerCopy = handler;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v14;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Received request to send unexpected received exchange data, dropping", &v17, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  if (handlerCopy)
  {
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:48];
    handlerCopy[2](handlerCopy, 0, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)configureSessionForMessages
{
  setupSession = [(HMDeviceSetupOperationHandlerBase *)self setupSession];
  [setupSession configure];

  setupSession2 = [(HMDeviceSetupOperationHandlerBase *)self setupSession];
  [setupSession2 open];
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
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
  setupSession = [(HMDeviceSetupOperationHandlerBase *)selfCopy setupSession];
  [setupSession cleanUpSession];

  v9.receiver = selfCopy;
  v9.super_class = HMDeviceSetupOperationHandlerBase;
  [(HMDeviceSetupOperationHandlerBase *)&v9 dealloc];
  v8 = *MEMORY[0x1E69E9840];
}

- (HMDeviceSetupOperationHandlerBase)initWithSetupSessionFactory:(id)factory
{
  factoryCopy = factory;
  v9.receiver = self;
  v9.super_class = HMDeviceSetupOperationHandlerBase;
  v5 = [(HMDeviceSetupOperationHandlerBase *)&v9 init];
  if (v5)
  {
    v6 = factoryCopy[2](factoryCopy, v5);
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