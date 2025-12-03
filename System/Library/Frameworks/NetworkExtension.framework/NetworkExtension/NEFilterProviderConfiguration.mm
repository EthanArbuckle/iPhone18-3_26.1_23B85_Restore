@interface NEFilterProviderConfiguration
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (NEFilterProviderConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEFilterProviderConfiguration

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  errorsCopy = errors;
  pluginType = [(NEFilterProviderConfiguration *)self pluginType];
  v6 = pluginType != 0;

  if (!pluginType)
  {
    [NEConfiguration addError:errorsCopy toList:?];
  }

  if (![(NEFilterProviderConfiguration *)self filterBrowsers]&& ![(NEFilterProviderConfiguration *)self filterSockets]&& ![(NEFilterProviderConfiguration *)self filterPackets])
  {
    [NEConfiguration addError:filterSockets toList:or filterPackets must be enabled""), errorsCopy];
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NEFilterProviderConfiguration allocWithZone:?]];
  [(NEFilterProviderConfiguration *)v4 setFilterBrowsers:[(NEFilterProviderConfiguration *)self filterBrowsers]];
  [(NEFilterProviderConfiguration *)v4 setFilterPackets:[(NEFilterProviderConfiguration *)self filterPackets]];
  [(NEFilterProviderConfiguration *)v4 setFilterSockets:[(NEFilterProviderConfiguration *)self filterSockets]];
  [(NEFilterProviderConfiguration *)v4 setDisableDefaultDrop:[(NEFilterProviderConfiguration *)self disableDefaultDrop]];
  [(NEFilterProviderConfiguration *)v4 setPreserveExistingConnections:[(NEFilterProviderConfiguration *)self preserveExistingConnections]];
  vendorConfiguration = [(NEFilterProviderConfiguration *)self vendorConfiguration];
  [(NEFilterProviderConfiguration *)v4 setVendorConfiguration:vendorConfiguration];

  serverAddress = [(NEFilterProviderConfiguration *)self serverAddress];
  [(NEFilterProviderConfiguration *)v4 setServerAddress:serverAddress];

  username = [(NEFilterProviderConfiguration *)self username];
  [(NEFilterProviderConfiguration *)v4 setUsername:username];

  organization = [(NEFilterProviderConfiguration *)self organization];
  [(NEFilterProviderConfiguration *)v4 setOrganization:organization];

  passwordReference = [(NEFilterProviderConfiguration *)self passwordReference];
  [(NEFilterProviderConfiguration *)v4 setPasswordReference:passwordReference];

  identityReference = [(NEFilterProviderConfiguration *)self identityReference];
  [(NEFilterProviderConfiguration *)v4 setIdentityReference:identityReference];

  pluginType = [(NEFilterProviderConfiguration *)self pluginType];
  [(NEFilterProviderConfiguration *)v4 setPluginType:pluginType];

  dataProviderDesignatedRequirement = [(NEFilterProviderConfiguration *)self dataProviderDesignatedRequirement];
  [(NEFilterProviderConfiguration *)v4 setDataProviderDesignatedRequirement:dataProviderDesignatedRequirement];

  packetProviderDesignatedRequirement = [(NEFilterProviderConfiguration *)self packetProviderDesignatedRequirement];
  [(NEFilterProviderConfiguration *)v4 setPacketProviderDesignatedRequirement:packetProviderDesignatedRequirement];

  dataProviderURL = [(NEFilterProviderConfiguration *)self dataProviderURL];
  [(NEFilterProviderConfiguration *)v4 setDataProviderURL:dataProviderURL];

  packetProviderURL = [(NEFilterProviderConfiguration *)self packetProviderURL];
  [(NEFilterProviderConfiguration *)v4 setPacketProviderURL:packetProviderURL];

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
  filterDataProviderBundleIdentifier = [(NEFilterProviderConfiguration *)self filterDataProviderBundleIdentifier];
  [(NEFilterProviderConfiguration *)v4 setFilterDataProviderBundleIdentifier:filterDataProviderBundleIdentifier];

  filterPacketProviderBundleIdentifier = [(NEFilterProviderConfiguration *)self filterPacketProviderBundleIdentifier];
  [(NEFilterProviderConfiguration *)v4 setFilterPacketProviderBundleIdentifier:filterPacketProviderBundleIdentifier];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[NEFilterProviderConfiguration filterBrowsers](self forKey:{"filterBrowsers"), @"FilterBrowsers"}];
  [coderCopy encodeBool:-[NEFilterProviderConfiguration filterPackets](self forKey:{"filterPackets"), @"FilterPackets"}];
  [coderCopy encodeBool:-[NEFilterProviderConfiguration filterSockets](self forKey:{"filterSockets"), @"FilterSockets"}];
  [coderCopy encodeBool:-[NEFilterProviderConfiguration disableDefaultDrop](self forKey:{"disableDefaultDrop"), @"DisableDefaultDrop"}];
  [coderCopy encodeBool:-[NEFilterProviderConfiguration preserveExistingConnections](self forKey:{"preserveExistingConnections"), @"PreserveExistingConnections"}];
  vendorConfiguration = [(NEFilterProviderConfiguration *)self vendorConfiguration];
  [coderCopy encodeObject:vendorConfiguration forKey:@"VendorConfiguration"];

  serverAddress = [(NEFilterProviderConfiguration *)self serverAddress];
  [coderCopy encodeObject:serverAddress forKey:@"ServerAddress"];

  username = [(NEFilterProviderConfiguration *)self username];
  [coderCopy encodeObject:username forKey:@"Username"];

  organization = [(NEFilterProviderConfiguration *)self organization];
  [coderCopy encodeObject:organization forKey:@"Organization"];

  passwordReference = [(NEFilterProviderConfiguration *)self passwordReference];
  [coderCopy encodeObject:passwordReference forKey:@"Password"];

  identityReference = [(NEFilterProviderConfiguration *)self identityReference];
  [coderCopy encodeObject:identityReference forKey:@"Identity"];

  pluginType = [(NEFilterProviderConfiguration *)self pluginType];
  [coderCopy encodeObject:pluginType forKey:@"PluginType"];

  dataProviderDesignatedRequirement = [(NEFilterProviderConfiguration *)self dataProviderDesignatedRequirement];
  [coderCopy encodeObject:dataProviderDesignatedRequirement forKey:@"DataProviderDesignatedRequirement"];

  packetProviderDesignatedRequirement = [(NEFilterProviderConfiguration *)self packetProviderDesignatedRequirement];
  [coderCopy encodeObject:packetProviderDesignatedRequirement forKey:@"PacketProviderDesignatedRequirement"];

  dataProviderURL = [(NEFilterProviderConfiguration *)self dataProviderURL];
  [coderCopy encodeObject:dataProviderURL forKey:@"DataProviderURL"];

  packetProviderURL = [(NEFilterProviderConfiguration *)self packetProviderURL];
  [coderCopy encodeObject:packetProviderURL forKey:@"PacketProviderURL"];

  if (self)
  {
    [coderCopy encodeBool:self->_controlProviderInitialized forKey:@"ControlProviderInitialized"];
    Property = objc_getProperty(self, v15, 96, 1);
  }

  else
  {
    [coderCopy encodeBool:0 forKey:@"ControlProviderInitialized"];
    Property = 0;
  }

  [coderCopy encodeObject:Property forKey:@"KeychainAccessGroup"];
  filterDataProviderBundleIdentifier = [(NEFilterProviderConfiguration *)self filterDataProviderBundleIdentifier];
  [coderCopy encodeObject:filterDataProviderBundleIdentifier forKey:@"DataProviderBundleIdentifier"];

  filterPacketProviderBundleIdentifier = [(NEFilterProviderConfiguration *)self filterPacketProviderBundleIdentifier];
  [coderCopy encodeObject:filterPacketProviderBundleIdentifier forKey:@"PacketProviderBundleIdentifier"];
}

- (NEFilterProviderConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v41.receiver = self;
  v41.super_class = NEFilterProviderConfiguration;
  v5 = [(NEFilterProviderConfiguration *)&v41 init];
  if (v5)
  {
    v5->_filterBrowsers = [coderCopy decodeBoolForKey:@"FilterBrowsers"];
    v5->_filterPackets = [coderCopy decodeBoolForKey:@"FilterPackets"];
    v5->_filterSockets = [coderCopy decodeBoolForKey:@"FilterSockets"];
    v5->_disableDefaultDrop = [coderCopy decodeBoolForKey:@"DisableDefaultDrop"];
    v5->_preserveExistingConnections = [coderCopy decodeBoolForKey:@"PreserveExistingConnections"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"VendorConfiguration"];
    vendorConfiguration = v5->_vendorConfiguration;
    v5->_vendorConfiguration = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ServerAddress"];
    serverAddress = v5->_serverAddress;
    v5->_serverAddress = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Username"];
    username = v5->_username;
    v5->_username = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Organization"];
    organization = v5->_organization;
    v5->_organization = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Password"];
    passwordReference = v5->_passwordReference;
    v5->_passwordReference = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Identity"];
    identityReference = v5->_identityReference;
    v5->_identityReference = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PluginType"];
    pluginType = v5->_pluginType;
    v5->_pluginType = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DataProviderDesignatedRequirement"];
    dataProviderDesignatedRequirement = v5->_dataProviderDesignatedRequirement;
    v5->_dataProviderDesignatedRequirement = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PacketProviderDesignatedRequirement"];
    packetProviderDesignatedRequirement = v5->_packetProviderDesignatedRequirement;
    v5->_packetProviderDesignatedRequirement = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DataProviderURL"];
    dataProviderURL = v5->_dataProviderURL;
    v5->_dataProviderURL = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PacketProviderURL"];
    packetProviderURL = v5->_packetProviderURL;
    v5->_packetProviderURL = v32;

    v5->_controlProviderInitialized = [coderCopy decodeBoolForKey:@"ControlProviderInitialized"];
    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"KeychainAccessGroup"];
    keychainAccessGroup = v5->_keychainAccessGroup;
    v5->_keychainAccessGroup = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DataProviderBundleIdentifier"];
    filterDataProviderBundleIdentifier = v5->_filterDataProviderBundleIdentifier;
    v5->_filterDataProviderBundleIdentifier = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PacketProviderBundleIdentifier"];
    filterPacketProviderBundleIdentifier = v5->_filterPacketProviderBundleIdentifier;
    v5->_filterPacketProviderBundleIdentifier = v38;
  }

  return v5;
}

@end