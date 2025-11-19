@interface NEFilterProviderConfiguration
- (BOOL)checkValidityAndCollectErrors:(id)a3;
- (NEFilterProviderConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NEFilterProviderConfiguration

- (BOOL)checkValidityAndCollectErrors:(id)a3
{
  v4 = a3;
  v5 = [(NEFilterProviderConfiguration *)self pluginType];
  v6 = v5 != 0;

  if (!v5)
  {
    [NEConfiguration addError:v4 toList:?];
  }

  if (![(NEFilterProviderConfiguration *)self filterBrowsers]&& ![(NEFilterProviderConfiguration *)self filterSockets]&& ![(NEFilterProviderConfiguration *)self filterPackets])
  {
    [NEConfiguration addError:filterSockets toList:or filterPackets must be enabled""), v4];
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NEFilterProviderConfiguration allocWithZone:?]];
  [(NEFilterProviderConfiguration *)v4 setFilterBrowsers:[(NEFilterProviderConfiguration *)self filterBrowsers]];
  [(NEFilterProviderConfiguration *)v4 setFilterPackets:[(NEFilterProviderConfiguration *)self filterPackets]];
  [(NEFilterProviderConfiguration *)v4 setFilterSockets:[(NEFilterProviderConfiguration *)self filterSockets]];
  [(NEFilterProviderConfiguration *)v4 setDisableDefaultDrop:[(NEFilterProviderConfiguration *)self disableDefaultDrop]];
  [(NEFilterProviderConfiguration *)v4 setPreserveExistingConnections:[(NEFilterProviderConfiguration *)self preserveExistingConnections]];
  v5 = [(NEFilterProviderConfiguration *)self vendorConfiguration];
  [(NEFilterProviderConfiguration *)v4 setVendorConfiguration:v5];

  v6 = [(NEFilterProviderConfiguration *)self serverAddress];
  [(NEFilterProviderConfiguration *)v4 setServerAddress:v6];

  v7 = [(NEFilterProviderConfiguration *)self username];
  [(NEFilterProviderConfiguration *)v4 setUsername:v7];

  v8 = [(NEFilterProviderConfiguration *)self organization];
  [(NEFilterProviderConfiguration *)v4 setOrganization:v8];

  v9 = [(NEFilterProviderConfiguration *)self passwordReference];
  [(NEFilterProviderConfiguration *)v4 setPasswordReference:v9];

  v10 = [(NEFilterProviderConfiguration *)self identityReference];
  [(NEFilterProviderConfiguration *)v4 setIdentityReference:v10];

  v11 = [(NEFilterProviderConfiguration *)self pluginType];
  [(NEFilterProviderConfiguration *)v4 setPluginType:v11];

  v12 = [(NEFilterProviderConfiguration *)self dataProviderDesignatedRequirement];
  [(NEFilterProviderConfiguration *)v4 setDataProviderDesignatedRequirement:v12];

  v13 = [(NEFilterProviderConfiguration *)self packetProviderDesignatedRequirement];
  [(NEFilterProviderConfiguration *)v4 setPacketProviderDesignatedRequirement:v13];

  v14 = [(NEFilterProviderConfiguration *)self dataProviderURL];
  [(NEFilterProviderConfiguration *)v4 setDataProviderURL:v14];

  v15 = [(NEFilterProviderConfiguration *)self packetProviderURL];
  [(NEFilterProviderConfiguration *)v4 setPacketProviderURL:v15];

  if (self)
  {
    controlProviderInitialized = self->_controlProviderInitialized;
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  controlProviderInitialized = 0;
  if (v4)
  {
LABEL_3:
    v4->_controlProviderInitialized = controlProviderInitialized;
  }

LABEL_4:
  if (!self)
  {
    Property = 0;
    if (!v4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  Property = objc_getProperty(self, v16, 96, 1);
  if (v4)
  {
LABEL_6:
    objc_setProperty_atomic_copy(v4, v16, Property, 96);
  }

LABEL_7:
  v19 = [(NEFilterProviderConfiguration *)self filterDataProviderBundleIdentifier];
  [(NEFilterProviderConfiguration *)v4 setFilterDataProviderBundleIdentifier:v19];

  v20 = [(NEFilterProviderConfiguration *)self filterPacketProviderBundleIdentifier];
  [(NEFilterProviderConfiguration *)v4 setFilterPacketProviderBundleIdentifier:v20];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v19 = a3;
  [v19 encodeBool:-[NEFilterProviderConfiguration filterBrowsers](self forKey:{"filterBrowsers"), @"FilterBrowsers"}];
  [v19 encodeBool:-[NEFilterProviderConfiguration filterPackets](self forKey:{"filterPackets"), @"FilterPackets"}];
  [v19 encodeBool:-[NEFilterProviderConfiguration filterSockets](self forKey:{"filterSockets"), @"FilterSockets"}];
  [v19 encodeBool:-[NEFilterProviderConfiguration disableDefaultDrop](self forKey:{"disableDefaultDrop"), @"DisableDefaultDrop"}];
  [v19 encodeBool:-[NEFilterProviderConfiguration preserveExistingConnections](self forKey:{"preserveExistingConnections"), @"PreserveExistingConnections"}];
  v4 = [(NEFilterProviderConfiguration *)self vendorConfiguration];
  [v19 encodeObject:v4 forKey:@"VendorConfiguration"];

  v5 = [(NEFilterProviderConfiguration *)self serverAddress];
  [v19 encodeObject:v5 forKey:@"ServerAddress"];

  v6 = [(NEFilterProviderConfiguration *)self username];
  [v19 encodeObject:v6 forKey:@"Username"];

  v7 = [(NEFilterProviderConfiguration *)self organization];
  [v19 encodeObject:v7 forKey:@"Organization"];

  v8 = [(NEFilterProviderConfiguration *)self passwordReference];
  [v19 encodeObject:v8 forKey:@"Password"];

  v9 = [(NEFilterProviderConfiguration *)self identityReference];
  [v19 encodeObject:v9 forKey:@"Identity"];

  v10 = [(NEFilterProviderConfiguration *)self pluginType];
  [v19 encodeObject:v10 forKey:@"PluginType"];

  v11 = [(NEFilterProviderConfiguration *)self dataProviderDesignatedRequirement];
  [v19 encodeObject:v11 forKey:@"DataProviderDesignatedRequirement"];

  v12 = [(NEFilterProviderConfiguration *)self packetProviderDesignatedRequirement];
  [v19 encodeObject:v12 forKey:@"PacketProviderDesignatedRequirement"];

  v13 = [(NEFilterProviderConfiguration *)self dataProviderURL];
  [v19 encodeObject:v13 forKey:@"DataProviderURL"];

  v14 = [(NEFilterProviderConfiguration *)self packetProviderURL];
  [v19 encodeObject:v14 forKey:@"PacketProviderURL"];

  if (self)
  {
    [v19 encodeBool:self->_controlProviderInitialized forKey:@"ControlProviderInitialized"];
    Property = objc_getProperty(self, v15, 96, 1);
  }

  else
  {
    [v19 encodeBool:0 forKey:@"ControlProviderInitialized"];
    Property = 0;
  }

  [v19 encodeObject:Property forKey:@"KeychainAccessGroup"];
  v17 = [(NEFilterProviderConfiguration *)self filterDataProviderBundleIdentifier];
  [v19 encodeObject:v17 forKey:@"DataProviderBundleIdentifier"];

  v18 = [(NEFilterProviderConfiguration *)self filterPacketProviderBundleIdentifier];
  [v19 encodeObject:v18 forKey:@"PacketProviderBundleIdentifier"];
}

- (NEFilterProviderConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v41.receiver = self;
  v41.super_class = NEFilterProviderConfiguration;
  v5 = [(NEFilterProviderConfiguration *)&v41 init];
  if (v5)
  {
    v5->_filterBrowsers = [v4 decodeBoolForKey:@"FilterBrowsers"];
    v5->_filterPackets = [v4 decodeBoolForKey:@"FilterPackets"];
    v5->_filterSockets = [v4 decodeBoolForKey:@"FilterSockets"];
    v5->_disableDefaultDrop = [v4 decodeBoolForKey:@"DisableDefaultDrop"];
    v5->_preserveExistingConnections = [v4 decodeBoolForKey:@"PreserveExistingConnections"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"VendorConfiguration"];
    vendorConfiguration = v5->_vendorConfiguration;
    v5->_vendorConfiguration = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ServerAddress"];
    serverAddress = v5->_serverAddress;
    v5->_serverAddress = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Username"];
    username = v5->_username;
    v5->_username = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Organization"];
    organization = v5->_organization;
    v5->_organization = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Password"];
    passwordReference = v5->_passwordReference;
    v5->_passwordReference = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Identity"];
    identityReference = v5->_identityReference;
    v5->_identityReference = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PluginType"];
    pluginType = v5->_pluginType;
    v5->_pluginType = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DataProviderDesignatedRequirement"];
    dataProviderDesignatedRequirement = v5->_dataProviderDesignatedRequirement;
    v5->_dataProviderDesignatedRequirement = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PacketProviderDesignatedRequirement"];
    packetProviderDesignatedRequirement = v5->_packetProviderDesignatedRequirement;
    v5->_packetProviderDesignatedRequirement = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DataProviderURL"];
    dataProviderURL = v5->_dataProviderURL;
    v5->_dataProviderURL = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PacketProviderURL"];
    packetProviderURL = v5->_packetProviderURL;
    v5->_packetProviderURL = v32;

    v5->_controlProviderInitialized = [v4 decodeBoolForKey:@"ControlProviderInitialized"];
    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"KeychainAccessGroup"];
    keychainAccessGroup = v5->_keychainAccessGroup;
    v5->_keychainAccessGroup = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DataProviderBundleIdentifier"];
    filterDataProviderBundleIdentifier = v5->_filterDataProviderBundleIdentifier;
    v5->_filterDataProviderBundleIdentifier = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PacketProviderBundleIdentifier"];
    filterPacketProviderBundleIdentifier = v5->_filterPacketProviderBundleIdentifier;
    v5->_filterPacketProviderBundleIdentifier = v38;
  }

  return v5;
}

@end