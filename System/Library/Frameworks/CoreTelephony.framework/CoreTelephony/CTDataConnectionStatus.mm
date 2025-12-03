@interface CTDataConnectionStatus
- (CTDataConnectionStatus)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTDataConnectionStatus

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTDataConnectionStatus *)self pdp];
  [v3 appendFormat:@", pdp=%@", v4];

  interfaceName = [(CTDataConnectionStatus *)self interfaceName];
  [v3 appendFormat:@", interfaceName=%@", interfaceName];

  apnName = [(CTDataConnectionStatus *)self apnName];
  [v3 appendFormat:@", apnName=%@", apnName];

  [v3 appendFormat:@", wirelessTechnologyMask=%d", -[CTDataConnectionStatus wirelessTechnologyMask](self, "wirelessTechnologyMask")];
  [v3 appendFormat:@", state=%d", -[CTDataConnectionStatus state](self, "state")];
  [v3 appendFormat:@", ipFamily=%d", -[CTDataConnectionStatus ipFamily](self, "ipFamily")];
  [v3 appendFormat:@", suspended=%d", -[CTDataConnectionStatus suspended](self, "suspended")];
  [v3 appendFormat:@", publicNetAllowed=%d", -[CTDataConnectionStatus publicNetAllowed](self, "publicNetAllowed")];
  [v3 appendFormat:@", contextType=%d", -[CTDataConnectionStatus contextType](self, "contextType")];
  [v3 appendFormat:@", transportType=%d", -[CTDataConnectionStatus transportType](self, "transportType")];
  qosFlows = [(CTDataConnectionStatus *)self qosFlows];

  if (qosFlows)
  {
    qosFlows2 = [(CTDataConnectionStatus *)self qosFlows];
    [v3 appendFormat:@", qosFlows=[%@]", qosFlows2];
  }

  trafficDescriptors = [(CTDataConnectionStatus *)self trafficDescriptors];

  if (trafficDescriptors)
  {
    trafficDescriptors2 = [(CTDataConnectionStatus *)self trafficDescriptors];
    [v3 appendFormat:@", trafficDescriptors=[%@]", trafficDescriptors2];
  }

  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(CTDataConnectionStatus *)self pdp];
  v6 = [v5 copy];
  [v4 setPdp:v6];

  interfaceName = [(CTDataConnectionStatus *)self interfaceName];
  v8 = [interfaceName copy];
  [v4 setInterfaceName:v8];

  apnName = [(CTDataConnectionStatus *)self apnName];
  v10 = [apnName copy];
  [v4 setApnName:v10];

  [v4 setWirelessTechnologyMask:{-[CTDataConnectionStatus wirelessTechnologyMask](self, "wirelessTechnologyMask")}];
  [v4 setState:{-[CTDataConnectionStatus state](self, "state")}];
  [v4 setIpFamily:{-[CTDataConnectionStatus ipFamily](self, "ipFamily")}];
  [v4 setSuspended:{-[CTDataConnectionStatus suspended](self, "suspended")}];
  [v4 setPublicNetAllowed:{-[CTDataConnectionStatus publicNetAllowed](self, "publicNetAllowed")}];
  [v4 setContextType:{-[CTDataConnectionStatus contextType](self, "contextType")}];
  [v4 setTransportType:{-[CTDataConnectionStatus transportType](self, "transportType")}];
  qosFlows = [(CTDataConnectionStatus *)self qosFlows];

  if (qosFlows)
  {
    qosFlows2 = [(CTDataConnectionStatus *)self qosFlows];
    v13 = [qosFlows2 copy];
    [v4 setQosFlows:v13];
  }

  trafficDescriptors = [(CTDataConnectionStatus *)self trafficDescriptors];

  if (trafficDescriptors)
  {
    trafficDescriptors2 = [(CTDataConnectionStatus *)self trafficDescriptors];
    v16 = [trafficDescriptors2 copy];
    [v4 setTrafficDescriptors:v16];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[CTDataConnectionStatus suspended](self forKey:{"suspended"), @"suspended"}];
  [coderCopy encodeBool:-[CTDataConnectionStatus publicNetAllowed](self forKey:{"publicNetAllowed"), @"pubNet"}];
  v4 = [(CTDataConnectionStatus *)self pdp];
  [coderCopy encodeObject:v4 forKey:@"pdp"];

  interfaceName = [(CTDataConnectionStatus *)self interfaceName];
  [coderCopy encodeObject:interfaceName forKey:@"interfaceName"];

  apnName = [(CTDataConnectionStatus *)self apnName];
  [coderCopy encodeObject:apnName forKey:@"apnName"];

  [coderCopy encodeInt:-[CTDataConnectionStatus wirelessTechnologyMask](self forKey:{"wirelessTechnologyMask"), @"wt"}];
  [coderCopy encodeInt:-[CTDataConnectionStatus state](self forKey:{"state"), @"state"}];
  [coderCopy encodeInt:-[CTDataConnectionStatus ipFamily](self forKey:{"ipFamily"), @"ipFamily"}];
  [coderCopy encodeInt:-[CTDataConnectionStatus contextType](self forKey:{"contextType"), @"contextType"}];
  [coderCopy encodeInt:-[CTDataConnectionStatus transportType](self forKey:{"transportType"), @"transportType"}];
  qosFlows = [(CTDataConnectionStatus *)self qosFlows];

  if (qosFlows)
  {
    qosFlows2 = [(CTDataConnectionStatus *)self qosFlows];
    [coderCopy encodeObject:qosFlows2 forKey:@"qosFlows"];
  }

  trafficDescriptors = [(CTDataConnectionStatus *)self trafficDescriptors];

  if (trafficDescriptors)
  {
    trafficDescriptors2 = [(CTDataConnectionStatus *)self trafficDescriptors];
    [coderCopy encodeObject:trafficDescriptors2 forKey:@"trafficDescriptors"];
  }
}

- (CTDataConnectionStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = CTDataConnectionStatus;
  v5 = [(CTDataConnectionStatus *)&v23 init];
  if (v5)
  {
    v5->_suspended = [coderCopy decodeBoolForKey:@"suspended"];
    v5->_publicNetAllowed = [coderCopy decodeBoolForKey:@"pubNet"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pdp"];
    pdp = v5->_pdp;
    v5->_pdp = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"interfaceName"];
    interfaceName = v5->_interfaceName;
    v5->_interfaceName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"apnName"];
    apnName = v5->_apnName;
    v5->_apnName = v10;

    v5->_wirelessTechnologyMask = [coderCopy decodeIntForKey:@"wt"];
    v5->_state = [coderCopy decodeIntForKey:@"state"];
    v5->_ipFamily = [coderCopy decodeIntForKey:@"ipFamily"];
    v5->_contextType = [coderCopy decodeIntForKey:@"contextType"];
    v5->_transportType = [coderCopy decodeIntForKey:@"transportType"];
    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"qosFlows"];
    qosFlows = v5->_qosFlows;
    v5->_qosFlows = v15;

    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"trafficDescriptors"];
    trafficDescriptors = v5->_trafficDescriptors;
    v5->_trafficDescriptors = v20;
  }

  return v5;
}

@end