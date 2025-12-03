@interface ContextPlugin
+ (void)pluginWithExternalizedContext:(id)context reply:(id)reply;
- (ContextPlugin)initWithContextOwner:(BOOL)owner underlyingPtr:(void *)ptr flags:(int64_t)flags moduleRef:(id)ref;
- (id)createInternalInfo:(id)info skipCallerIdentification:(BOOL)identification callerBundleId:(id)id request:(id)request originator:(id)originator;
- (id)createInternalInfoWithPolicy:(int64_t)policy policyOptions:(id)options request:(id)request originator:(id)originator;
- (void)authMethodWithReply:(id)reply;
- (void)checkCredentialSatisfied:(int64_t)satisfied policy:(int64_t)policy reply:(id)reply;
- (void)credentialEncodingSeedWithReply:(id)reply;
- (void)credentialOfType:(int64_t)type originator:(id)originator reply:(id)reply;
- (void)credentialsUUIDWithOriginator:(id)originator reply:(id)reply;
- (void)evaluateACL:(id)l operation:(id)operation options:(id)options uiDelegate:(id)delegate originator:(id)originator request:(id)request reply:(id)reply;
- (void)evaluatePolicy:(int64_t)policy options:(id)options uiDelegate:(id)delegate originator:(id)originator request:(id)request reply:(id)reply;
- (void)evaluateRequest:(id)request uiDelegate:(id)delegate originator:(id)originator reply:(id)reply;
- (void)externalizedContextWithReply:(id)reply;
- (void)isCredentialSet:(int64_t)set originator:(id)originator reply:(id)reply;
- (void)optionsForInternalOperation:(int64_t)operation originator:(id)originator reply:(id)reply;
- (void)pauseProcessedEvent:(int64_t)event pause:(BOOL)pause reply:(id)reply;
- (void)performOp:(id)op reply:(id)reply;
- (void)resetEvent:(int64_t)event originator:(id)originator reply:(id)reply;
- (void)retryEvent:(int64_t)event originator:(id)originator reply:(id)reply;
- (void)setCredential:(id)credential type:(int64_t)type options:(id)options originator:(id)originator reply:(id)reply;
- (void)setCredentialsUUID:(id)d originator:(id)originator reply:(id)reply;
- (void)setOptions:(id)options forInternalOperation:(int64_t)operation originator:(id)originator reply:(id)reply;
- (void)setShowingCoachingHint:(BOOL)hint event:(int64_t)event originator:(id)originator reply:(id)reply;
- (void)verifyFileVaultUser:(id)user volumeUuid:(id)uuid options:(unint64_t)options reply:(id)reply;
@end

@implementation ContextPlugin

+ (void)pluginWithExternalizedContext:(id)context reply:(id)reply
{
  replyCopy = reply;
  v6 = [Module missingSubclassErrorWithIdentifier:@"moduleWithExternalizedContext"];
  (*(reply + 2))(replyCopy, 0, v6);
}

- (ContextPlugin)initWithContextOwner:(BOOL)owner underlyingPtr:(void *)ptr flags:(int64_t)flags moduleRef:(id)ref
{
  flagsCopy = flags;
  refCopy = ref;
  v22.receiver = self;
  v22.super_class = ContextPlugin;
  v12 = [(ContextPlugin *)&v22 init];
  v13 = v12;
  if (v12)
  {
    v12->_contextOwner = owner;
    v14 = [objc_alloc(MEMORY[0x277D24018]) initWithExternalizationDelegate:v12];
    cachedExternalizedContext = v13->_cachedExternalizedContext;
    v13->_cachedExternalizedContext = v14;

    resultInfo = v13->_resultInfo;
    v13->_resultInfo = MEMORY[0x277CBEC10];

    v17 = objc_opt_new();
    internalOperationOptions = v13->_internalOperationOptions;
    v13->_internalOperationOptions = v17;

    v13->_underlyingPtr = ptr;
    objc_storeStrong(&v13->_module, ref);
    v19 = [MEMORY[0x277CBEAA8] now];
    creationTime = v13->_creationTime;
    v13->_creationTime = v19;

    v13->_disposable = (flagsCopy & 1) == 0;
  }

  return v13;
}

- (id)createInternalInfoWithPolicy:(int64_t)policy policyOptions:(id)options request:(id)request originator:(id)originator
{
  originatorCopy = originator;
  requestCopy = request;
  optionsCopy = options;
  v13 = -[ContextPlugin createInternalInfo:skipCallerIdentification:callerBundleId:request:originator:](self, "createInternalInfo:skipCallerIdentification:callerBundleId:request:originator:", optionsCopy, [requestCopy isPurposeApplePay], 0, requestCopy, originatorCopy);

  if (policy)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:policy];
    [v13 setObject:v14 forKey:@"Policy"];
  }

  return v13;
}

- (id)createInternalInfo:(id)info skipCallerIdentification:(BOOL)identification callerBundleId:(id)id request:(id)request originator:(id)originator
{
  infoCopy = info;
  idCopy = id;
  requestCopy = request;
  originatorCopy = originator;
  v14 = objc_opt_new();
  v57 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:infoCopy];
  processId = [originatorCopy processId];
  v15 = [infoCopy objectForKeyedSubscript:&unk_284B7A808];
  if (v15 && [originatorCopy checkEntitlement:@"com.apple.private.LocalAuthentication.CallerPID"])
  {
    processId = [v15 intValue];
  }

  v55 = v15;
  if (!identification)
  {
    v16 = [infoCopy objectForKey:&unk_284B7A820];
    bOOLValue = [v16 BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      v19 = MEMORY[0x277CD47C8];
      if (originatorCopy)
      {
        [originatorCopy auditToken];
      }

      else
      {
        v65 = 0u;
        v66 = 0u;
      }

      v64 = idCopy;
      v20 = [v19 callerDisplayNameWithPid:processId auditToken:&v65 bundleId:&v64];
      v18 = v64;

      v21 = [infoCopy objectForKeyedSubscript:&unk_284B7A838];
      if (v21 && [originatorCopy checkEntitlement:@"com.apple.private.LocalAuthentication.CallerName"])
      {
        v22 = v21;

        v20 = v22;
      }

      else if (!v20)
      {
        v24 = 0;
        if (!v18)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      [v14 setObject:v20 forKey:@"CallerName"];
      if (!v18)
      {
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.internal.%@", v20];
        if (!v23)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_18:
      [v14 setObject:v18 forKey:@"CallerId"];
      v24 = v20;
LABEL_19:
      v23 = v18;
      v20 = v24;
      if (!v23)
      {
LABEL_21:

        goto LABEL_22;
      }

LABEL_20:
      analyticsData = [requestCopy analyticsData];
      biomeDialogEvent = [analyticsData biomeDialogEvent];
      [biomeDialogEvent setBundleID:v23];

      goto LABEL_21;
    }
  }

  v18 = idCopy;
LABEL_22:
  v27 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277D23F70]];
  v28 = [infoCopy objectForKeyedSubscript:v27];

  if (v28 && ([originatorCopy checkEntitlement:@"com.apple.private.LocalAuthentication.CallerAuditToken"] & 1) != 0)
  {
    v29 = [infoCopy objectForKeyedSubscript:&unk_284B7A850];
    integerValue = [v29 integerValue];

    if ((integerValue & 2) != 0)
    {
      v37 = MEMORY[0x277CD47C8];
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __95__ContextPlugin_createInternalInfo_skipCallerIdentification_callerBundleId_request_originator___block_invoke;
      v62[3] = &unk_278A645B0;
      v28 = v28;
      v63 = v28;
      __95__ContextPlugin_createInternalInfo_skipCallerIdentification_callerBundleId_request_originator___block_invoke(v62, &v65);
      v61 = 0;
      v31 = [v37 callerDisplayNameWithPid:processId auditToken:&v65 bundleId:&v61];
    }

    else
    {
      v31 = 0;
    }

LABEL_32:
    [v14 setObject:v28 forKey:@"AuditToken"];
    v35 = v31;
    v36 = v28;
    goto LABEL_33;
  }

  v32 = objc_alloc(MEMORY[0x277D23FF8]);
  if (originatorCopy)
  {
    [originatorCopy auditToken];
  }

  else
  {
    v65 = 0u;
    v66 = 0u;
  }

  v33 = [v32 initWithRawValue:&v65];
  data = [v33 data];

  v31 = 0;
  v35 = 0;
  v36 = 0;
  v28 = data;
  if (data)
  {
    goto LABEL_32;
  }

LABEL_33:
  v53 = v36;
  if (([v18 isEqualToString:@"com.apple.siri"] & 1) != 0 || objc_msgSend(v35, "isEqualToString:", @"com.apple.siri"))
  {
    [v14 setObject:MEMORY[0x277CBEC38] forKey:@"SiriPlugin"];
  }

  v38 = [originatorCopy checkEntitlement:@"com.apple.private.CoreAuthentication.BackgroundUI"];
  v39 = [infoCopy objectForKeyedSubscript:&unk_284B7A820];
  bOOLValue2 = [v39 BOOLValue];

  if (bOOLValue2)
  {
    selfCopy2 = self;
  }

  else
  {
    selfCopy2 = self;
    if (v18 && (v38 & 1) == 0)
    {
      if (([MEMORY[0x277CD4808] callerRunningOnForeground:v18 pid:processId] & 1) == 0)
      {
        if ([MEMORY[0x277CD47C8] callerIsAllowedNonUiExtension:v18])
        {
          v38 = 1;
          goto LABEL_46;
        }

        [v57 setObject:MEMORY[0x277CBEC38] forKey:&unk_284B7A820];
        [v14 setObject:@"Caller is not running foreground." forKey:@"InteractiveError"];
      }

      v38 = 0;
    }
  }

LABEL_46:
  if ([(NSMutableDictionary *)selfCopy2->_internalOperationOptions count])
  {
    [v14 setObject:selfCopy2->_internalOperationOptions forKey:@"InternalOperationOptions"];
  }

  [v14 setObject:v57 forKey:@"Options"];
  if (v38)
  {
    [v14 setObject:MEMORY[0x277CBEC38] forKey:@"BackgroundUi"];
  }

  if ([originatorCopy cApiOrigin])
  {
    [v14 setObject:MEMORY[0x277CBEC38] forKey:@"CApiOrigin"];
  }

  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __95__ContextPlugin_createInternalInfo_skipCallerIdentification_callerBundleId_request_originator___block_invoke_2;
  v59[3] = &unk_278A645D8;
  v42 = requestCopy;
  v60 = v42;
  v43 = __95__ContextPlugin_createInternalInfo_skipCallerIdentification_callerBundleId_request_originator___block_invoke_2(v59);
  [v14 setObject:v43 forKey:@"DTOOptions"];

  v44 = [infoCopy objectForKeyedSubscript:&unk_284B7A868];
  if (v44)
  {
    [v14 setObject:v44 forKey:@"UserId"];
  }

  else
  {
    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(originatorCopy, "userId")}];
    [v14 setObject:v45 forKey:@"UserId"];
  }

  v46 = [MEMORY[0x277CCABB0] numberWithInt:processId];
  [v14 setObject:v46 forKey:@"ProcessId"];

  payload = [v42 payload];
  v48 = [payload mutableCopy];
  v49 = v48;
  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = objc_opt_new();
  }

  v51 = v50;

  [v51 setObject:v14 forKeyedSubscript:*MEMORY[0x277D23EF0]];
  [v42 updatePayload:v51];

  return v14;
}

void __95__ContextPlugin_createInternalInfo_skipCallerIdentification_callerBundleId_request_originator___block_invoke(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = 0u;
  a2[1] = 0u;
  v3 = [MEMORY[0x277CCAE60] valueWithBytes:objc_msgSend(*(a1 + 32) objCType:{"bytes"), "{?=[8I]}"}];
  [v3 getValue:a2];
}

id __95__ContextPlugin_createInternalInfo_skipCallerIdentification_callerBundleId_request_originator___block_invoke_2(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) payload];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D23EE0]];

  v5 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "isStrictModeEnabled")}];
  [v2 setObject:v5 forKeyedSubscript:@"StrictModeEnabled"];

  v6 = MEMORY[0x277CCABB0];
  v7 = [v4 locationState];
  v8 = [v7 rawValue];
  v9 = [v6 numberWithInt:v8 == *MEMORY[0x277D23E48]];
  [v2 setObject:v9 forKeyedSubscript:@"FamiliarLocationsUnavailable"];

  return v2;
}

- (void)evaluateRequest:(id)request uiDelegate:(id)delegate originator:(id)originator reply:(id)reply
{
  replyCopy = reply;
  originatorCopy = originator;
  delegateCopy = delegate;
  requestCopy = request;
  v14 = [requestCopy acl];

  if (v14)
  {
    options2 = [requestCopy acl];
    aclOperation = [requestCopy aclOperation];
    options = [requestCopy options];
    [(ContextPlugin *)self evaluateACL:options2 operation:aclOperation options:options uiDelegate:delegateCopy originator:originatorCopy request:requestCopy reply:replyCopy];

    replyCopy = delegateCopy;
    originatorCopy = requestCopy;
    delegateCopy = options;
    requestCopy = aclOperation;
  }

  else
  {
    policy = [requestCopy policy];
    options2 = [requestCopy options];
    [ContextPlugin evaluatePolicy:"evaluatePolicy:options:uiDelegate:originator:request:reply:" options:policy uiDelegate:? originator:? request:? reply:?];
  }
}

- (void)evaluatePolicy:(int64_t)policy options:(id)options uiDelegate:(id)delegate originator:(id)originator request:(id)request reply:(id)reply
{
  replyCopy = reply;
  v10 = [Module missingSubclassErrorWithIdentifier:@"evaluatePolicy:"];
  (*(reply + 2))(replyCopy, 0, v10);
}

- (void)evaluateACL:(id)l operation:(id)operation options:(id)options uiDelegate:(id)delegate originator:(id)originator request:(id)request reply:(id)reply
{
  replyCopy = reply;
  v10 = [Module missingSubclassErrorWithIdentifier:@"evaluateACL:"];
  (*(reply + 2))(replyCopy, 0, v10);
}

- (void)isCredentialSet:(int64_t)set originator:(id)originator reply:(id)reply
{
  replyCopy = reply;
  v7 = [Module missingSubclassErrorWithIdentifier:@"isCredentialSet:"];
  (*(reply + 2))(replyCopy, 0, v7);
}

- (void)setCredential:(id)credential type:(int64_t)type options:(id)options originator:(id)originator reply:(id)reply
{
  replyCopy = reply;
  v9 = [Module missingSubclassErrorWithIdentifier:@"setCredential:"];
  (*(reply + 2))(replyCopy, 0, v9);
}

- (void)credentialOfType:(int64_t)type originator:(id)originator reply:(id)reply
{
  replyCopy = reply;
  v7 = [Module missingSubclassErrorWithIdentifier:@"credentialOfType:"];
  (*(reply + 2))(replyCopy, 0, v7);
}

- (void)checkCredentialSatisfied:(int64_t)satisfied policy:(int64_t)policy reply:(id)reply
{
  replyCopy = reply;
  v7 = [Module missingSubclassErrorWithIdentifier:@"checkCredentialSatisfied:"];
  (*(reply + 2))(replyCopy, 0, v7);
}

- (void)credentialsUUIDWithOriginator:(id)originator reply:(id)reply
{
  replyCopy = reply;
  v6 = [Module missingSubclassErrorWithIdentifier:@"credentialsUUID"];
  (*(reply + 2))(replyCopy, 0, v6);
}

- (void)setCredentialsUUID:(id)d originator:(id)originator reply:(id)reply
{
  replyCopy = reply;
  v7 = [Module missingSubclassErrorWithIdentifier:@"setCredentialsUUID:originator:"];
  (*(reply + 2))(replyCopy, 0, v7);
}

- (void)credentialEncodingSeedWithReply:(id)reply
{
  replyCopy = reply;
  v5 = [Module missingSubclassErrorWithIdentifier:@"credentialEncodingSeedWithReply:"];
  (*(reply + 2))(replyCopy, 0, v5);
}

- (void)optionsForInternalOperation:(int64_t)operation originator:(id)originator reply:(id)reply
{
  internalOperationOptions = self->_internalOperationOptions;
  v8 = MEMORY[0x277CCABB0];
  replyCopy = reply;
  v11 = [v8 numberWithInteger:operation];
  v10 = [(NSMutableDictionary *)internalOperationOptions objectForKeyedSubscript:v11];
  (*(reply + 2))(replyCopy, v10, 0);
}

- (void)setOptions:(id)options forInternalOperation:(int64_t)operation originator:(id)originator reply:(id)reply
{
  optionsCopy = options;
  internalOperationOptions = self->_internalOperationOptions;
  v10 = MEMORY[0x277CCABB0];
  replyCopy = reply;
  v12 = [v10 numberWithInteger:operation];
  if (optionsCopy)
  {
    [(NSMutableDictionary *)internalOperationOptions setObject:optionsCopy forKey:v12];
  }

  else
  {
    [(NSMutableDictionary *)internalOperationOptions removeObjectForKey:v12];
  }

  replyCopy[2](replyCopy, 1, 0);
}

- (void)resetEvent:(int64_t)event originator:(id)originator reply:(id)reply
{
  replyCopy = reply;
  v7 = [Module missingSubclassErrorWithIdentifier:@"resetEvent:originator:"];
  (*(reply + 2))(replyCopy, 0, v7);
}

- (void)retryEvent:(int64_t)event originator:(id)originator reply:(id)reply
{
  replyCopy = reply;
  v7 = [Module missingSubclassErrorWithIdentifier:@"retryEvent:originator:"];
  (*(reply + 2))(replyCopy, 0, v7);
}

- (void)pauseProcessedEvent:(int64_t)event pause:(BOOL)pause reply:(id)reply
{
  replyCopy = reply;
  v7 = [Module missingSubclassErrorWithIdentifier:@"pauseProcessedEvent:"];
  (*(reply + 2))(replyCopy, 0, v7);
}

- (void)setShowingCoachingHint:(BOOL)hint event:(int64_t)event originator:(id)originator reply:(id)reply
{
  replyCopy = reply;
  v8 = [Module missingSubclassErrorWithIdentifier:@"setShowingCoachingHint"];
  (*(reply + 2))(replyCopy, 0, v8);
}

- (void)verifyFileVaultUser:(id)user volumeUuid:(id)uuid options:(unint64_t)options reply:(id)reply
{
  replyCopy = reply;
  v8 = [Module missingSubclassErrorWithIdentifier:@"verifyFileVaultUser"];
  (*(reply + 2))(replyCopy, 0, v8);
}

- (void)performOp:(id)op reply:(id)reply
{
  replyCopy = reply;
  v6 = [Module missingSubclassErrorWithIdentifier:@"performOp:"];
  (*(reply + 2))(replyCopy, 0, v6);
}

- (void)externalizedContextWithReply:(id)reply
{
  replyCopy = reply;
  v5 = [Module missingSubclassErrorWithIdentifier:@"externalizedContextWithReply:"];
  (*(reply + 2))(replyCopy, 0, v5);
}

- (void)authMethodWithReply:(id)reply
{
  replyCopy = reply;
  v5 = [Module missingSubclassErrorWithIdentifier:@"authMethodWithReply:"];
  (*(reply + 2))(replyCopy, 0, v5);
}

@end