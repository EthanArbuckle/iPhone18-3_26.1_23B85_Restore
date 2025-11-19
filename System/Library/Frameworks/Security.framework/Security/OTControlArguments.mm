@interface OTControlArguments
- (OTControlArguments)initWithCoder:(id)a3;
- (OTControlArguments)initWithConfiguration:(id)a3;
- (OTControlArguments)initWithContainerName:(id)a3 contextID:(id)a4 altDSID:(id)a5 flowID:(id)a6 deviceSessionID:(id)a7 canSendMetrics:(BOOL)a8;
- (id)description;
- (id)makeConfigurationContext;
- (void)encodeWithCoder:(id)a3;
@end

@implementation OTControlArguments

- (id)makeConfigurationContext
{
  v3 = objc_alloc_init(OTConfigurationContext);
  v4 = [(OTControlArguments *)self containerName];
  [(OTConfigurationContext *)v3 setContainerName:v4];

  v5 = [(OTControlArguments *)self contextID];
  [(OTConfigurationContext *)v3 setContext:v5];

  v6 = [(OTControlArguments *)self altDSID];
  [(OTConfigurationContext *)v3 setAltDSID:v6];

  v7 = [(OTControlArguments *)self flowID];
  [(OTConfigurationContext *)v3 setFlowID:v7];

  v8 = [(OTControlArguments *)self deviceSessionID];
  [(OTConfigurationContext *)v3 setDeviceSessionID:v8];

  return v3;
}

- (OTControlArguments)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = OTControlArguments;
  v5 = [(OTControlArguments *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contextID"];
    contextID = v5->_contextID;
    v5->_contextID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"containerName"];
    containerName = v5->_containerName;
    v5->_containerName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"flowID"];
    flowID = v5->_flowID;
    v5->_flowID = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceSessionID"];
    deviceSessionID = v5->_deviceSessionID;
    v5->_deviceSessionID = v14;

    v5->_canSendMetrics = [v4 decodeBoolForKey:@"canSendMetrics"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [(OTControlArguments *)self contextID];
  [v9 encodeObject:v4 forKey:@"contextID"];

  v5 = [(OTControlArguments *)self containerName];
  [v9 encodeObject:v5 forKey:@"containerName"];

  v6 = [(OTControlArguments *)self altDSID];
  [v9 encodeObject:v6 forKey:@"altDSID"];

  v7 = [(OTControlArguments *)self flowID];
  [v9 encodeObject:v7 forKey:@"flowID"];

  v8 = [(OTControlArguments *)self deviceSessionID];
  [v9 encodeObject:v8 forKey:@"deviceSessionID"];

  [v9 encodeBool:-[OTControlArguments canSendMetrics](self forKey:{"canSendMetrics"), @"canSendMetrics"}];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(OTControlArguments *)self containerName];
  v5 = [(OTControlArguments *)self contextID];
  v6 = [(OTControlArguments *)self altDSID];
  v7 = [(OTControlArguments *)self flowID];
  v8 = [(OTControlArguments *)self deviceSessionID];
  v9 = [v3 stringWithFormat:@"<OTControlArguments: container:%@, context:%@, altDSID:%@, flowID: %@, deviceSessionID: %@, canSendMetrics: %d>", v4, v5, v6, v7, v8, -[OTControlArguments canSendMetrics](self, "canSendMetrics")];

  return v9;
}

- (OTControlArguments)initWithContainerName:(id)a3 contextID:(id)a4 altDSID:(id)a5 flowID:(id)a6 deviceSessionID:(id)a7 canSendMetrics:(BOOL)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v23.receiver = self;
  v23.super_class = OTControlArguments;
  v18 = [(OTControlArguments *)&v23 init];
  v19 = v18;
  if (v18)
  {
    if (v13)
    {
      v20 = v13;
    }

    else
    {
      v20 = @"com.apple.security.keychain";
    }

    objc_storeStrong(&v18->_containerName, v20);
    objc_storeStrong(&v19->_contextID, a4);
    objc_storeStrong(&v19->_altDSID, a5);
    objc_storeStrong(&v19->_flowID, a6);
    objc_storeStrong(&v19->_deviceSessionID, a7);
    v19->_canSendMetrics = a8;
  }

  return v19;
}

- (OTControlArguments)initWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 containerName];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"com.apple.security.keychain";
  }

  v8 = [v4 context];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = OTDefaultContext;
  }

  v11 = [v4 altDSID];
  v12 = [v4 flowID];
  v13 = [v4 deviceSessionID];
  v14 = [v4 canSendMetrics];

  v15 = [(OTControlArguments *)self initWithContainerName:v7 contextID:v10 altDSID:v11 flowID:v12 deviceSessionID:v13 canSendMetrics:v14];
  return v15;
}

@end