@interface HMHomePersonManager
+ (id)logCategory;
+ (id)personManagerUUIDFromHomeUUID:(id)d;
- (HMHomePersonManager)initWithHome:(id)home;
- (id)logIdentifier;
@end

@implementation HMHomePersonManager

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_14752 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_14752, &__block_literal_global_14753);
  }

  v3 = logCategory__hmf_once_v1_14754;

  return v3;
}

uint64_t __34__HMHomePersonManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_14754;
  logCategory__hmf_once_v1_14754 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)personManagerUUIDFromHomeUUID:(id)d
{
  v3 = MEMORY[0x1E696AFB0];
  dCopy = d;
  v5 = [[v3 alloc] initWithUUIDString:@"063D0514-8CFB-4333-AFF0-C2A70F412508"];
  v6 = MEMORY[0x1E696AFB0];
  uUIDString = [dCopy UUIDString];

  v8 = [uUIDString dataUsingEncoding:4];
  v9 = [v6 hmf_UUIDWithNamespace:v5 data:v8];

  return v9;
}

- (id)logIdentifier
{
  uUID = [(HMPersonManager *)self UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

- (HMHomePersonManager)initWithHome:(id)home
{
  homeCopy = home;
  v5 = objc_opt_class();
  uuid = [homeCopy uuid];
  v7 = [v5 personManagerUUIDFromHomeUUID:uuid];

  v8 = HMHomePersonManagerZoneNamePrefix;
  personManagerZoneUUID = [homeCopy personManagerZoneUUID];
  uUIDString = [personManagerZoneUUID UUIDString];
  v11 = [v8 stringByAppendingString:uUIDString];

  context = [homeCopy context];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v14 = [(HMPersonManager *)self initWithContext:context UUID:v7 zoneName:v11 notificationCenter:defaultCenter];

  return v14;
}

@end