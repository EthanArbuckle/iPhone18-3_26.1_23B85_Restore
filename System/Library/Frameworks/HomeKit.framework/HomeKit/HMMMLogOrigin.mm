@interface HMMMLogOrigin
+ (id)logCategory;
+ (id)originWithLogIdentifier:(id)a3;
- (HMMMLogOrigin)initWithLogIdentifier:(id)a3;
@end

@implementation HMMMLogOrigin

- (HMMMLogOrigin)initWithLogIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMMMLogOrigin;
  v6 = [(HMMMLogOrigin *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_logId, a3);
  }

  return v7;
}

+ (id)originWithLogIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[HMMMLogOrigin alloc] initWithLogIdentifier:v3];

  return v4;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_23727 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_23727, &__block_literal_global_23728);
  }

  v3 = logCategory__hmf_once_v1_23729;

  return v3;
}

uint64_t __28__HMMMLogOrigin_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_23729;
  logCategory__hmf_once_v1_23729 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end