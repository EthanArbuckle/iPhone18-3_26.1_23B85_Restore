@interface HMMigrationBoost
- (HMMigrationBoost)initWithMessageTarget:(id)a3 notificationCenter:(id)a4 messageDispatcher:(id)a5 queue:(id)a6;
- (void)_handleDaemonInterruptedNotification:(id)a3;
- (void)startBoost;
- (void)stopBoost;
@end

@implementation HMMigrationBoost

- (void)_handleDaemonInterruptedNotification:(id)a3
{
  v4 = [(HMMigrationBoost *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__HMMigrationBoost__handleDaemonInterruptedNotification___block_invoke;
  block[3] = &unk_1E754E2A8;
  block[4] = self;
  dispatch_async(v4, block);
}

void __57__HMMigrationBoost__handleDaemonInterruptedNotification___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v15 = v5;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Sending boost message after daemon disconnect", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = MEMORY[0x1E69A2A10];
  v7 = objc_alloc(MEMORY[0x1E69A2A00]);
  v8 = [*(a1 + 32) messageTarget];
  v9 = [v7 initWithTarget:v8];
  v10 = [v6 messageWithName:@"HMHM.upgradeToHH2Boost" destination:v9 payload:0];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__HMMigrationBoost__handleDaemonInterruptedNotification___block_invoke_4;
  v13[3] = &unk_1E754CD98;
  v13[4] = *(a1 + 32);
  [v10 setResponseHandler:v13];
  v11 = [*(a1 + 32) messageDispatcher];
  [v11 sendMessage:v10 completionHandler:0];

  v12 = *MEMORY[0x1E69E9840];
}

void __57__HMMigrationBoost__handleDaemonInterruptedNotification___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v12 = 138543874;
    v13 = v10;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Received response to boost message: %@, error: %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  [*(a1 + 32) stopBoost];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)stopBoost
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@No longer waiting for daemon disconnect to trigger a boost", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMMigrationBoost *)v4 notificationCenter];
  [v7 removeObserver:v4];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)startBoost
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Waiting for daemon disconnect to trigger a boost", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMMigrationBoost *)v4 notificationCenter];
  [v7 addObserver:v4 selector:sel__handleDaemonInterruptedNotification_ name:@"HMDaemonDisconnectedNotification" object:0];

  v8 = *MEMORY[0x1E69E9840];
}

- (HMMigrationBoost)initWithMessageTarget:(id)a3 notificationCenter:(id)a4 messageDispatcher:(id)a5 queue:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HMMigrationBoost;
  v15 = [(HMMigrationBoost *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_messageTarget, a3);
    objc_storeStrong(&v16->_notificationCenter, a4);
    objc_storeStrong(&v16->_messageDispatcher, a5);
    objc_storeStrong(&v16->_queue, a6);
  }

  return v16;
}

@end