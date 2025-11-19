@interface HMMissingWalletKey
+ (id)missingWalletKeyWithValue:(id)a3 home:(id)a4;
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMMissingWalletKey)initWithAccessory:(id)a3 user:(id)a4;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
@end

@implementation HMMissingWalletKey

- (NSArray)attributeDescriptions
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [(HMMissingWalletKey *)self accessory];
  v5 = [v4 uuid];
  v6 = [v3 initWithName:@"accessoryUUID" value:v5];
  v14[0] = v6;
  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  v8 = [(HMMissingWalletKey *)self user];
  v9 = [v8 uuid];
  v10 = [v7 initWithName:@"userUUID" value:v9];
  v14[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (unint64_t)hash
{
  v3 = [(HMMissingWalletKey *)self accessory];
  v4 = [v3 uniqueIdentifier];
  v5 = [v4 hash];
  v6 = [(HMMissingWalletKey *)self user];
  v7 = [v6 uniqueIdentifier];
  v8 = [v7 hash];

  return v8 ^ v5;
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
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = [(HMMissingWalletKey *)self accessory];
  v8 = [v7 uniqueIdentifier];
  v9 = [v6 accessory];
  v10 = [v9 uniqueIdentifier];
  v11 = HMFEqualObjects();

  if (v11)
  {
    v12 = [(HMMissingWalletKey *)self user];
    v13 = [v12 uniqueIdentifier];
    v14 = [v6 user];
    v15 = [v14 uniqueIdentifier];
    v16 = HMFEqualObjects();
  }

  else
  {
LABEL_7:
    v16 = 0;
  }

  return v16;
}

- (HMMissingWalletKey)initWithAccessory:(id)a3 user:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMMissingWalletKey;
  v9 = [(HMMissingWalletKey *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessory, a3);
    objc_storeStrong(&v10->_user, a4);
  }

  return v10;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)missingWalletKeyWithValue:(id)a3 home:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 accessoryUUID];
  v9 = [v7 accessoryWithUUID:v8];

  v10 = [v6 userUUID];
  v11 = [v7 userWithUUID:v10];

  if (v9 && v11)
  {
    v12 = [[HMMissingWalletKey alloc] initWithAccessory:v9 user:v11];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = a1;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v6 accessoryUUID];
      v18 = [v6 userUUID];
      v21 = 138544386;
      v22 = v16;
      v23 = 2112;
      v24 = v17;
      v25 = 2112;
      v26 = v18;
      v27 = 2112;
      v28 = v9;
      v29 = 2112;
      v30 = v11;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Could not create HMMissingWalletKey with accessoryUUID: %@, userUUID: %@, accessory: %@, user: %@", &v21, 0x34u);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v12;
}

@end