@interface HMAccessCodeUserInformation
+ (HMAccessCodeUserInformation)userInformationWithValue:(id)value home:(id)home;
+ (id)shortDescription;
- (HMAccessCodeUserInformation)initWithSimpleLabel:(id)label labelIdentifier:(id)identifier user:(id)user removedUserInfo:(id)info;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)createAccessCodeUserInformationValue;
@end

@implementation HMAccessCodeUserInformation

- (NSArray)attributeDescriptions
{
  v20[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  simpleLabel = [(HMAccessCodeUserInformation *)self simpleLabel];
  defaultFormatter = [MEMORY[0x1E69A2A48] defaultFormatter];
  v5 = [v3 initWithName:@"simpleLabel" value:simpleLabel options:2 formatter:defaultFormatter];
  v20[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  labelIdentifier = [(HMAccessCodeUserInformation *)self labelIdentifier];
  defaultFormatter2 = [MEMORY[0x1E69A2A48] defaultFormatter];
  v9 = [v6 initWithName:@"labelIdentifier" value:labelIdentifier options:2 formatter:defaultFormatter2];
  v20[1] = v9;
  v10 = objc_alloc(MEMORY[0x1E69A29C8]);
  user = [(HMAccessCodeUserInformation *)self user];
  v12 = [v10 initWithName:@"user" value:user];
  v20[2] = v12;
  v13 = objc_alloc(MEMORY[0x1E69A29C8]);
  removedUserInfo = [(HMAccessCodeUserInformation *)self removedUserInfo];
  v15 = [v13 initWithName:@"removedUserInfo" value:removedUserInfo];
  v20[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (id)createAccessCodeUserInformationValue
{
  v3 = [HMAccessCodeUserInformationValue alloc];
  simpleLabel = [(HMAccessCodeUserInformation *)self simpleLabel];
  labelIdentifier = [(HMAccessCodeUserInformation *)self labelIdentifier];
  user = [(HMAccessCodeUserInformation *)self user];
  uuid = [user uuid];
  removedUserInfo = [(HMAccessCodeUserInformation *)self removedUserInfo];
  v9 = [(HMAccessCodeUserInformationValue *)v3 initWithSimpleLabel:simpleLabel labelIdentifier:labelIdentifier userUUID:uuid removedUserInfo:removedUserInfo];

  return v9;
}

- (HMAccessCodeUserInformation)initWithSimpleLabel:(id)label labelIdentifier:(id)identifier user:(id)user removedUserInfo:(id)info
{
  labelCopy = label;
  identifierCopy = identifier;
  userCopy = user;
  infoCopy = info;
  v20.receiver = self;
  v20.super_class = HMAccessCodeUserInformation;
  v14 = [(HMAccessCodeUserInformation *)&v20 init];
  if (v14)
  {
    v15 = [labelCopy copy];
    simpleLabel = v14->_simpleLabel;
    v14->_simpleLabel = v15;

    v17 = [identifierCopy copy];
    labelIdentifier = v14->_labelIdentifier;
    v14->_labelIdentifier = v17;

    objc_storeStrong(&v14->_user, user);
    objc_storeStrong(&v14->_removedUserInfo, info);
  }

  return v14;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (HMAccessCodeUserInformation)userInformationWithValue:(id)value home:(id)home
{
  valueCopy = value;
  homeCopy = home;
  userUUID = [valueCopy userUUID];

  if (userUUID)
  {
    userUUID2 = [valueCopy userUUID];
    userUUID = [homeCopy userWithUUID:userUUID2];
  }

  v9 = [HMAccessCodeUserInformation alloc];
  simpleLabel = [valueCopy simpleLabel];
  labelIdentifier = [valueCopy labelIdentifier];
  removedUserInfo = [valueCopy removedUserInfo];
  v13 = [(HMAccessCodeUserInformation *)v9 initWithSimpleLabel:simpleLabel labelIdentifier:labelIdentifier user:userUUID removedUserInfo:removedUserInfo];

  return v13;
}

@end