@interface HMActiveAssertion
@end

@implementation HMActiveAssertion

void __43____HMActiveAssertion__setAssertionActive___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 32);
      *buf = 138543874;
      v21 = v10;
      v22 = 1024;
      v23 = v11;
      v24 = 2112;
      v25 = v5;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to set assertion active to %{BOOL}d: %@", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 32);
      *buf = 138543618;
      v21 = v12;
      v22 = 1024;
      v23 = v13;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Posting HMActiveAssertionDidSendStateNotification with active: %{BOOL}d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v7);
    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{*(a1 + 32), @"HMActiveAssertionActiveStateNotificationKey"}];
    v19 = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    [v14 postNotificationName:@"HMActiveAssertionDidSendStateNotification" object:0 userInfo:v16];
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __31____HMActiveAssertion_acquire___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isValid])
  {
    [(__HMActiveAssertion *)WeakRetained _setAssertionActive:?];
  }
}

@end