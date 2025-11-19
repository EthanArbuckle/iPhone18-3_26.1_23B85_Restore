@interface HMAccessoryInfoSoftwareVersion
- (BOOL)isEqual:(id)a3;
- (HMAccessoryInfoSoftwareVersion)initWithProtoData:(id)a3;
- (HMAccessoryInfoSoftwareVersion)initWithProtoPayload:(id)a3;
- (HMAccessoryInfoSoftwareVersion)initWithSoftwareVersion:(id)a3;
- (id)description;
- (id)protoData;
- (id)protoPayload;
- (unint64_t)hash;
@end

@implementation HMAccessoryInfoSoftwareVersion

- (HMAccessoryInfoSoftwareVersion)initWithProtoData:(id)a3
{
  v4 = a3;
  v5 = [[HMAccessoryInfoProtoSoftwareVersionInfoEvent alloc] initWithData:v4];

  v6 = [(HMAccessoryInfoSoftwareVersion *)self initWithProtoPayload:v5];
  return v6;
}

- (HMAccessoryInfoSoftwareVersion)initWithProtoPayload:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 hasMajorVersion] && objc_msgSend(v4, "hasMinorVersion") && (objc_msgSend(v4, "hasUpdateVersion") & 1) != 0)
  {
    v5 = objc_alloc(MEMORY[0x1E69A2A60]);
    v6 = [v4 majorVersion];
    v7 = [v4 minorVersion];
    v8 = [v4 updateVersion];
    v9 = [v4 buildVersion];
    v10 = [v5 initWithMajorVersion:v6 minorVersion:v7 updateVersion:v8 buildVersion:v9];

    v11 = [(HMAccessoryInfoSoftwareVersion *)self initWithSoftwareVersion:v10];
    v12 = v11;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v11 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138544130;
      v19 = v15;
      v20 = 2048;
      v21 = [v4 majorVersion];
      v22 = 2048;
      v23 = [v4 minorVersion];
      v24 = 2048;
      v25 = [v4 updateVersion];
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Proto payload is missing required sw version info. Major: %lld minor: %lld update: %lld", &v18, 0x2Au);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)protoData
{
  v2 = [(HMAccessoryInfoSoftwareVersion *)self protoPayload];
  v3 = [v2 data];

  return v3;
}

- (id)protoPayload
{
  v3 = objc_alloc_init(HMAccessoryInfoProtoSoftwareVersionInfoEvent);
  v4 = [(HMAccessoryInfoSoftwareVersion *)self softwareVersion];
  -[HMAccessoryInfoProtoSoftwareVersionInfoEvent setMajorVersion:](v3, "setMajorVersion:", [v4 majorVersion]);

  v5 = [(HMAccessoryInfoSoftwareVersion *)self softwareVersion];
  -[HMAccessoryInfoProtoSoftwareVersionInfoEvent setMinorVersion:](v3, "setMinorVersion:", [v5 minorVersion]);

  v6 = [(HMAccessoryInfoSoftwareVersion *)self softwareVersion];
  -[HMAccessoryInfoProtoSoftwareVersionInfoEvent setUpdateVersion:](v3, "setUpdateVersion:", [v6 updateVersion]);

  v7 = [(HMAccessoryInfoSoftwareVersion *)self softwareVersion];
  v8 = [v7 buildVersion];
  [(HMAccessoryInfoProtoSoftwareVersionInfoEvent *)v3 setBuildVersion:v8];

  return v3;
}

- (unint64_t)hash
{
  v2 = [(HMAccessoryInfoSoftwareVersion *)self softwareVersion];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
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
      v7 = [(HMAccessoryInfoSoftwareVersion *)self softwareVersion];
      v8 = [(HMAccessoryInfoSoftwareVersion *)v6 softwareVersion];
      v9 = HMFEqualObjects();
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = HMAccessoryInfoSoftwareVersion;
  v4 = [(HMAccessoryInfoSoftwareVersion *)&v10 description];
  v5 = [(HMAccessoryInfoSoftwareVersion *)self softwareVersion];
  v6 = [(HMAccessoryInfoSoftwareVersion *)self softwareVersion];
  v7 = [v6 buildVersion];
  v8 = [v3 stringWithFormat:@"%@, %@ (%@)", v4, v5, v7];

  return v8;
}

- (HMAccessoryInfoSoftwareVersion)initWithSoftwareVersion:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMAccessoryInfoSoftwareVersion;
  v6 = [(HMAccessoryInfoSoftwareVersion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_softwareVersion, a3);
  }

  return v7;
}

@end