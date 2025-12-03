@interface HMMediaDestination
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)containsHomeTheaterSupportedOptions;
- (BOOL)containsMediaSystemSupportedOptions;
- (BOOL)isEqual:(id)equal;
- (HMMediaDestination)initWithCoder:(id)coder;
- (HMMediaDestination)initWithProtoBufferData:(id)data;
- (HMMediaDestination)initWithUniqueIdentifier:(id)identifier parentIdentifier:(id)parentIdentifier supportedOptions:(unint64_t)options audioGroupIdentifier:(id)groupIdentifier;
- (NSArray)attributeDescriptions;
- (NSString)identifier;
- (NSString)shortDescription;
- (id)attributeDescriptionForAudioGroupIdentifier;
- (id)encodeToProtoBufferData;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMMediaDestination

- (HMMediaDestination)initWithProtoBufferData:(id)data
{
  v39 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = [[HMMediaGroupProtoMediaDestination alloc] initWithData:dataCopy];
  v6 = v5;
  if (v5)
  {
    if ([(HMMediaGroupProtoMediaDestination *)v5 hasIdentifier])
    {
      v7 = objc_alloc(MEMORY[0x1E696AFB0]);
      identifier = [(HMMediaGroupProtoMediaDestination *)v6 identifier];
      v9 = [v7 initWithUUIDString:identifier];

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
        selfCopy = 0;
        goto LABEL_26;
      }

      v10 = objc_alloc(MEMORY[0x1E696AFB0]);
      parentIdentifier = [(HMMediaGroupProtoMediaDestination *)v6 parentIdentifier];
      v12 = [v10 initWithUUIDString:parentIdentifier];

      if ([(HMMediaGroupProtoMediaDestination *)v6 hasSupportedOptions])
      {
        supportedOptions = [(HMMediaGroupProtoMediaDestination *)v6 supportedOptions];
        if ([(HMMediaGroupProtoMediaDestination *)v6 hasAudioGroupIdentifier])
        {
          audioGroupIdentifier = [(HMMediaGroupProtoMediaDestination *)v6 audioGroupIdentifier];
          v15 = [audioGroupIdentifier isEqual:@"00000000-0000-0000-0000-000000000000"];

          if (v15)
          {
            v16 = 0;
          }

          else
          {
            v31 = objc_alloc(MEMORY[0x1E696AFB0]);
            audioGroupIdentifier2 = [(HMMediaGroupProtoMediaDestination *)v6 audioGroupIdentifier];
            v16 = [v31 initWithUUIDString:audioGroupIdentifier2];
          }

          self = [(HMMediaDestination *)self initWithUniqueIdentifier:v9 parentIdentifier:v12 supportedOptions:supportedOptions audioGroupIdentifier:v16];

          selfCopy = self;
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
      selfCopy = 0;
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
  selfCopy = 0;
LABEL_27:

  v33 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)encodeToProtoBufferData
{
  v3 = objc_alloc_init(HMMediaGroupProtoMediaDestination);
  uniqueIdentifier = [(HMMediaDestination *)self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  [(HMMediaGroupProtoMediaDestination *)v3 setIdentifier:uUIDString];

  parentIdentifier = [(HMMediaDestination *)self parentIdentifier];
  uUIDString2 = [parentIdentifier UUIDString];
  [(HMMediaGroupProtoMediaDestination *)v3 setParentIdentifier:uUIDString2];

  [(HMMediaGroupProtoMediaDestination *)v3 setSupportedOptions:[(HMMediaDestination *)self supportedOptions]];
  audioGroupIdentifier = [(HMMediaDestination *)self audioGroupIdentifier];
  if (audioGroupIdentifier)
  {
    audioGroupIdentifier2 = [(HMMediaDestination *)self audioGroupIdentifier];
    uUIDString3 = [audioGroupIdentifier2 UUIDString];
    [(HMMediaGroupProtoMediaDestination *)v3 setAudioGroupIdentifier:uUIDString3];
  }

  else
  {
    [(HMMediaGroupProtoMediaDestination *)v3 setAudioGroupIdentifier:@"00000000-0000-0000-0000-000000000000"];
  }

  data = [(HMMediaGroupProtoMediaDestination *)v3 data];

  return data;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uniqueIdentifier = [(HMMediaDestination *)self uniqueIdentifier];
  [coderCopy encodeObject:uniqueIdentifier forKey:@"HMMediaDestinationIdentifierCodingKey"];

  parentIdentifier = [(HMMediaDestination *)self parentIdentifier];
  [coderCopy encodeObject:parentIdentifier forKey:@"HMMediaDestinationParentIdentifierCodingKey"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMMediaDestination supportedOptions](self, "supportedOptions")}];
  [coderCopy encodeObject:v7 forKey:@"HMMediaDestinationSupportedOptionsNumberCodingKey"];

  audioGroupIdentifier = [(HMMediaDestination *)self audioGroupIdentifier];
  [coderCopy encodeObject:audioGroupIdentifier forKey:@"HMMediaDestinationAudioGroupIdentifierCodingKey"];
}

- (HMMediaDestination)initWithCoder:(id)coder
{
  v29 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMMediaDestinationIdentifierCodingKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMMediaDestinationParentIdentifierCodingKey"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMMediaDestinationAudioGroupIdentifierCodingKey"];
  if ([coderCopy containsValueForKey:@"HMMediaDestinationSupportedOptionsCodingKey"])
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v11;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Using legacy encoding to get supported options", &v27, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    unsignedIntegerValue = [coderCopy decodeIntegerForKey:@"HMMediaDestinationSupportedOptionsCodingKey"];
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

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMMediaDestinationSupportedOptionsNumberCodingKey"];
  unsignedIntegerValue = [v13 unsignedIntegerValue];

  if (v5)
  {
    goto LABEL_7;
  }

LABEL_8:
  v14 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = HMFGetLogIdentifier();
    v27 = 138543362;
    v28 = v17;
    _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Using legacy encoding to get identifier", &v27, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMMediaDestinationIdentifierCodingKey"];
  v19 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v18];

  v5 = v19;
LABEL_11:
  if (!v6)
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy3 = self;
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

  v24 = [(HMMediaDestination *)self initWithUniqueIdentifier:v5 parentIdentifier:v6 supportedOptions:unsignedIntegerValue audioGroupIdentifier:v7];

  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

- (unint64_t)hash
{
  identifier = [(HMMediaDestination *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
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
    if (v6)
    {
      uniqueIdentifier = [(HMMediaDestination *)self uniqueIdentifier];
      uniqueIdentifier2 = [(HMMediaDestination *)v6 uniqueIdentifier];
      if ([uniqueIdentifier hmf_isEqualToUUID:uniqueIdentifier2])
      {
        parentIdentifier = [(HMMediaDestination *)self parentIdentifier];
        parentIdentifier2 = [(HMMediaDestination *)v6 parentIdentifier];
        if ([parentIdentifier hmf_isEqualToUUID:parentIdentifier2] && (v11 = -[HMMediaDestination supportedOptions](self, "supportedOptions"), v11 == -[HMMediaDestination supportedOptions](v6, "supportedOptions")))
        {
          audioGroupIdentifier = [(HMMediaDestination *)self audioGroupIdentifier];
          audioGroupIdentifier2 = [(HMMediaDestination *)v6 audioGroupIdentifier];
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

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMMutableMediaDestination alloc];
  uniqueIdentifier = [(HMMediaDestination *)self uniqueIdentifier];
  parentIdentifier = [(HMMediaDestination *)self parentIdentifier];
  supportedOptions = [(HMMediaDestination *)self supportedOptions];
  audioGroupIdentifier = [(HMMediaDestination *)self audioGroupIdentifier];
  v9 = [(HMMediaDestination *)v4 initWithUniqueIdentifier:uniqueIdentifier parentIdentifier:parentIdentifier supportedOptions:supportedOptions audioGroupIdentifier:audioGroupIdentifier];

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
  audioGroupIdentifier = [(HMMediaDestination *)self audioGroupIdentifier];
  v3 = audioGroupIdentifier;
  if (audioGroupIdentifier)
  {
    uUIDString = [audioGroupIdentifier UUIDString];
  }

  else
  {
    uUIDString = @"Not Set";
  }

  return uUIDString;
}

- (NSArray)attributeDescriptions
{
  v18[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  identifier = [(HMMediaDestination *)self identifier];
  v5 = [v3 initWithName:@"identifier" value:identifier];
  v18[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  parentIdentifier = [(HMMediaDestination *)self parentIdentifier];
  v8 = [v6 initWithName:@"parentIdentifier" value:parentIdentifier];
  v18[1] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  v10 = HMMediaDestinationSupportOptionsAsString([(HMMediaDestination *)self supportedOptions]);
  v11 = [v9 initWithName:@"supportOptions" value:v10];
  v18[2] = v11;
  v12 = objc_alloc(MEMORY[0x1E69A29C8]);
  attributeDescriptionForAudioGroupIdentifier = [(HMMediaDestination *)self attributeDescriptionForAudioGroupIdentifier];
  v14 = [v12 initWithName:@"audioGroupIdentifier" value:attributeDescriptionForAudioGroupIdentifier];
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
  uniqueIdentifier = [(HMMediaDestination *)self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  return uUIDString;
}

- (HMMediaDestination)initWithUniqueIdentifier:(id)identifier parentIdentifier:(id)parentIdentifier supportedOptions:(unint64_t)options audioGroupIdentifier:(id)groupIdentifier
{
  identifierCopy = identifier;
  parentIdentifierCopy = parentIdentifier;
  groupIdentifierCopy = groupIdentifier;
  if (!identifierCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  if (!parentIdentifierCopy)
  {
LABEL_7:
    v18 = _HMFPreconditionFailure();
    return [(HMMediaDestination *)v18 initWithUniqueIdentifier:v19 parentIdentifier:v20 supportedOptions:v21, v22];
  }

  v14 = groupIdentifierCopy;
  v23.receiver = self;
  v23.super_class = HMMediaDestination;
  v15 = [(HMMediaDestination *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_uniqueIdentifier, identifier);
    objc_storeStrong(&v16->_parentIdentifier, parentIdentifier);
    v16->_supportedOptions = options;
    objc_storeStrong(&v16->_audioGroupIdentifier, groupIdentifier);
  }

  return v16;
}

@end