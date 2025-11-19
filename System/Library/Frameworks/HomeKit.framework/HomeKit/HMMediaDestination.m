@interface HMMediaDestination
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)containsHomeTheaterSupportedOptions;
- (BOOL)containsMediaSystemSupportedOptions;
- (BOOL)isEqual:(id)a3;
- (HMMediaDestination)initWithCoder:(id)a3;
- (HMMediaDestination)initWithProtoBufferData:(id)a3;
- (HMMediaDestination)initWithUniqueIdentifier:(id)a3 parentIdentifier:(id)a4 supportedOptions:(unint64_t)a5 audioGroupIdentifier:(id)a6;
- (NSArray)attributeDescriptions;
- (NSString)identifier;
- (NSString)shortDescription;
- (id)attributeDescriptionForAudioGroupIdentifier;
- (id)encodeToProtoBufferData;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMMediaDestination

- (HMMediaDestination)initWithProtoBufferData:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [[HMMediaGroupProtoMediaDestination alloc] initWithData:v4];
  v6 = v5;
  if (v5)
  {
    if ([(HMMediaGroupProtoMediaDestination *)v5 hasIdentifier])
    {
      v7 = objc_alloc(MEMORY[0x1E696AFB0]);
      v8 = [(HMMediaGroupProtoMediaDestination *)v6 identifier];
      v9 = [v7 initWithUUIDString:v8];

      if (![(HMMediaGroupProtoMediaDestination *)v6 hasParentIdentifier])
      {
        v24 = objc_autoreleasePoolPush();
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = HMFGetLogIdentifier();
          v35 = 138543618;
          v36 = v26;
          v37 = 2112;
          v38 = v6;
          _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@missing field=parentIdentifier from data=%@", &v35, 0x16u);
        }

        objc_autoreleasePoolPop(v24);
        v23 = 0;
        goto LABEL_26;
      }

      v10 = objc_alloc(MEMORY[0x1E696AFB0]);
      v11 = [(HMMediaGroupProtoMediaDestination *)v6 parentIdentifier];
      v12 = [v10 initWithUUIDString:v11];

      if ([(HMMediaGroupProtoMediaDestination *)v6 hasSupportedOptions])
      {
        v13 = [(HMMediaGroupProtoMediaDestination *)v6 supportedOptions];
        if ([(HMMediaGroupProtoMediaDestination *)v6 hasAudioGroupIdentifier])
        {
          v14 = [(HMMediaGroupProtoMediaDestination *)v6 audioGroupIdentifier];
          v15 = [v14 isEqual:@"00000000-0000-0000-0000-000000000000"];

          if (v15)
          {
            v16 = 0;
          }

          else
          {
            v31 = objc_alloc(MEMORY[0x1E696AFB0]);
            v32 = [(HMMediaGroupProtoMediaDestination *)v6 audioGroupIdentifier];
            v16 = [v31 initWithUUIDString:v32];
          }

          self = [(HMMediaDestination *)self initWithUniqueIdentifier:v9 parentIdentifier:v12 supportedOptions:v13 audioGroupIdentifier:v16];

          v23 = self;
          goto LABEL_25;
        }

        v27 = objc_autoreleasePoolPush();
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = HMFGetLogIdentifier();
          v35 = 138543618;
          v36 = v29;
          v37 = 2112;
          v38 = v6;
          v30 = "%{public}@missing field=audioGroupIdentifier from data=%@";
          goto LABEL_21;
        }
      }

      else
      {
        v27 = objc_autoreleasePoolPush();
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = HMFGetLogIdentifier();
          v35 = 138543618;
          v36 = v29;
          v37 = 2112;
          v38 = v6;
          v30 = "%{public}@missing field=supportedOptions from data=%@";
LABEL_21:
          _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, v30, &v35, 0x16u);
        }
      }

      objc_autoreleasePoolPop(v27);
      v23 = 0;
LABEL_25:

LABEL_26:
      goto LABEL_27;
    }

    v17 = objc_autoreleasePoolPush();
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v35 = 138543618;
      v36 = v19;
      v37 = 2112;
      v38 = v6;
      v20 = "%{public}@missing field=identifier from data=%@";
      v21 = v18;
      v22 = 22;
      goto LABEL_12;
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v35 = 138543362;
      v36 = v19;
      v20 = "%{public}@Error deserializing ProtoBuffer data";
      v21 = v18;
      v22 = 12;
LABEL_12:
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, v20, &v35, v22);
    }
  }

  objc_autoreleasePoolPop(v17);
  v23 = 0;
LABEL_27:

  v33 = *MEMORY[0x1E69E9840];
  return v23;
}

- (id)encodeToProtoBufferData
{
  v3 = objc_alloc_init(HMMediaGroupProtoMediaDestination);
  v4 = [(HMMediaDestination *)self uniqueIdentifier];
  v5 = [v4 UUIDString];
  [(HMMediaGroupProtoMediaDestination *)v3 setIdentifier:v5];

  v6 = [(HMMediaDestination *)self parentIdentifier];
  v7 = [v6 UUIDString];
  [(HMMediaGroupProtoMediaDestination *)v3 setParentIdentifier:v7];

  [(HMMediaGroupProtoMediaDestination *)v3 setSupportedOptions:[(HMMediaDestination *)self supportedOptions]];
  v8 = [(HMMediaDestination *)self audioGroupIdentifier];
  if (v8)
  {
    v9 = [(HMMediaDestination *)self audioGroupIdentifier];
    v10 = [v9 UUIDString];
    [(HMMediaGroupProtoMediaDestination *)v3 setAudioGroupIdentifier:v10];
  }

  else
  {
    [(HMMediaGroupProtoMediaDestination *)v3 setAudioGroupIdentifier:@"00000000-0000-0000-0000-000000000000"];
  }

  v11 = [(HMMediaGroupProtoMediaDestination *)v3 data];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMMediaDestination *)self uniqueIdentifier];
  [v4 encodeObject:v5 forKey:@"HMMediaDestinationIdentifierCodingKey"];

  v6 = [(HMMediaDestination *)self parentIdentifier];
  [v4 encodeObject:v6 forKey:@"HMMediaDestinationParentIdentifierCodingKey"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMMediaDestination supportedOptions](self, "supportedOptions")}];
  [v4 encodeObject:v7 forKey:@"HMMediaDestinationSupportedOptionsNumberCodingKey"];

  v8 = [(HMMediaDestination *)self audioGroupIdentifier];
  [v4 encodeObject:v8 forKey:@"HMMediaDestinationAudioGroupIdentifierCodingKey"];
}

- (HMMediaDestination)initWithCoder:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMMediaDestinationIdentifierCodingKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMMediaDestinationParentIdentifierCodingKey"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMMediaDestinationAudioGroupIdentifierCodingKey"];
  if ([v4 containsValueForKey:@"HMMediaDestinationSupportedOptionsCodingKey"])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v11;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Using legacy encoding to get supported options", &v27, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [v4 decodeIntegerForKey:@"HMMediaDestinationSupportedOptionsCodingKey"];
    if (!v5)
    {
      goto LABEL_8;
    }

LABEL_7:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMMediaDestinationSupportedOptionsNumberCodingKey"];
  v12 = [v13 unsignedIntegerValue];

  if (v5)
  {
    goto LABEL_7;
  }

LABEL_8:
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = HMFGetLogIdentifier();
    v27 = 138543362;
    v28 = v17;
    _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Using legacy encoding to get identifier", &v27, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
  v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMMediaDestinationIdentifierCodingKey"];
  v19 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v18];

  v5 = v19;
LABEL_11:
  if (!v6)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v23;
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@No parent identifier given - user is in a legacy state", &v27, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
  }

  v24 = [(HMMediaDestination *)self initWithUniqueIdentifier:v5 parentIdentifier:v6 supportedOptions:v12 audioGroupIdentifier:v7];

  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

- (unint64_t)hash
{
  v2 = [(HMMediaDestination *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
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
    if (v6)
    {
      v7 = [(HMMediaDestination *)self uniqueIdentifier];
      v8 = [(HMMediaDestination *)v6 uniqueIdentifier];
      if ([v7 hmf_isEqualToUUID:v8])
      {
        v9 = [(HMMediaDestination *)self parentIdentifier];
        v10 = [(HMMediaDestination *)v6 parentIdentifier];
        if ([v9 hmf_isEqualToUUID:v10] && (v11 = -[HMMediaDestination supportedOptions](self, "supportedOptions"), v11 == -[HMMediaDestination supportedOptions](v6, "supportedOptions")))
        {
          v12 = [(HMMediaDestination *)self audioGroupIdentifier];
          v13 = [(HMMediaDestination *)v6 audioGroupIdentifier];
          v14 = HMFEqualObjects();
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

  return v14;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMMutableMediaDestination alloc];
  v5 = [(HMMediaDestination *)self uniqueIdentifier];
  v6 = [(HMMediaDestination *)self parentIdentifier];
  v7 = [(HMMediaDestination *)self supportedOptions];
  v8 = [(HMMediaDestination *)self audioGroupIdentifier];
  v9 = [(HMMediaDestination *)v4 initWithUniqueIdentifier:v5 parentIdentifier:v6 supportedOptions:v7 audioGroupIdentifier:v8];

  return v9;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_6030 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_6030, &__block_literal_global_6031);
  }

  v3 = logCategory__hmf_once_v1_6032;

  return v3;
}

uint64_t __33__HMMediaDestination_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  logCategory__hmf_once_v1_6032 = HMFCreateOSLogHandle();

  return MEMORY[0x1EEE66BB8]();
}

- (id)attributeDescriptionForAudioGroupIdentifier
{
  v2 = [(HMMediaDestination *)self audioGroupIdentifier];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 UUIDString];
  }

  else
  {
    v4 = @"Not Set";
  }

  return v4;
}

- (NSArray)attributeDescriptions
{
  v18[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [(HMMediaDestination *)self identifier];
  v5 = [v3 initWithName:@"identifier" value:v4];
  v18[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v7 = [(HMMediaDestination *)self parentIdentifier];
  v8 = [v6 initWithName:@"parentIdentifier" value:v7];
  v18[1] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  v10 = HMMediaDestinationSupportOptionsAsString([(HMMediaDestination *)self supportedOptions]);
  v11 = [v9 initWithName:@"supportOptions" value:v10];
  v18[2] = v11;
  v12 = objc_alloc(MEMORY[0x1E69A29C8]);
  v13 = [(HMMediaDestination *)self attributeDescriptionForAudioGroupIdentifier];
  v14 = [v12 initWithName:@"audioGroupIdentifier" value:v13];
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

- (BOOL)containsMediaSystemSupportedOptions
{
  if ([(HMMediaDestination *)self containsSupportedOptions:16]|| [(HMMediaDestination *)self containsSupportedOptions:32])
  {
    return 1;
  }

  return [(HMMediaDestination *)self containsSupportedOptions:128];
}

- (BOOL)containsHomeTheaterSupportedOptions
{
  if ([(HMMediaDestination *)self containsSupportedOptions:1]|| [(HMMediaDestination *)self containsSupportedOptions:4])
  {
    return 1;
  }

  return [(HMMediaDestination *)self containsSupportedOptions:64];
}

- (NSString)identifier
{
  v2 = [(HMMediaDestination *)self uniqueIdentifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (HMMediaDestination)initWithUniqueIdentifier:(id)a3 parentIdentifier:(id)a4 supportedOptions:(unint64_t)a5 audioGroupIdentifier:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (!v11)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  if (!v12)
  {
LABEL_7:
    v18 = _HMFPreconditionFailure();
    return [(HMMediaDestination *)v18 initWithUniqueIdentifier:v19 parentIdentifier:v20 supportedOptions:v21, v22];
  }

  v14 = v13;
  v23.receiver = self;
  v23.super_class = HMMediaDestination;
  v15 = [(HMMediaDestination *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_uniqueIdentifier, a3);
    objc_storeStrong(&v16->_parentIdentifier, a4);
    v16->_supportedOptions = a5;
    objc_storeStrong(&v16->_audioGroupIdentifier, a6);
  }

  return v16;
}

@end