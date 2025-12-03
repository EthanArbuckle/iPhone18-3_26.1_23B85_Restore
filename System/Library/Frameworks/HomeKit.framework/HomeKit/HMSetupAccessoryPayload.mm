@interface HMSetupAccessoryPayload
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (BOOL)requiresMatterCustomCommissioningFlow;
- (HMAccessoryCategory)category;
- (HMSetupAccessoryPayload)initWithCoder:(id)coder;
- (HMSetupAccessoryPayload)initWithHAPSetupPayloadURL:(id)l error:(id *)error;
- (HMSetupAccessoryPayload)initWithSetupCode:(id)code communicationProtocol:(int64_t)protocol;
- (NSArray)attributeDescriptions;
- (NSNumber)matterDeviceTypeID;
- (NSString)shortDescription;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMSetupAccessoryPayload

- (NSArray)attributeDescriptions
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v5 = HMStringFromAccessoryCommunicationProtocol([(HMSetupAccessoryPayload *)self communicationProtocol]);
  v6 = [v4 initWithName:@"Communication Protocol" value:v5];
  [array addObject:v6];

  setupCode = [(HMSetupAccessoryPayload *)self setupCode];

  if (setupCode)
  {
    v8 = [objc_alloc(MEMORY[0x1E69A29C8]) initWithName:@"Setup Code" value:@"<not nil>"];
    [array addObject:v8];
  }

  setupPayloadURL = [(HMSetupAccessoryPayload *)self setupPayloadURL];

  if (setupPayloadURL)
  {
    v10 = [objc_alloc(MEMORY[0x1E69A29C8]) initWithName:@"Setup Payload URL" value:@"<not nil>"];
    [array addObject:v10];
  }

  setupID = [(HMSetupAccessoryPayload *)self setupID];

  if (setupID)
  {
    v12 = [objc_alloc(MEMORY[0x1E69A29C8]) initWithName:@"Setup ID" value:@"<not nil>"];
    [array addObject:v12];
  }

  categoryNumber = [(HMSetupAccessoryPayload *)self categoryNumber];

  if (categoryNumber)
  {
    v14 = objc_alloc(MEMORY[0x1E69A29C8]);
    categoryNumber2 = [(HMSetupAccessoryPayload *)self categoryNumber];
    v16 = [v14 initWithName:@"Category Number" value:categoryNumber2];
    [array addObject:v16];
  }

  productNumber = [(HMSetupAccessoryPayload *)self productNumber];

  if (productNumber)
  {
    v18 = objc_alloc(MEMORY[0x1E69A29C8]);
    productNumber2 = [(HMSetupAccessoryPayload *)self productNumber];
    v20 = [v18 initWithName:@"Product Number" value:productNumber2];
    [array addObject:v20];
  }

  if ([(HMSetupAccessoryPayload *)self supportsIP])
  {
    v21 = objc_alloc(MEMORY[0x1E69A29C8]);
    [(HMSetupAccessoryPayload *)self supportsIP];
    v22 = HMFBooleanToString();
    v23 = [v21 initWithName:@"Supports IP" value:v22];
    [array addObject:v23];
  }

  if ([(HMSetupAccessoryPayload *)self supportsWAC])
  {
    v24 = objc_alloc(MEMORY[0x1E69A29C8]);
    [(HMSetupAccessoryPayload *)self supportsWAC];
    v25 = HMFBooleanToString();
    v26 = [v24 initWithName:@"Supports WAC" value:v25];
    [array addObject:v26];
  }

  if ([(HMSetupAccessoryPayload *)self supportsBTLE])
  {
    v27 = objc_alloc(MEMORY[0x1E69A29C8]);
    [(HMSetupAccessoryPayload *)self supportsBTLE];
    v28 = HMFBooleanToString();
    v29 = [v27 initWithName:@"Supports BTLE" value:v28];
    [array addObject:v29];
  }

  if ([(HMSetupAccessoryPayload *)self isPaired])
  {
    v30 = objc_alloc(MEMORY[0x1E69A29C8]);
    [(HMSetupAccessoryPayload *)self isPaired];
    v31 = HMFBooleanToString();
    v32 = [v30 initWithName:@"Is Paired" value:v31];
    [array addObject:v32];
  }

  threadIdentifier = [(HMSetupAccessoryPayload *)self threadIdentifier];

  if (threadIdentifier)
  {
    v34 = objc_alloc(MEMORY[0x1E69A29C8]);
    threadIdentifier2 = [(HMSetupAccessoryPayload *)self threadIdentifier];
    v36 = [v34 initWithName:@"Thread Identifier" value:threadIdentifier2];
    [array addObject:v36];
  }

  chipAccessorySetupPayload = [(HMSetupAccessoryPayload *)self chipAccessorySetupPayload];

  if (chipAccessorySetupPayload)
  {
    v38 = objc_alloc(MEMORY[0x1E69A29C8]);
    chipAccessorySetupPayload2 = [(HMSetupAccessoryPayload *)self chipAccessorySetupPayload];
    v40 = [v38 initWithName:@"CHIP Setup Payload" value:chipAccessorySetupPayload2];
    [array addObject:v40];
  }

  v41 = [array copy];

  return v41;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (unint64_t)hash
{
  setupCode = [(HMSetupAccessoryPayload *)self setupCode];
  v4 = [setupCode hash];

  setupID = [(HMSetupAccessoryPayload *)self setupID];
  v6 = [setupID hash] ^ v4;

  threadIdentifier = [(HMSetupAccessoryPayload *)self threadIdentifier];
  v8 = [threadIdentifier hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v31 = 1;
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
      setupCode = [(HMSetupAccessoryPayload *)self setupCode];
      setupCode2 = [(HMSetupAccessoryPayload *)v6 setupCode];
      if (![setupCode isEqualToString:setupCode2])
      {
        goto LABEL_18;
      }

      communicationProtocol = [(HMSetupAccessoryPayload *)self communicationProtocol];
      if (communicationProtocol != [(HMSetupAccessoryPayload *)v6 communicationProtocol])
      {
        goto LABEL_18;
      }

      setupPayloadURL = [(HMSetupAccessoryPayload *)self setupPayloadURL];
      setupPayloadURL2 = [(HMSetupAccessoryPayload *)v6 setupPayloadURL];
      v12 = HMFEqualObjects();

      if (!v12)
      {
        goto LABEL_18;
      }

      setupID = [(HMSetupAccessoryPayload *)self setupID];
      setupID2 = [(HMSetupAccessoryPayload *)v6 setupID];
      v15 = HMFEqualObjects();

      if (!v15)
      {
        goto LABEL_18;
      }

      categoryNumber = [(HMSetupAccessoryPayload *)self categoryNumber];
      categoryNumber2 = [(HMSetupAccessoryPayload *)v6 categoryNumber];
      v18 = HMFEqualObjects();

      if (!v18)
      {
        goto LABEL_18;
      }

      productNumber = [(HMSetupAccessoryPayload *)self productNumber];
      productNumber2 = [(HMSetupAccessoryPayload *)v6 productNumber];
      v21 = HMFEqualObjects();

      if (!v21)
      {
        goto LABEL_18;
      }

      supportsIP = [(HMSetupAccessoryPayload *)self supportsIP];
      if (supportsIP != [(HMSetupAccessoryPayload *)v6 supportsIP])
      {
        goto LABEL_18;
      }

      supportsWAC = [(HMSetupAccessoryPayload *)self supportsWAC];
      if (supportsWAC != [(HMSetupAccessoryPayload *)v6 supportsWAC])
      {
        goto LABEL_18;
      }

      supportsBTLE = [(HMSetupAccessoryPayload *)self supportsBTLE];
      if (supportsBTLE != [(HMSetupAccessoryPayload *)v6 supportsBTLE])
      {
        goto LABEL_18;
      }

      isPaired = [(HMSetupAccessoryPayload *)self isPaired];
      if (isPaired != [(HMSetupAccessoryPayload *)v6 isPaired])
      {
        goto LABEL_18;
      }

      threadIdentifier = [(HMSetupAccessoryPayload *)self threadIdentifier];
      threadIdentifier2 = [(HMSetupAccessoryPayload *)v6 threadIdentifier];
      v28 = HMFEqualObjects();

      if (v28)
      {
        chipAccessorySetupPayload = [(HMSetupAccessoryPayload *)self chipAccessorySetupPayload];
        chipAccessorySetupPayload2 = [(HMSetupAccessoryPayload *)v6 chipAccessorySetupPayload];
        v31 = HMFEqualObjects();
      }

      else
      {
LABEL_18:
        v31 = 0;
      }
    }

    else
    {
      v31 = 0;
    }
  }

  return v31;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMMutableSetupAccessoryPayload allocWithZone:zone];
  setupCode = [(HMSetupAccessoryPayload *)self setupCode];
  v6 = [(HMSetupAccessoryPayload *)v4 initWithSetupCode:setupCode communicationProtocol:[(HMSetupAccessoryPayload *)self communicationProtocol]];

  setupPayloadURL = [(HMSetupAccessoryPayload *)self setupPayloadURL];
  [(HMSetupAccessoryPayload *)v6 setSetupPayloadURL:setupPayloadURL];

  setupID = [(HMSetupAccessoryPayload *)self setupID];
  [(HMSetupAccessoryPayload *)v6 setSetupID:setupID];

  categoryNumber = [(HMSetupAccessoryPayload *)self categoryNumber];
  [(HMSetupAccessoryPayload *)v6 setCategoryNumber:categoryNumber];

  productNumber = [(HMSetupAccessoryPayload *)self productNumber];
  [(HMSetupAccessoryPayload *)v6 setProductNumber:productNumber];

  [(HMSetupAccessoryPayload *)v6 setSupportsIP:[(HMSetupAccessoryPayload *)self supportsIP]];
  [(HMSetupAccessoryPayload *)v6 setSupportsWAC:[(HMSetupAccessoryPayload *)self supportsWAC]];
  [(HMSetupAccessoryPayload *)v6 setSupportsBTLE:[(HMSetupAccessoryPayload *)self supportsBTLE]];
  [(HMSetupAccessoryPayload *)v6 setPaired:[(HMSetupAccessoryPayload *)self isPaired]];
  threadIdentifier = [(HMSetupAccessoryPayload *)self threadIdentifier];
  [(HMSetupAccessoryPayload *)v6 setThreadIdentifier:threadIdentifier];

  chipAccessorySetupPayload = [(HMSetupAccessoryPayload *)self chipAccessorySetupPayload];
  [(HMSetupAccessoryPayload *)v6 setChipAccessorySetupPayload:chipAccessorySetupPayload];

  return v6;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  setupCode = [(HMSetupAccessoryPayload *)self setupCode];
  [coderCopy encodeObject:setupCode forKey:@"setupCode"];

  [coderCopy encodeInteger:-[HMSetupAccessoryPayload communicationProtocol](self forKey:{"communicationProtocol"), @"communicationProtocol"}];
  setupPayloadURL = [(HMSetupAccessoryPayload *)self setupPayloadURL];
  [coderCopy encodeObject:setupPayloadURL forKey:@"setupPayload"];

  setupID = [(HMSetupAccessoryPayload *)self setupID];
  [coderCopy encodeObject:setupID forKey:@"setupID"];

  categoryNumber = [(HMSetupAccessoryPayload *)self categoryNumber];
  [coderCopy encodeObject:categoryNumber forKey:@"categoryNumber"];

  productNumber = [(HMSetupAccessoryPayload *)self productNumber];
  [coderCopy encodeObject:productNumber forKey:@"productNumber"];

  [coderCopy encodeBool:-[HMSetupAccessoryPayload supportsIP](self forKey:{"supportsIP"), @"supportsIP"}];
  [coderCopy encodeBool:-[HMSetupAccessoryPayload supportsWAC](self forKey:{"supportsWAC"), @"supportsWAC"}];
  [coderCopy encodeBool:-[HMSetupAccessoryPayload supportsBTLE](self forKey:{"supportsBTLE"), @"supportsBTLE"}];
  [coderCopy encodeBool:-[HMSetupAccessoryPayload isPaired](self forKey:{"isPaired"), @"isPaired"}];
  threadIdentifier = [(HMSetupAccessoryPayload *)self threadIdentifier];
  [coderCopy encodeObject:threadIdentifier forKey:@"threadIdentifier"];

  chipAccessorySetupPayload = [(HMSetupAccessoryPayload *)self chipAccessorySetupPayload];
  [coderCopy encodeObject:chipAccessorySetupPayload forKey:@"chipAccessorySetupPayload"];
}

- (HMSetupAccessoryPayload)initWithCoder:(id)coder
{
  v24 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"setupCode"];
  v6 = [coderCopy decodeIntegerForKey:@"communicationProtocol"];
  if (v5)
  {
    selfCopy = [(HMSetupAccessoryPayload *)self initWithSetupCode:v5 communicationProtocol:v6];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"setupPayload"];
    [(HMSetupAccessoryPayload *)selfCopy setSetupPayloadURL:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"setupID"];
    [(HMSetupAccessoryPayload *)selfCopy setSetupID:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"categoryNumber"];
    [(HMSetupAccessoryPayload *)selfCopy setCategoryNumber:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productNumber"];
    [(HMSetupAccessoryPayload *)selfCopy setProductNumber:v11];

    -[HMSetupAccessoryPayload setSupportsIP:](selfCopy, "setSupportsIP:", [coderCopy decodeBoolForKey:@"supportsIP"]);
    -[HMSetupAccessoryPayload setSupportsWAC:](selfCopy, "setSupportsWAC:", [coderCopy decodeBoolForKey:@"supportsWAC"]);
    -[HMSetupAccessoryPayload setSupportsBTLE:](selfCopy, "setSupportsBTLE:", [coderCopy decodeBoolForKey:@"supportsBTLE"]);
    -[HMSetupAccessoryPayload setPaired:](selfCopy, "setPaired:", [coderCopy decodeBoolForKey:@"isPaired"]);
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"threadIdentifier"];
    [(HMSetupAccessoryPayload *)selfCopy setThreadIdentifier:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"chipAccessorySetupPayload"];
    [(HMSetupAccessoryPayload *)selfCopy setChipAccessorySetupPayload:v13];

    v14 = selfCopy;
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v17;
      v22 = 2112;
      v23 = 0;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Cannot initialize from setupCode: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v14 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v14;
}

- (NSNumber)matterDeviceTypeID
{
  chipAccessorySetupPayload = [(HMSetupAccessoryPayload *)self chipAccessorySetupPayload];
  deviceTypeID = [chipAccessorySetupPayload deviceTypeID];

  return deviceTypeID;
}

- (BOOL)requiresMatterCustomCommissioningFlow
{
  chipAccessorySetupPayload = [(HMSetupAccessoryPayload *)self chipAccessorySetupPayload];
  requiresCustomFlow = [chipAccessorySetupPayload requiresCustomFlow];

  return requiresCustomFlow;
}

- (HMAccessoryCategory)category
{
  v3 = +[HMHAPMetadata getSharedInstance];
  categoryNumber = [(HMSetupAccessoryPayload *)self categoryNumber];
  v5 = [v3 categoryForIdentifier:categoryNumber];

  return v5;
}

- (HMSetupAccessoryPayload)initWithSetupCode:(id)code communicationProtocol:(int64_t)protocol
{
  codeCopy = code;
  if (!codeCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  if (!protocol)
  {
LABEL_7:
    v12 = _HMFPreconditionFailure();
    return [(HMSetupAccessoryPayload *)v12 initWithSetupCode:v13, v14];
  }

  v7 = codeCopy;
  v15.receiver = self;
  v15.super_class = HMSetupAccessoryPayload;
  v8 = [(HMSetupAccessoryPayload *)&v15 init];
  if (v8)
  {
    v9 = [v7 copy];
    setupCode = v8->_setupCode;
    v8->_setupCode = v9;

    v8->_communicationProtocol = protocol;
  }

  return v8;
}

- (HMSetupAccessoryPayload)initWithHAPSetupPayloadURL:(id)l error:(id *)error
{
  v114 = *MEMORY[0x1E69E9840];
  lCopy = l;
  host = [lCopy host];
  v8 = host;
  if (host)
  {
    v9 = [host dataUsingEncoding:4];
    v10 = [v9 length];
    v11 = v10;
    if (v10 <= 0xC)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138544130;
        v107 = v14;
        v108 = 2048;
        v109 = v11;
        v110 = 2048;
        v111 = 13;
        v112 = 2112;
        v113 = lCopy;
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@SetupPayload: setup payload length '%lu' is less than minimum length '%lu' for setupPayloadURL '%@'", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v12);
      if (error)
      {
        [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
        v15 = 0;
        *error = v16 = 0;
      }

      else
      {
        v15 = 0;
        v16 = 0;
      }

      goto LABEL_96;
    }

    MEMORY[0x1EEE9AC00](v10);
    v20 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    [v9 getBytes:v20 length:v11];
    v105 = 0;
    v21 = base36Decode(v20, 9, &v105);
    v23 = v22;
    v101 = v105;
    if (!(v21 | v23))
    {
      v27 = objc_autoreleasePoolPush();
      v28 = HMFGetOSLogHandle();
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
      v15 = v101;
      if (v29)
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543874;
        v107 = v30;
        v108 = 2112;
        v109 = v9;
        v110 = 2112;
        v111 = v15;
        _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@SetupPayload: setup payload base-36 decode failed for payload %@  error %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v27);
      if (error)
      {
        v31 = v15;
        v16 = 0;
        *error = v15;
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_96;
    }

    v100 = v9;
    if (((v21 >> 43) & 7) != 0)
    {
      v24 = objc_autoreleasePoolPush();
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543618;
        v107 = v26;
        v108 = 1024;
        LODWORD(v109) = (v21 >> 43) & 7;
        _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@SetupPayload: Version in the setup payload is not zero - 0x%x", buf, 0x12u);
      }

      objc_autoreleasePoolPop(v24);
      v15 = v101;
      if (error)
      {
        [MEMORY[0x1E696ABC0] hmErrorWithCode:2004];
        *error = v16 = 0;
      }

      else
      {
        v16 = 0;
      }

      v9 = v100;
      goto LABEL_96;
    }

    v98 = &v94;
    if ((v21 & 0x18000000000) == 0)
    {
      if (v11 != 13)
      {
        selfCopy = self;
        v33 = objc_autoreleasePoolPush();
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = HMFGetLogIdentifier();
          v99 = v33;
          v36 = v35;
          *buf = 138543618;
          v107 = v35;
          v108 = 2048;
          v109 = v11;
          _os_log_impl(&dword_19BB39000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@SetupPayload: setup payload length larger than specified format - %tu", buf, 0x16u);

          v33 = v99;
        }

        objc_autoreleasePoolPop(v33);
        self = selfCopy;
      }

      if (((v21 >> 39) & 0xF) != 0)
      {
        selfCopy2 = self;
        v38 = objc_autoreleasePoolPush();
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = HMFGetLogIdentifier();
          v99 = v38;
          v41 = v40;
          *buf = 138543618;
          v107 = v40;
          v108 = 1024;
          LODWORD(v109) = (v21 >> 39) & 0xF;
          _os_log_impl(&dword_19BB39000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@SetupPayload: Reserved bits in the setup payload are not zero - 0x%x", buf, 0x12u);

          v38 = v99;
        }

        objc_autoreleasePoolPop(v38);
        self = selfCopy2;
      }
    }

    v96 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%03llu-%02llu-%03llu", (175921861 * (v21 & 0x7FFFFFF)) >> 44, ((v21 & 0x7FFFFFF) - 100000 * (((175921861 * (v21 & 0x7FFFFFF)) >> 32) >> 12)) / 0x3E8, (v21 & 0x7FFFFFF) - 1000 * (((68719477 * (v21 & 0x7FFFFFF)) >> 32) >> 4)];
    v42 = [HMSetupAccessoryPayload initWithSetupCode:"initWithSetupCode:communicationProtocol:" communicationProtocol:?];
    v43 = [(HMSetupAccessoryPayload *)v42 mutableCopy];
    [v43 setSetupPayloadURL:lCopy];
    v44 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:(v21 >> 31)];
    [v43 setCategoryNumber:v44];

    if ((v21 & 0x8000000) != 0)
    {
      [v43 setPaired:1];
      if ((v21 & 0x10000000) == 0)
      {
LABEL_34:
        if ((v21 & 0x20000000) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }
    }

    else if ((v21 & 0x10000000) == 0)
    {
      goto LABEL_34;
    }

    [v43 setSupportsIP:1];
    if ((v21 & 0x20000000) == 0)
    {
LABEL_36:
      v97 = v42;
      if ((v21 & 0x40000000) != 0)
      {
        [v43 setSupportsWAC:1];
      }

      v99 = v43;
      v45 = [MEMORY[0x1E696AD60] stringWithCapacity:4];
      for (i = 0; i != 4; ++i)
      {
        [v45 appendFormat:@"%c", v20[i + 9]];
      }

      [v99 setSetupID:v45];
      if ((v21 & 0x8000000000) != 0)
      {
        v9 = v100;
        if (v11 <= 0x1E)
        {
          v47 = objc_autoreleasePoolPush();
          v48 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            v49 = HMFGetLogIdentifier();
            *buf = 138543618;
            v107 = v49;
            v108 = 2112;
            v109 = lCopy;
            _os_log_impl(&dword_19BB39000, v48, OS_LOG_TYPE_DEFAULT, "%{public}@SetupPayload: too short for new style with extra info '%@'", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v47);
          v15 = v101;
          if (!error)
          {
            goto LABEL_58;
          }

          goto LABEL_53;
        }

        v55 = v101;
        v104 = v101;
        v56 = base36Decode((v20 + 9), 22, &v104);
        v95 = v57;
        v58 = v104;

        if (v58)
        {
          v59 = objc_autoreleasePoolPush();
          v60 = HMFGetOSLogHandle();
          v15 = v58;
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            v61 = HMFGetLogIdentifier();
            *buf = 138543874;
            v107 = v61;
            v108 = 2112;
            v109 = lCopy;
            v110 = 2112;
            v111 = v15;
            _os_log_impl(&dword_19BB39000, v60, OS_LOG_TYPE_ERROR, "%{public}@SetupPayload: failed to decode eui64 and product number '%@': %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v59);
          if (error)
          {
            v62 = v15;
            v16 = 0;
            *error = v15;
          }

          else
          {
            v16 = 0;
          }

          goto LABEL_94;
        }

        v72 = v56;
        v73 = v95;
        v74 = v56;
        if (v56)
        {
          v75 = objc_autoreleasePoolPush();
          v76 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
          {
            v77 = HMFGetLogIdentifier();
            *buf = 138543618;
            v107 = v77;
            v108 = 2048;
            v109 = v72;
            _os_log_impl(&dword_19BB39000, v76, OS_LOG_TYPE_DEFAULT, "%{public}@SetupPayload: reserved bits of extended QR code not all 0: %llu", buf, 0x16u);

            v73 = v95;
          }

          objc_autoreleasePoolPop(v75);
        }

        v78 = 0;
        *(&v79 + 1) = v73;
        *&v79 = v74;
        v103 = v79 >> 48;
        v80 = 7;
        do
        {
          v81 = *(&v103 + v78);
          *(&v103 + v78) = *(&v103 + v80);
          *(&v103 + v80) = v81;
          ++v78;
          --v80;
        }

        while (v78 != 4);
        v82 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v103];
        [v99 setThreadIdentifier:v82];

        v83 = v74 >> 16;
        if ((v21 & 0x10000000000) == 0 && v83)
        {
          v84 = objc_autoreleasePoolPush();
          v85 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
          {
            v86 = HMFGetLogIdentifier();
            *buf = 138543618;
            v107 = v86;
            v108 = 1024;
            LODWORD(v109) = v83;
            _os_log_impl(&dword_19BB39000, v85, OS_LOG_TYPE_DEFAULT, "%{public}@SetupPayload: product number not included, but not all 0: %u", buf, 0x12u);
          }

          objc_autoreleasePoolPop(v84);
          goto LABEL_90;
        }

        if ((v21 & 0x10000000000) == 0)
        {
LABEL_90:
          v15 = 0;
          v9 = v100;
          goto LABEL_91;
        }
      }

      else
      {
        v9 = v100;
        if ((v21 & 0x10000000000) == 0)
        {
          v15 = v101;
LABEL_91:
          v54 = v99;
          v16 = [v99 copy];
          goto LABEL_95;
        }

        if (v11 <= 0x1E)
        {
          v50 = objc_autoreleasePoolPush();
          v51 = HMFGetOSLogHandle();
          v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
          v15 = v101;
          if (v52)
          {
            v53 = HMFGetLogIdentifier();
            *buf = 138543618;
            v107 = v53;
            v108 = 2112;
            v109 = lCopy;
            _os_log_impl(&dword_19BB39000, v51, OS_LOG_TYPE_DEFAULT, "%{public}@SetupPayload: too short for new style with product number '%@'", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v50);
          if (!error)
          {
LABEL_58:
            v16 = 0;
            goto LABEL_59;
          }

LABEL_53:
          [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
          *error = v16 = 0;
LABEL_59:
          v54 = v99;
LABEL_95:

          self = v97;
LABEL_96:

          goto LABEL_97;
        }

        v63 = v101;
        v102 = v101;
        v64 = base36Decode((v20 + 13), 18, &v102);
        v66 = v65;
        v67 = v102;

        if (v67)
        {
          v68 = objc_autoreleasePoolPush();
          v69 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
          {
            v70 = HMFGetLogIdentifier();
            *buf = 138543874;
            v107 = v70;
            v108 = 2112;
            v109 = lCopy;
            v110 = 2112;
            v111 = v67;
            _os_log_impl(&dword_19BB39000, v69, OS_LOG_TYPE_ERROR, "%{public}@SetupPayload: failed to decode product number '%@': %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v68);
          if (error)
          {
            v71 = v67;
            v16 = 0;
            *error = v67;
          }

          else
          {
            v16 = 0;
          }

          v15 = v67;
LABEL_94:
          v54 = v99;
          goto LABEL_95;
        }

        if ((v64 & 0xFFFFFFFFFFFFFFLL) != 0)
        {
          v87 = objc_autoreleasePoolPush();
          v88 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
          {
            v89 = HMFGetLogIdentifier();
            *buf = 138543618;
            v107 = v89;
            v108 = 2048;
            v109 = v64 & 0xFFFFFFFFFFFFFFLL;
            _os_log_impl(&dword_19BB39000, v88, OS_LOG_TYPE_DEFAULT, "%{public}@SetupPayload: reserved bits of extended QR code not all 0: %llu", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v87);
        }

        *(&v90 + 1) = v66;
        *&v90 = v64;
        v83 = v90 >> 56;
      }

      v91 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%08x", v83];
      [v99 setProductNumber:v91];

      goto LABEL_90;
    }

LABEL_35:
    [v43 setSupportsBTLE:1];
    goto LABEL_36;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543618;
    v107 = v19;
    v108 = 2112;
    v109 = lCopy;
    _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@SetupPayload: setup payload URL host is nil in setupPayloadURL '%@'", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  if (error)
  {
    [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    *error = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

LABEL_97:

  v92 = *MEMORY[0x1E69E9840];
  return v16;
}

@end