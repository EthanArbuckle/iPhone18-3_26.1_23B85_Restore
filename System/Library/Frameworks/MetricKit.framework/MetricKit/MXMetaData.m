@interface MXMetaData
- (MXMetaData)initWithCoder:(id)a3;
- (MXMetaData)initWithRegionFormat:(id)a3 osVersion:(id)a4 deviceType:(id)a5 appBuildVersion:(id)a6;
- (MXMetaData)initWithRegionFormat:(id)a3 osVersion:(id)a4 deviceType:(id)a5 appBuildVersion:(id)a6 bundleID:(id)a7;
- (MXMetaData)initWithRegionFormat:(id)a3 osVersion:(id)a4 deviceType:(id)a5 appBuildVersion:(id)a6 platformArchitecture:(id)a7;
- (MXMetaData)initWithRegionFormat:(id)a3 osVersion:(id)a4 deviceType:(id)a5 appBuildVersion:(id)a6 platformArchitecture:(id)a7 bundleID:(id)a8;
- (MXMetaData)initWithRegionFormat:(id)a3 osVersion:(id)a4 deviceType:(id)a5 appBuildVersion:(id)a6 platformArchitecture:(id)a7 bundleID:(id)a8 pid:(int)a9 isTestFlightApp:(BOOL)a10;
- (NSData)JSONRepresentation;
- (NSDictionary)DictionaryRepresentation;
- (NSDictionary)dictionaryRepresentation;
- (id)toDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MXMetaData

- (MXMetaData)initWithRegionFormat:(id)a3 osVersion:(id)a4 deviceType:(id)a5 appBuildVersion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = MXMetaData;
  v15 = [(MXMetaData *)&v20 init];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_7;
  }

  v17 = 0;
  if (v11 && v12 && v13 && v14)
  {
    objc_storeStrong(&v15->_regionFormat, a3);
    objc_storeStrong(&v16->_osVersion, a4);
    objc_storeStrong(&v16->_deviceType, a5);
    objc_storeStrong(&v16->_applicationBuildVersion, a6);
    v18 = [MEMORY[0x277CCAC38] processInfo];
    v16->_lowPowerModeEnabled = [v18 isLowPowerModeEnabled];

    v16->_pid = -1;
LABEL_7:
    v17 = v16;
  }

  return v17;
}

- (MXMetaData)initWithRegionFormat:(id)a3 osVersion:(id)a4 deviceType:(id)a5 appBuildVersion:(id)a6 platformArchitecture:(id)a7
{
  v22 = a3;
  v21 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v23.receiver = self;
  v23.super_class = MXMetaData;
  v16 = [(MXMetaData *)&v23 init];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_8;
  }

  v18 = 0;
  if (v22 && v21 && v13 && v14 && v15)
  {
    objc_storeStrong(&v16->_regionFormat, a3);
    objc_storeStrong(&v17->_osVersion, a4);
    objc_storeStrong(&v17->_deviceType, a5);
    objc_storeStrong(&v17->_applicationBuildVersion, a6);
    objc_storeStrong(&v17->_platformArchitecture, a7);
    v19 = [MEMORY[0x277CCAC38] processInfo];
    v17->_lowPowerModeEnabled = [v19 isLowPowerModeEnabled];

    v17->_pid = -1;
LABEL_8:
    v18 = v17;
  }

  return v18;
}

- (MXMetaData)initWithRegionFormat:(id)a3 osVersion:(id)a4 deviceType:(id)a5 appBuildVersion:(id)a6 platformArchitecture:(id)a7 bundleID:(id)a8
{
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v15 = a6;
  v16 = a7;
  v22 = a8;
  v26.receiver = self;
  v26.super_class = MXMetaData;
  v17 = [(MXMetaData *)&v26 init];
  v18 = v17;
  if (!v17)
  {
    goto LABEL_8;
  }

  v19 = 0;
  if (v25 && v24 && v23 && v15 && v16)
  {
    objc_storeStrong(&v17->_regionFormat, a3);
    objc_storeStrong(&v18->_osVersion, a4);
    objc_storeStrong(&v18->_deviceType, a5);
    objc_storeStrong(&v18->_applicationBuildVersion, a6);
    objc_storeStrong(&v18->_platformArchitecture, a7);
    objc_storeStrong(&v18->_bundleIdentifier, a8);
    v20 = [MEMORY[0x277CCAC38] processInfo];
    v18->_lowPowerModeEnabled = [v20 isLowPowerModeEnabled];

    v18->_pid = -1;
LABEL_8:
    v19 = v18;
  }

  return v19;
}

- (MXMetaData)initWithRegionFormat:(id)a3 osVersion:(id)a4 deviceType:(id)a5 appBuildVersion:(id)a6 platformArchitecture:(id)a7 bundleID:(id)a8 pid:(int)a9 isTestFlightApp:(BOOL)a10
{
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v17 = a6;
  v18 = a7;
  v24 = a8;
  v28.receiver = self;
  v28.super_class = MXMetaData;
  v19 = [(MXMetaData *)&v28 init];
  v20 = v19;
  if (!v19)
  {
    goto LABEL_8;
  }

  v21 = 0;
  if (v27 && v26 && v25 && v17 && v18)
  {
    objc_storeStrong(&v19->_regionFormat, a3);
    objc_storeStrong(&v20->_osVersion, a4);
    objc_storeStrong(&v20->_deviceType, a5);
    objc_storeStrong(&v20->_applicationBuildVersion, a6);
    objc_storeStrong(&v20->_platformArchitecture, a7);
    objc_storeStrong(&v20->_bundleIdentifier, a8);
    v22 = [MEMORY[0x277CCAC38] processInfo];
    v20->_lowPowerModeEnabled = [v22 isLowPowerModeEnabled];

    v20->_pid = a9;
    v20->_isTestFlightApp = a10;
LABEL_8:
    v21 = v20;
  }

  return v21;
}

- (MXMetaData)initWithRegionFormat:(id)a3 osVersion:(id)a4 deviceType:(id)a5 appBuildVersion:(id)a6 bundleID:(id)a7
{
  v22 = a3;
  v21 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v23.receiver = self;
  v23.super_class = MXMetaData;
  v16 = [(MXMetaData *)&v23 init];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_8;
  }

  v18 = 0;
  if (v22 && v21 && v13 && v14 && v15)
  {
    objc_storeStrong(&v16->_regionFormat, a3);
    objc_storeStrong(&v17->_osVersion, a4);
    objc_storeStrong(&v17->_deviceType, a5);
    objc_storeStrong(&v17->_applicationBuildVersion, a6);
    v19 = [MEMORY[0x277CCAC38] processInfo];
    v17->_lowPowerModeEnabled = [v19 isLowPowerModeEnabled];

    objc_storeStrong(&v17->_bundleIdentifier, a7);
    v17->_pid = -1;
LABEL_8:
    v18 = v17;
  }

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  regionFormat = self->_regionFormat;
  v5 = a3;
  [v5 encodeObject:regionFormat forKey:@"regionFormat"];
  [v5 encodeObject:self->_osVersion forKey:@"osVersion"];
  [v5 encodeObject:self->_deviceType forKey:@"deviceType"];
  [v5 encodeObject:self->_applicationBuildVersion forKey:@"appBuildVersion"];
  [v5 encodeObject:self->_platformArchitecture forKey:@"platformArchitecture"];
  [v5 encodeBool:self->_lowPowerModeEnabled forKey:@"lowPowerModeEnabled"];
  [v5 encodeBool:self->_isTestFlightApp forKey:@"isTestFlightApp"];
  [v5 encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:self->_pid];
  [v5 encodeObject:v6 forKey:@"pid"];
}

- (MXMetaData)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = MXMetaData;
  v5 = [(MXMetaData *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"regionFormat"];
    regionFormat = v5->_regionFormat;
    v5->_regionFormat = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"osVersion"];
    osVersion = v5->_osVersion;
    v5->_osVersion = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceType"];
    deviceType = v5->_deviceType;
    v5->_deviceType = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appBuildVersion"];
    applicationBuildVersion = v5->_applicationBuildVersion;
    v5->_applicationBuildVersion = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"platformArchitecture"];
    platformArchitecture = v5->_platformArchitecture;
    v5->_platformArchitecture = v14;

    v5->_lowPowerModeEnabled = [v4 decodeBoolForKey:@"lowPowerModeEnabled"];
    v5->_isTestFlightApp = [v4 decodeBoolForKey:@"isTestFlightApp"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pid"];
    v5->_pid = [v18 intValue];
  }

  return v5;
}

- (id)toDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = v3;
  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    [v3 setObject:bundleIdentifier forKey:@"bundleIdentifier"];
  }

  else
  {
    v6 = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = [v6 bundleIdentifier];

    if (v7)
    {
      v8 = [MEMORY[0x277CCA8D8] mainBundle];
      v9 = [v8 bundleIdentifier];
      [v4 setObject:v9 forKey:@"bundleIdentifier"];
    }
  }

  regionFormat = self->_regionFormat;
  if (regionFormat)
  {
    [v4 setObject:regionFormat forKey:@"regionFormat"];
  }

  osVersion = self->_osVersion;
  if (osVersion)
  {
    [v4 setObject:osVersion forKey:@"osVersion"];
  }

  deviceType = self->_deviceType;
  if (deviceType)
  {
    [v4 setObject:deviceType forKey:@"deviceType"];
  }

  applicationBuildVersion = self->_applicationBuildVersion;
  if (applicationBuildVersion)
  {
    [v4 setObject:applicationBuildVersion forKey:@"appBuildVersion"];
  }

  platformArchitecture = self->_platformArchitecture;
  if (platformArchitecture)
  {
    [v4 setObject:platformArchitecture forKey:@"platformArchitecture"];
  }

  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_lowPowerModeEnabled];
  [v4 setObject:v15 forKey:@"lowPowerModeEnabled"];

  v16 = [MEMORY[0x277CCABB0] numberWithInt:self->_pid];
  [v4 setObject:v16 forKey:@"pid"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_isTestFlightApp];
  [v4 setObject:v17 forKey:@"isTestFlightApp"];

  return v4;
}

- (NSData)JSONRepresentation
{
  if (arc4random_uniform(0x64u) <= 9)
  {
    AnalyticsSendEventLazy();
  }

  v3 = [(MXMetaData *)self toDictionary];
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:v3])
  {
    v6 = 0;
    v4 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v3 options:1 error:&v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __32__MXMetaData_JSONRepresentation__block_invoke()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleIdentifier];

  v5[0] = @"bundleID";
  v5[1] = @"metricKitHelperFunctionType";
  v6[0] = v1;
  v6[1] = @"JSONRepresentation";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (NSDictionary)DictionaryRepresentation
{
  if (arc4random_uniform(0x64u) <= 9)
  {
    AnalyticsSendEventLazy();
  }

  return [(MXMetaData *)self toDictionary];
}

id __38__MXMetaData_DictionaryRepresentation__block_invoke()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleIdentifier];

  v5[0] = @"bundleID";
  v5[1] = @"metricKitHelperFunctionType";
  v6[0] = v1;
  v6[1] = @"DictionaryRepresentation";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (NSDictionary)dictionaryRepresentation
{
  if (arc4random_uniform(0x64u) <= 9)
  {
    AnalyticsSendEventLazy();
  }

  return [(MXMetaData *)self toDictionary];
}

id __38__MXMetaData_dictionaryRepresentation__block_invoke()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleIdentifier];

  v5[0] = @"bundleID";
  v5[1] = @"metricKitHelperFunctionType";
  v6[0] = v1;
  v6[1] = @"dictionaryRepresentation";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end