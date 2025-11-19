@interface HMCameraControl
- (HMCameraControl)init;
@end

@implementation HMCameraControl

- (HMCameraControl)init
{
  v3.receiver = self;
  v3.super_class = HMCameraControl;
  return [(HMCameraControl *)&v3 init];
}

uint64_t __31___HMCameraControl_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_32481;
  logCategory__hmf_once_v1_32481 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end