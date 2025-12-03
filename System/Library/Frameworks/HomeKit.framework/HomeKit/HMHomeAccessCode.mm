@interface HMHomeAccessCode
+ (id)homeAccessCodeWithValue:(id)value home:(id)home;
+ (id)shortDescription;
- (HMHomeAccessCode)initWithAccessCodeValue:(id)value userInformation:(id)information;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)createHomeAccessCodeValue;
@end

@implementation HMHomeAccessCode

- (NSArray)attributeDescriptions
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  accessCodeValue = [(HMHomeAccessCode *)self accessCodeValue];
  v5 = [v3 initWithName:@"accessCodeValue" value:accessCodeValue];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  userInformation = [(HMHomeAccessCode *)self userInformation];
  v8 = [v6 initWithName:@"userInformation" value:userInformation];
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

- (id)createHomeAccessCodeValue
{
  v3 = [HMHomeAccessCodeValue alloc];
  accessCodeValue = [(HMHomeAccessCode *)self accessCodeValue];
  userInformation = [(HMHomeAccessCode *)self userInformation];
  createAccessCodeUserInformationValue = [userInformation createAccessCodeUserInformationValue];
  v7 = [(HMHomeAccessCodeValue *)v3 initWithAccessCodeValue:accessCodeValue userInformationValue:createAccessCodeUserInformationValue];

  return v7;
}

- (HMHomeAccessCode)initWithAccessCodeValue:(id)value userInformation:(id)information
{
  valueCopy = value;
  informationCopy = information;
  v12.receiver = self;
  v12.super_class = HMHomeAccessCode;
  v8 = [(HMHomeAccessCode *)&v12 init];
  if (v8)
  {
    v9 = [valueCopy copy];
    accessCodeValue = v8->_accessCodeValue;
    v8->_accessCodeValue = v9;

    objc_storeStrong(&v8->_userInformation, information);
  }

  return v8;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)homeAccessCodeWithValue:(id)value home:(id)home
{
  homeCopy = home;
  valueCopy = value;
  userInformationValue = [valueCopy userInformationValue];
  v8 = [HMAccessCodeUserInformation userInformationWithValue:userInformationValue home:homeCopy];

  v9 = [HMHomeAccessCode alloc];
  accessCodeValue = [valueCopy accessCodeValue];

  v11 = [(HMHomeAccessCode *)v9 initWithAccessCodeValue:accessCodeValue userInformation:v8];

  return v11;
}

@end