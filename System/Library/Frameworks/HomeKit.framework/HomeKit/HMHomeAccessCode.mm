@interface HMHomeAccessCode
+ (id)homeAccessCodeWithValue:(id)a3 home:(id)a4;
+ (id)shortDescription;
- (HMHomeAccessCode)initWithAccessCodeValue:(id)a3 userInformation:(id)a4;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)createHomeAccessCodeValue;
@end

@implementation HMHomeAccessCode

- (NSArray)attributeDescriptions
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [(HMHomeAccessCode *)self accessCodeValue];
  v5 = [v3 initWithName:@"accessCodeValue" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v7 = [(HMHomeAccessCode *)self userInformation];
  v8 = [v6 initWithName:@"userInformation" value:v7];
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
  v4 = [(HMHomeAccessCode *)self accessCodeValue];
  v5 = [(HMHomeAccessCode *)self userInformation];
  v6 = [v5 createAccessCodeUserInformationValue];
  v7 = [(HMHomeAccessCodeValue *)v3 initWithAccessCodeValue:v4 userInformationValue:v6];

  return v7;
}

- (HMHomeAccessCode)initWithAccessCodeValue:(id)a3 userInformation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = HMHomeAccessCode;
  v8 = [(HMHomeAccessCode *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    accessCodeValue = v8->_accessCodeValue;
    v8->_accessCodeValue = v9;

    objc_storeStrong(&v8->_userInformation, a4);
  }

  return v8;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)homeAccessCodeWithValue:(id)a3 home:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 userInformationValue];
  v8 = [HMAccessCodeUserInformation userInformationWithValue:v7 home:v5];

  v9 = [HMHomeAccessCode alloc];
  v10 = [v6 accessCodeValue];

  v11 = [(HMHomeAccessCode *)v9 initWithAccessCodeValue:v10 userInformation:v8];

  return v11;
}

@end