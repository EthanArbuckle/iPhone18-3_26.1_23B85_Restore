@interface HMAccessCodeUserInformationValue
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMAccessCodeUserInformationValue)initWithCoder:(id)a3;
- (HMAccessCodeUserInformationValue)initWithSimpleLabel:(id)a3 labelIdentifier:(id)a4 userUUID:(id)a5 removedUserInfo:(id)a6;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMAccessCodeUserInformationValue

- (NSArray)attributeDescriptions
{
  v19[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [(HMAccessCodeUserInformationValue *)self simpleLabel];
  v5 = [MEMORY[0x1E69A2A48] defaultFormatter];
  v6 = [v3 initWithName:@"simpleLabel" value:v4 options:2 formatter:v5];
  v19[0] = v6;
  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  v8 = [(HMAccessCodeUserInformationValue *)self labelIdentifier];
  v9 = [v7 initWithName:@"labelIdentifier" value:v8];
  v19[1] = v9;
  v10 = objc_alloc(MEMORY[0x1E69A29C8]);
  v11 = [(HMAccessCodeUserInformationValue *)self userUUID];
  v12 = [v10 initWithName:@"userUUID" value:v11];
  v19[2] = v12;
  v13 = objc_alloc(MEMORY[0x1E69A29C8]);
  v14 = [(HMAccessCodeUserInformationValue *)self removedUserInfo];
  v15 = [v13 initWithName:@"removedUserInfo" value:v14];
  v19[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMAccessCodeUserInformationValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessCodeUserInformationValueCodingKeySimpleLabel"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessCodeUserInformationValueCodingKeyLabelUUID"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessCodeUserInformationValueCodingKeyUserUUID"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessCodeUserInformationValueCodingKeyRemovedUserInfo"];

  v9 = [(HMAccessCodeUserInformationValue *)self initWithSimpleLabel:v5 labelIdentifier:v6 userUUID:v7 removedUserInfo:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMAccessCodeUserInformationValue *)self simpleLabel];
  [v4 encodeObject:v5 forKey:@"HMAccessCodeUserInformationValueCodingKeySimpleLabel"];

  v6 = [(HMAccessCodeUserInformationValue *)self labelIdentifier];
  [v4 encodeObject:v6 forKey:@"HMAccessCodeUserInformationValueCodingKeyLabelUUID"];

  v7 = [(HMAccessCodeUserInformationValue *)self userUUID];
  [v4 encodeObject:v7 forKey:@"HMAccessCodeUserInformationValueCodingKeyUserUUID"];

  v8 = [(HMAccessCodeUserInformationValue *)self removedUserInfo];
  [v4 encodeObject:v8 forKey:@"HMAccessCodeUserInformationValueCodingKeyRemovedUserInfo"];
}

- (unint64_t)hash
{
  v3 = [(HMAccessCodeUserInformationValue *)self simpleLabel];
  v4 = [v3 hash];
  v5 = [(HMAccessCodeUserInformationValue *)self labelIdentifier];
  v6 = [v5 hash] ^ v4;
  v7 = [(HMAccessCodeUserInformationValue *)self userUUID];
  v8 = [v7 hash];
  v9 = [(HMAccessCodeUserInformationValue *)self removedUserInfo];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
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
    goto LABEL_9;
  }

  v7 = [(HMAccessCodeUserInformationValue *)self simpleLabel];
  v8 = [v6 simpleLabel];
  v9 = HMFEqualObjects();

  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = [(HMAccessCodeUserInformationValue *)self labelIdentifier];
  v11 = [v6 labelIdentifier];
  v12 = HMFEqualObjects();

  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = [(HMAccessCodeUserInformationValue *)self userUUID];
  v14 = [v6 userUUID];
  v15 = HMFEqualObjects();

  if (v15)
  {
    v16 = [(HMAccessCodeUserInformationValue *)self removedUserInfo];
    v17 = [v6 removedUserInfo];
    v18 = HMFEqualObjects();
  }

  else
  {
LABEL_9:
    v18 = 0;
  }

  return v18;
}

- (HMAccessCodeUserInformationValue)initWithSimpleLabel:(id)a3 labelIdentifier:(id)a4 userUUID:(id)a5 removedUserInfo:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = HMAccessCodeUserInformationValue;
  v14 = [(HMAccessCodeUserInformationValue *)&v22 init];
  if (v14)
  {
    v15 = [v10 copy];
    simpleLabel = v14->_simpleLabel;
    v14->_simpleLabel = v15;

    v17 = [v11 copy];
    labelIdentifier = v14->_labelIdentifier;
    v14->_labelIdentifier = v17;

    v19 = [v12 copy];
    userUUID = v14->_userUUID;
    v14->_userUUID = v19;

    objc_storeStrong(&v14->_removedUserInfo, a6);
  }

  return v14;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end