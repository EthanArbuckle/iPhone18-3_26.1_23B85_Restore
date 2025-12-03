@interface ContextProxy
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)_isPreflightOnCleanContext:(id)context;
- (BOOL)isFirstPartyClient;
- (ContextProxy)initWithContext:(id)context processId:(int)id userId:(unsigned int)userId auditSessionId:(int)sessionId auditToken:(id *)token cApiOrigin:(BOOL)origin checkEntitlementBlock:(id)block invalidationBlock:(id)self0 callback:(id)self1 clientId:(unint64_t)self2;
- (NSString)description;
- (NSString)signingID;
- (id)_analyticsSessionForEvaluationRequest:(id)request;
- (void)_evaluateRequest:(id)request originator:(id)originator preflightKey:(id)key uiDelegate:(id)delegate reply:(id)reply;
- (void)allowTransferToProcess:(int)process receiverAuditTokenData:(id)data reply:(id)reply;
- (void)authMethodWithReply:(id)reply;
- (void)credentialEncodingSeedWithReply:(id)reply;
- (void)credentialOfType:(int64_t)type reply:(id)reply;
- (void)credentialsUUIDWithReply:(id)reply;
- (void)dealloc;
- (void)evaluateACL:(id)l operation:(id)operation options:(id)options uiDelegate:(id)delegate originator:(id)originator reply:(id)reply;
- (void)evaluatePolicy:(int64_t)policy options:(id)options uiDelegate:(id)delegate originator:(id)originator reply:(id)reply;
- (void)externalizedContextWithReply:(id)reply;
- (void)failProcessedEvent:(int64_t)event failureError:(id)error reply:(id)reply;
- (void)getDomainStateWithOptions:(id)options originator:(id)originator reply:(id)reply;
- (void)interruptWithReply:(id)reply;
- (void)invalidateWithError:(id)error;
- (void)invalidateWithReply:(id)reply;
- (void)isCredentialSet:(int64_t)set reply:(id)reply;
- (void)optionsForInternalOperation:(int64_t)operation reply:(id)reply;
- (void)resetProcessedEvent:(int64_t)event reply:(id)reply;
- (void)retryProcessedEvent:(int64_t)event reply:(id)reply;
- (void)serverPropertyForOption:(int64_t)option reply:(id)reply;
- (void)setCredential:(id)credential forProcessedEvent:(int64_t)event credentialType:(int64_t)type reply:(id)reply;
- (void)setCredential:(id)credential type:(int64_t)type options:(id)options reply:(id)reply;
- (void)setCredentialsUUID:(id)d reply:(id)reply;
- (void)setOptions:(id)options forInternalOperation:(int64_t)operation reply:(id)reply;
- (void)setServerPropertyForOption:(int64_t)option value:(id)value reply:(id)reply;
- (void)tokenForTransferToUnknownProcess:(id)process;
- (void)verifyFileVaultUser:(id)user volumeUuid:(id)uuid options:(unint64_t)options reply:(id)reply;
@end

@implementation ContextProxy

- (NSString)description
{
  processId = [(ContextProxy *)self processId];
  clientId = self->_clientId;
  instanceId = [self->_managedContext instanceId];
  plugin = [self->_managedContext plugin];
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"ContextProxy[%u:%u:%u:%u]", processId, clientId, instanceId, [plugin instanceId]);

  return v7;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  result = self->_auditToken;
  if (result)
  {
    return [($115C4C562B26FF47E01F9F4EA65B5887 *)result rawValue];
  }

  *retstr->var0 = 0u;
  *&retstr->var0[4] = 0u;
  return result;
}

- (void)dealloc
{
  v3 = LALogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ deallocated", buf, 0xCu);
  }

  plugin = [self->_managedContext plugin];
  module = [plugin module];
  plugin2 = [self->_managedContext plugin];
  v7 = [NSString stringWithFormat:@"%@ deallocated", self];
  [module untrackProxy:self fromPlugin:plugin2 reason:v7];

  [(ContextProxy *)self interruptWithReply:0];
  v8.receiver = self;
  v8.super_class = ContextProxy;
  [(ContextProxy *)&v8 dealloc];
}

- (ContextProxy)initWithContext:(id)context processId:(int)id userId:(unsigned int)userId auditSessionId:(int)sessionId auditToken:(id *)token cApiOrigin:(BOOL)origin checkEntitlementBlock:(id)block invalidationBlock:(id)self0 callback:(id)self1 clientId:(unint64_t)self2
{
  contextCopy = context;
  blockCopy = block;
  invalidationBlockCopy = invalidationBlock;
  callbackCopy = callback;
  v43.receiver = self;
  v43.super_class = ContextProxy;
  v21 = [(ContextProxy *)&v43 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_managedContext, context);
    v22->_processId = id;
    v22->_userId = userId;
    v22->_auditSessionId = sessionId;
    v23 = [LACAuditToken alloc];
    v24 = *&token->var0[4];
    *buf = *token->var0;
    *&buf[16] = v24;
    v25 = [v23 initWithRawValue:buf];
    auditToken = v22->_auditToken;
    v22->_auditToken = v25;

    v22->_cApiOrigin = origin;
    v27 = objc_retainBlock(blockCopy);
    checkEntitlementBlock = v22->_checkEntitlementBlock;
    v22->_checkEntitlementBlock = v27;

    v29 = objc_retainBlock(invalidationBlockCopy);
    invalidationBlock = v22->_invalidationBlock;
    v22->_invalidationBlock = v29;

    objc_storeStrong(&v22->_callback, callback);
    v22->_originatorId = atomic_fetch_add(&qword_100063058, 1uLL) + 1;
    instanceId = [contextCopy instanceId];
    plugin = [contextCopy plugin];
    v33 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%u:%u", instanceId, [plugin instanceId]);
    proxyId = v22->_proxyId;
    v22->_proxyId = v33;

    v22->_clientId = clientId;
  }

  plugin2 = [contextCopy plugin];
  module = [plugin2 module];
  plugin3 = [contextCopy plugin];
  managedContext = [(ContextProxy *)v22 managedContext];
  [module trackPlugin:plugin3 processId:id proxy:v22 context:managedContext invalidationBlock:invalidationBlockCopy];

  v39 = LALogForCategory();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = v22;
    *&buf[12] = 2114;
    *&buf[14] = contextCopy;
    *&buf[22] = 1024;
    *&buf[24] = userId;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%{public}@ created for %{public}@ uid:%u", buf, 0x1Cu);
  }

  return v22;
}

- (void)interruptWithReply:(id)reply
{
  replyCopy = reply;
  originatorId = [(ContextProxy *)self originatorId];
  v6 = [(ContextProxy *)self description];
  uuid = [self->_managedContext uuid];
  v8 = +[DaemonUtils sharedInstance];
  serverQueue = [v8 serverQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000082B0;
  v13[3] = &unk_1000550E8;
  v16 = replyCopy;
  v17 = originatorId;
  v14 = v6;
  v15 = uuid;
  v10 = uuid;
  v11 = replyCopy;
  v12 = v6;
  dispatch_async(serverQueue, v13);
}

- (void)getDomainStateWithOptions:(id)options originator:(id)originator reply:(id)reply
{
  optionsCopy = options;
  replyCopy = reply;
  managedContext = self->_managedContext;
  if (optionsCopy)
  {
    v11 = optionsCopy;
  }

  else
  {
    v11 = &__NSDictionary0__struct;
  }

  originatorCopy = originator;
  v13 = [managedContext updateOptionsWithServerProperties:v11];
  v14 = [DomainStateRequest alloc];
  uuid = [self->_managedContext uuid];
  v16 = [v14 initWithOptions:v13 client:originatorCopy contextID:uuid];

  v17 = objc_opt_new();
  v18 = +[LACDomainStateProviderBiometry sharedInstance];
  [v17 addObject:v18];

  v19 = +[DaemonServiceLocator sharedInstance];
  companions = [v19 companions];
  [v17 addObject:companions];

  v21 = [[LACDomainStateProvider alloc] initWithProviders:v17];
  LALogCategoryForOptions();
  v22 = LALogForCategory();
  v23 = objc_opt_new();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v34 = v17;
    v35 = 2114;
    v36 = optionsCopy;
    v37 = 2114;
    v38 = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Requesting domain state with providers: %{public}@ options: %{public}@ uuid: %{public}@", buf, 0x20u);
  }

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000086C0;
  v28[3] = &unk_100055110;
  v29 = v22;
  v30 = v23;
  v31 = v21;
  v32 = replyCopy;
  v24 = v21;
  v25 = replyCopy;
  v26 = v23;
  v27 = v22;
  [v24 domainStateForRequest:v16 completion:v28];
}

- (void)evaluatePolicy:(int64_t)policy options:(id)options uiDelegate:(id)delegate originator:(id)originator reply:(id)reply
{
  optionsCopy = options;
  delegateCopy = delegate;
  originatorCopy = originator;
  replyCopy = reply;
  if (optionsCopy)
  {
    v16 = optionsCopy;
  }

  else
  {
    v16 = &__NSDictionary0__struct;
  }

  v17 = [self->_managedContext updateOptionsWithServerProperties:v16];
  v18 = [EvaluationRequest alloc];
  uuid = [self->_managedContext uuid];
  v38 = v17;
  v20 = [v18 initWithPolicy:policy options:v17 uiDelegate:delegateCopy contextID:uuid];

  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100008B6C;
  v43[3] = &unk_100055138;
  v21 = v20;
  v44 = v21;
  v22 = replyCopy;
  v45 = v22;
  v23 = objc_retainBlock(v43);
  if ([(ContextProxy *)self _isPreflightOnCleanContext:optionsCopy])
  {
    v36 = v22;
    v24 = +[PreflightCache sharedInstance];
    if (originatorCopy)
    {
      [originatorCopy auditToken];
    }

    else
    {
      memset(buf, 0, 32);
    }

    v25 = [v24 keyForPreflightOfPolicy:policy options:v16 auditToken:buf uid:{objc_msgSend(originatorCopy, "userId")}];

    if (v25)
    {
      v26 = +[PreflightCache sharedInstance];
      v27 = [v26 cachedPreflightResultForKey:v25];

      if (v27)
      {
        (v23[2])(v23, 0, v27);
        v22 = v36;
        goto LABEL_19;
      }
    }

    v22 = v36;
  }

  else
  {
    v25 = 0;
  }

  v28 = [v21 log];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = delegateCopy == 0;
    selfCopy = self;
    v30 = v23;
    v31 = originatorCopy;
    v32 = delegateCopy;
    v33 = v22;
    v34 = !v29;
    identifier = [v21 identifier];
    *buf = 67110146;
    *&buf[4] = policy;
    *&buf[8] = 2114;
    *&buf[10] = optionsCopy;
    *&buf[18] = 1024;
    *&buf[20] = v34;
    v22 = v33;
    delegateCopy = v32;
    originatorCopy = v31;
    v23 = v30;
    self = selfCopy;
    *&buf[24] = 2114;
    *&buf[26] = selfCopy;
    v47 = 1024;
    v48 = identifier;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "evaluatePolicy:%d options:%{public}@, uiDelegate:%d on %{public}@ rid:%u", buf, 0x28u);
  }

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100008C5C;
  v39[3] = &unk_100055160;
  v40 = v21;
  v25 = v25;
  v41 = v25;
  v42 = v23;
  [(ContextProxy *)self _evaluateRequest:v40 originator:originatorCopy preflightKey:v25 uiDelegate:delegateCopy reply:v39];

  v27 = v40;
LABEL_19:
}

- (void)evaluateACL:(id)l operation:(id)operation options:(id)options uiDelegate:(id)delegate originator:(id)originator reply:(id)reply
{
  lCopy = l;
  operationCopy = operation;
  optionsCopy = options;
  delegateCopy = delegate;
  originatorCopy = originator;
  replyCopy = reply;
  if (optionsCopy)
  {
    v18 = optionsCopy;
  }

  else
  {
    v18 = &__NSDictionary0__struct;
  }

  replyCopy = [self->_managedContext updateOptionsWithServerProperties:v18, replyCopy];
  if ([(ContextProxy *)self _isPreflightOnCleanContext:optionsCopy])
  {
    v19 = +[PreflightCache sharedInstance];
    if (originatorCopy)
    {
      [originatorCopy auditToken];
    }

    else
    {
      memset(buf, 0, 32);
    }

    v21 = lCopy;
    v20 = [v19 keyForPreflightOfACL:lCopy operation:operationCopy options:v18 auditToken:buf uid:{objc_msgSend(originatorCopy, "userId")}];

    if (v20)
    {
      v22 = +[PreflightCache sharedInstance];
      v23 = [v22 cachedPreflightResultForKey:v20];

      if (v23)
      {
        v24 = v32;
        (v32)[2](v32, 0, v23);
        goto LABEL_15;
      }
    }
  }

  else
  {
    v20 = 0;
    v21 = lCopy;
  }

  v25 = [EvaluationRequest alloc];
  uuid = [self->_managedContext uuid];
  v27 = [v25 initWithAcl:v21 operation:operationCopy options:replyCopy uiDelegate:delegateCopy contextID:uuid];

  v28 = [v27 log];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [v21 hash];
    identifier = [v27 identifier];
    *buf = 67110402;
    *&buf[4] = v29;
    *&buf[8] = 2114;
    *&buf[10] = operationCopy;
    *&buf[18] = 2114;
    *&buf[20] = replyCopy;
    *&buf[28] = 1024;
    *&buf[30] = delegateCopy != 0;
    v21 = lCopy;
    v40 = 2114;
    selfCopy = self;
    v42 = 1024;
    v43 = identifier;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "evaluateACL:%x operation:%{public}@ options:%{public}@, uiDelegate:%d on %{public}@ rid:%u", buf, 0x32u);
  }

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000090E4;
  v35[3] = &unk_100055160;
  v36 = v27;
  v20 = v20;
  v37 = v20;
  v24 = v32;
  v38 = v32;
  v23 = v27;
  [(ContextProxy *)self _evaluateRequest:v23 originator:originatorCopy preflightKey:v20 uiDelegate:delegateCopy reply:v35];

LABEL_15:
}

- (void)_evaluateRequest:(id)request originator:(id)originator preflightKey:(id)key uiDelegate:(id)delegate reply:(id)reply
{
  requestCopy = request;
  originatorCopy = originator;
  keyCopy = key;
  delegateCopy = delegate;
  replyCopy = reply;
  v16 = +[DaemonServiceLocator sharedInstance];
  [requestCopy setServiceLocator:v16];

  [requestCopy setClient:originatorCopy];
  externalizedContext = [self->_managedContext externalizedContext];
  [requestCopy setExternalizedContext:externalizedContext];

  v18 = objc_opt_new();
  v19 = [LACAnalyticsProcessor alloc];
  v20 = [(ContextProxy *)self _analyticsSessionForEvaluationRequest:requestCopy];
  v21 = [v19 initWithAnalyticsSession:v20];
  [v18 addObject:v21];

  v22 = +[DaemonServiceLocator sharedInstance];
  sharedMode = [v22 sharedMode];
  processor = [sharedMode processor];
  [v18 addObject:processor];

  v25 = [requestCopy acl];

  if (!v25)
  {
    v26 = +[DaemonServiceLocator sharedInstance];
    v27 = [v26 dto];
    processor2 = [v27 processor];
    [v18 addObject:processor2];
  }

  v29 = +[DaemonServiceLocator sharedInstance];
  companions = [v29 companions];
  processor3 = [companions processor];
  [v18 addObject:processor3];

  v32 = [[EvaluationRequestProcessor alloc] initWithContext:self->_managedContext uiDelegate:delegateCopy];
  [v18 addObject:v32];

  v33 = [LACEvaluationRequestProcessorFactory makeRootProcessorWithSubprocessors:v18];
  objc_initWeak(&location, self);
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100009574;
  v37[3] = &unk_100055188;
  objc_copyWeak(&v40, &location);
  v34 = replyCopy;
  v39 = v34;
  v35 = v33;
  v38 = v35;
  [v35 handleRequest:requestCopy completion:v37];

  objc_destroyWeak(&v40);
  objc_destroyWeak(&location);
}

- (id)_analyticsSessionForEvaluationRequest:(id)request
{
  requestCopy = request;
  serviceLocator = [requestCopy serviceLocator];
  v6 = NSStringFromProtocol(&OBJC_PROTOCOL___LACAnalyticsService);
  v7 = [serviceLocator serviceWithIdentifier:v6];

  managedContext = [(ContextProxy *)self managedContext];
  uuid = [managedContext uuid];
  v10 = [v7 sessionForContextUUID:uuid];

  analyticsData = [requestCopy analyticsData];

  [v10 trackEvaluationAnalytics:analyticsData];

  return v10;
}

- (BOOL)_isPreflightOnCleanContext:(id)context
{
  v4 = [self->_managedContext updateOptionsWithServerProperties:context];
  v5 = [v4 objectForKeyedSubscript:&off_100057EE8];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue && (-[Context plugin](self->_managedContext, "plugin"), v7 = objc_claimAutoreleasedReturnValue(), [v7 resultInfo], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v7, !v9) && os_variant_allows_internal_security_policies())
  {
    v10 = +[NSUserDefaults standardUserDefaults];
    v11 = [v10 persistentDomainForName:NSGlobalDomain];

    v12 = [v11 objectForKeyedSubscript:@"LA.preflightCache.enabled"];
    v13 = v12;
    if (!v12)
    {
      v12 = &__kCFBooleanFalse;
    }

    bOOLValue2 = [v12 BOOLValue];
  }

  else
  {
    bOOLValue2 = 0;
  }

  return bOOLValue2;
}

- (void)failProcessedEvent:(int64_t)event failureError:(id)error reply:(id)reply
{
  errorCopy = error;
  replyCopy = reply;
  v10 = +[Request requestFromCurrentConnection];
  v11 = [v10 log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    eventCopy = event;
    v19 = 2114;
    v20 = errorCopy;
    v21 = 2114;
    selfCopy = self;
    v23 = 1024;
    identifier = [v10 identifier];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "failProcessedEvent:%d failureError:%{public}@ on %{public}@ rid:%u", buf, 0x22u);
  }

  if ([(ContextProxy *)self checkEntitlement:@"com.apple.private.CoreAuthentication.SPI"])
  {
    managedContext = self->_managedContext;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000099F4;
    v14[3] = &unk_1000551B0;
    v15 = v10;
    v16 = replyCopy;
    [managedContext failProcessedEvent:event failureError:errorCopy reply:v14];

    v13 = v15;
  }

  else
  {
    v13 = [LAErrorHelper missingEntitlementError:@"com.apple.private.CoreAuthentication.SPI"];
    (*(replyCopy + 2))(replyCopy, 0, v13);
  }
}

- (void)retryProcessedEvent:(int64_t)event reply:(id)reply
{
  replyCopy = reply;
  v7 = +[Request requestFromCurrentConnection];
  v8 = [v7 log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    eventCopy = event;
    v16 = 2114;
    selfCopy = self;
    v18 = 1024;
    identifier = [v7 identifier];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "retryProcessedEvent:%d on %{public}@ rid:%u", buf, 0x18u);
  }

  if ([(ContextProxy *)self checkEntitlement:@"com.apple.private.CoreAuthentication.SPI"])
  {
    managedContext = self->_managedContext;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100009CB4;
    v11[3] = &unk_1000551B0;
    v12 = v7;
    v13 = replyCopy;
    [managedContext retryEvent:event originator:self reply:v11];

    v10 = v12;
  }

  else
  {
    v10 = [LAErrorHelper missingEntitlementError:@"com.apple.private.CoreAuthentication.SPI"];
    (*(replyCopy + 2))(replyCopy, 0, v10);
  }
}

- (void)resetProcessedEvent:(int64_t)event reply:(id)reply
{
  replyCopy = reply;
  v7 = +[Request requestFromCurrentConnection];
  v8 = [v7 log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    eventCopy = event;
    v16 = 2114;
    selfCopy = self;
    v18 = 1024;
    identifier = [v7 identifier];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "resetProcessedEvent:%d on %{public}@ rid:%u", buf, 0x18u);
  }

  if ([(ContextProxy *)self checkEntitlement:@"com.apple.private.CoreAuthentication.SPI"])
  {
    managedContext = self->_managedContext;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100009F74;
    v11[3] = &unk_1000551B0;
    v12 = v7;
    v13 = replyCopy;
    [managedContext resetEvent:event originator:self reply:v11];

    v10 = v12;
  }

  else
  {
    v10 = [LAErrorHelper missingEntitlementError:@"com.apple.private.CoreAuthentication.SPI"];
    (*(replyCopy + 2))(replyCopy, 0, v10);
  }
}

- (void)setCredential:(id)credential forProcessedEvent:(int64_t)event credentialType:(int64_t)type reply:(id)reply
{
  credentialCopy = credential;
  replyCopy = reply;
  v12 = +[Request requestFromCurrentConnection];
  v13 = [v12 log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    eventCopy = event;
    v21 = 1024;
    typeCopy = type;
    v23 = 2114;
    selfCopy = self;
    v25 = 1024;
    identifier = [v12 identifier];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "setCredential:forProcessedEvent:%d credentialType:%d on %{public}@ rid:%u", buf, 0x1Eu);
  }

  if (credentialCopy && ![(ContextProxy *)self checkEntitlement:@"com.apple.private.CoreAuthentication.SPI"])
  {
    v15 = [LAErrorHelper missingEntitlementError:@"com.apple.private.CoreAuthentication.SPI"];
    replyCopy[2](replyCopy, 0, v15);
  }

  else
  {
    managedContext = self->_managedContext;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000A7F4;
    v16[3] = &unk_1000551B0;
    v17 = v12;
    v18 = replyCopy;
    [managedContext setCredential:credentialCopy forProcessedEvent:event credentialType:type reply:v16];

    v15 = v17;
  }
}

- (void)isCredentialSet:(int64_t)set reply:(id)reply
{
  replyCopy = reply;
  v7 = +[Request requestFromCurrentConnection];
  v8 = [v7 log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    setCopy = set;
    v17 = 2114;
    selfCopy = self;
    v19 = 1024;
    identifier = [v7 identifier];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "isCredentialSet:%d on %{public}@ rid:%u", buf, 0x18u);
  }

  managedContext = self->_managedContext;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000AA6C;
  v12[3] = &unk_1000551B0;
  v13 = v7;
  v14 = replyCopy;
  v10 = replyCopy;
  v11 = v7;
  [managedContext isCredentialSet:set originator:self reply:v12];
}

- (void)setCredential:(id)credential type:(int64_t)type options:(id)options reply:(id)reply
{
  credentialCopy = credential;
  optionsCopy = options;
  replyCopy = reply;
  v13 = +[Request requestFromCurrentConnection];
  v14 = [v13 log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    typeCopy = type;
    v23 = 2114;
    v24 = optionsCopy;
    v25 = 2114;
    selfCopy = self;
    v27 = 1024;
    identifier = [v13 identifier];
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "setCredential:type:%d options:%{public}@ on %{public}@ rid:%u", buf, 0x22u);
  }

  if (type == -6)
  {
    if (![(ContextProxy *)self checkEntitlement:@"com.apple.private.LocalAuthentication.RGBCapture"])
    {
      v15 = @"com.apple.private.LocalAuthentication.RGBCapture";
      goto LABEL_10;
    }
  }

  else if (type == -1 && ![(ContextProxy *)self checkEntitlement:@"com.apple.private.CoreAuthentication.SPI"])
  {
    v15 = @"com.apple.private.CoreAuthentication.SPI";
LABEL_10:
    v17 = [LAErrorHelper missingEntitlementError:v15];
    replyCopy[2](replyCopy, 0, v17);
    goto LABEL_11;
  }

  managedContext = self->_managedContext;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000AD9C;
  v18[3] = &unk_1000551B0;
  v19 = v13;
  v20 = replyCopy;
  [managedContext setCredential:credentialCopy type:type options:optionsCopy originator:self reply:v18];

  v17 = v19;
LABEL_11:
}

- (void)invalidateWithReply:(id)reply
{
  replyCopy = reply;
  v5 = +[Request requestFromCurrentConnection];
  v6 = [v5 log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v14 = 1024;
    identifier = [v5 identifier];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "invalidateWithReply on %{public}@ rid:%u", buf, 0x12u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000AFF0;
  v9[3] = &unk_1000551D8;
  v10 = v5;
  v11 = replyCopy;
  v7 = replyCopy;
  v8 = v5;
  [(ContextProxy *)self interruptWithReply:v9];
}

- (void)credentialOfType:(int64_t)type reply:(id)reply
{
  replyCopy = reply;
  v7 = +[Request requestFromCurrentConnection];
  v8 = [v7 log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    typeCopy = type;
    v17 = 2114;
    selfCopy = self;
    v19 = 1024;
    identifier = [v7 identifier];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "credentialOfType:%d on %{public}@ rid:%u", buf, 0x18u);
  }

  managedContext = self->_managedContext;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000B234;
  v12[3] = &unk_100055200;
  v13 = v7;
  v14 = replyCopy;
  v10 = replyCopy;
  v11 = v7;
  [managedContext credentialOfType:type originator:self reply:v12];
}

- (void)setCredentialsUUID:(id)d reply:(id)reply
{
  replyCopy = reply;
  dCopy = d;
  v8 = +[Request requestFromCurrentConnection];
  v9 = [v8 log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v18 = 1024;
    identifier = [v8 identifier];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "setCredentialsUUID on %{public}@ rid:%u", buf, 0x12u);
  }

  managedContext = self->_managedContext;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000B4D8;
  v13[3] = &unk_1000551B0;
  v14 = v8;
  v15 = replyCopy;
  v11 = replyCopy;
  v12 = v8;
  [managedContext setCredentialsUUID:dCopy originator:self reply:v13];
}

- (void)credentialsUUIDWithReply:(id)reply
{
  replyCopy = reply;
  v5 = +[Request requestFromCurrentConnection];
  v6 = [v5 log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v15 = 1024;
    identifier = [v5 identifier];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "credentialsUUID on %{public}@ rid:%u", buf, 0x12u);
  }

  managedContext = self->_managedContext;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000B74C;
  v10[3] = &unk_100055228;
  v11 = v5;
  v12 = replyCopy;
  v8 = replyCopy;
  v9 = v5;
  [managedContext credentialsUUIDWithOriginator:self reply:v10];
}

- (void)credentialEncodingSeedWithReply:(id)reply
{
  replyCopy = reply;
  v5 = +[Request requestFromCurrentConnection];
  v6 = [v5 log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v15 = 1024;
    identifier = [v5 identifier];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "credentialEncodingSeed on %{public}@ rid:%u", buf, 0x12u);
  }

  managedContext = self->_managedContext;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000B9CC;
  v10[3] = &unk_100055200;
  v11 = v5;
  v12 = replyCopy;
  v8 = replyCopy;
  v9 = v5;
  [managedContext credentialEncodingSeedWithReply:v10];
}

- (void)optionsForInternalOperation:(int64_t)operation reply:(id)reply
{
  replyCopy = reply;
  v7 = +[Request requestFromCurrentConnection];
  v8 = [v7 log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    operationCopy = operation;
    v17 = 2114;
    selfCopy = self;
    v19 = 1024;
    identifier = [v7 identifier];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "optionsForInternalOperation:%d on %{public}@ rid:%u", buf, 0x18u);
  }

  managedContext = self->_managedContext;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000BC6C;
  v12[3] = &unk_100055250;
  v13 = v7;
  v14 = replyCopy;
  v10 = replyCopy;
  v11 = v7;
  [managedContext optionsForInternalOperation:operation originator:self reply:v12];
}

- (void)setOptions:(id)options forInternalOperation:(int64_t)operation reply:(id)reply
{
  optionsCopy = options;
  replyCopy = reply;
  v10 = +[Request requestFromCurrentConnection];
  v11 = [v10 log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    v19 = [optionsCopy hash];
    v20 = 1024;
    operationCopy = operation;
    v22 = 2114;
    selfCopy = self;
    v24 = 1024;
    identifier = [v10 identifier];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "setOptions:%u forInternalOperation:%d on %{public}@ rid:%u", buf, 0x1Eu);
  }

  managedContext = self->_managedContext;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000BF54;
  v15[3] = &unk_1000551B0;
  v16 = v10;
  v17 = replyCopy;
  v13 = replyCopy;
  v14 = v10;
  [managedContext setOptions:optionsCopy forInternalOperation:operation originator:self reply:v15];
}

- (void)serverPropertyForOption:(int64_t)option reply:(id)reply
{
  replyCopy = reply;
  v7 = +[Request requestFromCurrentConnection];
  v8 = [v7 log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    optionCopy = option;
    v17 = 2114;
    selfCopy = self;
    v19 = 1024;
    identifier = [v7 identifier];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "serverPropertyForOption:%d on %{public}@ rid:%u", buf, 0x18u);
  }

  managedContext = self->_managedContext;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000C1C8;
  v12[3] = &unk_100055250;
  v13 = v7;
  v14 = replyCopy;
  v10 = replyCopy;
  v11 = v7;
  [managedContext serverPropertyForOption:option reply:v12];
}

- (void)setServerPropertyForOption:(int64_t)option value:(id)value reply:(id)reply
{
  valueCopy = value;
  replyCopy = reply;
  v10 = +[Request requestFromCurrentConnection];
  v11 = [v10 log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    optionCopy = option;
    v20 = 2114;
    v21 = valueCopy;
    v22 = 2114;
    selfCopy = self;
    v24 = 1024;
    identifier = [v10 identifier];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "setServerPropertyForOption:%d value:%{public}@ on %{public}@ rid:%u", buf, 0x22u);
  }

  managedContext = self->_managedContext;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000C45C;
  v15[3] = &unk_1000551B0;
  v16 = v10;
  v17 = replyCopy;
  v13 = replyCopy;
  v14 = v10;
  [managedContext setServerPropertyForOption:option value:valueCopy reply:v15];
}

- (void)externalizedContextWithReply:(id)reply
{
  replyCopy = reply;
  v5 = +[Request requestFromCurrentConnection];
  v6 = [v5 log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v15 = 1024;
    identifier = [v5 identifier];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "externalizedContextWithReply on %{public}@ rid:%u", buf, 0x12u);
  }

  managedContext = self->_managedContext;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000C6B4;
  v10[3] = &unk_100055200;
  v11 = v5;
  v12 = replyCopy;
  v8 = replyCopy;
  v9 = v5;
  [managedContext externalizedContextWithReply:v10];
}

- (void)authMethodWithReply:(id)reply
{
  replyCopy = reply;
  v5 = +[Request requestFromCurrentConnection];
  v6 = [v5 log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v15 = 1024;
    identifier = [v5 identifier];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "authMethodWithReply on %{public}@ rid:%u", buf, 0x12u);
  }

  managedContext = self->_managedContext;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000C948;
  v10[3] = &unk_100055200;
  v11 = v5;
  v12 = replyCopy;
  v8 = replyCopy;
  v9 = v5;
  [managedContext authMethodWithReply:v10];
}

- (void)verifyFileVaultUser:(id)user volumeUuid:(id)uuid options:(unint64_t)options reply:(id)reply
{
  userCopy = user;
  uuidCopy = uuid;
  replyCopy = reply;
  v13 = +[Request requestFromCurrentConnection];
  v14 = [v13 log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544386;
    v22 = userCopy;
    v23 = 2114;
    v24 = uuidCopy;
    v25 = 1024;
    optionsCopy = options;
    v27 = 2114;
    selfCopy = self;
    v29 = 1024;
    identifier = [v13 identifier];
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "verifyFileVaultUser:%{public}@ volumeUuid:%{public}@, options:%u on %{public}@ rid:%u", buf, 0x2Cu);
  }

  managedContext = self->_managedContext;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000CC3C;
  v18[3] = &unk_1000551B0;
  v19 = v13;
  v20 = replyCopy;
  v16 = replyCopy;
  v17 = v13;
  [managedContext verifyFileVaultUser:userCopy volumeUuid:uuidCopy options:options reply:v18];
}

- (void)allowTransferToProcess:(int)process receiverAuditTokenData:(id)data reply:(id)reply
{
  dataCopy = data;
  replyCopy = reply;
  v10 = +[Request requestFromCurrentConnection];
  v11 = [v10 log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    processCopy = process;
    v21 = 1024;
    v22 = [dataCopy hash];
    v23 = 2114;
    selfCopy = self;
    v25 = 1024;
    identifier = [v10 identifier];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "allowTransferToProcess:%d receiverAuditTokenData:%x on %{public}@ rid:%u", buf, 0x1Eu);
  }

  managedContext = self->_managedContext;
  caller = [v10 caller];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000CEF4;
  v16[3] = &unk_1000551B0;
  v17 = v10;
  v18 = replyCopy;
  v14 = replyCopy;
  v15 = v10;
  [managedContext allowTransferFromCaller:caller receiverAuditTokenData:dataCopy reply:v16];
}

- (void)tokenForTransferToUnknownProcess:(id)process
{
  processCopy = process;
  v5 = +[Request requestFromCurrentConnection];
  v6 = [v5 log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v16 = 1024;
    identifier = [v5 identifier];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "tokenForTransferToUnknownProcess on %{public}@ rid:%u", buf, 0x12u);
  }

  managedContext = self->_managedContext;
  caller = [v5 caller];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000D164;
  v11[3] = &unk_100055200;
  v12 = v5;
  v13 = processCopy;
  v9 = processCopy;
  v10 = v5;
  [managedContext tokenForTransferFromCaller:caller reply:v11];
}

- (void)invalidateWithError:(id)error
{
  [(LACContextCallbackXPC *)self->_callback invalidatedWithError:error];
  invalidationBlock = self->_invalidationBlock;
  if (invalidationBlock)
  {
    invalidationBlock[2]();
    v5 = self->_invalidationBlock;
    self->_invalidationBlock = 0;
  }
}

- (BOOL)isFirstPartyClient
{
  v2 = [(LACAuditToken *)self->_auditToken belongsToPlatformBinary:0];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (NSString)signingID
{
  v2 = [(LACAuditToken *)self->_auditToken signingID:0];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1000571B0;
  }

  v5 = v4;

  return &v4->isa;
}

@end