@interface HMSetupAccessoryPayload
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (BOOL)requiresMatterCustomCommissioningFlow;
- (HMAccessoryCategory)category;
- (HMSetupAccessoryPayload)initWithCoder:(id)a3;
- (HMSetupAccessoryPayload)initWithHAPSetupPayloadURL:(id)a3 error:(id *)a4;
- (HMSetupAccessoryPayload)initWithSetupCode:(id)a3 communicationProtocol:(int64_t)a4;
- (NSArray)attributeDescriptions;
- (NSNumber)matterDeviceTypeID;
- (NSString)shortDescription;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMSetupAccessoryPayload

- (NSArray)attributeDescriptions
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v5 = HMStringFromAccessoryCommunicationProtocol([(HMSetupAccessoryPayload *)self communicationProtocol]);
  v6 = [v4 initWithName:@"Communication Protocol" value:v5];
  [v3 addObject:v6];

  v7 = [(HMSetupAccessoryPayload *)self setupCode];

  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E69A29C8]) initWithName:@"Setup Code" value:@"<not nil>"];
    [v3 addObject:v8];
  }

  v9 = [(HMSetupAccessoryPayload *)self setupPayloadURL];

  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E69A29C8]) initWithName:@"Setup Payload URL" value:@"<not nil>"];
    [v3 addObject:v10];
  }

  v11 = [(HMSetupAccessoryPayload *)self setupID];

  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x1E69A29C8]) initWithName:@"Setup ID" value:@"<not nil>"];
    [v3 addObject:v12];
  }

  v13 = [(HMSetupAccessoryPayload *)self categoryNumber];

  if (v13)
  {
    v14 = objc_alloc(MEMORY[0x1E69A29C8]);
    v15 = [(HMSetupAccessoryPayload *)self categoryNumber];
    v16 = [v14 initWithName:@"Category Number" value:v15];
    [v3 addObject:v16];
  }

  v17 = [(HMSetupAccessoryPayload *)self productNumber];

  if (v17)
  {
    v18 = objc_alloc(MEMORY[0x1E69A29C8]);
    v19 = [(HMSetupAccessoryPayload *)self productNumber];
    v20 = [v18 initWithName:@"Product Number" value:v19];
    [v3 addObject:v20];
  }

  if ([(HMSetupAccessoryPayload *)self supportsIP])
  {
    v21 = objc_alloc(MEMORY[0x1E69A29C8]);
    [(HMSetupAccessoryPayload *)self supportsIP];
    v22 = HMFBooleanToString();
    v23 = [v21 initWithName:@"Supports IP" value:v22];
    [v3 addObject:v23];
  }

  if ([(HMSetupAccessoryPayload *)self supportsWAC])
  {
    v24 = objc_alloc(MEMORY[0x1E69A29C8]);
    [(HMSetupAccessoryPayload *)self supportsWAC];
    v25 = HMFBooleanToString();
    v26 = [v24 initWithName:@"Supports WAC" value:v25];
    [v3 addObject:v26];
  }

  if ([(HMSetupAccessoryPayload *)self supportsBTLE])
  {
    v27 = objc_alloc(MEMORY[0x1E69A29C8]);
    [(HMSetupAccessoryPayload *)self supportsBTLE];
    v28 = HMFBooleanToString();
    v29 = [v27 initWithName:@"Supports BTLE" value:v28];
    [v3 addObject:v29];
  }

  if ([(HMSetupAccessoryPayload *)self isPaired])
  {
    v30 = objc_alloc(MEMORY[0x1E69A29C8]);
    [(HMSetupAccessoryPayload *)self isPaired];
    v31 = HMFBooleanToString();
    v32 = [v30 initWithName:@"Is Paired" value:v31];
    [v3 addObject:v32];
  }

  v33 = [(HMSetupAccessoryPayload *)self threadIdentifier];

  if (v33)
  {
    v34 = objc_alloc(MEMORY[0x1E69A29C8]);
    v35 = [(HMSetupAccessoryPayload *)self threadIdentifier];
    v36 = [v34 initWithName:@"Thread Identifier" value:v35];
    [v3 addObject:v36];
  }

  v37 = [(HMSetupAccessoryPayload *)self chipAccessorySetupPayload];

  if (v37)
  {
    v38 = objc_alloc(MEMORY[0x1E69A29C8]);
    v39 = [(HMSetupAccessoryPayload *)self chipAccessorySetupPayload];
    v40 = [v38 initWithName:@"CHIP Setup Payload" value:v39];
    [v3 addObject:v40];
  }

  v41 = [v3 copy];

  return v41;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (unint64_t)hash
{
  v3 = [(HMSetupAccessoryPayload *)self setupCode];
  v4 = [v3 hash];

  v5 = [(HMSetupAccessoryPayload *)self setupID];
  v6 = [v5 hash] ^ v4;

  v7 = [(HMSetupAccessoryPayload *)self threadIdentifier];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v31 = 1;
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
      v7 = [(HMSetupAccessoryPayload *)self setupCode];
      v8 = [(HMSetupAccessoryPayload *)v6 setupCode];
      if (![v7 isEqualToString:v8])
      {
        goto LABEL_18;
      }

      v9 = [(HMSetupAccessoryPayload *)self communicationProtocol];
      if (v9 != [(HMSetupAccessoryPayload *)v6 communicationProtocol])
      {
        goto LABEL_18;
      }

      v10 = [(HMSetupAccessoryPayload *)self setupPayloadURL];
      v11 = [(HMSetupAccessoryPayload *)v6 setupPayloadURL];
      v12 = HMFEqualObjects();

      if (!v12)
      {
        goto LABEL_18;
      }

      v13 = [(HMSetupAccessoryPayload *)self setupID];
      v14 = [(HMSetupAccessoryPayload *)v6 setupID];
      v15 = HMFEqualObjects();

      if (!v15)
      {
        goto LABEL_18;
      }

      v16 = [(HMSetupAccessoryPayload *)self categoryNumber];
      v17 = [(HMSetupAccessoryPayload *)v6 categoryNumber];
      v18 = HMFEqualObjects();

      if (!v18)
      {
        goto LABEL_18;
      }

      v19 = [(HMSetupAccessoryPayload *)self productNumber];
      v20 = [(HMSetupAccessoryPayload *)v6 productNumber];
      v21 = HMFEqualObjects();

      if (!v21)
      {
        goto LABEL_18;
      }

      v22 = [(HMSetupAccessoryPayload *)self supportsIP];
      if (v22 != [(HMSetupAccessoryPayload *)v6 supportsIP])
      {
        goto LABEL_18;
      }

      v23 = [(HMSetupAccessoryPayload *)self supportsWAC];
      if (v23 != [(HMSetupAccessoryPayload *)v6 supportsWAC])
      {
        goto LABEL_18;
      }

      v24 = [(HMSetupAccessoryPayload *)self supportsBTLE];
      if (v24 != [(HMSetupAccessoryPayload *)v6 supportsBTLE])
      {
        goto LABEL_18;
      }

      v25 = [(HMSetupAccessoryPayload *)self isPaired];
      if (v25 != [(HMSetupAccessoryPayload *)v6 isPaired])
      {
        goto LABEL_18;
      }

      v26 = [(HMSetupAccessoryPayload *)self threadIdentifier];
      v27 = [(HMSetupAccessoryPayload *)v6 threadIdentifier];
      v28 = HMFEqualObjects();

      if (v28)
      {
        v29 = [(HMSetupAccessoryPayload *)self chipAccessorySetupPayload];
        v30 = [(HMSetupAccessoryPayload *)v6 chipAccessorySetupPayload];
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

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMMutableSetupAccessoryPayload allocWithZone:a3];
  v5 = [(HMSetupAccessoryPayload *)self setupCode];
  v6 = [(HMSetupAccessoryPayload *)v4 initWithSetupCode:v5 communicationProtocol:[(HMSetupAccessoryPayload *)self communicationProtocol]];

  v7 = [(HMSetupAccessoryPayload *)self setupPayloadURL];
  [(HMSetupAccessoryPayload *)v6 setSetupPayloadURL:v7];

  v8 = [(HMSetupAccessoryPayload *)self setupID];
  [(HMSetupAccessoryPayload *)v6 setSetupID:v8];

  v9 = [(HMSetupAccessoryPayload *)self categoryNumber];
  [(HMSetupAccessoryPayload *)v6 setCategoryNumber:v9];

  v10 = [(HMSetupAccessoryPayload *)self productNumber];
  [(HMSetupAccessoryPayload *)v6 setProductNumber:v10];

  [(HMSetupAccessoryPayload *)v6 setSupportsIP:[(HMSetupAccessoryPayload *)self supportsIP]];
  [(HMSetupAccessoryPayload *)v6 setSupportsWAC:[(HMSetupAccessoryPayload *)self supportsWAC]];
  [(HMSetupAccessoryPayload *)v6 setSupportsBTLE:[(HMSetupAccessoryPayload *)self supportsBTLE]];
  [(HMSetupAccessoryPayload *)v6 setPaired:[(HMSetupAccessoryPayload *)self isPaired]];
  v11 = [(HMSetupAccessoryPayload *)self threadIdentifier];
  [(HMSetupAccessoryPayload *)v6 setThreadIdentifier:v11];

  v12 = [(HMSetupAccessoryPayload *)self chipAccessorySetupPayload];
  [(HMSetupAccessoryPayload *)v6 setChipAccessorySetupPayload:v12];

  return v6;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMSetupAccessoryPayload *)self setupCode];
  [v4 encodeObject:v5 forKey:@"setupCode"];

  [v4 encodeInteger:-[HMSetupAccessoryPayload communicationProtocol](self forKey:{"communicationProtocol"), @"communicationProtocol"}];
  v6 = [(HMSetupAccessoryPayload *)self setupPayloadURL];
  [v4 encodeObject:v6 forKey:@"setupPayload"];

  v7 = [(HMSetupAccessoryPayload *)self setupID];
  [v4 encodeObject:v7 forKey:@"setupID"];

  v8 = [(HMSetupAccessoryPayload *)self categoryNumber];
  [v4 encodeObject:v8 forKey:@"categoryNumber"];

  v9 = [(HMSetupAccessoryPayload *)self productNumber];
  [v4 encodeObject:v9 forKey:@"productNumber"];

  [v4 encodeBool:-[HMSetupAccessoryPayload supportsIP](self forKey:{"supportsIP"), @"supportsIP"}];
  [v4 encodeBool:-[HMSetupAccessoryPayload supportsWAC](self forKey:{"supportsWAC"), @"supportsWAC"}];
  [v4 encodeBool:-[HMSetupAccessoryPayload supportsBTLE](self forKey:{"supportsBTLE"), @"supportsBTLE"}];
  [v4 encodeBool:-[HMSetupAccessoryPayload isPaired](self forKey:{"isPaired"), @"isPaired"}];
  v10 = [(HMSetupAccessoryPayload *)self threadIdentifier];
  [v4 encodeObject:v10 forKey:@"threadIdentifier"];

  v11 = [(HMSetupAccessoryPayload *)self chipAccessorySetupPayload];
  [v4 encodeObject:v11 forKey:@"chipAccessorySetupPayload"];
}

- (HMSetupAccessoryPayload)initWithCoder:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"setupCode"];
  v6 = [v4 decodeIntegerForKey:@"communicationProtocol"];
  if (v5)
  {
    v7 = [(HMSetupAccessoryPayload *)self initWithSetupCode:v5 communicationProtocol:v6];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"setupPayload"];
    [(HMSetupAccessoryPayload *)v7 setSetupPayloadURL:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"setupID"];
    [(HMSetupAccessoryPayload *)v7 setSetupID:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"categoryNumber"];
    [(HMSetupAccessoryPayload *)v7 setCategoryNumber:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productNumber"];
    [(HMSetupAccessoryPayload *)v7 setProductNumber:v11];

    -[HMSetupAccessoryPayload setSupportsIP:](v7, "setSupportsIP:", [v4 decodeBoolForKey:@"supportsIP"]);
    -[HMSetupAccessoryPayload setSupportsWAC:](v7, "setSupportsWAC:", [v4 decodeBoolForKey:@"supportsWAC"]);
    -[HMSetupAccessoryPayload setSupportsBTLE:](v7, "setSupportsBTLE:", [v4 decodeBoolForKey:@"supportsBTLE"]);
    -[HMSetupAccessoryPayload setPaired:](v7, "setPaired:", [v4 decodeBoolForKey:@"isPaired"]);
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"threadIdentifier"];
    [(HMSetupAccessoryPayload *)v7 setThreadIdentifier:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"chipAccessorySetupPayload"];
    [(HMSetupAccessoryPayload *)v7 setChipAccessorySetupPayload:v13];

    v14 = v7;
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v7 = self;
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
  v2 = [(HMSetupAccessoryPayload *)self chipAccessorySetupPayload];
  v3 = [v2 deviceTypeID];

  return v3;
}

- (BOOL)requiresMatterCustomCommissioningFlow
{
  v2 = [(HMSetupAccessoryPayload *)self chipAccessorySetupPayload];
  v3 = [v2 requiresCustomFlow];

  return v3;
}

- (HMAccessoryCategory)category
{
  v3 = +[HMHAPMetadata getSharedInstance];
  v4 = [(HMSetupAccessoryPayload *)self categoryNumber];
  v5 = [v3 categoryForIdentifier:v4];

  return v5;
}

- (HMSetupAccessoryPayload)initWithSetupCode:(id)a3 communicationProtocol:(int64_t)a4
{
  v6 = a3;
  if (!v6)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  if (!a4)
  {
LABEL_7:
    v12 = _HMFPreconditionFailure();
    return [(HMSetupAccessoryPayload *)v12 initWithSetupCode:v13, v14];
  }

  v7 = v6;
  v15.receiver = self;
  v15.super_class = HMSetupAccessoryPayload;
  v8 = [(HMSetupAccessoryPayload *)&v15 init];
  if (v8)
  {
    v9 = [v7 copy];
    setupCode = v8->_setupCode;
    v8->_setupCode = v9;

    v8->_communicationProtocol = a4;
  }

  return v8;
}

- (HMSetupAccessoryPayload)initWithHAPSetupPayloadURL:(id)a3 error:(id *)a4
{
  v114 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 host];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 dataUsingEncoding:4];
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
        v113 = v6;
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@SetupPayload: setup payload length '%lu' is less than minimum length '%lu' for setupPayloadURL '%@'", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v12);
      if (a4)
      {
        [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
        v15 = 0;
        *a4 = v16 = 0;
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
      if (a4)
      {
        v31 = v15;
        v16 = 0;
        *a4 = v15;
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
      if (a4)
      {
        [MEMORY[0x1E696ABC0] hmErrorWithCode:2004];
        *a4 = v16 = 0;
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
        v32 = self;
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
        self = v32;
      }

      if (((v21 >> 39) & 0xF) != 0)
      {
        v37 = self;
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
        self = v37;
      }
    }

    v96 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%03llu-%02llu-%03llu", (175921861 * (v21 & 0x7FFFFFF)) >> 44, ((v21 & 0x7FFFFFF) - 100000 * (((175921861 * (v21 & 0x7FFFFFF)) >> 32) >> 12)) / 0x3E8, (v21 & 0x7FFFFFF) - 1000 * (((68719477 * (v21 & 0x7FFFFFF)) >> 32) >> 4)];
    v42 = [HMSetupAccessoryPayload initWithSetupCode:"initWithSetupCode:communicationProtocol:" communicationProtocol:?];
    v43 = [(HMSetupAccessoryPayload *)v42 mutableCopy];
    [v43 setSetupPayloadURL:v6];
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
            v109 = v6;
            _os_log_impl(&dword_19BB39000, v48, OS_LOG_TYPE_DEFAULT, "%{public}@SetupPayload: too short for new style with extra info '%@'", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v47);
          v15 = v101;
          if (!a4)
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
            v109 = v6;
            v110 = 2112;
            v111 = v15;
            _os_log_impl(&dword_19BB39000, v60, OS_LOG_TYPE_ERROR, "%{public}@SetupPayload: failed to decode eui64 and product number '%@': %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v59);
          if (a4)
          {
            v62 = v15;
            v16 = 0;
            *a4 = v15;
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
            v109 = v6;
            _os_log_impl(&dword_19BB39000, v51, OS_LOG_TYPE_DEFAULT, "%{public}@SetupPayload: too short for new style with product number '%@'", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v50);
          if (!a4)
          {
LABEL_58:
            v16 = 0;
            goto LABEL_59;
          }

LABEL_53:
          [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
          *a4 = v16 = 0;
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
            v109 = v6;
            v110 = 2112;
            v111 = v67;
            _os_log_impl(&dword_19BB39000, v69, OS_LOG_TYPE_ERROR, "%{public}@SetupPayload: failed to decode product number '%@': %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v68);
          if (a4)
          {
            v71 = v67;
            v16 = 0;
            *a4 = v67;
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
    v109 = v6;
    _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@SetupPayload: setup payload URL host is nil in setupPayloadURL '%@'", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  if (a4)
  {
    [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    *a4 = v16 = 0;
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