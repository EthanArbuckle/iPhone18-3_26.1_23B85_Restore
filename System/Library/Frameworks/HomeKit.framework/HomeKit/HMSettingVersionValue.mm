@interface HMSettingVersionValue
- (BOOL)isEqual:(id)equal;
- (HMSettingVersionValue)initWithPayload:(id)payload;
- (HMSettingVersionValue)initWithVersion:(id)version type:(int64_t)type;
- (id)attributeDescriptions;
- (id)payloadCopy;
- (unint64_t)hash;
@end

@implementation HMSettingVersionValue

- (unint64_t)hash
{
  version = [(HMSettingVersionValue *)self version];
  v3 = [version hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
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
    if (v6 && (v7 = [(HMSettingVersionValue *)self type], v7 == [(HMSettingVersionValue *)v6 type]))
    {
      version = [(HMSettingVersionValue *)self version];
      version2 = [(HMSettingVersionValue *)v6 version];
      v10 = [version isEqual:version2];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)attributeDescriptions
{
  v15[2] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = HMSettingVersionValue;
  attributeDescriptions = [(HMImmutableSettingValue *)&v14 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v5 = HMSettingVersionValueTypeAsString([(HMSettingVersionValue *)self type]);
  v6 = [v4 initWithName:@"type" value:v5];
  v15[0] = v6;
  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  version = [(HMSettingVersionValue *)self version];
  v9 = [v7 initWithName:@"version" value:version];
  v15[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v11 = [attributeDescriptions arrayByAddingObjectsFromArray:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)payloadCopy
{
  v10[3] = *MEMORY[0x1E69E9840];
  v10[0] = &unk_1F0EFCBD8;
  v9[0] = @"HMImmutableSettingValueTypePayloadKey";
  v9[1] = @"HMSettingVersionValueTypePayloadKey";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HMSettingVersionValue type](self, "type")}];
  v10[1] = v3;
  v9[2] = @"HMSettingVersionValueVersionPayloadKey";
  version = [(HMSettingVersionValue *)self version];
  versionString = [version versionString];
  v10[2] = versionString;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (HMSettingVersionValue)initWithPayload:(id)payload
{
  v23 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  v18 = 0;
  v5 = [payloadCopy hmf_integerForKey:@"HMSettingVersionValueTypePayloadKey" error:&v18];
  v6 = v18;
  v7 = [payloadCopy hmf_stringForKey:@"HMSettingVersionValueVersionPayloadKey"];
  v8 = [objc_alloc(MEMORY[0x1E69A2A78]) initWithString:v7];
  v9 = v8;
  if (v6)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 == 0;
  }

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v13;
      v21 = 2112;
      v22 = payloadCopy;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = 0;
  }

  else
  {
    selfCopy = [(HMSettingVersionValue *)self initWithVersion:v8 type:v5];
    v15 = selfCopy;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (HMSettingVersionValue)initWithVersion:(id)version type:(int64_t)type
{
  versionCopy = version;
  if (versionCopy)
  {
    v8 = versionCopy;
    v14.receiver = self;
    v14.super_class = HMSettingVersionValue;
    initSettingValue = [(HMImmutableSettingValue *)&v14 initSettingValue];
    v10 = initSettingValue;
    if (initSettingValue)
    {
      initSettingValue->_type = type;
      objc_storeStrong(&initSettingValue->_version, version);
    }

    return v10;
  }

  else
  {
    v12 = _HMFPreconditionFailure();
    [(HMCameraClipEncryptedDataContext *)v12 .cxx_destruct];
  }

  return result;
}

@end