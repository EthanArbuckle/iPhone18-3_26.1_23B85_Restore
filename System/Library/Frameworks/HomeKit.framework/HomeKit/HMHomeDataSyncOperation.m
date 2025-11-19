@interface HMHomeDataSyncOperation
@end

@implementation HMHomeDataSyncOperation

uint64_t __40____HMHomeDataSyncOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  logCategory__hmf_once_v8_53189 = HMFCreateOSLogHandle();

  return MEMORY[0x1EEE66BB8]();
}

void __33____HMHomeDataSyncOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained((a1 + 40));
    if (v8)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = WeakRetained;
      v11 = HMFGetOSLogHandle();
      v12 = v11;
      if (v6)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v13 = HMFGetLogIdentifier();
          *buf = 138543362;
          v26 = v13;
          _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Processing sync response", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v9);
        v14 = [v10 isRefresh];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __33____HMHomeDataSyncOperation_main__block_invoke_6;
        v23[3] = &unk_1E754E2F8;
        objc_copyWeak(&v24, (a1 + 32));
        [v8 __processSyncResponse:v6 refreshRequested:v14 completionHandler:v23];
        objc_destroyWeak(&v24);
      }

      else
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543618;
          v26 = v20;
          v27 = 2112;
          v28 = v5;
          _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Sync operation failed: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v9);
        if ([v5 isHMError])
        {
          v21 = [v5 userInfo];
          [v8 _updateStatusWithPayload:v21];
        }

        [v10 cancelWithError:v5];
      }
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = WeakRetained;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v26 = v18;
        _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_INFO, "%{public}@Manager was deallocated before fetch response was handled", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      v19 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
      [v16 cancelWithError:v19];
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __33____HMHomeDataSyncOperation_main__block_invoke_6(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to process sync response: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [v6 cancelWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Successfully processed sync response", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [v6 finish];
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end