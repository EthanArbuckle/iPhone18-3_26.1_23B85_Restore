@interface HMPhotosPersonManager
+ (id)logCategory;
+ (id)personManagerUUIDFromUserUUID:(id)a3;
- (HMPhotosPersonManager)initWithContext:(id)a3 UUID:(id)a4;
- (HMPhotosPersonManager)initWithUser:(id)a3;
- (id)logIdentifier;
@end

@implementation HMPhotosPersonManager

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_32845 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_32845, &__block_literal_global_32846);
  }

  v3 = logCategory__hmf_once_v1_32847;

  return v3;
}

uint64_t __36__HMPhotosPersonManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_32847;
  logCategory__hmf_once_v1_32847 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)personManagerUUIDFromUserUUID:(id)a3
{
  v3 = MEMORY[0x1E696AFB0];
  v4 = a3;
  v5 = [[v3 alloc] initWithUUIDString:@"E8A07312-F9F1-47FC-AE77-016826C7FD3F"];
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

- (HMPhotosPersonManager)initWithContext:(id)a3 UUID:(id)a4
{
  v6 = MEMORY[0x1E696AD88];
  v7 = a4;
  v8 = a3;
  v9 = [v6 defaultCenter];
  v10 = [(HMPersonManager *)self initWithContext:v8 UUID:v7 zoneName:@"<unavailable>" notificationCenter:v9];

  return v10;
}

- (HMPhotosPersonManager)initWithUser:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 uuid];
  v7 = [v5 personManagerUUIDFromUserUUID:v6];

  v8 = HMPhotosPersonManagerZoneNamePrefix;
  v9 = [v4 photosPersonManagerZoneUUID];
  v10 = [v9 UUIDString];
  v11 = [v8 stringByAppendingString:v10];

  v12 = [v4 context];

  v13 = [MEMORY[0x1E696AD88] defaultCenter];
  v14 = [(HMPersonManager *)self initWithContext:v12 UUID:v7 zoneName:v11 notificationCenter:v13];

  return v14;
}

@end