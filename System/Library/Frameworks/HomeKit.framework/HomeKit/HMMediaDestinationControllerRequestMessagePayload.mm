@interface HMMediaDestinationControllerRequestMessagePayload
- (BOOL)isEqual:(id)equal;
- (HMMediaDestinationControllerRequestMessagePayload)initWithDestination:(id)destination options:(unint64_t)options;
- (HMMediaDestinationControllerRequestMessagePayload)initWithDestinationIdentifier:(id)identifier updateOptions:(unint64_t)options;
- (HMMediaDestinationControllerRequestMessagePayload)initWithPayload:(id)payload;
- (id)attributeDescriptions;
- (id)payloadCopy;
- (unint64_t)hash;
@end

@implementation HMMediaDestinationControllerRequestMessagePayload

- (unint64_t)hash
{
  destinationIdentifier = [(HMMediaDestinationControllerRequestMessagePayload *)self destinationIdentifier];
  v4 = [destinationIdentifier hash];
  updateOptions = [(HMMediaDestinationControllerRequestMessagePayload *)self updateOptions];

  return updateOptions + v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
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
    if (v6 && ([(HMMediaDestinationControllerRequestMessagePayload *)self destinationIdentifier], v7 = objc_claimAutoreleasedReturnValue(), [(HMMediaDestinationControllerRequestMessagePayload *)v6 destinationIdentifier], v8 = objc_claimAutoreleasedReturnValue(), v9 = HMFEqualObjects(), v8, v7, v9))
    {
      updateOptions = [(HMMediaDestinationControllerRequestMessagePayload *)self updateOptions];
      v11 = updateOptions == [(HMMediaDestinationControllerRequestMessagePayload *)v6 updateOptions];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  destinationIdentifier = [(HMMediaDestinationControllerRequestMessagePayload *)self destinationIdentifier];
  v5 = [v3 initWithName:@"destinationIdentifier" value:destinationIdentifier];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  v7 = HMMediaDestinationControllerUpateOptionsAsString([(HMMediaDestinationControllerRequestMessagePayload *)self updateOptions]);
  v8 = [v6 initWithName:@"updateOptions" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)payloadCopy
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"HMMediaDestinationIdentifierPayloadKey";
  destinationIdentifier = [(HMMediaDestinationControllerRequestMessagePayload *)self destinationIdentifier];
  if (destinationIdentifier)
  {
    destinationIdentifier2 = [(HMMediaDestinationControllerRequestMessagePayload *)self destinationIdentifier];
    uUIDString = [destinationIdentifier2 UUIDString];
  }

  else
  {
    uUIDString = @"00000000-0000-0000-0000-000000000000";
  }

  v10[1] = @"HMMediaDestinationControllerUpdateOptionsPayloadKey";
  v11[0] = uUIDString;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMMediaDestinationControllerRequestMessagePayload updateOptions](self, "updateOptions")}];
  v11[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

  if (destinationIdentifier)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (HMMediaDestinationControllerRequestMessagePayload)initWithPayload:(id)payload
{
  v19 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  v5 = [payloadCopy hmf_UUIDForKey:@"HMMediaDestinationIdentifierPayloadKey"];
  v6 = [payloadCopy hmf_numberForKey:@"HMMediaDestinationControllerUpdateOptionsPayloadKey"];
  v7 = v6;
  if (v6)
  {
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = payloadCopy;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@[HMMediaDestinationControllerRequestMessagePayload] Failed to get update options from payload: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    unsignedIntegerValue = 0;
  }

  v12 = [(HMMediaDestinationControllerRequestMessagePayload *)self initWithDestinationIdentifier:v5 updateOptions:unsignedIntegerValue];

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (HMMediaDestinationControllerRequestMessagePayload)initWithDestinationIdentifier:(id)identifier updateOptions:(unint64_t)options
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = HMMediaDestinationControllerRequestMessagePayload;
  v8 = [(HMMediaDestinationControllerRequestMessagePayload *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_destinationIdentifier, identifier);
    v9->_updateOptions = options;
  }

  return v9;
}

- (HMMediaDestinationControllerRequestMessagePayload)initWithDestination:(id)destination options:(unint64_t)options
{
  v31 = *MEMORY[0x1E69E9840];
  destinationCopy = destination;
  v7 = destinationCopy;
  if (!destinationCopy)
  {
    self = [(HMMediaDestinationControllerRequestMessagePayload *)self initWithNoDestination];
    selfCopy2 = self;
    goto LABEL_19;
  }

  if ((options & 2) == 0)
  {
    audioDestinationIdentifier = [destinationCopy audioDestinationIdentifier];
LABEL_10:
    v15 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:audioDestinationIdentifier];
    if (v15)
    {
      self = [(HMMediaDestinationControllerRequestMessagePayload *)self initWithDestinationIdentifier:v15 updateOptions:options];
      selfCopy2 = self;
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v19 = HMMediaDestinationControllerUpateOptionsAsString(options);
        v25 = 138543874;
        v26 = v18;
        v27 = 2112;
        v28 = v19;
        v29 = 2112;
        v30 = v7;
        _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@[HMMediaDestinationControllerRequestMessagePayload] Failed to get destination identifier with options: %@ destination: %@", &v25, 0x20u);
      }

      objc_autoreleasePoolPop(v16);
      selfCopy2 = 0;
    }

    goto LABEL_19;
  }

  v10 = destinationCopy;
  v11 = [v10 conformsToProtocol:&unk_1F0F27680];
  v12 = v11;
  if (v11)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (v12)
  {
    audioDestinationIdentifier = [v10 audioDestinationParentIdentifier];

    goto LABEL_10;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = HMFGetLogIdentifier();
    v25 = 138543618;
    v26 = v22;
    v27 = 2112;
    v28 = v10;
    _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@[HMMediaDestinationControllerRequestMessagePayload] Failed to convert to internal destination for destination: %@", &v25, 0x16u);
  }

  objc_autoreleasePoolPop(v20);
  selfCopy2 = 0;
LABEL_19:

  v23 = *MEMORY[0x1E69E9840];
  return selfCopy2;
}

@end