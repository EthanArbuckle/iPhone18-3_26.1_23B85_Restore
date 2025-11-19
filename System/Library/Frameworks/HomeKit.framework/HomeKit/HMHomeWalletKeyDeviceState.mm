@interface HMHomeWalletKeyDeviceState
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMHomeWalletKeyDeviceState)initWithCoder:(id)a3;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMHomeWalletKeyDeviceState

- (NSArray)attributeDescriptions
{
  v18[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [(HMHomeWalletKeyDeviceState *)self walletKey];
  v5 = [v3 initWithName:@"Wallet Key" value:v4];
  v18[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v7 = [(HMHomeWalletKeyDeviceState *)self expressEnablementConflictingPassDescription];
  v8 = [v6 initWithName:@"Express Enablement Conflicting Pass Description" value:v7];
  v18[1] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMHomeWalletKeyDeviceState *)self canAddWalletKey];
  v10 = HMFBooleanToString();
  v11 = [v9 initWithName:@"Can Add Wallet Key" value:v10];
  v18[2] = v11;
  v12 = objc_alloc(MEMORY[0x1E69A29C8]);
  v13 = HMHomeAddWalletKeyErrorCodeAsString([(HMHomeWalletKeyDeviceState *)self canAddWalletKeyErrorCode]);
  v14 = [v12 initWithName:@"Can Add Wallet Key Error Code" value:v13];
  v18[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:4];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (HMHomeWalletKeyDeviceState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMHomeWalletKeyDeviceStateWalletKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMHomeWalletKeyDeviceStateExpressEnablementConflictingPassDescription"];
  v7 = [v4 decodeIntegerForKey:@"HMHomeWalletKeyDeviceStateCanAddWalletKeyErrorCode"];
  v8 = [v4 decodeBoolForKey:@"HMHomeWalletKeyDeviceStateCanAddWalletKey"];

  v9 = objc_alloc_init(HMHomeWalletKeyDeviceState);
  [(HMHomeWalletKeyDeviceState *)v9 setCanAddWalletKeyErrorCode:v7];
  [(HMHomeWalletKeyDeviceState *)v9 setWalletKey:v5];
  [(HMHomeWalletKeyDeviceState *)v9 setExpressEnablementConflictingPassDescription:v6];
  [(HMHomeWalletKeyDeviceState *)v9 setCanAddWalletKey:v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(HMHomeWalletKeyDeviceState *)self walletKey];
  [v6 encodeObject:v4 forKey:@"HMHomeWalletKeyDeviceStateWalletKey"];

  v5 = [(HMHomeWalletKeyDeviceState *)self expressEnablementConflictingPassDescription];
  [v6 encodeObject:v5 forKey:@"HMHomeWalletKeyDeviceStateExpressEnablementConflictingPassDescription"];

  [v6 encodeInteger:-[HMHomeWalletKeyDeviceState canAddWalletKeyErrorCode](self forKey:{"canAddWalletKeyErrorCode"), @"HMHomeWalletKeyDeviceStateCanAddWalletKeyErrorCode"}];
  [v6 encodeBool:-[HMHomeWalletKeyDeviceState canAddWalletKey](self forKey:{"canAddWalletKey"), @"HMHomeWalletKeyDeviceStateCanAddWalletKey"}];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(HMMutableHomeWalletKeyDeviceState);
  [(HMHomeWalletKeyDeviceState *)v4 setCanAddWalletKeyErrorCode:[(HMHomeWalletKeyDeviceState *)self canAddWalletKeyErrorCode]];
  [(HMHomeWalletKeyDeviceState *)v4 setCanAddWalletKey:[(HMHomeWalletKeyDeviceState *)self canAddWalletKey]];
  v5 = [(HMHomeWalletKeyDeviceState *)self walletKey];
  [(HMHomeWalletKeyDeviceState *)v4 setWalletKey:v5];

  v6 = [(HMHomeWalletKeyDeviceState *)self expressEnablementConflictingPassDescription];
  [(HMHomeWalletKeyDeviceState *)v4 setExpressEnablementConflictingPassDescription:v6];

  return v4;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (unint64_t)hash
{
  v3 = [(HMHomeWalletKeyDeviceState *)self walletKey];
  v4 = [v3 hash];

  v5 = [(HMHomeWalletKeyDeviceState *)self expressEnablementConflictingPassDescription];
  v6 = [v5 hash] ^ v4;

  v7 = v6 ^ [(HMHomeWalletKeyDeviceState *)self canAddWalletKeyErrorCode];
  return v7 ^ [(HMHomeWalletKeyDeviceState *)self canAddWalletKey];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v8 = [v6 walletKey];
  v9 = [(HMHomeWalletKeyDeviceState *)self walletKey];
  v10 = HMFEqualObjects();

  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = [v7 expressEnablementConflictingPassDescription];
  v12 = [(HMHomeWalletKeyDeviceState *)self expressEnablementConflictingPassDescription];
  v13 = HMFEqualObjects();

  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = [v7 canAddWalletKeyErrorCode];
  if (v14 == [(HMHomeWalletKeyDeviceState *)self canAddWalletKeyErrorCode])
  {
    v15 = [v7 canAddWalletKey];
    v16 = v15 ^ [(HMHomeWalletKeyDeviceState *)self canAddWalletKey]^ 1;
  }

  else
  {
LABEL_9:
    LOBYTE(v16) = 0;
  }

  return v16;
}

@end