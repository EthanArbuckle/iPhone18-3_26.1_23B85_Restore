@interface HMAccessCodeConstraints
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMAccessCodeConstraints)initWithAllowedCharacterSets:(unint64_t)sets minimumLength:(int64_t)length maximumLength:(int64_t)maximumLength maximumAllowedAccessCodes:(int64_t)codes;
- (HMAccessCodeConstraints)initWithCoder:(id)coder;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (HMAccessCodeConstraints)initWithCoder:(id)coder
{
  v26 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"HMAccessCodeConstraintsCodingKeyAllowedCharacterSets"];
  v6 = [coderCopy decodeIntegerForKey:@"HMAccessCodeConstraintsCodingKeyMinimumLength"];
  v7 = [coderCopy decodeIntegerForKey:@"HMAccessCodeConstraintsCodingKeyMaximumLength"];
  v8 = [coderCopy decodeIntegerForKey:@"HMAccessCodeConstraintsCodingKeyMaximumAllowedAccessCodes"];
  if ([coderCopy containsValueForKey:@"HMAccessCodeConstraintsCodingKeyAllowedCharacterSets"] && objc_msgSend(coderCopy, "containsValueForKey:", @"HMAccessCodeConstraintsCodingKeyMinimumLength") && objc_msgSend(coderCopy, "containsValueForKey:", @"HMAccessCodeConstraintsCodingKeyMaximumLength") && (objc_msgSend(coderCopy, "containsValueForKey:", @"HMAccessCodeConstraintsCodingKeyMaximumAllowedAccessCodes") & 1) != 0)
  {
    selfCopy = [(HMAccessCodeConstraints *)self initWithAllowedCharacterSets:v5 minimumLength:v6 maximumLength:v7 maximumAllowedAccessCodes:v8];
    v10 = selfCopy;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[HMAccessCodeConstraints allowedCharacterSets](self forKey:{"allowedCharacterSets"), @"HMAccessCodeConstraintsCodingKeyAllowedCharacterSets"}];
  [coderCopy encodeInteger:-[HMAccessCodeConstraints minimumLength](self forKey:{"minimumLength"), @"HMAccessCodeConstraintsCodingKeyMinimumLength"}];
  [coderCopy encodeInteger:-[HMAccessCodeConstraints maximumLength](self forKey:{"maximumLength"), @"HMAccessCodeConstraintsCodingKeyMaximumLength"}];
  [coderCopy encodeInteger:-[HMAccessCodeConstraints maximumAllowedAccessCodes](self forKey:{"maximumAllowedAccessCodes"), @"HMAccessCodeConstraintsCodingKeyMaximumAllowedAccessCodes"}];
}

- (unint64_t)hash
{
  allowedCharacterSets = [(HMAccessCodeConstraints *)self allowedCharacterSets];
  v4 = [(HMAccessCodeConstraints *)self minimumLength]^ allowedCharacterSets;
  maximumLength = [(HMAccessCodeConstraints *)self maximumLength];
  return v4 ^ maximumLength ^ [(HMAccessCodeConstraints *)self maximumAllowedAccessCodes];
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
  if (v6 && (v7 = -[HMAccessCodeConstraints allowedCharacterSets](self, "allowedCharacterSets"), v7 == [v6 allowedCharacterSets]) && (v8 = -[HMAccessCodeConstraints minimumLength](self, "minimumLength"), v8 == objc_msgSend(v6, "minimumLength")) && (v9 = -[HMAccessCodeConstraints maximumLength](self, "maximumLength"), v9 == objc_msgSend(v6, "maximumLength")))
  {
    maximumAllowedAccessCodes = [(HMAccessCodeConstraints *)self maximumAllowedAccessCodes];
    v11 = maximumAllowedAccessCodes == [v6 maximumAllowedAccessCodes];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (HMAccessCodeConstraints)initWithAllowedCharacterSets:(unint64_t)sets minimumLength:(int64_t)length maximumLength:(int64_t)maximumLength maximumAllowedAccessCodes:(int64_t)codes
{
  v11.receiver = self;
  v11.super_class = HMAccessCodeConstraints;
  result = [(HMAccessCodeConstraints *)&v11 init];
  if (result)
  {
    result->_allowedCharacterSets = sets;
    result->_minimumLength = length;
    result->_maximumLength = maximumLength;
    result->_maximumAllowedAccessCodes = codes;
  }

  return result;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end