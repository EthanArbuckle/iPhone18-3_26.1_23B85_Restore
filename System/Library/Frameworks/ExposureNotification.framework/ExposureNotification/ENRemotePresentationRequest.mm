@interface ENRemotePresentationRequest
+ (id)presentationRequestWithType:(int64_t)type;
- (ENRegion)region;
- (ENRemotePresentationRequest)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ENRemotePresentationRequest

+ (id)presentationRequestWithType:(int64_t)type
{
  v4 = objc_alloc_init(ENRemotePresentationRequest);
  uUID = [MEMORY[0x277CCAD78] UUID];
  [(ENRemotePresentationRequest *)v4 setReceiptId:uUID];

  [(ENRemotePresentationRequest *)v4 setRequestType:type];
  [(ENRemotePresentationRequest *)v4 setDecisionInfo:MEMORY[0x277CBEC10]];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[ENRemotePresentationRequest requestType](self forKey:{"requestType"), @"requestType"}];
  receiptId = [(ENRemotePresentationRequest *)self receiptId];
  [coderCopy encodeObject:receiptId forKey:@"receiptId"];

  appBundleIdentifier = [(ENRemotePresentationRequest *)self appBundleIdentifier];
  [coderCopy encodeObject:appBundleIdentifier forKey:@"bundleId"];

  agencyRegion = [(ENRemotePresentationRequest *)self agencyRegion];
  [coderCopy encodeObject:agencyRegion forKey:@"region"];

  [coderCopy encodeBool:-[ENRemotePresentationRequest testMode](self forKey:{"testMode"), @"testMode"}];
  decisionInfo = [(ENRemotePresentationRequest *)self decisionInfo];
  [coderCopy encodeObject:decisionInfo forKey:@"decisionInfo"];
}

- (ENRemotePresentationRequest)initWithCoder:(id)coder
{
  v24 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [(ENRemotePresentationRequest *)self init];
  if (!v5)
  {
LABEL_5:
    v7 = v5;
    goto LABEL_6;
  }

  v5->_requestType = [coderCopy decodeIntegerForKey:@"requestType"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"receiptId"];
  v7 = v6;
  if (v6)
  {
    v8 = [(ENRemotePresentationRequest *)v6 copy];
    receiptId = v5->_receiptId;
    v5->_receiptId = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleId"];
    appBundleIdentifier = v5->_appBundleIdentifier;
    v5->_appBundleIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"region"];
    agencyRegion = v5->_agencyRegion;
    v5->_agencyRegion = v12;

    v14 = objc_alloc(MEMORY[0x277CBEB98]);
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:3];
    v16 = [v14 initWithArray:{v15, v21, v22}];

    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"decisionInfo"];
    if (!v17)
    {

      v7 = 0;
      goto LABEL_6;
    }

    decisionInfo = v5->_decisionInfo;
    v5->_decisionInfo = v17;

    v5->_testMode = [coderCopy decodeBoolForKey:@"testMode"];
    goto LABEL_5;
  }

LABEL_6:

  v19 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[ENRemotePresentationRequest allocWithZone:](ENRemotePresentationRequest init];
  [(ENRemotePresentationRequest *)v5 setRequestType:[(ENRemotePresentationRequest *)self requestType]];
  receiptId = [(ENRemotePresentationRequest *)self receiptId];
  v7 = [receiptId copyWithZone:zone];
  [(ENRemotePresentationRequest *)v5 setReceiptId:v7];

  appBundleIdentifier = [(ENRemotePresentationRequest *)self appBundleIdentifier];
  v9 = [appBundleIdentifier copyWithZone:zone];
  [(ENRemotePresentationRequest *)v5 setAppBundleIdentifier:v9];

  agencyRegion = [(ENRemotePresentationRequest *)self agencyRegion];
  v11 = [agencyRegion copyWithZone:zone];
  [(ENRemotePresentationRequest *)v5 setAgencyRegion:v11];

  [(ENRemotePresentationRequest *)v5 setTestMode:[(ENRemotePresentationRequest *)self testMode]];
  decisionInfo = [(ENRemotePresentationRequest *)self decisionInfo];
  v13 = [decisionInfo copyWithZone:zone];
  [(ENRemotePresentationRequest *)v5 setDecisionInfo:v13];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  requestType = self->_requestType;
  uUIDString = [(NSUUID *)self->_receiptId UUIDString];
  v8 = uUIDString;
  agencyRegion = @"<>";
  appBundleIdentifier = self->_appBundleIdentifier;
  if (!appBundleIdentifier)
  {
    appBundleIdentifier = @"<>";
  }

  if (self->_agencyRegion)
  {
    agencyRegion = self->_agencyRegion;
  }

  agencyRegion = [v3 stringWithFormat:@"%@ %ld %@ App %@ Region %@", v5, requestType, uUIDString, appBundleIdentifier, agencyRegion];

  return agencyRegion;
}

- (ENRegion)region
{
  agencyRegion = self->_agencyRegion;
  if (agencyRegion)
  {
    v3 = agencyRegion;
  }

  else
  {
    v3 = [[ENRegion alloc] initWithCountryCode:@"US"];
  }

  return v3;
}

- (void)onboardingRequestCompletedWithDecision:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ENRemotePresentationRequest.m" lineNumber:96 description:@"Encountered wrong request type"];
}

- (void)keyReleaseRequestCompletedWithDecision:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ENRemotePresentationRequest.m" lineNumber:104 description:@"Encountered wrong request type"];
}

- (void)preApprovalRequestCompletedWithDecision:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ENRemotePresentationRequest.m" lineNumber:112 description:@"Encountered wrong request type"];
}

@end