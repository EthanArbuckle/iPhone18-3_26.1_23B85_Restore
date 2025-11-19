@interface ASCloudDevice
+ (id)cloudDeviceWithRecord:(id)a3;
- (ASCloudDevice)initWithBuildNumber:(id)a3 deviceType:(id)a4 identifier:(id)a5 modificationDate:(id)a6 osVersion:(id)a7;
- (ASCloudDevice)initWithCoder:(id)a3;
- (ASCloudDevice)initWithDictionaryRepresentation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCloudDevice

+ (id)cloudDeviceWithRecord:(id)a3
{
  v3 = a3;
  v4 = [v3 valuesByKey];
  v5 = [v4 objectForKeyedSubscript:@"DeviceOSBuild"];

  if (v5)
  {
    v6 = [v3 valuesByKey];
    v7 = [v6 objectForKeyedSubscript:@"DeviceOSVersionNumber"];

    if (v7)
    {
      v8 = [v3 valuesByKey];
      v9 = [v8 objectForKeyedSubscript:@"DeviceOSType"];

      if (v9)
      {
        v10 = [v3 modificationDate];
        if (v10)
        {
          v11 = [ASCloudDevice alloc];
          v12 = [v3 recordID];
          v13 = [v12 recordName];
          v14 = [(ASCloudDevice *)v11 initWithBuildNumber:v5 deviceType:v9 identifier:v13 modificationDate:v10 osVersion:v7];
        }

        else
        {
          ASLoggingInitialize();
          if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
          {
            +[ASCloudDevice(CloudKitCodingSupport) cloudDeviceWithRecord:];
          }

          v14 = 0;
        }
      }

      else
      {
        ASLoggingInitialize();
        v17 = ASLogCloudKit;
        if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
        {
          [ASCloudDevice(CloudKitCodingSupport) cloudDeviceWithRecord:v17];
        }

        v14 = 0;
      }
    }

    else
    {
      ASLoggingInitialize();
      v16 = ASLogCloudKit;
      if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
      {
        [ASCloudDevice(CloudKitCodingSupport) cloudDeviceWithRecord:v16];
      }

      v14 = 0;
    }
  }

  else
  {
    ASLoggingInitialize();
    v15 = ASLogCloudKit;
    if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
    {
      [ASCloudDevice(CloudKitCodingSupport) cloudDeviceWithRecord:v15];
    }

    v14 = 0;
  }

  return v14;
}

- (ASCloudDevice)initWithBuildNumber:(id)a3 deviceType:(id)a4 identifier:(id)a5 modificationDate:(id)a6 osVersion:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = ASCloudDevice;
  v17 = [(ASCloudDevice *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_buildNumber, a3);
    objc_storeStrong(&v18->_deviceType, a4);
    objc_storeStrong(&v18->_identifier, a5);
    objc_storeStrong(&v18->_modificationDate, a6);
    objc_storeStrong(&v18->_osVersion, a7);
  }

  return v18;
}

- (ASCloudDevice)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"buildNumber"];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"deviceType"];
    if (v6)
    {
      v7 = [v4 objectForKeyedSubscript:@"identifier"];
      if (v7)
      {
        v8 = [v4 objectForKeyedSubscript:@"modificationDate"];
        if (v8)
        {
          v9 = [v4 objectForKeyedSubscript:@"osVersion"];
          if (v9)
          {
            self = [(ASCloudDevice *)self initWithBuildNumber:v5 deviceType:v6 identifier:v7 modificationDate:v8 osVersion:v9];
            v10 = self;
          }

          else
          {
            v10 = 0;
          }
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)dictionaryRepresentation
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = @"buildNumber";
  v7[1] = @"deviceType";
  deviceType = self->_deviceType;
  v8[0] = self->_buildNumber;
  v8[1] = deviceType;
  v3 = *&self->_identifier;
  v7[2] = @"identifier";
  v7[3] = @"modificationDate";
  v9 = v3;
  v7[4] = @"osVersion";
  osVersion = self->_osVersion;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v4 = a3;
  v5 = [(ASCloudDevice *)self identifier];
  v6 = [v4 identifier];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (unint64_t)hash
{
  v2 = [(ASCloudDevice *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  buildNumber = self->_buildNumber;
  v5 = a3;
  [v5 encodeObject:buildNumber forKey:@"buildNumber"];
  [v5 encodeObject:self->_deviceType forKey:@"deviceType"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
  [v5 encodeObject:self->_modificationDate forKey:@"modificationDate"];
  [v5 encodeObject:self->_osVersion forKey:@"osVersion"];
}

- (ASCloudDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = ASCloudDevice;
  v5 = [(ASCloudDevice *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"buildNumber"];
    buildNumber = v5->_buildNumber;
    v5->_buildNumber = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceType"];
    deviceType = v5->_deviceType;
    v5->_deviceType = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modificationDate"];
    modificationDate = v5->_modificationDate;
    v5->_modificationDate = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"osVersion"];
    osVersion = v5->_osVersion;
    v5->_osVersion = v14;
  }

  return v5;
}

@end