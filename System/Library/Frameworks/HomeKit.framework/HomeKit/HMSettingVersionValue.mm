@interface HMSettingVersionValue
- (BOOL)isEqual:(id)a3;
- (HMSettingVersionValue)initWithPayload:(id)a3;
- (HMSettingVersionValue)initWithVersion:(id)a3 type:(int64_t)a4;
- (id)attributeDescriptions;
- (id)payloadCopy;
- (unint64_t)hash;
@end

@implementation HMSettingVersionValue

- (unint64_t)hash
{
  v2 = [(HMSettingVersionValue *)self version];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
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
    if (v6 && (v7 = [(HMSettingVersionValue *)self type], v7 == [(HMSettingVersionValue *)v6 type]))
    {
      v8 = [(HMSettingVersionValue *)self version];
      v9 = [(HMSettingVersionValue *)v6 version];
      v10 = [v8 isEqual:v9];
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
  v3 = [(HMImmutableSettingValue *)&v14 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v5 = HMSettingVersionValueTypeAsString([(HMSettingVersionValue *)self type]);
  v6 = [v4 initWithName:@"type" value:v5];
  v15[0] = v6;
  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  v8 = [(HMSettingVersionValue *)self version];
  v9 = [v7 initWithName:@"version" value:v8];
  v15[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v11 = [v3 arrayByAddingObjectsFromArray:v10];

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
  v4 = [(HMSettingVersionValue *)self version];
  v5 = [v4 versionString];
  v10[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (HMSettingVersionValue)initWithPayload:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18 = 0;
  v5 = [v4 hmf_integerForKey:@"HMSettingVersionValueTypePayloadKey" error:&v18];
  v6 = v18;
  v7 = [v4 hmf_stringForKey:@"HMSettingVersionValueVersionPayloadKey"];
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
    v14 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v13;
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = 0;
  }

  else
  {
    v14 = [(HMSettingVersionValue *)self initWithVersion:v8 type:v5];
    v15 = v14;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (HMSettingVersionValue)initWithVersion:(id)a3 type:(int64_t)a4
{
  v7 = a3;
  if (v7)
  {
    v8 = v7;
    v14.receiver = self;
    v14.super_class = HMSettingVersionValue;
    v9 = [(HMImmutableSettingValue *)&v14 initSettingValue];
    v10 = v9;
    if (v9)
    {
      v9->_type = a4;
      objc_storeStrong(&v9->_version, a3);
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