@interface HMCHIPHome
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMCHIPHome)initWithCoder:(id)a3;
- (HMCHIPHome)initWithIdentifier:(id)a3 index:(id)a4 name:(id)a5 ecosystem:(id)a6;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMCHIPHome

- (NSArray)attributeDescriptions
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v5 = [(HMCHIPHome *)self identifier];
  v6 = [v4 initWithName:@"Identifier" value:v5];
  [v3 addObject:v6];

  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  v8 = [(HMCHIPHome *)self index];
  v9 = [v7 initWithName:@"Index" value:v8];
  [v3 addObject:v9];

  v10 = objc_alloc(MEMORY[0x1E69A29C8]);
  v11 = [(HMCHIPHome *)self name];
  v12 = [v10 initWithName:@"Name" value:v11];
  [v3 addObject:v12];

  v13 = objc_alloc(MEMORY[0x1E69A29C8]);
  v14 = [(HMCHIPHome *)self ecosystem];
  v15 = [v13 initWithName:@"Ecosystem" value:v14];
  [v3 addObject:v15];

  v16 = [v3 copy];

  return v16;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMCHIPHome)initWithCoder:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMCH.ck.identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMCH.ck.index"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMCH.ck.name"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMCH.ck.ecosystem"];
  v9 = v8;
  if (v5)
  {
    v10 = v6 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10 || v7 == 0 || v8 == 0)
  {
    v13 = objc_autoreleasePoolPush();
    v16 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v20 = 138544386;
      v21 = v15;
      v22 = 2112;
      v23 = v5;
      v24 = 2112;
      v25 = v6;
      v26 = 2112;
      v27 = v7;
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded identifier: %@ index: %@ name: %@ ecosystem: %@", &v20, 0x34u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = 0;
  }

  else
  {
    v16 = [(HMCHIPHome *)self initWithIdentifier:v5 index:v6 name:v7 ecosystem:v8];
    v17 = v16;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMCHIPHome *)self identifier];
  [v4 encodeObject:v5 forKey:@"HMCH.ck.identifier"];

  v6 = [(HMCHIPHome *)self index];
  [v4 encodeObject:v6 forKey:@"HMCH.ck.index"];

  v7 = [(HMCHIPHome *)self name];
  [v4 encodeObject:v7 forKey:@"HMCH.ck.name"];

  v8 = [(HMCHIPHome *)self ecosystem];
  [v4 encodeObject:v8 forKey:@"HMCH.ck.ecosystem"];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMMutableCHIPHome allocWithZone:a3];
  v5 = [(HMCHIPHome *)self identifier];
  v6 = [(HMCHIPHome *)self index];
  v7 = [(HMCHIPHome *)self name];
  v8 = [(HMCHIPHome *)self ecosystem];
  v9 = [(HMCHIPHome *)v4 initWithIdentifier:v5 index:v6 name:v7 ecosystem:v8];

  return v9;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (unint64_t)hash
{
  v2 = [(HMCHIPHome *)self identifier];
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
    v7 = [(HMCHIPHome *)self identifier];
    v8 = [v6 identifier];
    if ([v7 isEqualToNumber:v8])
    {
      v9 = [(HMCHIPHome *)self index];
      v10 = [v6 index];
      if ([v9 isEqualToNumber:v10])
      {
        v11 = [(HMCHIPHome *)self name];
        v12 = [v6 name];
        if ([v11 isEqualToString:v12])
        {
          v16 = [(HMCHIPHome *)self ecosystem];
          v13 = [v6 ecosystem];
          v14 = [v16 isEqual:v13];
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (HMCHIPHome)initWithIdentifier:(id)a3 index:(id)a4 name:(id)a5 ecosystem:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!v11)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v12)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v14 = v13;
  if (!v13)
  {
LABEL_11:
    v33 = _HMFPreconditionFailure();
    [(HMSettingLanguageValue *)v33 .cxx_destruct];
    return result;
  }

  v35.receiver = self;
  v35.super_class = HMCHIPHome;
  v15 = [(HMCHIPHome *)&v35 init];
  if (v15)
  {
    v16 = [v10 copy];
    identifier = v15->_identifier;
    v15->_identifier = v16;

    v18 = [v11 copy];
    index = v15->_index;
    v15->_index = v18;

    v20 = [v12 copy];
    name = v15->_name;
    v15->_name = v20;

    v22 = [v14 copy];
    ecosystem = v15->_ecosystem;
    v15->_ecosystem = v22;

    v24 = v14;
    v25 = v10;
    objc_opt_self();
    v26 = [v25 integerValue];

    v36 = v26;
    v27 = [MEMORY[0x1E695DEF0] dataWithBytes:&v36 length:8];
    v28 = MEMORY[0x1E696AFB0];
    v29 = [v24 UUID];

    v30 = [v28 hmf_UUIDWithNamespace:v29 data:v27];

    UUID = v15->_UUID;
    v15->_UUID = v30;
  }

  return v15;
}

@end