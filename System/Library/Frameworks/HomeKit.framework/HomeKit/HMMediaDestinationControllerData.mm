@interface HMMediaDestinationControllerData
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMMediaDestinationControllerData)initWithCoder:(id)coder;
- (HMMediaDestinationControllerData)initWithIdentifier:(id)identifier parentIdentifier:(id)parentIdentifier destinationIdentifier:(id)destinationIdentifier supportedOptions:(unint64_t)options availableDestinationIdentifiers:(id)identifiers;
- (HMMediaDestinationControllerData)initWithProtoBufferData:(id)data;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)encodeToProtoBufferData;
- (id)logIdentifier;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMMediaDestinationControllerData

- (HMMediaDestinationControllerData)initWithProtoBufferData:(id)data
{
  v52 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = [[HMMediaGroupProtoMediaDestinationControllerData alloc] initWithData:dataCopy];
  v6 = v5;
  if (!v5)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v46 = 138543618;
      v47 = v18;
      v48 = 2112;
      v49 = objc_opt_class();
      v19 = "%{public}@[%@] Error deserializing ProtoBuffer data";
      v20 = v17;
      v21 = 22;
LABEL_11:
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, v19, &v46, v21);
    }

LABEL_12:

    objc_autoreleasePoolPop(v16);
    selfCopy = 0;
    goto LABEL_36;
  }

  if (![(HMMediaGroupProtoMediaDestinationControllerData *)v5 hasIdentifier])
  {
    v16 = objc_autoreleasePoolPush();
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v46 = 138543874;
      v47 = v18;
      v48 = 2112;
      v49 = objc_opt_class();
      v50 = 2112;
      v51 = v6;
      v19 = "%{public}@[%@] missing field=identifier from data=%@";
      v20 = v17;
      v21 = 32;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v7 = objc_alloc(MEMORY[0x1E696AFB0]);
  identifier = [(HMMediaGroupProtoMediaDestinationControllerData *)v6 identifier];
  v9 = [v7 initWithUUIDString:identifier];

  if ([(HMMediaGroupProtoMediaDestinationControllerData *)v6 hasParentIdentifier])
  {
    v10 = objc_alloc(MEMORY[0x1E696AFB0]);
    parentIdentifier = [(HMMediaGroupProtoMediaDestinationControllerData *)v6 parentIdentifier];
    v12 = [v10 initWithUUIDString:parentIdentifier];

    if ([(HMMediaGroupProtoMediaDestinationControllerData *)v6 hasDestinationIdentifier])
    {
      destinationIdentifier = [(HMMediaGroupProtoMediaDestinationControllerData *)v6 destinationIdentifier];
      v14 = [destinationIdentifier isEqual:@"00000000-0000-0000-0000-000000000000"];

      if (v14)
      {
        v15 = 0;
      }

      else
      {
        v29 = objc_alloc(MEMORY[0x1E696AFB0]);
        destinationIdentifier2 = [(HMMediaGroupProtoMediaDestinationControllerData *)v6 destinationIdentifier];
        v15 = [v29 initWithUUIDString:destinationIdentifier2];
      }

      availableDestinations = [(HMMediaGroupProtoMediaDestinationControllerData *)v6 availableDestinations];

      if (availableDestinations)
      {
        availableDestinations2 = [(HMMediaGroupProtoMediaDestinationControllerData *)v6 availableDestinations];
        v33 = [availableDestinations2 na_map:&__block_literal_global_80];

        if ([v33 count] == 1)
        {
          firstObject = [v33 firstObject];
          uUIDString = [firstObject UUIDString];
          v36 = [uUIDString isEqualToString:@"00000000-0000-0000-0000-000000000000"];

          if (v36)
          {

            v33 = MEMORY[0x1E695E0F0];
          }
        }

        if ([(HMMediaGroupProtoMediaDestinationControllerData *)v6 hasSupportedOptions])
        {
          supportedOptions = [(HMMediaGroupProtoMediaDestinationControllerData *)v6 supportedOptions];
        }

        else
        {
          v41 = objc_autoreleasePoolPush();
          v42 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            v43 = HMFGetLogIdentifier();
            v46 = 138543874;
            v47 = v43;
            v48 = 2112;
            v49 = objc_opt_class();
            v50 = 2112;
            v51 = v6;
            _os_log_impl(&dword_19BB39000, v42, OS_LOG_TYPE_ERROR, "%{public}@[%@] missing field=supportedOptions from data=%@", &v46, 0x20u);
          }

          objc_autoreleasePoolPop(v41);
          supportedOptions = 0;
        }

        self = [(HMMediaDestinationControllerData *)self initWithIdentifier:v9 parentIdentifier:v12 destinationIdentifier:v15 supportedOptions:supportedOptions availableDestinationIdentifiers:v33];

        selfCopy = self;
      }

      else
      {
        v38 = objc_autoreleasePoolPush();
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = HMFGetLogIdentifier();
          v46 = 138543874;
          v47 = v40;
          v48 = 2112;
          v49 = objc_opt_class();
          v50 = 2112;
          v51 = v6;
          _os_log_impl(&dword_19BB39000, v39, OS_LOG_TYPE_ERROR, "%{public}@[%@] missing field=availableDestinations from data=%@", &v46, 0x20u);
        }

        objc_autoreleasePoolPop(v38);
        selfCopy = 0;
      }
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        v46 = 138543874;
        v47 = v28;
        v48 = 2112;
        v49 = objc_opt_class();
        v50 = 2112;
        v51 = v6;
        _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@[%@] missing field=destinationIdentifier from data=%@", &v46, 0x20u);
      }

      objc_autoreleasePoolPop(v26);
      selfCopy = 0;
    }
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v46 = 138543874;
      v47 = v25;
      v48 = 2112;
      v49 = objc_opt_class();
      v50 = 2112;
      v51 = v6;
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@[%@] missing field=parentIdentifier from data=%@", &v46, 0x20u);
    }

    objc_autoreleasePoolPop(v23);
    selfCopy = 0;
  }

LABEL_36:
  v44 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

id __60__HMMediaDestinationControllerData_initWithProtoBufferData___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AFB0];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

- (id)encodeToProtoBufferData
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(HMMediaGroupProtoMediaDestinationControllerData);
  identifier = [(HMMediaDestinationControllerData *)self identifier];
  uUIDString = [identifier UUIDString];
  [(HMMediaGroupProtoMediaDestinationControllerData *)v3 setIdentifier:uUIDString];

  parentIdentifier = [(HMMediaDestinationControllerData *)self parentIdentifier];
  uUIDString2 = [parentIdentifier UUIDString];
  [(HMMediaGroupProtoMediaDestinationControllerData *)v3 setParentIdentifier:uUIDString2];

  destinationIdentifier = [(HMMediaDestinationControllerData *)self destinationIdentifier];
  uUIDString3 = [destinationIdentifier UUIDString];
  v10 = uUIDString3;
  if (uUIDString3)
  {
    v11 = uUIDString3;
  }

  else
  {
    v11 = @"00000000-0000-0000-0000-000000000000";
  }

  [(HMMediaGroupProtoMediaDestinationControllerData *)v3 setDestinationIdentifier:v11];

  [(HMMediaGroupProtoMediaDestinationControllerData *)v3 setSupportedOptions:[(HMMediaDestinationControllerData *)self supportedOptions]];
  availableDestinationIdentifiers = [(HMMediaDestinationControllerData *)self availableDestinationIdentifiers];
  v13 = [availableDestinationIdentifiers na_map:&__block_literal_global_77];
  v14 = [v13 mutableCopy];
  [(HMMediaGroupProtoMediaDestinationControllerData *)v3 setAvailableDestinations:v14];

  availableDestinations = [(HMMediaGroupProtoMediaDestinationControllerData *)v3 availableDestinations];
  if ([availableDestinations count])
  {
    availableDestinations2 = [(HMMediaGroupProtoMediaDestinationControllerData *)v3 availableDestinations];
    [(HMMediaGroupProtoMediaDestinationControllerData *)v3 setAvailableDestinations:availableDestinations2];
  }

  else
  {
    v21[0] = @"00000000-0000-0000-0000-000000000000";
    availableDestinations2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    v17 = [availableDestinations2 mutableCopy];
    [(HMMediaGroupProtoMediaDestinationControllerData *)v3 setAvailableDestinations:v17];
  }

  data = [(HMMediaGroupProtoMediaDestinationControllerData *)v3 data];

  v19 = *MEMORY[0x1E69E9840];

  return data;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(HMMediaDestinationControllerData *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"HMMediaDestinationControllerIdentifierCodingKey"];

  parentIdentifier = [(HMMediaDestinationControllerData *)self parentIdentifier];
  [coderCopy encodeObject:parentIdentifier forKey:@"HMMediaDestinationControllerParentIdentifierCodingKey"];

  destinationIdentifier = [(HMMediaDestinationControllerData *)self destinationIdentifier];
  [coderCopy encodeObject:destinationIdentifier forKey:@"HMMediaDestinationControllerDestinationIdentifierCodingKey"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMMediaDestinationControllerData supportedOptions](self, "supportedOptions")}];
  [coderCopy encodeObject:v8 forKey:@"HMMediaDestinationControllerSupportedOptionsCodingKey"];

  availableDestinationIdentifiers = [(HMMediaDestinationControllerData *)self availableDestinationIdentifiers];
  [coderCopy encodeObject:availableDestinationIdentifiers forKey:@"HMMediaDestinationControllerAvailableDestinationIdentifiersCodingKey"];
}

- (HMMediaDestinationControllerData)initWithCoder:(id)coder
{
  v52[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMMediaDestinationControllerIdentifierCodingKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMMediaDestinationControllerParentIdentifierCodingKey"];
  v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMMediaDestinationControllerDestinationIdentifierCodingKey"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMMediaDestinationControllerSupportedOptionsCodingKey"];
  unsignedIntegerValue = [v7 unsignedIntegerValue];
  v8 = MEMORY[0x1E695DFD8];
  v52[0] = objc_opt_class();
  v52[1] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
  v10 = [v8 setWithArray:v9];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"HMMediaDestinationControllerAvailableDestinationIdentifiersCodingKey"];

  if (v11)
  {
    v12 = v43;
    if (!v5)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v45 = v16;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Using legacy encoding to get available destination identifiers", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v17 = MEMORY[0x1E695DFD8];
    v51[0] = objc_opt_class();
    v51[1] = objc_opt_class();
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
    v19 = [v17 setWithArray:v18];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"HMMediaDestinationControllerAvailableDestinationsCodingKey"];

    v11 = [v20 na_map:&__block_literal_global_73_25080];

    if (v11)
    {
      goto LABEL_10;
    }

    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy2;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v45 = v24;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@Using legacy homed encoding to get available destination identifiers", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v25 = MEMORY[0x1E695DFD8];
    v50[0] = objc_opt_class();
    v50[1] = objc_opt_class();
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
    v27 = [v25 setWithArray:v26];
    v11 = [coderCopy decodeObjectOfClasses:v27 forKey:@"HMDMediaDestinationControllerAvailableDestinationIdentifiersCodingKey"];

    if (v11)
    {
LABEL_10:
      v12 = v43;
    }

    else
    {
      v37 = objc_autoreleasePoolPush();
      v38 = v22;
      v39 = HMFGetOSLogHandle();
      v12 = v43;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = HMFGetLogIdentifier();
        *buf = 138543362;
        v45 = v40;
        _os_log_impl(&dword_19BB39000, v39, OS_LOG_TYPE_ERROR, "%{public}@Could not get encoded available destination identifiers", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v37);
      v11 = MEMORY[0x1E695E0F0];
    }

    self = selfCopy;
    if (!v5)
    {
      goto LABEL_14;
    }
  }

  if (v6)
  {
    v28 = [(HMMediaDestinationControllerData *)self initWithIdentifier:v5 parentIdentifier:v6 destinationIdentifier:v12 supportedOptions:unsignedIntegerValue availableDestinationIdentifiers:v11];
    v29 = v28;
    goto LABEL_17;
  }

LABEL_14:
  v30 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v32 = v30;
  v28 = selfCopy3;
  v33 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    v34 = HMFGetLogIdentifier();
    *buf = 138543874;
    v45 = v34;
    v46 = 2112;
    v47 = v5;
    v48 = 2112;
    v49 = v6;
    _os_log_impl(&dword_19BB39000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode data with identifier: %@ parent identifier: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v32);
  v29 = 0;
LABEL_17:

  v35 = *MEMORY[0x1E69E9840];
  return v29;
}

- (unint64_t)hash
{
  identifier = [(HMMediaDestinationControllerData *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v19 = 1;
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
      identifier = [(HMMediaDestinationControllerData *)self identifier];
      identifier2 = [(HMMediaDestinationControllerData *)v6 identifier];
      if ([identifier hmf_isEqualToUUID:identifier2])
      {
        parentIdentifier = [(HMMediaDestinationControllerData *)self parentIdentifier];
        parentIdentifier2 = [(HMMediaDestinationControllerData *)v6 parentIdentifier];
        if (![parentIdentifier hmf_isEqualToUUID:parentIdentifier2])
        {
          goto LABEL_15;
        }

        destinationIdentifier = [(HMMediaDestinationControllerData *)self destinationIdentifier];
        destinationIdentifier2 = [(HMMediaDestinationControllerData *)v6 destinationIdentifier];
        v13 = HMFEqualObjects();

        if (!v13)
        {
          goto LABEL_15;
        }

        supportedOptions = [(HMMediaDestinationControllerData *)self supportedOptions];
        if (supportedOptions == [(HMMediaDestinationControllerData *)v6 supportedOptions])
        {
          availableDestinationIdentifiers = [(HMMediaDestinationControllerData *)self availableDestinationIdentifiers];
          v16 = [availableDestinationIdentifiers count];
          availableDestinationIdentifiers2 = [(HMMediaDestinationControllerData *)v6 availableDestinationIdentifiers];
          if (v16 == [availableDestinationIdentifiers2 count])
          {
            availableDestinationIdentifiers3 = [(HMMediaDestinationControllerData *)self availableDestinationIdentifiers];
            v21[0] = MEMORY[0x1E69E9820];
            v21[1] = 3221225472;
            v21[2] = __44__HMMediaDestinationControllerData_isEqual___block_invoke;
            v21[3] = &unk_1E7548C60;
            v22 = v6;
            v19 = [availableDestinationIdentifiers3 na_allObjectsPassTest:v21];
          }

          else
          {
            v19 = 0;
          }
        }

        else
        {
LABEL_15:
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

uint64_t __44__HMMediaDestinationControllerData_isEqual___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 availableDestinationIdentifiers];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMMutableMediaDestinationControllerData alloc];
  identifier = [(HMMediaDestinationControllerData *)self identifier];
  parentIdentifier = [(HMMediaDestinationControllerData *)self parentIdentifier];
  destinationIdentifier = [(HMMediaDestinationControllerData *)self destinationIdentifier];
  supportedOptions = [(HMMediaDestinationControllerData *)self supportedOptions];
  availableDestinationIdentifiers = [(HMMediaDestinationControllerData *)self availableDestinationIdentifiers];
  v10 = [(HMMediaDestinationControllerData *)v4 initWithIdentifier:identifier parentIdentifier:parentIdentifier destinationIdentifier:destinationIdentifier supportedOptions:supportedOptions availableDestinationIdentifiers:availableDestinationIdentifiers];

  return v10;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_25105 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_25105, &__block_literal_global_25106);
  }

  v3 = logCategory__hmf_once_v1_25107;

  return v3;
}

uint64_t __47__HMMediaDestinationControllerData_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_25107;
  logCategory__hmf_once_v1_25107 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (NSArray)attributeDescriptions
{
  v23[5] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  identifier = [(HMMediaDestinationControllerData *)self identifier];
  v4 = [v3 initWithName:@"identifier" value:identifier];
  v23[0] = v4;
  v5 = objc_alloc(MEMORY[0x1E69A29C8]);
  parentIdentifier = [(HMMediaDestinationControllerData *)self parentIdentifier];
  v7 = [v5 initWithName:@"parentIdentifier" value:parentIdentifier];
  v23[1] = v7;
  v8 = objc_alloc(MEMORY[0x1E69A29C8]);
  destinationIdentifier = [(HMMediaDestinationControllerData *)self destinationIdentifier];
  v10 = destinationIdentifier;
  if (destinationIdentifier)
  {
    v11 = destinationIdentifier;
  }

  else
  {
    v11 = @"not set";
  }

  v12 = [v8 initWithName:@"destinationIdentifier" value:v11];
  v23[2] = v12;
  v13 = objc_alloc(MEMORY[0x1E69A29C8]);
  v14 = HMMediaDestinationControllerSupportOptionsAsString([(HMMediaDestinationControllerData *)self supportedOptions]);
  v15 = [v13 initWithName:@"supportedOptions" value:v14];
  v23[3] = v15;
  v16 = objc_alloc(MEMORY[0x1E69A29C8]);
  availableDestinationIdentifiers = [(HMMediaDestinationControllerData *)self availableDestinationIdentifiers];
  v18 = [v16 initWithName:@"availableDestinationIdentifiers" value:availableDestinationIdentifiers];
  v23[4] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:5];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (id)logIdentifier
{
  identifier = [(HMMediaDestinationControllerData *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (HMMediaDestinationControllerData)initWithIdentifier:(id)identifier parentIdentifier:(id)parentIdentifier destinationIdentifier:(id)destinationIdentifier supportedOptions:(unint64_t)options availableDestinationIdentifiers:(id)identifiers
{
  identifierCopy = identifier;
  parentIdentifierCopy = parentIdentifier;
  destinationIdentifierCopy = destinationIdentifier;
  identifiersCopy = identifiers;
  if (!identifierCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!parentIdentifierCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v17 = identifiersCopy;
  if (!identifiersCopy)
  {
LABEL_9:
    v21 = _HMFPreconditionFailure();
    [(HMHome *)v21 unjoinThreadNetworkWithCompletion:v22, v23];
    return result;
  }

  v24.receiver = self;
  v24.super_class = HMMediaDestinationControllerData;
  v18 = [(HMMediaDestinationControllerData *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_identifier, identifier);
    objc_storeStrong(&v19->_parentIdentifier, parentIdentifier);
    objc_storeStrong(&v19->_destinationIdentifier, destinationIdentifier);
    v19->_supportedOptions = options;
    objc_storeStrong(&v19->_availableDestinationIdentifiers, identifiers);
  }

  return v19;
}

@end