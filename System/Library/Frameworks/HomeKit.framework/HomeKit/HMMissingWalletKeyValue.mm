@interface HMMissingWalletKeyValue
+ (id)shortDescription;
+ (id)valueForMissingWalletKey:(id)key;
- (BOOL)isEqual:(id)equal;
- (HMMissingWalletKeyValue)initWithAccessoryUUID:(id)d userUUID:(id)iD;
- (HMMissingWalletKeyValue)initWithCoder:(id)coder;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMMissingWalletKeyValue

- (NSArray)attributeDescriptions
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  accessoryUUID = [(HMMissingWalletKeyValue *)self accessoryUUID];
  v5 = [v3 initWithName:@"accessoryUUID" value:accessoryUUID];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  userUUID = [(HMMissingWalletKeyValue *)self userUUID];
  v8 = [v6 initWithName:@"userUUID" value:userUUID];
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

- (HMMissingWalletKeyValue)initWithCoder:(id)coder
{
  v22 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMMissingWalletKeyValueCodingKeyAccessoryUUID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMMissingWalletKeyValueCodingKeyUserUUID"];
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
    selfCopy = self;
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
    selfCopy = [(HMMissingWalletKeyValue *)self initWithAccessoryUUID:v5 userUUID:v6];
    v13 = selfCopy;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accessoryUUID = [(HMMissingWalletKeyValue *)self accessoryUUID];
  [coderCopy encodeObject:accessoryUUID forKey:@"HMMissingWalletKeyValueCodingKeyAccessoryUUID"];

  userUUID = [(HMMissingWalletKeyValue *)self userUUID];
  [coderCopy encodeObject:userUUID forKey:@"HMMissingWalletKeyValueCodingKeyUserUUID"];
}

- (unint64_t)hash
{
  accessoryUUID = [(HMMissingWalletKeyValue *)self accessoryUUID];
  v4 = [accessoryUUID hash];
  userUUID = [(HMMissingWalletKeyValue *)self userUUID];
  v6 = [userUUID hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    accessoryUUID = [(HMMissingWalletKeyValue *)self accessoryUUID];
    accessoryUUID2 = [v6 accessoryUUID];
    if ([accessoryUUID isEqual:accessoryUUID2])
    {
      userUUID = [(HMMissingWalletKeyValue *)self userUUID];
      userUUID2 = [v6 userUUID];
      v11 = [userUUID isEqual:userUUID2];
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

- (HMMissingWalletKeyValue)initWithAccessoryUUID:(id)d userUUID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v14.receiver = self;
  v14.super_class = HMMissingWalletKeyValue;
  v8 = [(HMMissingWalletKeyValue *)&v14 init];
  if (v8)
  {
    v9 = [dCopy copy];
    accessoryUUID = v8->_accessoryUUID;
    v8->_accessoryUUID = v9;

    v11 = [iDCopy copy];
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

+ (id)valueForMissingWalletKey:(id)key
{
  keyCopy = key;
  v4 = [HMMissingWalletKeyValue alloc];
  accessory = [keyCopy accessory];
  uuid = [accessory uuid];
  user = [keyCopy user];

  uuid2 = [user uuid];
  v9 = [(HMMissingWalletKeyValue *)v4 initWithAccessoryUUID:uuid userUUID:uuid2];

  return v9;
}

@end