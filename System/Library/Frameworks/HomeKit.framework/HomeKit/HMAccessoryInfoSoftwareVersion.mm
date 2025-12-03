@interface HMAccessoryInfoSoftwareVersion
- (BOOL)isEqual:(id)equal;
- (HMAccessoryInfoSoftwareVersion)initWithProtoData:(id)data;
- (HMAccessoryInfoSoftwareVersion)initWithProtoPayload:(id)payload;
- (HMAccessoryInfoSoftwareVersion)initWithSoftwareVersion:(id)version;
- (id)description;
- (id)protoData;
- (id)protoPayload;
- (unint64_t)hash;
@end

@implementation HMAccessoryInfoSoftwareVersion

- (HMAccessoryInfoSoftwareVersion)initWithProtoData:(id)data
{
  dataCopy = data;
  v5 = [[HMAccessoryInfoProtoSoftwareVersionInfoEvent alloc] initWithData:dataCopy];

  v6 = [(HMAccessoryInfoSoftwareVersion *)self initWithProtoPayload:v5];
  return v6;
}

- (HMAccessoryInfoSoftwareVersion)initWithProtoPayload:(id)payload
{
  v26 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  if ([payloadCopy hasMajorVersion] && objc_msgSend(payloadCopy, "hasMinorVersion") && (objc_msgSend(payloadCopy, "hasUpdateVersion") & 1) != 0)
  {
    v5 = objc_alloc(MEMORY[0x1E69A2A60]);
    majorVersion = [payloadCopy majorVersion];
    minorVersion = [payloadCopy minorVersion];
    updateVersion = [payloadCopy updateVersion];
    buildVersion = [payloadCopy buildVersion];
    v10 = [v5 initWithMajorVersion:majorVersion minorVersion:minorVersion updateVersion:updateVersion buildVersion:buildVersion];

    selfCopy = [(HMAccessoryInfoSoftwareVersion *)self initWithSoftwareVersion:v10];
    v12 = selfCopy;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138544130;
      v19 = v15;
      v20 = 2048;
      majorVersion2 = [payloadCopy majorVersion];
      v22 = 2048;
      minorVersion2 = [payloadCopy minorVersion];
      v24 = 2048;
      updateVersion2 = [payloadCopy updateVersion];
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
  protoPayload = [(HMAccessoryInfoSoftwareVersion *)self protoPayload];
  data = [protoPayload data];

  return data;
}

- (id)protoPayload
{
  v3 = objc_alloc_init(HMAccessoryInfoProtoSoftwareVersionInfoEvent);
  softwareVersion = [(HMAccessoryInfoSoftwareVersion *)self softwareVersion];
  -[HMAccessoryInfoProtoSoftwareVersionInfoEvent setMajorVersion:](v3, "setMajorVersion:", [softwareVersion majorVersion]);

  softwareVersion2 = [(HMAccessoryInfoSoftwareVersion *)self softwareVersion];
  -[HMAccessoryInfoProtoSoftwareVersionInfoEvent setMinorVersion:](v3, "setMinorVersion:", [softwareVersion2 minorVersion]);

  softwareVersion3 = [(HMAccessoryInfoSoftwareVersion *)self softwareVersion];
  -[HMAccessoryInfoProtoSoftwareVersionInfoEvent setUpdateVersion:](v3, "setUpdateVersion:", [softwareVersion3 updateVersion]);

  softwareVersion4 = [(HMAccessoryInfoSoftwareVersion *)self softwareVersion];
  buildVersion = [softwareVersion4 buildVersion];
  [(HMAccessoryInfoProtoSoftwareVersionInfoEvent *)v3 setBuildVersion:buildVersion];

  return v3;
}

- (unint64_t)hash
{
  softwareVersion = [(HMAccessoryInfoSoftwareVersion *)self softwareVersion];
  v3 = [softwareVersion hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
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
      softwareVersion = [(HMAccessoryInfoSoftwareVersion *)self softwareVersion];
      softwareVersion2 = [(HMAccessoryInfoSoftwareVersion *)v6 softwareVersion];
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
  softwareVersion = [(HMAccessoryInfoSoftwareVersion *)self softwareVersion];
  softwareVersion2 = [(HMAccessoryInfoSoftwareVersion *)self softwareVersion];
  buildVersion = [softwareVersion2 buildVersion];
  v8 = [v3 stringWithFormat:@"%@, %@ (%@)", v4, softwareVersion, buildVersion];

  return v8;
}

- (HMAccessoryInfoSoftwareVersion)initWithSoftwareVersion:(id)version
{
  versionCopy = version;
  v9.receiver = self;
  v9.super_class = HMAccessoryInfoSoftwareVersion;
  v6 = [(HMAccessoryInfoSoftwareVersion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_softwareVersion, version);
  }

  return v7;
}

@end