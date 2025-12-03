@interface HMDeviceSetupOperationBase
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
+ (id)logCategory;
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (HMAccessory)accessory;
- (HMDeviceSetupOperationBase)init;
- (HMDeviceSetupOperationBase)initWithSessionTransport:(id)transport;
- (HMDeviceSetupOperationBase)initWithSessionTransport:(id)transport sessionIdentifier:(id)identifier;
- (HMDeviceSetupOperationBase)initWithSessionTransport:(id)transport setupSessionFactory:(id)factory;
- (HMDeviceSetupOperationTransport)sessionTransport;
- (NSError)error;
- (id)logIdentifier;
- (void)cancel;
- (void)cancelWithError:(id)error;
- (void)dealloc;
- (void)finish;
- (void)setAccessory:(id)accessory;
- (void)setError:(id)error;
- (void)setExecuting:(BOOL)executing;
- (void)setFinished:(BOOL)finished;
- (void)setQualityOfService:(int64_t)service;
- (void)setupSession:(id)session didCloseWithError:(id)error;
- (void)setupSession:(id)session didReceiveExchangeData:(id)data completionHandler:(id)handler;
- (void)start;
@end

@implementation HMDeviceSetupOperationBase

- (HMDeviceSetupOperationTransport)sessionTransport
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionTransport);

  return WeakRetained;
}

- (id)logIdentifier
{
  setupSession = [(HMDeviceSetupOperationBase *)self setupSession];
  identifier = [setupSession identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (void)setupSession:(id)session didReceiveExchangeData:(id)data completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  clientQueue = [(HMDeviceSetupOperationBase *)self clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__HMDeviceSetupOperationBase_setupSession_didReceiveExchangeData_completionHandler___block_invoke;
  block[3] = &unk_1E754E0F8;
  v13 = dataCopy;
  v14 = handlerCopy;
  block[4] = self;
  v10 = dataCopy;
  v11 = handlerCopy;
  dispatch_async(clientQueue, block);
}

void __84__HMDeviceSetupOperationBase_setupSession_didReceiveExchangeData_completionHandler___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) sessionTransport];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = v5;
  if (v2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v7;
      v18 = 2112;
      v19 = v2;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Sending exchange data using session transport: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) qualityOfService];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __84__HMDeviceSetupOperationBase_setupSession_didReceiveExchangeData_completionHandler___block_invoke_33;
    v14[3] = &unk_1E7546F20;
    v15 = *(a1 + 48);
    [v2 sendRequestData:v8 qualityOfService:v9 responseHandler:v14];
    v10 = v15;
    goto LABEL_9;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v17 = v11;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_FAULT, "%{public}@Session transport is unexpectedly nil", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v12 = *(a1 + 48);
  if (v12)
  {
    v10 = [MEMORY[0x1E696ABC0] hmPrivateErrorWithCode:9000];
    (*(v12 + 16))(v12, 0, v10);
LABEL_9:
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __84__HMDeviceSetupOperationBase_setupSession_didReceiveExchangeData_completionHandler___block_invoke_33(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3, a2);
  }

  return result;
}

- (void)setupSession:(id)session didCloseWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  clientQueue = [(HMDeviceSetupOperationBase *)self clientQueue];
  dispatch_activate(clientQueue);

  clientQueue2 = [(HMDeviceSetupOperationBase *)self clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__HMDeviceSetupOperationBase_setupSession_didCloseWithError___block_invoke;
  block[3] = &unk_1E754E5E8;
  v13 = errorCopy;
  selfCopy = self;
  v15 = sessionCopy;
  v10 = sessionCopy;
  v11 = errorCopy;
  dispatch_async(clientQueue2, block);
}

void __61__HMDeviceSetupOperationBase_setupSession_didCloseWithError___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    [*(a1 + 40) setExecuting:0];
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    v4 = *MEMORY[0x1E69E9840];

    [v2 cancelWithError:v3];
  }

  else
  {
    v5 = [*(a1 + 48) userInfo];
    v6 = [v5 hmf_dataForKey:@"kAccessoryDataKey"];

    if (v6)
    {
      v23 = 0;
      v7 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v23];
      v8 = v23;
      if (v7)
      {
        v9 = v7;
        if (![v9 supportedStereoPairVersions])
        {
          v10 = objc_alloc(MEMORY[0x1E69A2A60]);
          *buf = *MEMORY[0x1E69A29B0];
          *&buf[16] = *(MEMORY[0x1E69A29B0] + 16);
          v11 = [v10 initWithOperatingSystemVersion:buf];
          if ([HMMediaSystemBuilder supportsMediaSystem:v9])
          {
            v12 = [v9 softwareVersion];
            v13 = [v12 isAtLeastVersion:v11];

            if ((v13 & 1) == 0)
            {
              [v9 setSupportedStereoPairVersions:1];
            }
          }
        }

        v14 = objc_autoreleasePoolPush();
        v15 = *(a1 + 40);
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543618;
          *&buf[4] = v17;
          *&buf[12] = 2112;
          *&buf[14] = v9;
          _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@Finished setup operation with accessory: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
        [*(a1 + 40) setAccessory:v9];
      }

      else
      {
        v18 = objc_autoreleasePoolPush();
        v19 = *(a1 + 40);
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = HMFGetLogIdentifier();
          *buf = 138543618;
          *&buf[4] = v21;
          *&buf[12] = 2112;
          *&buf[14] = v8;
          _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive accessory from accessory data: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v18);
      }
    }

    [*(a1 + 40) finish];

    v22 = *MEMORY[0x1E69E9840];
  }
}

- (void)cancelWithError:(id)error
{
  errorCopy = error;
  clientQueue = [(HMDeviceSetupOperationBase *)self clientQueue];
  dispatch_activate(clientQueue);

  clientQueue2 = [(HMDeviceSetupOperationBase *)self clientQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__HMDeviceSetupOperationBase_cancelWithError___block_invoke;
  v8[3] = &unk_1E754E5C0;
  v8[4] = self;
  v9 = errorCopy;
  v7 = errorCopy;
  dispatch_async(clientQueue2, v8);
}

void __46__HMDeviceSetupOperationBase_cancelWithError___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) isFinished] & 1) == 0 && (objc_msgSend(*(a1 + 32), "isCancelled") & 1) == 0)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 40);
      *buf = 138543618;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Cancelling with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    if (*(a1 + 40))
    {
      [*(a1 + 32) setError:?];
    }

    v11.receiver = *(a1 + 32);
    v11.super_class = HMDeviceSetupOperationBase;
    objc_msgSendSuper2(&v11, sel_cancel);
    v7 = [*(a1 + 32) isExecuting];
    v8 = *(a1 + 32);
    if (v7)
    {
      v9 = [v8 setupSession];
      [v9 close];
    }

    else
    {
      [v8 finish];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)cancel
{
  v3 = [MEMORY[0x1E696ABC0] hmErrorWithCode:23];
  [(HMDeviceSetupOperationBase *)self cancelWithError:v3];
}

- (void)start
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(HMDeviceSetupOperationBase *)self isExecuting])
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v8 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v13 = v9;
    v10 = "%{public}@Operation is already executing";
    goto LABEL_8;
  }

  if (([(HMDeviceSetupOperationBase *)self isReady]& 1) == 0)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v8 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v13 = v9;
    v10 = "%{public}@Operation is not ready";
LABEL_8:
    _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_ERROR, v10, buf, 0xCu);

LABEL_9:
    objc_autoreleasePoolPop(v6);
    objc_exception_throw(*MEMORY[0x1E695D940]);
  }

  clientQueue = [(HMDeviceSetupOperationBase *)self clientQueue];
  dispatch_activate(clientQueue);

  clientQueue2 = [(HMDeviceSetupOperationBase *)self clientQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__HMDeviceSetupOperationBase_start__block_invoke;
  block[3] = &unk_1E754E2A8;
  block[4] = self;
  dispatch_async(clientQueue2, block);

  v5 = *MEMORY[0x1E69E9840];
}

void __35__HMDeviceSetupOperationBase_start__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = v1;
  if (v1)
  {
    if (([v1 isFinished] & 1) != 0 || objc_msgSend(v2, "isCancelled"))
    {
      v3 = objc_autoreleasePoolPush();
      v4 = v2;
      v5 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = HMFGetLogIdentifier();
        v14 = 138543362;
        v15 = v6;
        _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Operation is already complete, aborting.", &v14, 0xCu);
      }

      objc_autoreleasePoolPop(v3);
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      v8 = v2;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = HMFGetLogIdentifier();
        v14 = 138543362;
        v15 = v10;
        _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Starting operation", &v14, 0xCu);
      }

      objc_autoreleasePoolPop(v7);
      [v8 setExecuting:1];
      v11 = [v8 setupSession];
      [v11 configure];

      v12 = [v8 setupSession];
      [v12 open];
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setAccessory:(id)accessory
{
  accessoryCopy = accessory;
  os_unfair_lock_lock_with_options();
  accessory = self->_accessory;
  self->_accessory = accessoryCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMAccessory)accessory
{
  os_unfair_lock_lock_with_options();
  v3 = self->_accessory;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setQualityOfService:(int64_t)service
{
  v7.receiver = self;
  v7.super_class = HMDeviceSetupOperationBase;
  [(HMDeviceSetupOperationBase *)&v7 setQualityOfService:?];
  clientQueue = self->_clientQueue;
  v6 = dispatch_get_global_queue(service, 0);
  dispatch_set_target_queue(clientQueue, v6);
}

- (void)setError:(id)error
{
  v4 = [error copy];
  os_unfair_lock_lock_with_options();
  error = self->_error;
  self->_error = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSError)error
{
  os_unfair_lock_lock_with_options();
  v3 = self->_error;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)finish
{
  [(HMDeviceSetupOperationBase *)self setExecuting:0];

  [(HMDeviceSetupOperationBase *)self setFinished:1];
}

- (void)setFinished:(BOOL)finished
{
  [(HMDeviceSetupOperationBase *)self willChangeValueForKey:@"isFinished"];
  os_unfair_lock_lock_with_options();
  self->_finished = finished;
  os_unfair_lock_unlock(&self->_lock);

  [(HMDeviceSetupOperationBase *)self didChangeValueForKey:@"isFinished"];
}

- (BOOL)isFinished
{
  os_unfair_lock_lock_with_options();
  finished = self->_finished;
  os_unfair_lock_unlock(&self->_lock);
  return finished;
}

- (void)setExecuting:(BOOL)executing
{
  [(HMDeviceSetupOperationBase *)self willChangeValueForKey:@"isExecuting"];
  os_unfair_lock_lock_with_options();
  self->_executing = executing;
  os_unfair_lock_unlock(&self->_lock);

  [(HMDeviceSetupOperationBase *)self didChangeValueForKey:@"isExecuting"];
}

- (BOOL)isExecuting
{
  os_unfair_lock_lock_with_options();
  executing = self->_executing;
  os_unfair_lock_unlock(&self->_lock);
  return executing;
}

- (void)dealloc
{
  clientQueue = [(HMDeviceSetupOperationBase *)self clientQueue];
  dispatch_activate(clientQueue);

  v4.receiver = self;
  v4.super_class = HMDeviceSetupOperationBase;
  [(HMDeviceSetupOperationBase *)&v4 dealloc];
}

- (HMDeviceSetupOperationBase)initWithSessionTransport:(id)transport setupSessionFactory:(id)factory
{
  transportCopy = transport;
  factoryCopy = factory;
  v22.receiver = self;
  v22.super_class = HMDeviceSetupOperationBase;
  v8 = [(HMDeviceSetupOperationBase *)&v22 init];
  v9 = v8;
  if (v8)
  {
    v10 = HMDispatchQueueNameString(v8, 0);
    uTF8String = [v10 UTF8String];
    v12 = dispatch_queue_attr_make_initially_inactive(0);
    v13 = dispatch_queue_create(uTF8String, v12);
    clientQueue = v9->_clientQueue;
    v9->_clientQueue = v13;

    objc_storeWeak(&v9->_sessionTransport, transportCopy);
    v15 = factoryCopy[2](factoryCopy, v9);
    setupSession = v9->_setupSession;
    v9->_setupSession = v15;

    v17 = MEMORY[0x1E696AEC0];
    identifier = [(HMDeviceSetupSession *)v9->_setupSession identifier];
    uUIDString = [identifier UUIDString];
    v20 = [v17 stringWithFormat:@"DeviceSetupOperation (%@)", uUIDString];
    [(HMDeviceSetupOperationBase *)v9 setName:v20];
  }

  return v9;
}

- (HMDeviceSetupOperationBase)initWithSessionTransport:(id)transport sessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__HMDeviceSetupOperationBase_initWithSessionTransport_sessionIdentifier___block_invoke;
  v10[3] = &unk_1E7549330;
  v11 = identifierCopy;
  v7 = identifierCopy;
  v8 = [(HMDeviceSetupOperationBase *)self initWithSessionTransport:transport setupSessionFactory:v10];

  return v8;
}

HMDeviceSetupSession *__73__HMDeviceSetupOperationBase_initWithSessionTransport_sessionIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[HMDeviceSetupSession alloc] initWithRole:0 identifier:*(a1 + 32) delegate:v3];

  return v4;
}

- (HMDeviceSetupOperationBase)initWithSessionTransport:(id)transport
{
  v4 = MEMORY[0x1E696AFB0];
  transportCopy = transport;
  uUID = [v4 UUID];
  v7 = [(HMDeviceSetupOperationBase *)self initWithSessionTransport:transportCopy sessionIdentifier:uUID];

  return v7;
}

- (HMDeviceSetupOperationBase)init
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t17 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t17, &__block_literal_global_6792);
  }

  v3 = logCategory__hmf_once_v18;

  return v3;
}

uint64_t __41__HMDeviceSetupOperationBase_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  logCategory__hmf_once_v18 = HMFCreateOSLogHandle();

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"executing"])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [keyCopy isEqualToString:@"finished"] ^ 1;
  }

  return v4;
}

@end