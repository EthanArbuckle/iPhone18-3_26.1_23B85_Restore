@interface HMCameraView
+ (id)logCategory;
- (HMCameraView)init;
- (id)logIdentifier;
- (void)_fillSlotForCameraSource;
- (void)setCameraSource:(HMCameraSource *)cameraSource;
- (void)willMoveToWindow:(id)a3;
@end

@implementation HMCameraView

- (id)logIdentifier
{
  v2 = [(HMCameraView *)self cameraSource];
  v3 = [v2 logIdentifier];

  return v3;
}

- (void)_fillSlotForCameraSource
{
  v3 = [(HMCameraView *)self cameraSource];
  v4 = [v3 slotIdentifier];
  v5 = [v4 unsignedIntValue];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__HMCameraView__fillSlotForCameraSource__block_invoke;
  v7[3] = &unk_1E7547B68;
  v8 = v3;
  v9 = self;
  v10 = v5;
  v6 = v3;
  [v6 fillSlotWithCompletionHandler:v7];
}

void __40__HMCameraView__fillSlotForCameraSource__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) cameraSource];

  if (v4 == v5)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__HMCameraView__fillSlotForCameraSource__block_invoke_1;
    block[3] = &unk_1E7547B40;
    v10 = v3;
    v11 = *(a1 + 40);
    v14 = v10;
    v15 = v11;
    v16 = *(a1 + 48);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 40);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v9;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Ignoring fill slot completion because camera source has changed", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __40__HMCameraView__fillSlotForCameraSource__block_invoke_1(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 32);
      v15 = 138543618;
      v16 = v5;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_ERROR, "%{public}@Failed to fill slot for camera source: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    [MEMORY[0x1E6979518] begin];
    v7 = [*(a1 + 40) layer];
    [v7 setContents:0];

    [MEMORY[0x1E6979518] commit];
  }

  else
  {
    [MEMORY[0x1E6979518] begin];
    v8 = [MEMORY[0x1E6979320] objectForSlot:*(a1 + 48)];
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 40);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Setting layer contents: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [*(a1 + 40) layer];
    [v13 setContents:v8];

    [MEMORY[0x1E6979518] commit];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)willMoveToWindow:(id)a3
{
  v5 = [(HMCameraView *)self cameraSource];

  if (a3 && v5)
  {

    [(HMCameraView *)self _fillSlotForCameraSource];
  }
}

- (void)setCameraSource:(HMCameraSource *)cameraSource
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = cameraSource;
  v6 = [(HMCameraView *)self cameraSource];

  if (v6 != v5)
  {
    objc_storeStrong(&self->_cameraSource, cameraSource);
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v10;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Set camera source to %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    if (v5)
    {
      v11 = [(HMCameraView *)v8 window];

      if (v11)
      {
        [(HMCameraView *)v8 _fillSlotForCameraSource];
      }
    }

    else
    {
      [MEMORY[0x1E6979518] begin];
      v12 = [(HMCameraView *)v8 layer];
      [v12 setContents:0];

      [MEMORY[0x1E6979518] commit];
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (HMCameraView)init
{
  v3.receiver = self;
  v3.super_class = HMCameraView;
  return [(HMCameraView *)&v3 init];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_14999 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_14999, &__block_literal_global_15000);
  }

  v3 = logCategory__hmf_once_v5_15001;

  return v3;
}

uint64_t __27__HMCameraView_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_15001;
  logCategory__hmf_once_v5_15001 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end