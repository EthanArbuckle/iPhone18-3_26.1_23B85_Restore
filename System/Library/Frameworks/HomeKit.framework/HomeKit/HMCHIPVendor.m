@interface HMCHIPVendor
+ (id)UUIDFromIdentifier:(id)a3;
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMCHIPVendor)initWithCoder:(id)a3;
- (HMCHIPVendor)initWithIdentifier:(id)a3 name:(id)a4;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMCHIPVendor

- (NSArray)attributeDescriptions
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v5 = [(HMCHIPVendor *)self identifier];
  v6 = [v4 initWithName:@"Identifier" value:v5];
  [v3 addObject:v6];

  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  v8 = [(HMCHIPVendor *)self name];
  v9 = [v7 initWithName:@"Name" value:v8];
  [v3 addObject:v9];

  v10 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMCHIPVendor *)self isAppleVendor];
  v11 = HMFBooleanToString();
  v12 = [v10 initWithName:@"Is Apple Vendor" value:v11];
  [v3 addObject:v12];

  v13 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMCHIPVendor *)self isSystemCommissionerVendor];
  v14 = HMFBooleanToString();
  v15 = [v13 initWithName:@"Is System Commissioner" value:v14];
  [v3 addObject:v15];

  v16 = [v3 copy];

  return v16;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMCHIPVendor)initWithCoder:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMCV.ck.identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMCV.ck.name"];
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
    v12 = self;
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
    v12 = [(HMCHIPVendor *)self initWithIdentifier:v5 name:v6];
    -[HMCHIPVendor setAppleVendor:](v12, "setAppleVendor:", [v4 decodeBoolForKey:@"HMCV.ck.isAppleVendor"]);
    -[HMCHIPVendor setSystemCommissionerVendor:](v12, "setSystemCommissionerVendor:", [v4 decodeBoolForKey:@"HMCV.ck.isSystemCommissionerVendor"]);
    v13 = v12;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(HMCHIPVendor *)self identifier];
  [v6 encodeObject:v4 forKey:@"HMCV.ck.identifier"];

  v5 = [(HMCHIPVendor *)self name];
  [v6 encodeObject:v5 forKey:@"HMCV.ck.name"];

  [v6 encodeBool:-[HMCHIPVendor isAppleVendor](self forKey:{"isAppleVendor"), @"HMCV.ck.isAppleVendor"}];
  [v6 encodeBool:-[HMCHIPVendor isSystemCommissionerVendor](self forKey:{"isSystemCommissionerVendor"), @"HMCV.ck.isSystemCommissionerVendor"}];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMMutableCHIPVendor allocWithZone:a3];
  v5 = [(HMCHIPVendor *)self identifier];
  v6 = [(HMCHIPVendor *)self name];
  v7 = [(HMCHIPVendor *)v4 initWithIdentifier:v5 name:v6];

  [(HMCHIPVendor *)v7 setAppleVendor:[(HMCHIPVendor *)self isAppleVendor]];
  [(HMCHIPVendor *)v7 setSystemCommissionerVendor:[(HMCHIPVendor *)self isSystemCommissionerVendor]];
  return v7;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)UUIDFromIdentifier:(id)a3
{
  v3 = MEMORY[0x1E696AFB0];
  v4 = a3;
  v5 = [[v3 alloc] initWithUUIDString:@"9E8B0B4A-EB40-4566-A9B4-65FFCE246CC9"];
  v6 = [v4 integerValue];

  v10 = v6;
  v7 = [MEMORY[0x1E695DEF0] dataWithBytes:&v10 length:8];
  v8 = [MEMORY[0x1E696AFB0] hmf_UUIDWithNamespace:v5 data:v7];

  return v8;
}

- (unint64_t)hash
{
  v2 = [(HMCHIPVendor *)self identifier];
  v3 = [v2 hash];

  return v3;
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
  if (v6)
  {
    v7 = [(HMCHIPVendor *)self identifier];
    v8 = [v6 identifier];
    if ([v7 isEqualToNumber:v8])
    {
      v9 = [(HMCHIPVendor *)self name];
      v10 = [v6 name];
      if ([v9 isEqualToString:v10] && (v11 = -[HMCHIPVendor isAppleVendor](self, "isAppleVendor"), v11 == objc_msgSend(v6, "isAppleVendor")))
      {
        v13 = [(HMCHIPVendor *)self isSystemCommissionerVendor];
        v12 = v13 ^ [v6 isSystemCommissionerVendor] ^ 1;
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

- (HMCHIPVendor)initWithIdentifier:(id)a3 name:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v8 = v7;
  if (!v7)
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
    v10 = [v6 copy];
    identifier = v9->_identifier;
    v9->_identifier = v10;

    v12 = [v8 copy];
    name = v9->_name;
    v9->_name = v12;

    v14 = [HMCHIPVendor UUIDFromIdentifier:v6];
    UUID = v9->_UUID;
    v9->_UUID = v14;
  }

  return v9;
}

@end