@interface HMHomeManagerRegisterForNotifications
@end

@implementation HMHomeManagerRegisterForNotifications

void ____HMHomeManagerRegisterForNotifications_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained context];
    v4 = [v3 queue];
    dispatch_assert_queue_V2(v4);

    v5 = objc_autoreleasePoolPush();
    v6 = v2;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Refreshing config from HomeKit daemon", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [v6 _setShouldConnectToDaemon];
    [v6 _fetchHomeConfigurationWithRefreshRequested:1];
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end