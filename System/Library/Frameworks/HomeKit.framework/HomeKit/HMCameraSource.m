@interface HMCameraSource
+ (id)logCategory;
- (HMCameraSource)init;
- (HMCameraSource)initWithProfileUniqueIdentifier:(id)a3 slotIdentifier:(id)a4 aspectRatio:(double)a5;
- (HMCameraView)cameraView;
- (id)logIdentifier;
@end

@implementation HMCameraSource

- (HMCameraView)cameraView
{
  WeakRetained = objc_loadWeakRetained(&self->_cameraView);

  return WeakRetained;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(HMCameraSource *)self profileUniqueIdentifier];
  v5 = [(HMCameraSource *)self slotIdentifier];
  v6 = [v3 stringWithFormat:@"%@/%@", v4, v5];

  return v6;
}

- (HMCameraSource)initWithProfileUniqueIdentifier:(id)a3 slotIdentifier:(id)a4 aspectRatio:(double)a5
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  v10 = v9;
  if (!v9)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (a5 == 0.0)
  {
LABEL_9:
    v17 = _HMFPreconditionFailure();
    return [(HMCameraSource *)v17 init];
  }

  v19.receiver = self;
  v19.super_class = HMCameraSource;
  v11 = [(HMCameraSource *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    profileUniqueIdentifier = v11->_profileUniqueIdentifier;
    v11->_profileUniqueIdentifier = v12;

    v14 = [v10 copy];
    slotIdentifier = v11->_slotIdentifier;
    v11->_slotIdentifier = v14;

    v11->_aspectRatio = a5;
  }

  return v11;
}

- (HMCameraSource)init
{
  v3.receiver = self;
  v3.super_class = HMCameraSource;
  return [(HMCameraSource *)&v3 init];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_46169 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_46169, &__block_literal_global_46170);
  }

  v3 = logCategory__hmf_once_v1_46171;

  return v3;
}

uint64_t __29__HMCameraSource_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_46171;
  logCategory__hmf_once_v1_46171 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end