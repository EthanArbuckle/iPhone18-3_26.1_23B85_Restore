@interface ENRemotePresentationRequest
+ (id)presentationRequestWithType:(int64_t)a3;
- (ENRegion)region;
- (ENRemotePresentationRequest)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ENRemotePresentationRequest

+ (id)presentationRequestWithType:(int64_t)a3
{
  v4 = objc_alloc_init(ENRemotePresentationRequest);
  v5 = [MEMORY[0x277CCAD78] UUID];
  [(ENRemotePresentationRequest *)v4 setReceiptId:v5];

  [(ENRemotePresentationRequest *)v4 setRequestType:a3];
  [(ENRemotePresentationRequest *)v4 setDecisionInfo:MEMORY[0x277CBEC10]];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[ENRemotePresentationRequest requestType](self forKey:{"requestType"), @"requestType"}];
  v5 = [(ENRemotePresentationRequest *)self receiptId];
  [v4 encodeObject:v5 forKey:@"receiptId"];

  v6 = [(ENRemotePresentationRequest *)self appBundleIdentifier];
  [v4 encodeObject:v6 forKey:@"bundleId"];

  v7 = [(ENRemotePresentationRequest *)self agencyRegion];
  [v4 encodeObject:v7 forKey:@"region"];

  [v4 encodeBool:-[ENRemotePresentationRequest testMode](self forKey:{"testMode"), @"testMode"}];
  v8 = [(ENRemotePresentationRequest *)self decisionInfo];
  [v4 encodeObject:v8 forKey:@"decisionInfo"];
}

- (ENRemotePresentationRequest)initWithCoder:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ENRemotePresentationRequest *)self init];
  if (!v5)
  {
LABEL_5:
    v7 = v5;
    goto LABEL_6;
  }

  v5->_requestType = [v4 decodeIntegerForKey:@"requestType"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"receiptId"];
  v7 = v6;
  if (v6)
  {
    v8 = [(ENRemotePresentationRequest *)v6 copy];
    receiptId = v5->_receiptId;
    v5->_receiptId = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleId"];
    appBundleIdentifier = v5->_appBundleIdentifier;
    v5->_appBundleIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"region"];
    agencyRegion = v5->_agencyRegion;
    v5->_agencyRegion = v12;

    v14 = objc_alloc(MEMORY[0x277CBEB98]);
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:3];
    v16 = [v14 initWithArray:{v15, v21, v22}];

    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"decisionInfo"];
    if (!v17)
    {

      v7 = 0;
      goto LABEL_6;
    }

    decisionInfo = v5->_decisionInfo;
    v5->_decisionInfo = v17;

    v5->_testMode = [v4 decodeBoolForKey:@"testMode"];
    goto LABEL_5;
  }

LABEL_6:

  v19 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[ENRemotePresentationRequest allocWithZone:](ENRemotePresentationRequest init];
  [(ENRemotePresentationRequest *)v5 setRequestType:[(ENRemotePresentationRequest *)self requestType]];
  v6 = [(ENRemotePresentationRequest *)self receiptId];
  v7 = [v6 copyWithZone:a3];
  [(ENRemotePresentationRequest *)v5 setReceiptId:v7];

  v8 = [(ENRemotePresentationRequest *)self appBundleIdentifier];
  v9 = [v8 copyWithZone:a3];
  [(ENRemotePresentationRequest *)v5 setAppBundleIdentifier:v9];

  v10 = [(ENRemotePresentationRequest *)self agencyRegion];
  v11 = [v10 copyWithZone:a3];
  [(ENRemotePresentationRequest *)v5 setAgencyRegion:v11];

  [(ENRemotePresentationRequest *)v5 setTestMode:[(ENRemotePresentationRequest *)self testMode]];
  v12 = [(ENRemotePresentationRequest *)self decisionInfo];
  v13 = [v12 copyWithZone:a3];
  [(ENRemotePresentationRequest *)v5 setDecisionInfo:v13];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  requestType = self->_requestType;
  v7 = [(NSUUID *)self->_receiptId UUIDString];
  v8 = v7;
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

  v11 = [v3 stringWithFormat:@"%@ %ld %@ App %@ Region %@", v5, requestType, v7, appBundleIdentifier, agencyRegion];

  return v11;
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