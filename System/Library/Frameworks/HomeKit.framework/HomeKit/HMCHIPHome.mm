@interface HMCHIPHome
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMCHIPHome)initWithCoder:(id)coder;
- (HMCHIPHome)initWithIdentifier:(id)identifier index:(id)index name:(id)name ecosystem:(id)ecosystem;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMCHIPHome

- (NSArray)attributeDescriptions
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  identifier = [(HMCHIPHome *)self identifier];
  v6 = [v4 initWithName:@"Identifier" value:identifier];
  [array addObject:v6];

  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  index = [(HMCHIPHome *)self index];
  v9 = [v7 initWithName:@"Index" value:index];
  [array addObject:v9];

  v10 = objc_alloc(MEMORY[0x1E69A29C8]);
  name = [(HMCHIPHome *)self name];
  v12 = [v10 initWithName:@"Name" value:name];
  [array addObject:v12];

  v13 = objc_alloc(MEMORY[0x1E69A29C8]);
  ecosystem = [(HMCHIPHome *)self ecosystem];
  v15 = [v13 initWithName:@"Ecosystem" value:ecosystem];
  [array addObject:v15];

  v16 = [array copy];

  return v16;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMCHIPHome)initWithCoder:(id)coder
{
  v30 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCH.ck.identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCH.ck.index"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCH.ck.name"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMCH.ck.ecosystem"];
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
    selfCopy = self;
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
    selfCopy = [(HMCHIPHome *)self initWithIdentifier:v5 index:v6 name:v7 ecosystem:v8];
    v17 = selfCopy;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(HMCHIPHome *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"HMCH.ck.identifier"];

  index = [(HMCHIPHome *)self index];
  [coderCopy encodeObject:index forKey:@"HMCH.ck.index"];

  name = [(HMCHIPHome *)self name];
  [coderCopy encodeObject:name forKey:@"HMCH.ck.name"];

  ecosystem = [(HMCHIPHome *)self ecosystem];
  [coderCopy encodeObject:ecosystem forKey:@"HMCH.ck.ecosystem"];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMMutableCHIPHome allocWithZone:zone];
  identifier = [(HMCHIPHome *)self identifier];
  index = [(HMCHIPHome *)self index];
  name = [(HMCHIPHome *)self name];
  ecosystem = [(HMCHIPHome *)self ecosystem];
  v9 = [(HMCHIPHome *)v4 initWithIdentifier:identifier index:index name:name ecosystem:ecosystem];

  return v9;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (unint64_t)hash
{
  identifier = [(HMCHIPHome *)self identifier];
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
    identifier = [(HMCHIPHome *)self identifier];
    identifier2 = [v6 identifier];
    if ([identifier isEqualToNumber:identifier2])
    {
      index = [(HMCHIPHome *)self index];
      index2 = [v6 index];
      if ([index isEqualToNumber:index2])
      {
        name = [(HMCHIPHome *)self name];
        name2 = [v6 name];
        if ([name isEqualToString:name2])
        {
          ecosystem = [(HMCHIPHome *)self ecosystem];
          ecosystem2 = [v6 ecosystem];
          v14 = [ecosystem isEqual:ecosystem2];
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

- (HMCHIPHome)initWithIdentifier:(id)identifier index:(id)index name:(id)name ecosystem:(id)ecosystem
{
  identifierCopy = identifier;
  indexCopy = index;
  nameCopy = name;
  ecosystemCopy = ecosystem;
  if (!identifierCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!indexCopy)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!nameCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v14 = ecosystemCopy;
  if (!ecosystemCopy)
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
    v16 = [identifierCopy copy];
    identifier = v15->_identifier;
    v15->_identifier = v16;

    v18 = [indexCopy copy];
    index = v15->_index;
    v15->_index = v18;

    v20 = [nameCopy copy];
    name = v15->_name;
    v15->_name = v20;

    v22 = [v14 copy];
    ecosystem = v15->_ecosystem;
    v15->_ecosystem = v22;

    v24 = v14;
    v25 = identifierCopy;
    objc_opt_self();
    integerValue = [v25 integerValue];

    v36 = integerValue;
    v27 = [MEMORY[0x1E695DEF0] dataWithBytes:&v36 length:8];
    v28 = MEMORY[0x1E696AFB0];
    uUID = [v24 UUID];

    v30 = [v28 hmf_UUIDWithNamespace:uUID data:v27];

    UUID = v15->_UUID;
    v15->_UUID = v30;
  }

  return v15;
}

@end