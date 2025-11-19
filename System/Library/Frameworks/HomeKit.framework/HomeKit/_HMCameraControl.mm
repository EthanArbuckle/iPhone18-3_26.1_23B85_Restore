@interface _HMCameraControl
+ (id)logCategory;
- (_HMCameraControl)initWithCameraProfile:(id)a3 profileUniqueIdentifier:(id)a4;
- (_HMCameraProfile)cameraProfile;
- (id)logIdentifier;
@end

@implementation _HMCameraControl

- (_HMCameraProfile)cameraProfile
{
  WeakRetained = objc_loadWeakRetained(&self->_cameraProfile);

  return WeakRetained;
}

- (id)logIdentifier
{
  if (isInternalBuild())
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = [(_HMCameraControl *)self cameraProfile];
    v5 = [v4 accessory];
    v6 = [v5 name];
    v7 = [(_HMCameraControl *)self profileUniqueIdentifier];
    v8 = [v3 stringWithFormat:@"%@/%@", v6, v7];
  }

  else
  {
    v4 = [(_HMCameraControl *)self profileUniqueIdentifier];
    v8 = [v4 UUIDString];
  }

  return v8;
}

- (_HMCameraControl)initWithCameraProfile:(id)a3 profileUniqueIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = _HMCameraControl;
  v8 = [(_HMCameraControl *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_cameraProfile, v6);
    v10 = [v7 copy];
    profileUniqueIdentifier = v9->_profileUniqueIdentifier;
    v9->_profileUniqueIdentifier = v10;
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_32479 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_32479, &__block_literal_global_32480);
  }

  v3 = logCategory__hmf_once_v1_32481;

  return v3;
}

@end