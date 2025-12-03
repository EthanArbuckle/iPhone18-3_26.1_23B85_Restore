@interface HMAccessCodeValue
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMAccessCodeValue)initWithCoder:(id)coder;
- (HMAccessCodeValue)initWithStringValue:(id)value;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMAccessCodeValue

- (NSArray)attributeDescriptions
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  stringValue = [(HMAccessCodeValue *)self stringValue];
  v5 = [v3 initWithName:@"stringValue" value:stringValue];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMAccessCodeValue)initWithCoder:(id)coder
{
  v17 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessCodeValueCodingKeyStringValue"];
  if (v5)
  {
    selfCopy = [(HMAccessCodeValue *)self initWithStringValue:v5];
    v7 = selfCopy;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = 0;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize due to nil object after decoding stringValue: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  stringValue = [(HMAccessCodeValue *)self stringValue];
  [coderCopy encodeObject:stringValue forKey:@"HMAccessCodeValueCodingKeyStringValue"];
}

- (unint64_t)hash
{
  stringValue = [(HMAccessCodeValue *)self stringValue];
  v3 = [stringValue hash];

  return v3;
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
    stringValue = [(HMAccessCodeValue *)self stringValue];
    stringValue2 = [v6 stringValue];
    v9 = [stringValue isEqualToString:stringValue2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (HMAccessCodeValue)initWithStringValue:(id)value
{
  valueCopy = value;
  v9.receiver = self;
  v9.super_class = HMAccessCodeValue;
  v5 = [(HMAccessCodeValue *)&v9 init];
  if (v5)
  {
    v6 = [valueCopy copy];
    stringValue = v5->_stringValue;
    v5->_stringValue = v6;
  }

  return v5;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end