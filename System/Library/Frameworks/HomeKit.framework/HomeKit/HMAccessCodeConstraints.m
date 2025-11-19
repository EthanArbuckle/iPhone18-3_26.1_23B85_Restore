@interface HMAccessCodeConstraints
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMAccessCodeConstraints)initWithAllowedCharacterSets:(unint64_t)a3 minimumLength:(int64_t)a4 maximumLength:(int64_t)a5 maximumAllowedAccessCodes:(int64_t)a6;
- (HMAccessCodeConstraints)initWithCoder:(id)a3;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMAccessCodeConstraints

- (NSArray)attributeDescriptions
{
  v18[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMAccessCodeConstraints allowedCharacterSets](self, "allowedCharacterSets")}];
  v5 = [v3 initWithName:@"allowedCharacterSets" value:v4];
  v18[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HMAccessCodeConstraints minimumLength](self, "minimumLength")}];
  v8 = [v6 initWithName:@"minimumLength" value:v7];
  v18[1] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HMAccessCodeConstraints maximumLength](self, "maximumLength")}];
  v11 = [v9 initWithName:@"maximumLength" value:v10];
  v18[2] = v11;
  v12 = objc_alloc(MEMORY[0x1E69A29C8]);
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HMAccessCodeConstraints maximumAllowedAccessCodes](self, "maximumAllowedAccessCodes")}];
  v14 = [v12 initWithName:@"maximumAllowedAccessCodes" value:v13];
  v18[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:4];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMAccessCodeConstraints)initWithCoder:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"HMAccessCodeConstraintsCodingKeyAllowedCharacterSets"];
  v6 = [v4 decodeIntegerForKey:@"HMAccessCodeConstraintsCodingKeyMinimumLength"];
  v7 = [v4 decodeIntegerForKey:@"HMAccessCodeConstraintsCodingKeyMaximumLength"];
  v8 = [v4 decodeIntegerForKey:@"HMAccessCodeConstraintsCodingKeyMaximumAllowedAccessCodes"];
  if ([v4 containsValueForKey:@"HMAccessCodeConstraintsCodingKeyAllowedCharacterSets"] && objc_msgSend(v4, "containsValueForKey:", @"HMAccessCodeConstraintsCodingKeyMinimumLength") && objc_msgSend(v4, "containsValueForKey:", @"HMAccessCodeConstraintsCodingKeyMaximumLength") && (objc_msgSend(v4, "containsValueForKey:", @"HMAccessCodeConstraintsCodingKeyMaximumAllowedAccessCodes") & 1) != 0)
  {
    v9 = [(HMAccessCodeConstraints *)self initWithAllowedCharacterSets:v5 minimumLength:v6 maximumLength:v7 maximumAllowedAccessCodes:v8];
    v10 = v9;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v9 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138544386;
      v17 = v13;
      v18 = 2048;
      v19 = v5;
      v20 = 2048;
      v21 = v6;
      v22 = 2048;
      v23 = v7;
      v24 = 2048;
      v25 = v8;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize due to nil object after decoding allowedCharacterSets: %ld, minimumLength:%ld, maximumLength:%ld maximumAllowedAccessCodes:%ld", &v16, 0x34u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[HMAccessCodeConstraints allowedCharacterSets](self forKey:{"allowedCharacterSets"), @"HMAccessCodeConstraintsCodingKeyAllowedCharacterSets"}];
  [v4 encodeInteger:-[HMAccessCodeConstraints minimumLength](self forKey:{"minimumLength"), @"HMAccessCodeConstraintsCodingKeyMinimumLength"}];
  [v4 encodeInteger:-[HMAccessCodeConstraints maximumLength](self forKey:{"maximumLength"), @"HMAccessCodeConstraintsCodingKeyMaximumLength"}];
  [v4 encodeInteger:-[HMAccessCodeConstraints maximumAllowedAccessCodes](self forKey:{"maximumAllowedAccessCodes"), @"HMAccessCodeConstraintsCodingKeyMaximumAllowedAccessCodes"}];
}

- (unint64_t)hash
{
  v3 = [(HMAccessCodeConstraints *)self allowedCharacterSets];
  v4 = [(HMAccessCodeConstraints *)self minimumLength]^ v3;
  v5 = [(HMAccessCodeConstraints *)self maximumLength];
  return v4 ^ v5 ^ [(HMAccessCodeConstraints *)self maximumAllowedAccessCodes];
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
  if (v6 && (v7 = -[HMAccessCodeConstraints allowedCharacterSets](self, "allowedCharacterSets"), v7 == [v6 allowedCharacterSets]) && (v8 = -[HMAccessCodeConstraints minimumLength](self, "minimumLength"), v8 == objc_msgSend(v6, "minimumLength")) && (v9 = -[HMAccessCodeConstraints maximumLength](self, "maximumLength"), v9 == objc_msgSend(v6, "maximumLength")))
  {
    v10 = [(HMAccessCodeConstraints *)self maximumAllowedAccessCodes];
    v11 = v10 == [v6 maximumAllowedAccessCodes];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (HMAccessCodeConstraints)initWithAllowedCharacterSets:(unint64_t)a3 minimumLength:(int64_t)a4 maximumLength:(int64_t)a5 maximumAllowedAccessCodes:(int64_t)a6
{
  v11.receiver = self;
  v11.super_class = HMAccessCodeConstraints;
  result = [(HMAccessCodeConstraints *)&v11 init];
  if (result)
  {
    result->_allowedCharacterSets = a3;
    result->_minimumLength = a4;
    result->_maximumLength = a5;
    result->_maximumAllowedAccessCodes = a6;
  }

  return result;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end