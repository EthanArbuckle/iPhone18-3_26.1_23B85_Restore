@interface HMMissingWalletKeyValue
+ (id)shortDescription;
+ (id)valueForMissingWalletKey:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HMMissingWalletKeyValue)initWithAccessoryUUID:(id)a3 userUUID:(id)a4;
- (HMMissingWalletKeyValue)initWithCoder:(id)a3;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMMissingWalletKeyValue

- (NSArray)attributeDescriptions
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [(HMMissingWalletKeyValue *)self accessoryUUID];
  v5 = [v3 initWithName:@"accessoryUUID" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v7 = [(HMMissingWalletKeyValue *)self userUUID];
  v8 = [v6 initWithName:@"userUUID" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMMissingWalletKeyValue)initWithCoder:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMMissingWalletKeyValueCodingKeyAccessoryUUID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMMissingWalletKeyValueCodingKeyUserUUID"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v12 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543874;
      v17 = v11;
      v18 = 2112;
      v19 = v5;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize due to nil object after decoding accessoryUUID: %@, userUUID: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = 0;
  }

  else
  {
    v12 = [(HMMissingWalletKeyValue *)self initWithAccessoryUUID:v5 userUUID:v6];
    v13 = v12;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMMissingWalletKeyValue *)self accessoryUUID];
  [v4 encodeObject:v5 forKey:@"HMMissingWalletKeyValueCodingKeyAccessoryUUID"];

  v6 = [(HMMissingWalletKeyValue *)self userUUID];
  [v4 encodeObject:v6 forKey:@"HMMissingWalletKeyValueCodingKeyUserUUID"];
}

- (unint64_t)hash
{
  v3 = [(HMMissingWalletKeyValue *)self accessoryUUID];
  v4 = [v3 hash];
  v5 = [(HMMissingWalletKeyValue *)self userUUID];
  v6 = [v5 hash];

  return v6 ^ v4;
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
  if (v6)
  {
    v7 = [(HMMissingWalletKeyValue *)self accessoryUUID];
    v8 = [v6 accessoryUUID];
    if ([v7 isEqual:v8])
    {
      v9 = [(HMMissingWalletKeyValue *)self userUUID];
      v10 = [v6 userUUID];
      v11 = [v9 isEqual:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (HMMissingWalletKeyValue)initWithAccessoryUUID:(id)a3 userUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HMMissingWalletKeyValue;
  v8 = [(HMMissingWalletKeyValue *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    accessoryUUID = v8->_accessoryUUID;
    v8->_accessoryUUID = v9;

    v11 = [v7 copy];
    userUUID = v8->_userUUID;
    v8->_userUUID = v11;
  }

  return v8;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)valueForMissingWalletKey:(id)a3
{
  v3 = a3;
  v4 = [HMMissingWalletKeyValue alloc];
  v5 = [v3 accessory];
  v6 = [v5 uuid];
  v7 = [v3 user];

  v8 = [v7 uuid];
  v9 = [(HMMissingWalletKeyValue *)v4 initWithAccessoryUUID:v6 userUUID:v8];

  return v9;
}

@end