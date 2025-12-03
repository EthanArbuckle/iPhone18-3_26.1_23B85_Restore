@interface HMHomeAccessCodeValue
+ (id)homeAccessCodeValueWithStringValue:(id)value label:(id)label;
+ (id)homeAccessCodeValueWithStringValue:(id)value removedUserInfo:(id)info;
+ (id)homeAccessCodeValueWithStringValue:(id)value userUUID:(id)d;
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMHomeAccessCodeValue)initWithAccessCodeValue:(id)value userInformationValue:(id)informationValue;
- (HMHomeAccessCodeValue)initWithCoder:(id)coder;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMHomeAccessCodeValue

- (NSArray)attributeDescriptions
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  accessCodeValue = [(HMHomeAccessCodeValue *)self accessCodeValue];
  v5 = [v3 initWithName:@"accessCodeValue" value:accessCodeValue];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  userInformationValue = [(HMHomeAccessCodeValue *)self userInformationValue];
  v8 = [v6 initWithName:@"userInformationValue" value:userInformationValue];
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

- (HMHomeAccessCodeValue)initWithCoder:(id)coder
{
  v22 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMHomeAccessCodeValueCodingKeyAccessCodeValue"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMHomeAccessCodeValueCodingKeyUserInformationValue"];
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
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize due to nil object after decoding accessCodeValue: %@, userInformationValue: %@,", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = 0;
  }

  else
  {
    selfCopy = [(HMHomeAccessCodeValue *)self initWithAccessCodeValue:v5 userInformationValue:v6];
    v13 = selfCopy;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accessCodeValue = [(HMHomeAccessCodeValue *)self accessCodeValue];
  [coderCopy encodeObject:accessCodeValue forKey:@"HMHomeAccessCodeValueCodingKeyAccessCodeValue"];

  userInformationValue = [(HMHomeAccessCodeValue *)self userInformationValue];
  [coderCopy encodeObject:userInformationValue forKey:@"HMHomeAccessCodeValueCodingKeyUserInformationValue"];
}

- (unint64_t)hash
{
  accessCodeValue = [(HMHomeAccessCodeValue *)self accessCodeValue];
  v4 = [accessCodeValue hash];
  userInformationValue = [(HMHomeAccessCodeValue *)self userInformationValue];
  v6 = [userInformationValue hash];

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
    accessCodeValue = [(HMHomeAccessCodeValue *)self accessCodeValue];
    accessCodeValue2 = [v6 accessCodeValue];
    if ([accessCodeValue isEqual:accessCodeValue2])
    {
      userInformationValue = [(HMHomeAccessCodeValue *)self userInformationValue];
      userInformationValue2 = [v6 userInformationValue];
      v11 = [userInformationValue isEqual:userInformationValue2];
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

- (HMHomeAccessCodeValue)initWithAccessCodeValue:(id)value userInformationValue:(id)informationValue
{
  valueCopy = value;
  informationValueCopy = informationValue;
  v14.receiver = self;
  v14.super_class = HMHomeAccessCodeValue;
  v8 = [(HMHomeAccessCodeValue *)&v14 init];
  if (v8)
  {
    v9 = [valueCopy copy];
    accessCodeValue = v8->_accessCodeValue;
    v8->_accessCodeValue = v9;

    v11 = [informationValueCopy copy];
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

+ (id)homeAccessCodeValueWithStringValue:(id)value removedUserInfo:(id)info
{
  infoCopy = info;
  valueCopy = value;
  v7 = [[HMAccessCodeUserInformationValue alloc] initWithSimpleLabel:0 labelIdentifier:0 userUUID:0 removedUserInfo:infoCopy];

  v8 = [[HMAccessCodeValue alloc] initWithStringValue:valueCopy];
  v9 = [[HMHomeAccessCodeValue alloc] initWithAccessCodeValue:v8 userInformationValue:v7];

  return v9;
}

+ (id)homeAccessCodeValueWithStringValue:(id)value label:(id)label
{
  labelCopy = label;
  valueCopy = value;
  v7 = [[HMAccessCodeUserInformationValue alloc] initWithSimpleLabel:labelCopy labelIdentifier:0 userUUID:0 removedUserInfo:0];

  v8 = [[HMAccessCodeValue alloc] initWithStringValue:valueCopy];
  v9 = [[HMHomeAccessCodeValue alloc] initWithAccessCodeValue:v8 userInformationValue:v7];

  return v9;
}

+ (id)homeAccessCodeValueWithStringValue:(id)value userUUID:(id)d
{
  dCopy = d;
  valueCopy = value;
  v7 = [[HMAccessCodeUserInformationValue alloc] initWithSimpleLabel:0 labelIdentifier:0 userUUID:dCopy removedUserInfo:0];

  v8 = [[HMAccessCodeValue alloc] initWithStringValue:valueCopy];
  v9 = [[HMHomeAccessCodeValue alloc] initWithAccessCodeValue:v8 userInformationValue:v7];

  return v9;
}

@end