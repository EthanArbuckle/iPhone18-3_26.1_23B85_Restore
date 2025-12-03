@interface HMAccessCodeUserInformationValue
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMAccessCodeUserInformationValue)initWithCoder:(id)coder;
- (HMAccessCodeUserInformationValue)initWithSimpleLabel:(id)label labelIdentifier:(id)identifier userUUID:(id)d removedUserInfo:(id)info;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMAccessCodeUserInformationValue

- (NSArray)attributeDescriptions
{
  v19[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  simpleLabel = [(HMAccessCodeUserInformationValue *)self simpleLabel];
  defaultFormatter = [MEMORY[0x1E69A2A48] defaultFormatter];
  v6 = [v3 initWithName:@"simpleLabel" value:simpleLabel options:2 formatter:defaultFormatter];
  v19[0] = v6;
  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  labelIdentifier = [(HMAccessCodeUserInformationValue *)self labelIdentifier];
  v9 = [v7 initWithName:@"labelIdentifier" value:labelIdentifier];
  v19[1] = v9;
  v10 = objc_alloc(MEMORY[0x1E69A29C8]);
  userUUID = [(HMAccessCodeUserInformationValue *)self userUUID];
  v12 = [v10 initWithName:@"userUUID" value:userUUID];
  v19[2] = v12;
  v13 = objc_alloc(MEMORY[0x1E69A29C8]);
  removedUserInfo = [(HMAccessCodeUserInformationValue *)self removedUserInfo];
  v15 = [v13 initWithName:@"removedUserInfo" value:removedUserInfo];
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

- (HMAccessCodeUserInformationValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessCodeUserInformationValueCodingKeySimpleLabel"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessCodeUserInformationValueCodingKeyLabelUUID"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessCodeUserInformationValueCodingKeyUserUUID"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessCodeUserInformationValueCodingKeyRemovedUserInfo"];

  v9 = [(HMAccessCodeUserInformationValue *)self initWithSimpleLabel:v5 labelIdentifier:v6 userUUID:v7 removedUserInfo:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  simpleLabel = [(HMAccessCodeUserInformationValue *)self simpleLabel];
  [coderCopy encodeObject:simpleLabel forKey:@"HMAccessCodeUserInformationValueCodingKeySimpleLabel"];

  labelIdentifier = [(HMAccessCodeUserInformationValue *)self labelIdentifier];
  [coderCopy encodeObject:labelIdentifier forKey:@"HMAccessCodeUserInformationValueCodingKeyLabelUUID"];

  userUUID = [(HMAccessCodeUserInformationValue *)self userUUID];
  [coderCopy encodeObject:userUUID forKey:@"HMAccessCodeUserInformationValueCodingKeyUserUUID"];

  removedUserInfo = [(HMAccessCodeUserInformationValue *)self removedUserInfo];
  [coderCopy encodeObject:removedUserInfo forKey:@"HMAccessCodeUserInformationValueCodingKeyRemovedUserInfo"];
}

- (unint64_t)hash
{
  simpleLabel = [(HMAccessCodeUserInformationValue *)self simpleLabel];
  v4 = [simpleLabel hash];
  labelIdentifier = [(HMAccessCodeUserInformationValue *)self labelIdentifier];
  v6 = [labelIdentifier hash] ^ v4;
  userUUID = [(HMAccessCodeUserInformationValue *)self userUUID];
  v8 = [userUUID hash];
  removedUserInfo = [(HMAccessCodeUserInformationValue *)self removedUserInfo];
  v10 = v8 ^ [removedUserInfo hash];

  return v6 ^ v10;
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
  if (!v6)
  {
    goto LABEL_9;
  }

  simpleLabel = [(HMAccessCodeUserInformationValue *)self simpleLabel];
  simpleLabel2 = [v6 simpleLabel];
  v9 = HMFEqualObjects();

  if (!v9)
  {
    goto LABEL_9;
  }

  labelIdentifier = [(HMAccessCodeUserInformationValue *)self labelIdentifier];
  labelIdentifier2 = [v6 labelIdentifier];
  v12 = HMFEqualObjects();

  if (!v12)
  {
    goto LABEL_9;
  }

  userUUID = [(HMAccessCodeUserInformationValue *)self userUUID];
  userUUID2 = [v6 userUUID];
  v15 = HMFEqualObjects();

  if (v15)
  {
    removedUserInfo = [(HMAccessCodeUserInformationValue *)self removedUserInfo];
    removedUserInfo2 = [v6 removedUserInfo];
    v18 = HMFEqualObjects();
  }

  else
  {
LABEL_9:
    v18 = 0;
  }

  return v18;
}

- (HMAccessCodeUserInformationValue)initWithSimpleLabel:(id)label labelIdentifier:(id)identifier userUUID:(id)d removedUserInfo:(id)info
{
  labelCopy = label;
  identifierCopy = identifier;
  dCopy = d;
  infoCopy = info;
  v22.receiver = self;
  v22.super_class = HMAccessCodeUserInformationValue;
  v14 = [(HMAccessCodeUserInformationValue *)&v22 init];
  if (v14)
  {
    v15 = [labelCopy copy];
    simpleLabel = v14->_simpleLabel;
    v14->_simpleLabel = v15;

    v17 = [identifierCopy copy];
    labelIdentifier = v14->_labelIdentifier;
    v14->_labelIdentifier = v17;

    v19 = [dCopy copy];
    userUUID = v14->_userUUID;
    v14->_userUUID = v19;

    objc_storeStrong(&v14->_removedUserInfo, info);
  }

  return v14;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end