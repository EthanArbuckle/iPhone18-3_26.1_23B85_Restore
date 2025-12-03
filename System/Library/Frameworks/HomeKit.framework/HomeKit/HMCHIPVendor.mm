@interface HMCHIPVendor
+ (id)UUIDFromIdentifier:(id)identifier;
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMCHIPVendor)initWithCoder:(id)coder;
- (HMCHIPVendor)initWithIdentifier:(id)identifier name:(id)name;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMCHIPVendor

- (NSArray)attributeDescriptions
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  identifier = [(HMCHIPVendor *)self identifier];
  v6 = [v4 initWithName:@"Identifier" value:identifier];
  [array addObject:v6];

  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  name = [(HMCHIPVendor *)self name];
  v9 = [v7 initWithName:@"Name" value:name];
  [array addObject:v9];

  v10 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMCHIPVendor *)self isAppleVendor];
  v11 = HMFBooleanToString();
  v12 = [v10 initWithName:@"Is Apple Vendor" value:v11];
  [array addObject:v12];

  v13 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMCHIPVendor *)self isSystemCommissionerVendor];
  v14 = HMFBooleanToString();
  v15 = [v13 initWithName:@"Is System Commissioner" value:v14];
  [array addObject:v15];

  v16 = [array copy];

  return v16;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMCHIPVendor)initWithCoder:(id)coder
{
  v22 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCV.ck.identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCV.ck.name"];
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
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded identifier: %@ name: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = 0;
  }

  else
  {
    selfCopy = [(HMCHIPVendor *)self initWithIdentifier:v5 name:v6];
    -[HMCHIPVendor setAppleVendor:](selfCopy, "setAppleVendor:", [coderCopy decodeBoolForKey:@"HMCV.ck.isAppleVendor"]);
    -[HMCHIPVendor setSystemCommissionerVendor:](selfCopy, "setSystemCommissionerVendor:", [coderCopy decodeBoolForKey:@"HMCV.ck.isSystemCommissionerVendor"]);
    v13 = selfCopy;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(HMCHIPVendor *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"HMCV.ck.identifier"];

  name = [(HMCHIPVendor *)self name];
  [coderCopy encodeObject:name forKey:@"HMCV.ck.name"];

  [coderCopy encodeBool:-[HMCHIPVendor isAppleVendor](self forKey:{"isAppleVendor"), @"HMCV.ck.isAppleVendor"}];
  [coderCopy encodeBool:-[HMCHIPVendor isSystemCommissionerVendor](self forKey:{"isSystemCommissionerVendor"), @"HMCV.ck.isSystemCommissionerVendor"}];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMMutableCHIPVendor allocWithZone:zone];
  identifier = [(HMCHIPVendor *)self identifier];
  name = [(HMCHIPVendor *)self name];
  v7 = [(HMCHIPVendor *)v4 initWithIdentifier:identifier name:name];

  [(HMCHIPVendor *)v7 setAppleVendor:[(HMCHIPVendor *)self isAppleVendor]];
  [(HMCHIPVendor *)v7 setSystemCommissionerVendor:[(HMCHIPVendor *)self isSystemCommissionerVendor]];
  return v7;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)UUIDFromIdentifier:(id)identifier
{
  v3 = MEMORY[0x1E696AFB0];
  identifierCopy = identifier;
  v5 = [[v3 alloc] initWithUUIDString:@"9E8B0B4A-EB40-4566-A9B4-65FFCE246CC9"];
  integerValue = [identifierCopy integerValue];

  v10 = integerValue;
  v7 = [MEMORY[0x1E695DEF0] dataWithBytes:&v10 length:8];
  v8 = [MEMORY[0x1E696AFB0] hmf_UUIDWithNamespace:v5 data:v7];

  return v8;
}

- (unint64_t)hash
{
  identifier = [(HMCHIPVendor *)self identifier];
  v3 = [identifier hash];

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
    identifier = [(HMCHIPVendor *)self identifier];
    identifier2 = [v6 identifier];
    if ([identifier isEqualToNumber:identifier2])
    {
      name = [(HMCHIPVendor *)self name];
      name2 = [v6 name];
      if ([name isEqualToString:name2] && (v11 = -[HMCHIPVendor isAppleVendor](self, "isAppleVendor"), v11 == objc_msgSend(v6, "isAppleVendor")))
      {
        isSystemCommissionerVendor = [(HMCHIPVendor *)self isSystemCommissionerVendor];
        v12 = isSystemCommissionerVendor ^ [v6 isSystemCommissionerVendor] ^ 1;
      }

      else
      {
        LOBYTE(v12) = 0;
      }
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (HMCHIPVendor)initWithIdentifier:(id)identifier name:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  if (!identifierCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v8 = nameCopy;
  if (!nameCopy)
  {
LABEL_7:
    v17 = _HMFPreconditionFailure();
    [(HMHomeCloudShareResponse *)v17 .cxx_destruct];
    return result;
  }

  v19.receiver = self;
  v19.super_class = HMCHIPVendor;
  v9 = [(HMCHIPVendor *)&v19 init];
  if (v9)
  {
    v10 = [identifierCopy copy];
    identifier = v9->_identifier;
    v9->_identifier = v10;

    v12 = [v8 copy];
    name = v9->_name;
    v9->_name = v12;

    v14 = [HMCHIPVendor UUIDFromIdentifier:identifierCopy];
    UUID = v9->_UUID;
    v9->_UUID = v14;
  }

  return v9;
}

@end