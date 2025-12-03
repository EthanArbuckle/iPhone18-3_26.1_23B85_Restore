@interface HMPhotosPersonManager
+ (id)logCategory;
+ (id)personManagerUUIDFromUserUUID:(id)d;
- (HMPhotosPersonManager)initWithContext:(id)context UUID:(id)d;
- (HMPhotosPersonManager)initWithUser:(id)user;
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

+ (id)personManagerUUIDFromUserUUID:(id)d
{
  v3 = MEMORY[0x1E696AFB0];
  dCopy = d;
  v5 = [[v3 alloc] initWithUUIDString:@"E8A07312-F9F1-47FC-AE77-016826C7FD3F"];
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

- (HMPhotosPersonManager)initWithContext:(id)context UUID:(id)d
{
  v6 = MEMORY[0x1E696AD88];
  dCopy = d;
  contextCopy = context;
  defaultCenter = [v6 defaultCenter];
  v10 = [(HMPersonManager *)self initWithContext:contextCopy UUID:dCopy zoneName:@"<unavailable>" notificationCenter:defaultCenter];

  return v10;
}

- (HMPhotosPersonManager)initWithUser:(id)user
{
  userCopy = user;
  v5 = objc_opt_class();
  uuid = [userCopy uuid];
  v7 = [v5 personManagerUUIDFromUserUUID:uuid];

  v8 = HMPhotosPersonManagerZoneNamePrefix;
  photosPersonManagerZoneUUID = [userCopy photosPersonManagerZoneUUID];
  uUIDString = [photosPersonManagerZoneUUID UUIDString];
  v11 = [v8 stringByAppendingString:uUIDString];

  context = [userCopy context];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v14 = [(HMPersonManager *)self initWithContext:context UUID:v7 zoneName:v11 notificationCenter:defaultCenter];

  return v14;
}

@end