@interface HMMutableMediaDestination
+ (id)logCategory;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HMMutableMediaDestination

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMMediaDestination allocWithZone:a3];
  v5 = [(HMMediaDestination *)self uniqueIdentifier];
  v6 = [(HMMediaDestination *)self parentIdentifier];
  v7 = [(HMMediaDestination *)self supportedOptions];
  v8 = [(HMMediaDestination *)self audioGroupIdentifier];
  v9 = [(HMMediaDestination *)v4 initWithUniqueIdentifier:v5 parentIdentifier:v6 supportedOptions:v7 audioGroupIdentifier:v8];

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t11 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t11, &__block_literal_global_235);
  }

  v3 = logCategory__hmf_once_v12;

  return v3;
}

uint64_t __40__HMMutableMediaDestination_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  logCategory__hmf_once_v12 = HMFCreateOSLogHandle();

  return MEMORY[0x1EEE66BB8]();
}

@end