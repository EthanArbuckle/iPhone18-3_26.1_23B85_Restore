@interface MXMetaData
- (MXMetaData)initWithCoder:(id)coder;
- (MXMetaData)initWithRegionFormat:(id)format osVersion:(id)version deviceType:(id)type appBuildVersion:(id)buildVersion;
- (MXMetaData)initWithRegionFormat:(id)format osVersion:(id)version deviceType:(id)type appBuildVersion:(id)buildVersion bundleID:(id)d;
- (MXMetaData)initWithRegionFormat:(id)format osVersion:(id)version deviceType:(id)type appBuildVersion:(id)buildVersion platformArchitecture:(id)architecture;
- (MXMetaData)initWithRegionFormat:(id)format osVersion:(id)version deviceType:(id)type appBuildVersion:(id)buildVersion platformArchitecture:(id)architecture bundleID:(id)d;
- (MXMetaData)initWithRegionFormat:(id)format osVersion:(id)version deviceType:(id)type appBuildVersion:(id)buildVersion platformArchitecture:(id)architecture bundleID:(id)d pid:(int)pid isTestFlightApp:(BOOL)self0;
- (NSData)JSONRepresentation;
- (NSDictionary)DictionaryRepresentation;
- (NSDictionary)dictionaryRepresentation;
- (id)toDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MXMetaData

- (MXMetaData)initWithRegionFormat:(id)format osVersion:(id)version deviceType:(id)type appBuildVersion:(id)buildVersion
{
  formatCopy = format;
  versionCopy = version;
  typeCopy = type;
  buildVersionCopy = buildVersion;
  v20.receiver = self;
  v20.super_class = MXMetaData;
  v15 = [(MXMetaData *)&v20 init];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_7;
  }

  v17 = 0;
  if (formatCopy && versionCopy && typeCopy && buildVersionCopy)
  {
    objc_storeStrong(&v15->_regionFormat, format);
    objc_storeStrong(&v16->_osVersion, version);
    objc_storeStrong(&v16->_deviceType, type);
    objc_storeStrong(&v16->_applicationBuildVersion, buildVersion);
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    v16->_lowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

    v16->_pid = -1;
LABEL_7:
    v17 = v16;
  }

  return v17;
}

- (MXMetaData)initWithRegionFormat:(id)format osVersion:(id)version deviceType:(id)type appBuildVersion:(id)buildVersion platformArchitecture:(id)architecture
{
  formatCopy = format;
  versionCopy = version;
  typeCopy = type;
  buildVersionCopy = buildVersion;
  architectureCopy = architecture;
  v23.receiver = self;
  v23.super_class = MXMetaData;
  v16 = [(MXMetaData *)&v23 init];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_8;
  }

  v18 = 0;
  if (formatCopy && versionCopy && typeCopy && buildVersionCopy && architectureCopy)
  {
    objc_storeStrong(&v16->_regionFormat, format);
    objc_storeStrong(&v17->_osVersion, version);
    objc_storeStrong(&v17->_deviceType, type);
    objc_storeStrong(&v17->_applicationBuildVersion, buildVersion);
    objc_storeStrong(&v17->_platformArchitecture, architecture);
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    v17->_lowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

    v17->_pid = -1;
LABEL_8:
    v18 = v17;
  }

  return v18;
}

- (MXMetaData)initWithRegionFormat:(id)format osVersion:(id)version deviceType:(id)type appBuildVersion:(id)buildVersion platformArchitecture:(id)architecture bundleID:(id)d
{
  formatCopy = format;
  versionCopy = version;
  typeCopy = type;
  buildVersionCopy = buildVersion;
  architectureCopy = architecture;
  dCopy = d;
  v26.receiver = self;
  v26.super_class = MXMetaData;
  v17 = [(MXMetaData *)&v26 init];
  v18 = v17;
  if (!v17)
  {
    goto LABEL_8;
  }

  v19 = 0;
  if (formatCopy && versionCopy && typeCopy && buildVersionCopy && architectureCopy)
  {
    objc_storeStrong(&v17->_regionFormat, format);
    objc_storeStrong(&v18->_osVersion, version);
    objc_storeStrong(&v18->_deviceType, type);
    objc_storeStrong(&v18->_applicationBuildVersion, buildVersion);
    objc_storeStrong(&v18->_platformArchitecture, architecture);
    objc_storeStrong(&v18->_bundleIdentifier, d);
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    v18->_lowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

    v18->_pid = -1;
LABEL_8:
    v19 = v18;
  }

  return v19;
}

- (MXMetaData)initWithRegionFormat:(id)format osVersion:(id)version deviceType:(id)type appBuildVersion:(id)buildVersion platformArchitecture:(id)architecture bundleID:(id)d pid:(int)pid isTestFlightApp:(BOOL)self0
{
  formatCopy = format;
  versionCopy = version;
  typeCopy = type;
  buildVersionCopy = buildVersion;
  architectureCopy = architecture;
  dCopy = d;
  v28.receiver = self;
  v28.super_class = MXMetaData;
  v19 = [(MXMetaData *)&v28 init];
  v20 = v19;
  if (!v19)
  {
    goto LABEL_8;
  }

  v21 = 0;
  if (formatCopy && versionCopy && typeCopy && buildVersionCopy && architectureCopy)
  {
    objc_storeStrong(&v19->_regionFormat, format);
    objc_storeStrong(&v20->_osVersion, version);
    objc_storeStrong(&v20->_deviceType, type);
    objc_storeStrong(&v20->_applicationBuildVersion, buildVersion);
    objc_storeStrong(&v20->_platformArchitecture, architecture);
    objc_storeStrong(&v20->_bundleIdentifier, d);
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    v20->_lowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

    v20->_pid = pid;
    v20->_isTestFlightApp = app;
LABEL_8:
    v21 = v20;
  }

  return v21;
}

- (MXMetaData)initWithRegionFormat:(id)format osVersion:(id)version deviceType:(id)type appBuildVersion:(id)buildVersion bundleID:(id)d
{
  formatCopy = format;
  versionCopy = version;
  typeCopy = type;
  buildVersionCopy = buildVersion;
  dCopy = d;
  v23.receiver = self;
  v23.super_class = MXMetaData;
  v16 = [(MXMetaData *)&v23 init];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_8;
  }

  v18 = 0;
  if (formatCopy && versionCopy && typeCopy && buildVersionCopy && dCopy)
  {
    objc_storeStrong(&v16->_regionFormat, format);
    objc_storeStrong(&v17->_osVersion, version);
    objc_storeStrong(&v17->_deviceType, type);
    objc_storeStrong(&v17->_applicationBuildVersion, buildVersion);
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    v17->_lowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

    objc_storeStrong(&v17->_bundleIdentifier, d);
    v17->_pid = -1;
LABEL_8:
    v18 = v17;
  }

  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  regionFormat = self->_regionFormat;
  coderCopy = coder;
  [coderCopy encodeObject:regionFormat forKey:@"regionFormat"];
  [coderCopy encodeObject:self->_osVersion forKey:@"osVersion"];
  [coderCopy encodeObject:self->_deviceType forKey:@"deviceType"];
  [coderCopy encodeObject:self->_applicationBuildVersion forKey:@"appBuildVersion"];
  [coderCopy encodeObject:self->_platformArchitecture forKey:@"platformArchitecture"];
  [coderCopy encodeBool:self->_lowPowerModeEnabled forKey:@"lowPowerModeEnabled"];
  [coderCopy encodeBool:self->_isTestFlightApp forKey:@"isTestFlightApp"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:self->_pid];
  [coderCopy encodeObject:v6 forKey:@"pid"];
}

- (MXMetaData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = MXMetaData;
  v5 = [(MXMetaData *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"regionFormat"];
    regionFormat = v5->_regionFormat;
    v5->_regionFormat = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"osVersion"];
    osVersion = v5->_osVersion;
    v5->_osVersion = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceType"];
    deviceType = v5->_deviceType;
    v5->_deviceType = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appBuildVersion"];
    applicationBuildVersion = v5->_applicationBuildVersion;
    v5->_applicationBuildVersion = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"platformArchitecture"];
    platformArchitecture = v5->_platformArchitecture;
    v5->_platformArchitecture = v14;

    v5->_lowPowerModeEnabled = [coderCopy decodeBoolForKey:@"lowPowerModeEnabled"];
    v5->_isTestFlightApp = [coderCopy decodeBoolForKey:@"isTestFlightApp"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pid"];
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
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    if (bundleIdentifier)
    {
      mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
      bundleIdentifier2 = [mainBundle2 bundleIdentifier];
      [v4 setObject:bundleIdentifier2 forKey:@"bundleIdentifier"];
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

  toDictionary = [(MXMetaData *)self toDictionary];
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:toDictionary])
  {
    v6 = 0;
    v4 = [MEMORY[0x277CCAAA0] dataWithJSONObject:toDictionary options:1 error:&v6];
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