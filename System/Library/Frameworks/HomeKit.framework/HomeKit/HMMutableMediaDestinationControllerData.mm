@interface HMMutableMediaDestinationControllerData
+ (id)logCategory;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMMutableMediaDestinationControllerData

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMMediaDestinationControllerData allocWithZone:zone];
  identifier = [(HMMediaDestinationControllerData *)self identifier];
  parentIdentifier = [(HMMediaDestinationControllerData *)self parentIdentifier];
  destinationIdentifier = [(HMMediaDestinationControllerData *)self destinationIdentifier];
  supportedOptions = [(HMMediaDestinationControllerData *)self supportedOptions];
  availableDestinationIdentifiers = [(HMMediaDestinationControllerData *)self availableDestinationIdentifiers];
  v10 = [(HMMediaDestinationControllerData *)v4 initWithIdentifier:identifier parentIdentifier:parentIdentifier destinationIdentifier:destinationIdentifier supportedOptions:supportedOptions availableDestinationIdentifiers:availableDestinationIdentifiers];

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