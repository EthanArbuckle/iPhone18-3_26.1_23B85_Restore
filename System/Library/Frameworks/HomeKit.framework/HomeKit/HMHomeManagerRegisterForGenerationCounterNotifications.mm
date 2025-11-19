@interface HMHomeManagerRegisterForGenerationCounterNotifications
@end

@implementation HMHomeManagerRegisterForGenerationCounterNotifications

void ____HMHomeManagerRegisterForGenerationCounterNotifications_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = WeakRetained;
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Fetching home configuration due to generation counter update after delayed cache policy", &v7, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    [v3 _setShouldConnectToDaemon];
    [v3 _fetchHomeConfigurationWithRefreshRequested:1];
  }

  v6 = *MEMORY[0x1E69E9840];
}

@end