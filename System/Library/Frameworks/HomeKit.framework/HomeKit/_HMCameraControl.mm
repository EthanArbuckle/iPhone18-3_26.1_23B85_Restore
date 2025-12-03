@interface _HMCameraControl
+ (id)logCategory;
- (_HMCameraControl)initWithCameraProfile:(id)profile profileUniqueIdentifier:(id)identifier;
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
    cameraProfile = [(_HMCameraControl *)self cameraProfile];
    accessory = [cameraProfile accessory];
    name = [accessory name];
    profileUniqueIdentifier = [(_HMCameraControl *)self profileUniqueIdentifier];
    uUIDString = [v3 stringWithFormat:@"%@/%@", name, profileUniqueIdentifier];
  }

  else
  {
    cameraProfile = [(_HMCameraControl *)self profileUniqueIdentifier];
    uUIDString = [cameraProfile UUIDString];
  }

  return uUIDString;
}

- (_HMCameraControl)initWithCameraProfile:(id)profile profileUniqueIdentifier:(id)identifier
{
  profileCopy = profile;
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = _HMCameraControl;
  v8 = [(_HMCameraControl *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_cameraProfile, profileCopy);
    v10 = [identifierCopy copy];
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