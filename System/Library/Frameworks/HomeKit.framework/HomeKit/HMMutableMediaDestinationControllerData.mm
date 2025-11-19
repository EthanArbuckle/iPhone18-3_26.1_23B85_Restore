@interface HMMutableMediaDestinationControllerData
+ (id)logCategory;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HMMutableMediaDestinationControllerData

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMMediaDestinationControllerData allocWithZone:a3];
  v5 = [(HMMediaDestinationControllerData *)self identifier];
  v6 = [(HMMediaDestinationControllerData *)self parentIdentifier];
  v7 = [(HMMediaDestinationControllerData *)self destinationIdentifier];
  v8 = [(HMMediaDestinationControllerData *)self supportedOptions];
  v9 = [(HMMediaDestinationControllerData *)self availableDestinationIdentifiers];
  v10 = [(HMMediaDestinationControllerData *)v4 initWithIdentifier:v5 parentIdentifier:v6 destinationIdentifier:v7 supportedOptions:v8 availableDestinationIdentifiers:v9];

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t13 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t13, &__block_literal_global_193);
  }

  v3 = logCategory__hmf_once_v14;

  return v3;
}

uint64_t __54__HMMutableMediaDestinationControllerData_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v14;
  logCategory__hmf_once_v14 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end