@interface HMHomeAccessCodeValue
+ (id)homeAccessCodeValueWithStringValue:(id)a3 label:(id)a4;
+ (id)homeAccessCodeValueWithStringValue:(id)a3 removedUserInfo:(id)a4;
+ (id)homeAccessCodeValueWithStringValue:(id)a3 userUUID:(id)a4;
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMHomeAccessCodeValue)initWithAccessCodeValue:(id)a3 userInformationValue:(id)a4;
- (HMHomeAccessCodeValue)initWithCoder:(id)a3;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMHomeAccessCodeValue

- (NSArray)attributeDescriptions
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [(HMHomeAccessCodeValue *)self accessCodeValue];
  v5 = [v3 initWithName:@"accessCodeValue" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v7 = [(HMHomeAccessCodeValue *)self userInformationValue];
  v8 = [v6 initWithName:@"userInformationValue" value:v7];
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

- (HMHomeAccessCodeValue)initWithCoder:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMHomeAccessCodeValueCodingKeyAccessCodeValue"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMHomeAccessCodeValueCodingKeyUserInformationValue"];
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
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize due to nil object after decoding accessCodeValue: %@, userInformationValue: %@,", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = 0;
  }

  else
  {
    v12 = [(HMHomeAccessCodeValue *)self initWithAccessCodeValue:v5 userInformationValue:v6];
    v13 = v12;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMHomeAccessCodeValue *)self accessCodeValue];
  [v4 encodeObject:v5 forKey:@"HMHomeAccessCodeValueCodingKeyAccessCodeValue"];

  v6 = [(HMHomeAccessCodeValue *)self userInformationValue];
  [v4 encodeObject:v6 forKey:@"HMHomeAccessCodeValueCodingKeyUserInformationValue"];
}

- (unint64_t)hash
{
  v3 = [(HMHomeAccessCodeValue *)self accessCodeValue];
  v4 = [v3 hash];
  v5 = [(HMHomeAccessCodeValue *)self userInformationValue];
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
    v7 = [(HMHomeAccessCodeValue *)self accessCodeValue];
    v8 = [v6 accessCodeValue];
    if ([v7 isEqual:v8])
    {
      v9 = [(HMHomeAccessCodeValue *)self userInformationValue];
      v10 = [v6 userInformationValue];
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

- (HMHomeAccessCodeValue)initWithAccessCodeValue:(id)a3 userInformationValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HMHomeAccessCodeValue;
  v8 = [(HMHomeAccessCodeValue *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    accessCodeValue = v8->_accessCodeValue;
    v8->_accessCodeValue = v9;

    v11 = [v7 copy];
    userInformationValue = v8->_userInformationValue;
    v8->_userInformationValue = v11;
  }

  return v8;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)homeAccessCodeValueWithStringValue:(id)a3 removedUserInfo:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[HMAccessCodeUserInformationValue alloc] initWithSimpleLabel:0 labelIdentifier:0 userUUID:0 removedUserInfo:v5];

  v8 = [[HMAccessCodeValue alloc] initWithStringValue:v6];
  v9 = [[HMHomeAccessCodeValue alloc] initWithAccessCodeValue:v8 userInformationValue:v7];

  return v9;
}

+ (id)homeAccessCodeValueWithStringValue:(id)a3 label:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[HMAccessCodeUserInformationValue alloc] initWithSimpleLabel:v5 labelIdentifier:0 userUUID:0 removedUserInfo:0];

  v8 = [[HMAccessCodeValue alloc] initWithStringValue:v6];
  v9 = [[HMHomeAccessCodeValue alloc] initWithAccessCodeValue:v8 userInformationValue:v7];

  return v9;
}

+ (id)homeAccessCodeValueWithStringValue:(id)a3 userUUID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[HMAccessCodeUserInformationValue alloc] initWithSimpleLabel:0 labelIdentifier:0 userUUID:v5 removedUserInfo:0];

  v8 = [[HMAccessCodeValue alloc] initWithStringValue:v6];
  v9 = [[HMHomeAccessCodeValue alloc] initWithAccessCodeValue:v8 userInformationValue:v7];

  return v9;
}

@end