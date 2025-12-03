@interface EvaluationRequest
+ (id)current;
- (BOOL)isInteractive;
- (BOOL)isPurposeInAppPayment;
- (BOOL)isRecoveringFromBiolockout;
- (EvaluationRequest)initWithAcl:(id)acl operation:(id)operation options:(id)options uiDelegate:(id)delegate contextID:(id)d;
- (EvaluationRequest)initWithPolicy:(int64_t)policy options:(id)options uiDelegate:(id)delegate contextID:(id)d;
- (LACXPCClient)client;
- (id)initSimulatedForBiolockoutPreflight;
- (id)shallowCopy;
- (void)_updateDTOStatus;
- (void)updateOptions:(id)options;
- (void)updatePayload:(id)payload;
@end

@implementation EvaluationRequest

- (LACXPCClient)client
{
  WeakRetained = objc_loadWeakRetained(&self->_client);

  return WeakRetained;
}

+ (id)current
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___EvaluationRequest;
  v2 = objc_msgSendSuper2(&v6, sel_current);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (BOOL)isInteractive
{
  v2 = [(NSDictionary *)self->_options objectForKeyedSubscript:&unk_284B71DC8];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue ^ 1;
}

- (EvaluationRequest)initWithPolicy:(int64_t)policy options:(id)options uiDelegate:(id)delegate contextID:(id)d
{
  optionsCopy = options;
  delegateCopy = delegate;
  dCopy = d;
  v13 = +[Caller current];
  v22.receiver = self;
  v22.super_class = EvaluationRequest;
  v14 = [(Request *)&v22 initWithCaller:v13];

  if (v14)
  {
    v14->_policy = policy;
    v14->_customUI = delegateCopy != 0;
    [(EvaluationRequest *)v14 updateOptions:optionsCopy];
    policy = v14->_policy;
    options = v14->_options;
    v17 = LALogForPolicy();
    [(Request *)v14 setLog:v17];

    v18 = objc_opt_new();
    [(EvaluationRequest *)v14 setAnalyticsData:v18];

    v19 = [[LAAnalyticsEvaluation alloc] initWithEvaluationRequest:v14];
    analytics = v14->_analytics;
    v14->_analytics = v19;

    objc_storeStrong(&v14->_contextID, d);
  }

  return v14;
}

- (EvaluationRequest)initWithAcl:(id)acl operation:(id)operation options:(id)options uiDelegate:(id)delegate contextID:(id)d
{
  aclCopy = acl;
  operationCopy = operation;
  optionsCopy = options;
  delegateCopy = delegate;
  dCopy = d;
  v18 = +[Caller current];
  v26.receiver = self;
  v26.super_class = EvaluationRequest;
  v19 = [(Request *)&v26 initWithCaller:v18];

  if (v19)
  {
    objc_storeStrong(&v19->_acl, acl);
    objc_storeStrong(&v19->_aclOperation, operation);
    v19->_customUI = delegateCopy != 0;
    [(EvaluationRequest *)v19 updateOptions:optionsCopy];
    options = v19->_options;
    v21 = LALogForPolicy();
    [(Request *)v19 setLog:v21];

    v22 = objc_opt_new();
    [(EvaluationRequest *)v19 setAnalyticsData:v22];

    v23 = [[LAAnalyticsEvaluation alloc] initWithEvaluationRequest:v19];
    analytics = v19->_analytics;
    v19->_analytics = v23;

    objc_storeStrong(&v19->_contextID, d);
  }

  return v19;
}

- (id)initSimulatedForBiolockoutPreflight
{
  v3 = objc_opt_new();
  v6.receiver = self;
  v6.super_class = EvaluationRequest;
  v4 = [(Request *)&v6 initWithCaller:v3];

  if (v4)
  {
    v4->_purpose = 3;
  }

  return v4;
}

- (void)updateOptions:(id)options
{
  optionsCopy = options;
  objc_storeStrong(&self->_options, options);
  v5 = [optionsCopy objectForKeyedSubscript:&unk_284B71D98];
  v6 = v5;
  if (v5)
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v8 = [MEMORY[0x277D240C0] isApplePayPolicy:{-[EvaluationRequest policy](self, "policy")}];
  options = [(EvaluationRequest *)self options];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277D23FB8]];
  v11 = [options objectForKeyedSubscript:v10];
  bOOLValue2 = [v11 BOOLValue];

  v13 = 2;
  if (!v8)
  {
    v13 = 0;
  }

  v14 = v13 | bOOLValue;
  v15 = 8;
  if (!bOOLValue2)
  {
    v15 = 0;
  }

  self->_purpose = v14 | v15;
  v16 = [optionsCopy objectForKeyedSubscript:&unk_284B71DB0];
  v17 = v16;
  if (v16)
  {
    self->_evaluationUserId = [v16 unsignedIntValue];
  }

  else
  {
    v18 = MEMORY[0x277CCABB0];
    caller = [(Request *)self caller];
    v20 = [v18 numberWithUnsignedInt:{objc_msgSend(caller, "euid")}];
    self->_evaluationUserId = [v20 unsignedIntValue];
  }
}

- (id)shallowCopy
{
  v3 = [EvaluationRequest alloc];
  identifier = [(Request *)self identifier];
  caller = [(Request *)self caller];
  received = [(Request *)self received];
  v7 = [(Request *)v3 initWithID:identifier caller:caller received:received];

  v8 = [(EvaluationRequest *)self acl];
  [(EvaluationRequest *)v7 setAcl:v8];

  aclOperation = [(EvaluationRequest *)self aclOperation];
  [(EvaluationRequest *)v7 setAclOperation:aclOperation];

  analytics = [(EvaluationRequest *)self analytics];
  [(EvaluationRequest *)v7 setAnalytics:analytics];

  analyticsData = [(EvaluationRequest *)self analyticsData];
  [(EvaluationRequest *)v7 setAnalyticsData:analyticsData];

  client = [(EvaluationRequest *)self client];
  [(EvaluationRequest *)v7 setClient:client];

  contextID = [(EvaluationRequest *)self contextID];
  [(EvaluationRequest *)v7 setContextID:contextID];

  [(EvaluationRequest *)v7 setCustomUI:[(EvaluationRequest *)self customUI]];
  dtoAnalytics = [(EvaluationRequest *)self dtoAnalytics];
  [(EvaluationRequest *)v7 setDtoAnalytics:dtoAnalytics];

  dtoEnvironment = [(EvaluationRequest *)self dtoEnvironment];
  [(EvaluationRequest *)v7 setDtoEnvironment:dtoEnvironment];

  dtoRequestIdentifier = [(EvaluationRequest *)self dtoRequestIdentifier];
  [(EvaluationRequest *)v7 setDtoRequestIdentifier:dtoRequestIdentifier];

  [(EvaluationRequest *)v7 setEvaluationUserId:[(EvaluationRequest *)self evaluationUserId]];
  externalizedContext = [(EvaluationRequest *)self externalizedContext];
  [(EvaluationRequest *)v7 setExternalizedContext:externalizedContext];

  [(EvaluationRequest *)v7 setImmediateSuccess:[(EvaluationRequest *)self isImmediateSuccess]];
  options = [(EvaluationRequest *)self options];
  v19 = [options copy];
  [(EvaluationRequest *)v7 setOptions:v19];

  payload = [(EvaluationRequest *)self payload];
  v21 = [payload copy];
  [(EvaluationRequest *)v7 setPayload:v21];

  [(EvaluationRequest *)v7 setPolicy:[(EvaluationRequest *)self policy]];
  [(EvaluationRequest *)v7 setPurpose:[(EvaluationRequest *)self purpose]];
  [(EvaluationRequest *)v7 setSecureIntentRequested:[(EvaluationRequest *)self secureIntentRequested]];
  serviceLocator = [(Request *)self serviceLocator];
  [(Request *)v7 setServiceLocator:serviceLocator];

  return v7;
}

- (void)updatePayload:(id)payload
{
  payloadCopy = payload;
  v4 = +[DaemonUtils queue];
  dispatch_assert_queue_V2(v4);

  [(EvaluationRequest *)self setPayload:payloadCopy];
  v5 = [payloadCopy objectForKeyedSubscript:*MEMORY[0x277D23EE0]];
  if (v5)
  {
    objc_storeStrong(&self->_dtoEnvironment, v5);
  }

  v6 = [payloadCopy objectForKeyedSubscript:*MEMORY[0x277D23EE8]];
  if (v6)
  {
    objc_storeStrong(&self->_dtoRequestIdentifier, v6);
  }

  v7 = MEMORY[0x277D240C0];
  policy = [(EvaluationRequest *)self policy];
  options = [(EvaluationRequest *)self options];
  if ([v7 isDTOPolicy:policy options:options])
  {
    v10 = [(EvaluationRequest *)self acl];

    if (!v10)
    {
      [(EvaluationRequest *)self _updateDTOStatus];
    }
  }

  else
  {
  }
}

- (void)_updateDTOStatus
{
  v11 = *MEMORY[0x277D85DE8];
  dtoEnvironment = self->_dtoEnvironment;
  v4 = [(Request *)self log];
  dtoAnalytics = v4;
  if (dtoEnvironment)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = self->_dtoEnvironment;
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_238B7F000, &dtoAnalytics->super.super, OS_LOG_TYPE_DEFAULT, "Received DTO environment: %@", &v9, 0xCu);
    }

    v7 = [[LAAnalyticsDTO alloc] initWithEvaluationRequest:self];
    dtoAnalytics = self->_dtoAnalytics;
    self->_dtoAnalytics = v7;
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(EvaluationRequest *)&dtoAnalytics->super.super _updateDTOStatus];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)isPurposeInAppPayment
{
  isPurposeApplePay = [(EvaluationRequest *)self isPurposeApplePay];
  if (isPurposeApplePay)
  {
    LOBYTE(isPurposeApplePay) = [(EvaluationRequest *)self policy]!= 1004;
  }

  return isPurposeApplePay;
}

- (BOOL)isRecoveringFromBiolockout
{
  v2 = MEMORY[0x277CD47F0];
  retryingForError = [(EvaluationRequest *)self retryingForError];
  LOBYTE(v2) = [v2 error:retryingForError hasCode:-8];

  return v2;
}

@end