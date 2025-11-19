@interface HMAccessCodeUserInformation
+ (HMAccessCodeUserInformation)userInformationWithValue:(id)a3 home:(id)a4;
+ (id)shortDescription;
- (HMAccessCodeUserInformation)initWithSimpleLabel:(id)a3 labelIdentifier:(id)a4 user:(id)a5 removedUserInfo:(id)a6;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)createAccessCodeUserInformationValue;
@end

@implementation HMAccessCodeUserInformation

- (NSArray)attributeDescriptions
{
  v20[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v19 = [(HMAccessCodeUserInformation *)self simpleLabel];
  v4 = [MEMORY[0x1E69A2A48] defaultFormatter];
  v5 = [v3 initWithName:@"simpleLabel" value:v19 options:2 formatter:v4];
  v20[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v7 = [(HMAccessCodeUserInformation *)self labelIdentifier];
  v8 = [MEMORY[0x1E69A2A48] defaultFormatter];
  v9 = [v6 initWithName:@"labelIdentifier" value:v7 options:2 formatter:v8];
  v20[1] = v9;
  v10 = objc_alloc(MEMORY[0x1E69A29C8]);
  v11 = [(HMAccessCodeUserInformation *)self user];
  v12 = [v10 initWithName:@"user" value:v11];
  v20[2] = v12;
  v13 = objc_alloc(MEMORY[0x1E69A29C8]);
  v14 = [(HMAccessCodeUserInformation *)self removedUserInfo];
  v15 = [v13 initWithName:@"removedUserInfo" value:v14];
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
  v4 = [(HMAccessCodeUserInformation *)self simpleLabel];
  v5 = [(HMAccessCodeUserInformation *)self labelIdentifier];
  v6 = [(HMAccessCodeUserInformation *)self user];
  v7 = [v6 uuid];
  v8 = [(HMAccessCodeUserInformation *)self removedUserInfo];
  v9 = [(HMAccessCodeUserInformationValue *)v3 initWithSimpleLabel:v4 labelIdentifier:v5 userUUID:v7 removedUserInfo:v8];

  return v9;
}

- (HMAccessCodeUserInformation)initWithSimpleLabel:(id)a3 labelIdentifier:(id)a4 user:(id)a5 removedUserInfo:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = HMAccessCodeUserInformation;
  v14 = [(HMAccessCodeUserInformation *)&v20 init];
  if (v14)
  {
    v15 = [v10 copy];
    simpleLabel = v14->_simpleLabel;
    v14->_simpleLabel = v15;

    v17 = [v11 copy];
    labelIdentifier = v14->_labelIdentifier;
    v14->_labelIdentifier = v17;

    objc_storeStrong(&v14->_user, a5);
    objc_storeStrong(&v14->_removedUserInfo, a6);
  }

  return v14;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (HMAccessCodeUserInformation)userInformationWithValue:(id)a3 home:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 userUUID];

  if (v7)
  {
    v8 = [v5 userUUID];
    v7 = [v6 userWithUUID:v8];
  }

  v9 = [HMAccessCodeUserInformation alloc];
  v10 = [v5 simpleLabel];
  v11 = [v5 labelIdentifier];
  v12 = [v5 removedUserInfo];
  v13 = [(HMAccessCodeUserInformation *)v9 initWithSimpleLabel:v10 labelIdentifier:v11 user:v7 removedUserInfo:v12];

  return v13;
}

@end