@interface CTDataConnectionStatus
- (CTDataConnectionStatus)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTDataConnectionStatus

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTDataConnectionStatus *)self pdp];
  [v3 appendFormat:@", pdp=%@", v4];

  v5 = [(CTDataConnectionStatus *)self interfaceName];
  [v3 appendFormat:@", interfaceName=%@", v5];

  v6 = [(CTDataConnectionStatus *)self apnName];
  [v3 appendFormat:@", apnName=%@", v6];

  [v3 appendFormat:@", wirelessTechnologyMask=%d", -[CTDataConnectionStatus wirelessTechnologyMask](self, "wirelessTechnologyMask")];
  [v3 appendFormat:@", state=%d", -[CTDataConnectionStatus state](self, "state")];
  [v3 appendFormat:@", ipFamily=%d", -[CTDataConnectionStatus ipFamily](self, "ipFamily")];
  [v3 appendFormat:@", suspended=%d", -[CTDataConnectionStatus suspended](self, "suspended")];
  [v3 appendFormat:@", publicNetAllowed=%d", -[CTDataConnectionStatus publicNetAllowed](self, "publicNetAllowed")];
  [v3 appendFormat:@", contextType=%d", -[CTDataConnectionStatus contextType](self, "contextType")];
  [v3 appendFormat:@", transportType=%d", -[CTDataConnectionStatus transportType](self, "transportType")];
  v7 = [(CTDataConnectionStatus *)self qosFlows];

  if (v7)
  {
    v8 = [(CTDataConnectionStatus *)self qosFlows];
    [v3 appendFormat:@", qosFlows=[%@]", v8];
  }

  v9 = [(CTDataConnectionStatus *)self trafficDescriptors];

  if (v9)
  {
    v10 = [(CTDataConnectionStatus *)self trafficDescriptors];
    [v3 appendFormat:@", trafficDescriptors=[%@]", v10];
  }

  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(CTDataConnectionStatus *)self pdp];
  v6 = [v5 copy];
  [v4 setPdp:v6];

  v7 = [(CTDataConnectionStatus *)self interfaceName];
  v8 = [v7 copy];
  [v4 setInterfaceName:v8];

  v9 = [(CTDataConnectionStatus *)self apnName];
  v10 = [v9 copy];
  [v4 setApnName:v10];

  [v4 setWirelessTechnologyMask:{-[CTDataConnectionStatus wirelessTechnologyMask](self, "wirelessTechnologyMask")}];
  [v4 setState:{-[CTDataConnectionStatus state](self, "state")}];
  [v4 setIpFamily:{-[CTDataConnectionStatus ipFamily](self, "ipFamily")}];
  [v4 setSuspended:{-[CTDataConnectionStatus suspended](self, "suspended")}];
  [v4 setPublicNetAllowed:{-[CTDataConnectionStatus publicNetAllowed](self, "publicNetAllowed")}];
  [v4 setContextType:{-[CTDataConnectionStatus contextType](self, "contextType")}];
  [v4 setTransportType:{-[CTDataConnectionStatus transportType](self, "transportType")}];
  v11 = [(CTDataConnectionStatus *)self qosFlows];

  if (v11)
  {
    v12 = [(CTDataConnectionStatus *)self qosFlows];
    v13 = [v12 copy];
    [v4 setQosFlows:v13];
  }

  v14 = [(CTDataConnectionStatus *)self trafficDescriptors];

  if (v14)
  {
    v15 = [(CTDataConnectionStatus *)self trafficDescriptors];
    v16 = [v15 copy];
    [v4 setTrafficDescriptors:v16];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  [v11 encodeBool:-[CTDataConnectionStatus suspended](self forKey:{"suspended"), @"suspended"}];
  [v11 encodeBool:-[CTDataConnectionStatus publicNetAllowed](self forKey:{"publicNetAllowed"), @"pubNet"}];
  v4 = [(CTDataConnectionStatus *)self pdp];
  [v11 encodeObject:v4 forKey:@"pdp"];

  v5 = [(CTDataConnectionStatus *)self interfaceName];
  [v11 encodeObject:v5 forKey:@"interfaceName"];

  v6 = [(CTDataConnectionStatus *)self apnName];
  [v11 encodeObject:v6 forKey:@"apnName"];

  [v11 encodeInt:-[CTDataConnectionStatus wirelessTechnologyMask](self forKey:{"wirelessTechnologyMask"), @"wt"}];
  [v11 encodeInt:-[CTDataConnectionStatus state](self forKey:{"state"), @"state"}];
  [v11 encodeInt:-[CTDataConnectionStatus ipFamily](self forKey:{"ipFamily"), @"ipFamily"}];
  [v11 encodeInt:-[CTDataConnectionStatus contextType](self forKey:{"contextType"), @"contextType"}];
  [v11 encodeInt:-[CTDataConnectionStatus transportType](self forKey:{"transportType"), @"transportType"}];
  v7 = [(CTDataConnectionStatus *)self qosFlows];

  if (v7)
  {
    v8 = [(CTDataConnectionStatus *)self qosFlows];
    [v11 encodeObject:v8 forKey:@"qosFlows"];
  }

  v9 = [(CTDataConnectionStatus *)self trafficDescriptors];

  if (v9)
  {
    v10 = [(CTDataConnectionStatus *)self trafficDescriptors];
    [v11 encodeObject:v10 forKey:@"trafficDescriptors"];
  }
}

- (CTDataConnectionStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = CTDataConnectionStatus;
  v5 = [(CTDataConnectionStatus *)&v23 init];
  if (v5)
  {
    v5->_suspended = [v4 decodeBoolForKey:@"suspended"];
    v5->_publicNetAllowed = [v4 decodeBoolForKey:@"pubNet"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pdp"];
    pdp = v5->_pdp;
    v5->_pdp = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"interfaceName"];
    interfaceName = v5->_interfaceName;
    v5->_interfaceName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"apnName"];
    apnName = v5->_apnName;
    v5->_apnName = v10;

    v5->_wirelessTechnologyMask = [v4 decodeIntForKey:@"wt"];
    v5->_state = [v4 decodeIntForKey:@"state"];
    v5->_ipFamily = [v4 decodeIntForKey:@"ipFamily"];
    v5->_contextType = [v4 decodeIntForKey:@"contextType"];
    v5->_transportType = [v4 decodeIntForKey:@"transportType"];
    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"qosFlows"];
    qosFlows = v5->_qosFlows;
    v5->_qosFlows = v15;

    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"trafficDescriptors"];
    trafficDescriptors = v5->_trafficDescriptors;
    v5->_trafficDescriptors = v20;
  }

  return v5;
}

@end