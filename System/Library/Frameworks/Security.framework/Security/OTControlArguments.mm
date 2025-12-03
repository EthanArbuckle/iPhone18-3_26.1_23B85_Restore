@interface OTControlArguments
- (OTControlArguments)initWithCoder:(id)coder;
- (OTControlArguments)initWithConfiguration:(id)configuration;
- (OTControlArguments)initWithContainerName:(id)name contextID:(id)d altDSID:(id)iD flowID:(id)flowID deviceSessionID:(id)sessionID canSendMetrics:(BOOL)metrics;
- (id)description;
- (id)makeConfigurationContext;
- (void)encodeWithCoder:(id)coder;
@end

@implementation OTControlArguments

- (id)makeConfigurationContext
{
  v3 = objc_alloc_init(OTConfigurationContext);
  containerName = [(OTControlArguments *)self containerName];
  [(OTConfigurationContext *)v3 setContainerName:containerName];

  contextID = [(OTControlArguments *)self contextID];
  [(OTConfigurationContext *)v3 setContext:contextID];

  altDSID = [(OTControlArguments *)self altDSID];
  [(OTConfigurationContext *)v3 setAltDSID:altDSID];

  flowID = [(OTControlArguments *)self flowID];
  [(OTConfigurationContext *)v3 setFlowID:flowID];

  deviceSessionID = [(OTControlArguments *)self deviceSessionID];
  [(OTConfigurationContext *)v3 setDeviceSessionID:deviceSessionID];

  return v3;
}

- (OTControlArguments)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = OTControlArguments;
  v5 = [(OTControlArguments *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contextID"];
    contextID = v5->_contextID;
    v5->_contextID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"containerName"];
    containerName = v5->_containerName;
    v5->_containerName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"flowID"];
    flowID = v5->_flowID;
    v5->_flowID = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceSessionID"];
    deviceSessionID = v5->_deviceSessionID;
    v5->_deviceSessionID = v14;

    v5->_canSendMetrics = [coderCopy decodeBoolForKey:@"canSendMetrics"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  contextID = [(OTControlArguments *)self contextID];
  [coderCopy encodeObject:contextID forKey:@"contextID"];

  containerName = [(OTControlArguments *)self containerName];
  [coderCopy encodeObject:containerName forKey:@"containerName"];

  altDSID = [(OTControlArguments *)self altDSID];
  [coderCopy encodeObject:altDSID forKey:@"altDSID"];

  flowID = [(OTControlArguments *)self flowID];
  [coderCopy encodeObject:flowID forKey:@"flowID"];

  deviceSessionID = [(OTControlArguments *)self deviceSessionID];
  [coderCopy encodeObject:deviceSessionID forKey:@"deviceSessionID"];

  [coderCopy encodeBool:-[OTControlArguments canSendMetrics](self forKey:{"canSendMetrics"), @"canSendMetrics"}];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  containerName = [(OTControlArguments *)self containerName];
  contextID = [(OTControlArguments *)self contextID];
  altDSID = [(OTControlArguments *)self altDSID];
  flowID = [(OTControlArguments *)self flowID];
  deviceSessionID = [(OTControlArguments *)self deviceSessionID];
  v9 = [v3 stringWithFormat:@"<OTControlArguments: container:%@, context:%@, altDSID:%@, flowID: %@, deviceSessionID: %@, canSendMetrics: %d>", containerName, contextID, altDSID, flowID, deviceSessionID, -[OTControlArguments canSendMetrics](self, "canSendMetrics")];

  return v9;
}

- (OTControlArguments)initWithContainerName:(id)name contextID:(id)d altDSID:(id)iD flowID:(id)flowID deviceSessionID:(id)sessionID canSendMetrics:(BOOL)metrics
{
  nameCopy = name;
  dCopy = d;
  iDCopy = iD;
  flowIDCopy = flowID;
  sessionIDCopy = sessionID;
  v23.receiver = self;
  v23.super_class = OTControlArguments;
  v18 = [(OTControlArguments *)&v23 init];
  v19 = v18;
  if (v18)
  {
    if (nameCopy)
    {
      v20 = nameCopy;
    }

    else
    {
      v20 = @"com.apple.security.keychain";
    }

    objc_storeStrong(&v18->_containerName, v20);
    objc_storeStrong(&v19->_contextID, d);
    objc_storeStrong(&v19->_altDSID, iD);
    objc_storeStrong(&v19->_flowID, flowID);
    objc_storeStrong(&v19->_deviceSessionID, sessionID);
    v19->_canSendMetrics = metrics;
  }

  return v19;
}

- (OTControlArguments)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  containerName = [configurationCopy containerName];
  v6 = containerName;
  if (containerName)
  {
    v7 = containerName;
  }

  else
  {
    v7 = @"com.apple.security.keychain";
  }

  context = [configurationCopy context];
  v9 = context;
  if (context)
  {
    v10 = context;
  }

  else
  {
    v10 = OTDefaultContext;
  }

  altDSID = [configurationCopy altDSID];
  flowID = [configurationCopy flowID];
  deviceSessionID = [configurationCopy deviceSessionID];
  canSendMetrics = [configurationCopy canSendMetrics];

  v15 = [(OTControlArguments *)self initWithContainerName:v7 contextID:v10 altDSID:altDSID flowID:flowID deviceSessionID:deviceSessionID canSendMetrics:canSendMetrics];
  return v15;
}

@end