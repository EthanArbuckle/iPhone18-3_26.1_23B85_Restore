@interface ContextPlugin
+ (void)pluginWithExternalizedContext:(id)a3 reply:(id)a4;
- (ContextPlugin)initWithContextOwner:(BOOL)a3 underlyingPtr:(void *)a4 flags:(int64_t)a5 moduleRef:(id)a6;
- (id)createInternalInfo:(id)a3 skipCallerIdentification:(BOOL)a4 callerBundleId:(id)a5 request:(id)a6 originator:(id)a7;
- (id)createInternalInfoWithPolicy:(int64_t)a3 policyOptions:(id)a4 request:(id)a5 originator:(id)a6;
- (void)authMethodWithReply:(id)a3;
- (void)checkCredentialSatisfied:(int64_t)a3 policy:(int64_t)a4 reply:(id)a5;
- (void)credentialEncodingSeedWithReply:(id)a3;
- (void)credentialOfType:(int64_t)a3 originator:(id)a4 reply:(id)a5;
- (void)credentialsUUIDWithOriginator:(id)a3 reply:(id)a4;
- (void)evaluateACL:(id)a3 operation:(id)a4 options:(id)a5 uiDelegate:(id)a6 originator:(id)a7 request:(id)a8 reply:(id)a9;
- (void)evaluatePolicy:(int64_t)a3 options:(id)a4 uiDelegate:(id)a5 originator:(id)a6 request:(id)a7 reply:(id)a8;
- (void)evaluateRequest:(id)a3 uiDelegate:(id)a4 originator:(id)a5 reply:(id)a6;
- (void)externalizedContextWithReply:(id)a3;
- (void)isCredentialSet:(int64_t)a3 originator:(id)a4 reply:(id)a5;
- (void)optionsForInternalOperation:(int64_t)a3 originator:(id)a4 reply:(id)a5;
- (void)pauseProcessedEvent:(int64_t)a3 pause:(BOOL)a4 reply:(id)a5;
- (void)performOp:(id)a3 reply:(id)a4;
- (void)resetEvent:(int64_t)a3 originator:(id)a4 reply:(id)a5;
- (void)retryEvent:(int64_t)a3 originator:(id)a4 reply:(id)a5;
- (void)setCredential:(id)a3 type:(int64_t)a4 options:(id)a5 originator:(id)a6 reply:(id)a7;
- (void)setCredentialsUUID:(id)a3 originator:(id)a4 reply:(id)a5;
- (void)setOptions:(id)a3 forInternalOperation:(int64_t)a4 originator:(id)a5 reply:(id)a6;
- (void)setShowingCoachingHint:(BOOL)a3 event:(int64_t)a4 originator:(id)a5 reply:(id)a6;
- (void)verifyFileVaultUser:(id)a3 volumeUuid:(id)a4 options:(unint64_t)a5 reply:(id)a6;
@end

@implementation ContextPlugin

+ (void)pluginWithExternalizedContext:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = [Module missingSubclassErrorWithIdentifier:@"moduleWithExternalizedContext"];
  (*(a4 + 2))(v5, 0, v6);
}

- (ContextPlugin)initWithContextOwner:(BOOL)a3 underlyingPtr:(void *)a4 flags:(int64_t)a5 moduleRef:(id)a6
{
  v7 = a5;
  v11 = a6;
  v22.receiver = self;
  v22.super_class = ContextPlugin;
  v12 = [(ContextPlugin *)&v22 init];
  v13 = v12;
  if (v12)
  {
    v12->_contextOwner = a3;
    v14 = [objc_alloc(MEMORY[0x277D24018]) initWithExternalizationDelegate:v12];
    cachedExternalizedContext = v13->_cachedExternalizedContext;
    v13->_cachedExternalizedContext = v14;

    resultInfo = v13->_resultInfo;
    v13->_resultInfo = MEMORY[0x277CBEC10];

    v17 = objc_opt_new();
    internalOperationOptions = v13->_internalOperationOptions;
    v13->_internalOperationOptions = v17;

    v13->_underlyingPtr = a4;
    objc_storeStrong(&v13->_module, a6);
    v19 = [MEMORY[0x277CBEAA8] now];
    creationTime = v13->_creationTime;
    v13->_creationTime = v19;

    v13->_disposable = (v7 & 1) == 0;
  }

  return v13;
}

- (id)createInternalInfoWithPolicy:(int64_t)a3 policyOptions:(id)a4 request:(id)a5 originator:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = -[ContextPlugin createInternalInfo:skipCallerIdentification:callerBundleId:request:originator:](self, "createInternalInfo:skipCallerIdentification:callerBundleId:request:originator:", v12, [v11 isPurposeApplePay], 0, v11, v10);

  if (a3)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [v13 setObject:v14 forKey:@"Policy"];
  }

  return v13;
}

- (id)createInternalInfo:(id)a3 skipCallerIdentification:(BOOL)a4 callerBundleId:(id)a5 request:(id)a6 originator:(id)a7
{
  v11 = a3;
  v12 = a5;
  v56 = a6;
  v13 = a7;
  v14 = objc_opt_new();
  v57 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v11];
  v58 = [v13 processId];
  v15 = [v11 objectForKeyedSubscript:&unk_284B7A808];
  if (v15 && [v13 checkEntitlement:@"com.apple.private.LocalAuthentication.CallerPID"])
  {
    v58 = [v15 intValue];
  }

  v55 = v15;
  if (!a4)
  {
    v16 = [v11 objectForKey:&unk_284B7A820];
    v17 = [v16 BOOLValue];

    if ((v17 & 1) == 0)
    {
      v19 = MEMORY[0x277CD47C8];
      if (v13)
      {
        [v13 auditToken];
      }

      else
      {
        v65 = 0u;
        v66 = 0u;
      }

      v64 = v12;
      v20 = [v19 callerDisplayNameWithPid:v58 auditToken:&v65 bundleId:&v64];
      v18 = v64;

      v21 = [v11 objectForKeyedSubscript:&unk_284B7A838];
      if (v21 && [v13 checkEntitlement:@"com.apple.private.LocalAuthentication.CallerName"])
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
      v25 = [v56 analyticsData];
      v26 = [v25 biomeDialogEvent];
      [v26 setBundleID:v23];

      goto LABEL_21;
    }
  }

  v18 = v12;
LABEL_22:
  v27 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277D23F70]];
  v28 = [v11 objectForKeyedSubscript:v27];

  if (v28 && ([v13 checkEntitlement:@"com.apple.private.LocalAuthentication.CallerAuditToken"] & 1) != 0)
  {
    v29 = [v11 objectForKeyedSubscript:&unk_284B7A850];
    v30 = [v29 integerValue];

    if ((v30 & 2) != 0)
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
      v31 = [v37 callerDisplayNameWithPid:v58 auditToken:&v65 bundleId:&v61];
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
  if (v13)
  {
    [v13 auditToken];
  }

  else
  {
    v65 = 0u;
    v66 = 0u;
  }

  v33 = [v32 initWithRawValue:&v65];
  v34 = [v33 data];

  v31 = 0;
  v35 = 0;
  v36 = 0;
  v28 = v34;
  if (v34)
  {
    goto LABEL_32;
  }

LABEL_33:
  v53 = v36;
  if (([v18 isEqualToString:@"com.apple.siri"] & 1) != 0 || objc_msgSend(v35, "isEqualToString:", @"com.apple.siri"))
  {
    [v14 setObject:MEMORY[0x277CBEC38] forKey:@"SiriPlugin"];
  }

  v38 = [v13 checkEntitlement:@"com.apple.private.CoreAuthentication.BackgroundUI"];
  v39 = [v11 objectForKeyedSubscript:&unk_284B7A820];
  v40 = [v39 BOOLValue];

  if (v40)
  {
    v41 = self;
  }

  else
  {
    v41 = self;
    if (v18 && (v38 & 1) == 0)
    {
      if (([MEMORY[0x277CD4808] callerRunningOnForeground:v18 pid:v58] & 1) == 0)
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
  if ([(NSMutableDictionary *)v41->_internalOperationOptions count])
  {
    [v14 setObject:v41->_internalOperationOptions forKey:@"InternalOperationOptions"];
  }

  [v14 setObject:v57 forKey:@"Options"];
  if (v38)
  {
    [v14 setObject:MEMORY[0x277CBEC38] forKey:@"BackgroundUi"];
  }

  if ([v13 cApiOrigin])
  {
    [v14 setObject:MEMORY[0x277CBEC38] forKey:@"CApiOrigin"];
  }

  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __95__ContextPlugin_createInternalInfo_skipCallerIdentification_callerBundleId_request_originator___block_invoke_2;
  v59[3] = &unk_278A645D8;
  v42 = v56;
  v60 = v42;
  v43 = __95__ContextPlugin_createInternalInfo_skipCallerIdentification_callerBundleId_request_originator___block_invoke_2(v59);
  [v14 setObject:v43 forKey:@"DTOOptions"];

  v44 = [v11 objectForKeyedSubscript:&unk_284B7A868];
  if (v44)
  {
    [v14 setObject:v44 forKey:@"UserId"];
  }

  else
  {
    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v13, "userId")}];
    [v14 setObject:v45 forKey:@"UserId"];
  }

  v46 = [MEMORY[0x277CCABB0] numberWithInt:v58];
  [v14 setObject:v46 forKey:@"ProcessId"];

  v47 = [v42 payload];
  v48 = [v47 mutableCopy];
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

- (void)evaluateRequest:(id)a3 uiDelegate:(id)a4 originator:(id)a5 reply:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v13 acl];

  if (v14)
  {
    v18 = [v13 acl];
    v15 = [v13 aclOperation];
    v16 = [v13 options];
    [(ContextPlugin *)self evaluateACL:v18 operation:v15 options:v16 uiDelegate:v12 originator:v11 request:v13 reply:v10];

    v10 = v12;
    v11 = v13;
    v12 = v16;
    v13 = v15;
  }

  else
  {
    v17 = [v13 policy];
    v18 = [v13 options];
    [ContextPlugin evaluatePolicy:"evaluatePolicy:options:uiDelegate:originator:request:reply:" options:v17 uiDelegate:? originator:? request:? reply:?];
  }
}

- (void)evaluatePolicy:(int64_t)a3 options:(id)a4 uiDelegate:(id)a5 originator:(id)a6 request:(id)a7 reply:(id)a8
{
  v9 = a8;
  v10 = [Module missingSubclassErrorWithIdentifier:@"evaluatePolicy:"];
  (*(a8 + 2))(v9, 0, v10);
}

- (void)evaluateACL:(id)a3 operation:(id)a4 options:(id)a5 uiDelegate:(id)a6 originator:(id)a7 request:(id)a8 reply:(id)a9
{
  v9 = a9;
  v10 = [Module missingSubclassErrorWithIdentifier:@"evaluateACL:"];
  (*(a9 + 2))(v9, 0, v10);
}

- (void)isCredentialSet:(int64_t)a3 originator:(id)a4 reply:(id)a5
{
  v6 = a5;
  v7 = [Module missingSubclassErrorWithIdentifier:@"isCredentialSet:"];
  (*(a5 + 2))(v6, 0, v7);
}

- (void)setCredential:(id)a3 type:(int64_t)a4 options:(id)a5 originator:(id)a6 reply:(id)a7
{
  v8 = a7;
  v9 = [Module missingSubclassErrorWithIdentifier:@"setCredential:"];
  (*(a7 + 2))(v8, 0, v9);
}

- (void)credentialOfType:(int64_t)a3 originator:(id)a4 reply:(id)a5
{
  v6 = a5;
  v7 = [Module missingSubclassErrorWithIdentifier:@"credentialOfType:"];
  (*(a5 + 2))(v6, 0, v7);
}

- (void)checkCredentialSatisfied:(int64_t)a3 policy:(int64_t)a4 reply:(id)a5
{
  v6 = a5;
  v7 = [Module missingSubclassErrorWithIdentifier:@"checkCredentialSatisfied:"];
  (*(a5 + 2))(v6, 0, v7);
}

- (void)credentialsUUIDWithOriginator:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = [Module missingSubclassErrorWithIdentifier:@"credentialsUUID"];
  (*(a4 + 2))(v5, 0, v6);
}

- (void)setCredentialsUUID:(id)a3 originator:(id)a4 reply:(id)a5
{
  v6 = a5;
  v7 = [Module missingSubclassErrorWithIdentifier:@"setCredentialsUUID:originator:"];
  (*(a5 + 2))(v6, 0, v7);
}

- (void)credentialEncodingSeedWithReply:(id)a3
{
  v4 = a3;
  v5 = [Module missingSubclassErrorWithIdentifier:@"credentialEncodingSeedWithReply:"];
  (*(a3 + 2))(v4, 0, v5);
}

- (void)optionsForInternalOperation:(int64_t)a3 originator:(id)a4 reply:(id)a5
{
  internalOperationOptions = self->_internalOperationOptions;
  v8 = MEMORY[0x277CCABB0];
  v9 = a5;
  v11 = [v8 numberWithInteger:a3];
  v10 = [(NSMutableDictionary *)internalOperationOptions objectForKeyedSubscript:v11];
  (*(a5 + 2))(v9, v10, 0);
}

- (void)setOptions:(id)a3 forInternalOperation:(int64_t)a4 originator:(id)a5 reply:(id)a6
{
  v13 = a3;
  internalOperationOptions = self->_internalOperationOptions;
  v10 = MEMORY[0x277CCABB0];
  v11 = a6;
  v12 = [v10 numberWithInteger:a4];
  if (v13)
  {
    [(NSMutableDictionary *)internalOperationOptions setObject:v13 forKey:v12];
  }

  else
  {
    [(NSMutableDictionary *)internalOperationOptions removeObjectForKey:v12];
  }

  v11[2](v11, 1, 0);
}

- (void)resetEvent:(int64_t)a3 originator:(id)a4 reply:(id)a5
{
  v6 = a5;
  v7 = [Module missingSubclassErrorWithIdentifier:@"resetEvent:originator:"];
  (*(a5 + 2))(v6, 0, v7);
}

- (void)retryEvent:(int64_t)a3 originator:(id)a4 reply:(id)a5
{
  v6 = a5;
  v7 = [Module missingSubclassErrorWithIdentifier:@"retryEvent:originator:"];
  (*(a5 + 2))(v6, 0, v7);
}

- (void)pauseProcessedEvent:(int64_t)a3 pause:(BOOL)a4 reply:(id)a5
{
  v6 = a5;
  v7 = [Module missingSubclassErrorWithIdentifier:@"pauseProcessedEvent:"];
  (*(a5 + 2))(v6, 0, v7);
}

- (void)setShowingCoachingHint:(BOOL)a3 event:(int64_t)a4 originator:(id)a5 reply:(id)a6
{
  v7 = a6;
  v8 = [Module missingSubclassErrorWithIdentifier:@"setShowingCoachingHint"];
  (*(a6 + 2))(v7, 0, v8);
}

- (void)verifyFileVaultUser:(id)a3 volumeUuid:(id)a4 options:(unint64_t)a5 reply:(id)a6
{
  v7 = a6;
  v8 = [Module missingSubclassErrorWithIdentifier:@"verifyFileVaultUser"];
  (*(a6 + 2))(v7, 0, v8);
}

- (void)performOp:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = [Module missingSubclassErrorWithIdentifier:@"performOp:"];
  (*(a4 + 2))(v5, 0, v6);
}

- (void)externalizedContextWithReply:(id)a3
{
  v4 = a3;
  v5 = [Module missingSubclassErrorWithIdentifier:@"externalizedContextWithReply:"];
  (*(a3 + 2))(v4, 0, v5);
}

- (void)authMethodWithReply:(id)a3
{
  v4 = a3;
  v5 = [Module missingSubclassErrorWithIdentifier:@"authMethodWithReply:"];
  (*(a3 + 2))(v4, 0, v5);
}

@end