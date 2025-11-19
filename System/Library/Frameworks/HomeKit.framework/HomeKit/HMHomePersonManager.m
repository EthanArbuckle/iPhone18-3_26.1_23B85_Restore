@interface HMHomePersonManager
+ (id)logCategory;
+ (id)personManagerUUIDFromHomeUUID:(id)a3;
- (HMHomePersonManager)initWithHome:(id)a3;
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

+ (id)personManagerUUIDFromHomeUUID:(id)a3
{
  v3 = MEMORY[0x1E696AFB0];
  v4 = a3;
  v5 = [[v3 alloc] initWithUUIDString:@"063D0514-8CFB-4333-AFF0-C2A70F412508"];
  v6 = MEMORY[0x1E696AFB0];
  v7 = [v4 UUIDString];

  v8 = [v7 dataUsingEncoding:4];
  v9 = [v6 hmf_UUIDWithNamespace:v5 data:v8];

  return v9;
}

- (id)logIdentifier
{
  v2 = [(HMPersonManager *)self UUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (HMHomePersonManager)initWithHome:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 uuid];
  v7 = [v5 personManagerUUIDFromHomeUUID:v6];

  v8 = HMHomePersonManagerZoneNamePrefix;
  v9 = [v4 personManagerZoneUUID];
  v10 = [v9 UUIDString];
  v11 = [v8 stringByAppendingString:v10];

  v12 = [v4 context];

  v13 = [MEMORY[0x1E696AD88] defaultCenter];
  v14 = [(HMPersonManager *)self initWithContext:v12 UUID:v7 zoneName:v11 notificationCenter:v13];

  return v14;
}

@end