@interface ContextProxy
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)_isPreflightOnCleanContext:(id)a3;
- (BOOL)isFirstPartyClient;
- (ContextProxy)initWithContext:(id)a3 processId:(int)a4 userId:(unsigned int)a5 auditSessionId:(int)a6 auditToken:(id *)a7 cApiOrigin:(BOOL)a8 checkEntitlementBlock:(id)a9 invalidationBlock:(id)a10 callback:(id)a11 clientId:(unint64_t)a12;
- (NSString)description;
- (NSString)signingID;
- (id)_analyticsSessionForEvaluationRequest:(id)a3;
- (void)_evaluateRequest:(id)a3 originator:(id)a4 preflightKey:(id)a5 uiDelegate:(id)a6 reply:(id)a7;
- (void)allowTransferToProcess:(int)a3 receiverAuditTokenData:(id)a4 reply:(id)a5;
- (void)authMethodWithReply:(id)a3;
- (void)credentialEncodingSeedWithReply:(id)a3;
- (void)credentialOfType:(int64_t)a3 reply:(id)a4;
- (void)credentialsUUIDWithReply:(id)a3;
- (void)dealloc;
- (void)evaluateACL:(id)a3 operation:(id)a4 options:(id)a5 uiDelegate:(id)a6 originator:(id)a7 reply:(id)a8;
- (void)evaluatePolicy:(int64_t)a3 options:(id)a4 uiDelegate:(id)a5 originator:(id)a6 reply:(id)a7;
- (void)externalizedContextWithReply:(id)a3;
- (void)failProcessedEvent:(int64_t)a3 failureError:(id)a4 reply:(id)a5;
- (void)getDomainStateWithOptions:(id)a3 originator:(id)a4 reply:(id)a5;
- (void)interruptWithReply:(id)a3;
- (void)invalidateWithError:(id)a3;
- (void)invalidateWithReply:(id)a3;
- (void)isCredentialSet:(int64_t)a3 reply:(id)a4;
- (void)optionsForInternalOperation:(int64_t)a3 reply:(id)a4;
- (void)resetProcessedEvent:(int64_t)a3 reply:(id)a4;
- (void)retryProcessedEvent:(int64_t)a3 reply:(id)a4;
- (void)serverPropertyForOption:(int64_t)a3 reply:(id)a4;
- (void)setCredential:(id)a3 forProcessedEvent:(int64_t)a4 credentialType:(int64_t)a5 reply:(id)a6;
- (void)setCredential:(id)a3 type:(int64_t)a4 options:(id)a5 reply:(id)a6;
- (void)setCredentialsUUID:(id)a3 reply:(id)a4;
- (void)setOptions:(id)a3 forInternalOperation:(int64_t)a4 reply:(id)a5;
- (void)setServerPropertyForOption:(int64_t)a3 value:(id)a4 reply:(id)a5;
- (void)tokenForTransferToUnknownProcess:(id)a3;
- (void)verifyFileVaultUser:(id)a3 volumeUuid:(id)a4 options:(unint64_t)a5 reply:(id)a6;
@end

@implementation ContextProxy

- (NSString)description
{
  v3 = [(ContextProxy *)self processId];
  clientId = self->_clientId;
  v5 = [self->_managedContext instanceId];
  v6 = [self->_managedContext plugin];
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"ContextProxy[%u:%u:%u:%u]", v3, clientId, v5, [v6 instanceId]);

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
    v10 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ deallocated", buf, 0xCu);
  }

  v4 = [self->_managedContext plugin];
  v5 = [v4 module];
  v6 = [self->_managedContext plugin];
  v7 = [NSString stringWithFormat:@"%@ deallocated", self];
  [v5 untrackProxy:self fromPlugin:v6 reason:v7];

  [(ContextProxy *)self interruptWithReply:0];
  v8.receiver = self;
  v8.super_class = ContextProxy;
  [(ContextProxy *)&v8 dealloc];
}

- (ContextProxy)initWithContext:(id)a3 processId:(int)a4 userId:(unsigned int)a5 auditSessionId:(int)a6 auditToken:(id *)a7 cApiOrigin:(BOOL)a8 checkEntitlementBlock:(id)a9 invalidationBlock:(id)a10 callback:(id)a11 clientId:(unint64_t)a12
{
  v18 = a3;
  v19 = a9;
  v20 = a10;
  v41 = a11;
  v43.receiver = self;
  v43.super_class = ContextProxy;
  v21 = [(ContextProxy *)&v43 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_managedContext, a3);
    v22->_processId = a4;
    v22->_userId = a5;
    v22->_auditSessionId = a6;
    v23 = [LACAuditToken alloc];
    v24 = *&a7->var0[4];
    *buf = *a7->var0;
    *&buf[16] = v24;
    v25 = [v23 initWithRawValue:buf];
    auditToken = v22->_auditToken;
    v22->_auditToken = v25;

    v22->_cApiOrigin = a8;
    v27 = objc_retainBlock(v19);
    checkEntitlementBlock = v22->_checkEntitlementBlock;
    v22->_checkEntitlementBlock = v27;

    v29 = objc_retainBlock(v20);
    invalidationBlock = v22->_invalidationBlock;
    v22->_invalidationBlock = v29;

    objc_storeStrong(&v22->_callback, a11);
    v22->_originatorId = atomic_fetch_add(&qword_100063058, 1uLL) + 1;
    v31 = [v18 instanceId];
    v32 = [v18 plugin];
    v33 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%u:%u", v31, [v32 instanceId]);
    proxyId = v22->_proxyId;
    v22->_proxyId = v33;

    v22->_clientId = a12;
  }

  v35 = [v18 plugin];
  v36 = [v35 module];
  v37 = [v18 plugin];
  v38 = [(ContextProxy *)v22 managedContext];
  [v36 trackPlugin:v37 processId:a4 proxy:v22 context:v38 invalidationBlock:v20];

  v39 = LALogForCategory();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = v22;
    *&buf[12] = 2114;
    *&buf[14] = v18;
    *&buf[22] = 1024;
    *&buf[24] = a5;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%{public}@ created for %{public}@ uid:%u", buf, 0x1Cu);
  }

  return v22;
}

- (void)interruptWithReply:(id)a3
{
  v4 = a3;
  v5 = [(ContextProxy *)self originatorId];
  v6 = [(ContextProxy *)self description];
  v7 = [self->_managedContext uuid];
  v8 = +[DaemonUtils sharedInstance];
  v9 = [v8 serverQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000082B0;
  v13[3] = &unk_1000550E8;
  v16 = v4;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v4;
  v12 = v6;
  dispatch_async(v9, v13);
}

- (void)getDomainStateWithOptions:(id)a3 originator:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a5;
  managedContext = self->_managedContext;
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = &__NSDictionary0__struct;
  }

  v12 = a4;
  v13 = [managedContext updateOptionsWithServerProperties:v11];
  v14 = [DomainStateRequest alloc];
  v15 = [self->_managedContext uuid];
  v16 = [v14 initWithOptions:v13 client:v12 contextID:v15];

  v17 = objc_opt_new();
  v18 = +[LACDomainStateProviderBiometry sharedInstance];
  [v17 addObject:v18];

  v19 = +[DaemonServiceLocator sharedInstance];
  v20 = [v19 companions];
  [v17 addObject:v20];

  v21 = [[LACDomainStateProvider alloc] initWithProviders:v17];
  LALogCategoryForOptions();
  v22 = LALogForCategory();
  v23 = objc_opt_new();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v34 = v17;
    v35 = 2114;
    v36 = v8;
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
  v32 = v9;
  v24 = v21;
  v25 = v9;
  v26 = v23;
  v27 = v22;
  [v24 domainStateForRequest:v16 completion:v28];
}

- (void)evaluatePolicy:(int64_t)a3 options:(id)a4 uiDelegate:(id)a5 originator:(id)a6 reply:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = &__NSDictionary0__struct;
  }

  v17 = [self->_managedContext updateOptionsWithServerProperties:v16];
  v18 = [EvaluationRequest alloc];
  v19 = [self->_managedContext uuid];
  v38 = v17;
  v20 = [v18 initWithPolicy:a3 options:v17 uiDelegate:v13 contextID:v19];

  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100008B6C;
  v43[3] = &unk_100055138;
  v21 = v20;
  v44 = v21;
  v22 = v15;
  v45 = v22;
  v23 = objc_retainBlock(v43);
  if ([(ContextProxy *)self _isPreflightOnCleanContext:v12])
  {
    v36 = v22;
    v24 = +[PreflightCache sharedInstance];
    if (v14)
    {
      [v14 auditToken];
    }

    else
    {
      memset(buf, 0, 32);
    }

    v25 = [v24 keyForPreflightOfPolicy:a3 options:v16 auditToken:buf uid:{objc_msgSend(v14, "userId")}];

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
    v29 = v13 == 0;
    v37 = self;
    v30 = v23;
    v31 = v14;
    v32 = v13;
    v33 = v22;
    v34 = !v29;
    v35 = [v21 identifier];
    *buf = 67110146;
    *&buf[4] = a3;
    *&buf[8] = 2114;
    *&buf[10] = v12;
    *&buf[18] = 1024;
    *&buf[20] = v34;
    v22 = v33;
    v13 = v32;
    v14 = v31;
    v23 = v30;
    self = v37;
    *&buf[24] = 2114;
    *&buf[26] = v37;
    v47 = 1024;
    v48 = v35;
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
  [(ContextProxy *)self _evaluateRequest:v40 originator:v14 preflightKey:v25 uiDelegate:v13 reply:v39];

  v27 = v40;
LABEL_19:
}

- (void)evaluateACL:(id)a3 operation:(id)a4 options:(id)a5 uiDelegate:(id)a6 originator:(id)a7 reply:(id)a8
{
  v14 = a3;
  v34 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v31 = a8;
  if (v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = &__NSDictionary0__struct;
  }

  v33 = [self->_managedContext updateOptionsWithServerProperties:v18, v31];
  if ([(ContextProxy *)self _isPreflightOnCleanContext:v15])
  {
    v19 = +[PreflightCache sharedInstance];
    if (v17)
    {
      [v17 auditToken];
    }

    else
    {
      memset(buf, 0, 32);
    }

    v21 = v14;
    v20 = [v19 keyForPreflightOfACL:v14 operation:v34 options:v18 auditToken:buf uid:{objc_msgSend(v17, "userId")}];

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
    v21 = v14;
  }

  v25 = [EvaluationRequest alloc];
  v26 = [self->_managedContext uuid];
  v27 = [v25 initWithAcl:v21 operation:v34 options:v33 uiDelegate:v16 contextID:v26];

  v28 = [v27 log];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [v21 hash];
    v30 = [v27 identifier];
    *buf = 67110402;
    *&buf[4] = v29;
    *&buf[8] = 2114;
    *&buf[10] = v34;
    *&buf[18] = 2114;
    *&buf[20] = v33;
    *&buf[28] = 1024;
    *&buf[30] = v16 != 0;
    v21 = v14;
    v40 = 2114;
    v41 = self;
    v42 = 1024;
    v43 = v30;
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
  [(ContextProxy *)self _evaluateRequest:v23 originator:v17 preflightKey:v20 uiDelegate:v16 reply:v35];

LABEL_15:
}

- (void)_evaluateRequest:(id)a3 originator:(id)a4 preflightKey:(id)a5 uiDelegate:(id)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a4;
  v36 = a5;
  v14 = a6;
  v15 = a7;
  v16 = +[DaemonServiceLocator sharedInstance];
  [v12 setServiceLocator:v16];

  [v12 setClient:v13];
  v17 = [self->_managedContext externalizedContext];
  [v12 setExternalizedContext:v17];

  v18 = objc_opt_new();
  v19 = [LACAnalyticsProcessor alloc];
  v20 = [(ContextProxy *)self _analyticsSessionForEvaluationRequest:v12];
  v21 = [v19 initWithAnalyticsSession:v20];
  [v18 addObject:v21];

  v22 = +[DaemonServiceLocator sharedInstance];
  v23 = [v22 sharedMode];
  v24 = [v23 processor];
  [v18 addObject:v24];

  v25 = [v12 acl];

  if (!v25)
  {
    v26 = +[DaemonServiceLocator sharedInstance];
    v27 = [v26 dto];
    v28 = [v27 processor];
    [v18 addObject:v28];
  }

  v29 = +[DaemonServiceLocator sharedInstance];
  v30 = [v29 companions];
  v31 = [v30 processor];
  [v18 addObject:v31];

  v32 = [[EvaluationRequestProcessor alloc] initWithContext:self->_managedContext uiDelegate:v14];
  [v18 addObject:v32];

  v33 = [LACEvaluationRequestProcessorFactory makeRootProcessorWithSubprocessors:v18];
  objc_initWeak(&location, self);
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100009574;
  v37[3] = &unk_100055188;
  objc_copyWeak(&v40, &location);
  v34 = v15;
  v39 = v34;
  v35 = v33;
  v38 = v35;
  [v35 handleRequest:v12 completion:v37];

  objc_destroyWeak(&v40);
  objc_destroyWeak(&location);
}

- (id)_analyticsSessionForEvaluationRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 serviceLocator];
  v6 = NSStringFromProtocol(&OBJC_PROTOCOL___LACAnalyticsService);
  v7 = [v5 serviceWithIdentifier:v6];

  v8 = [(ContextProxy *)self managedContext];
  v9 = [v8 uuid];
  v10 = [v7 sessionForContextUUID:v9];

  v11 = [v4 analyticsData];

  [v10 trackEvaluationAnalytics:v11];

  return v10;
}

- (BOOL)_isPreflightOnCleanContext:(id)a3
{
  v4 = [self->_managedContext updateOptionsWithServerProperties:a3];
  v5 = [v4 objectForKeyedSubscript:&off_100057EE8];
  v6 = [v5 BOOLValue];

  if (v6 && (-[Context plugin](self->_managedContext, "plugin"), v7 = objc_claimAutoreleasedReturnValue(), [v7 resultInfo], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v7, !v9) && os_variant_allows_internal_security_policies())
  {
    v10 = +[NSUserDefaults standardUserDefaults];
    v11 = [v10 persistentDomainForName:NSGlobalDomain];

    v12 = [v11 objectForKeyedSubscript:@"LA.preflightCache.enabled"];
    v13 = v12;
    if (!v12)
    {
      v12 = &__kCFBooleanFalse;
    }

    v14 = [v12 BOOLValue];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)failProcessedEvent:(int64_t)a3 failureError:(id)a4 reply:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = +[Request requestFromCurrentConnection];
  v11 = [v10 log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    v18 = a3;
    v19 = 2114;
    v20 = v8;
    v21 = 2114;
    v22 = self;
    v23 = 1024;
    v24 = [v10 identifier];
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
    v16 = v9;
    [managedContext failProcessedEvent:a3 failureError:v8 reply:v14];

    v13 = v15;
  }

  else
  {
    v13 = [LAErrorHelper missingEntitlementError:@"com.apple.private.CoreAuthentication.SPI"];
    (*(v9 + 2))(v9, 0, v13);
  }
}

- (void)retryProcessedEvent:(int64_t)a3 reply:(id)a4
{
  v6 = a4;
  v7 = +[Request requestFromCurrentConnection];
  v8 = [v7 log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v15 = a3;
    v16 = 2114;
    v17 = self;
    v18 = 1024;
    v19 = [v7 identifier];
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
    v13 = v6;
    [managedContext retryEvent:a3 originator:self reply:v11];

    v10 = v12;
  }

  else
  {
    v10 = [LAErrorHelper missingEntitlementError:@"com.apple.private.CoreAuthentication.SPI"];
    (*(v6 + 2))(v6, 0, v10);
  }
}

- (void)resetProcessedEvent:(int64_t)a3 reply:(id)a4
{
  v6 = a4;
  v7 = +[Request requestFromCurrentConnection];
  v8 = [v7 log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v15 = a3;
    v16 = 2114;
    v17 = self;
    v18 = 1024;
    v19 = [v7 identifier];
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
    v13 = v6;
    [managedContext resetEvent:a3 originator:self reply:v11];

    v10 = v12;
  }

  else
  {
    v10 = [LAErrorHelper missingEntitlementError:@"com.apple.private.CoreAuthentication.SPI"];
    (*(v6 + 2))(v6, 0, v10);
  }
}

- (void)setCredential:(id)a3 forProcessedEvent:(int64_t)a4 credentialType:(int64_t)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = +[Request requestFromCurrentConnection];
  v13 = [v12 log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    v20 = a4;
    v21 = 1024;
    v22 = a5;
    v23 = 2114;
    v24 = self;
    v25 = 1024;
    v26 = [v12 identifier];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "setCredential:forProcessedEvent:%d credentialType:%d on %{public}@ rid:%u", buf, 0x1Eu);
  }

  if (v10 && ![(ContextProxy *)self checkEntitlement:@"com.apple.private.CoreAuthentication.SPI"])
  {
    v15 = [LAErrorHelper missingEntitlementError:@"com.apple.private.CoreAuthentication.SPI"];
    v11[2](v11, 0, v15);
  }

  else
  {
    managedContext = self->_managedContext;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000A7F4;
    v16[3] = &unk_1000551B0;
    v17 = v12;
    v18 = v11;
    [managedContext setCredential:v10 forProcessedEvent:a4 credentialType:a5 reply:v16];

    v15 = v17;
  }
}

- (void)isCredentialSet:(int64_t)a3 reply:(id)a4
{
  v6 = a4;
  v7 = +[Request requestFromCurrentConnection];
  v8 = [v7 log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v16 = a3;
    v17 = 2114;
    v18 = self;
    v19 = 1024;
    v20 = [v7 identifier];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "isCredentialSet:%d on %{public}@ rid:%u", buf, 0x18u);
  }

  managedContext = self->_managedContext;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000AA6C;
  v12[3] = &unk_1000551B0;
  v13 = v7;
  v14 = v6;
  v10 = v6;
  v11 = v7;
  [managedContext isCredentialSet:a3 originator:self reply:v12];
}

- (void)setCredential:(id)a3 type:(int64_t)a4 options:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = +[Request requestFromCurrentConnection];
  v14 = [v13 log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    v22 = a4;
    v23 = 2114;
    v24 = v11;
    v25 = 2114;
    v26 = self;
    v27 = 1024;
    v28 = [v13 identifier];
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "setCredential:type:%d options:%{public}@ on %{public}@ rid:%u", buf, 0x22u);
  }

  if (a4 == -6)
  {
    if (![(ContextProxy *)self checkEntitlement:@"com.apple.private.LocalAuthentication.RGBCapture"])
    {
      v15 = @"com.apple.private.LocalAuthentication.RGBCapture";
      goto LABEL_10;
    }
  }

  else if (a4 == -1 && ![(ContextProxy *)self checkEntitlement:@"com.apple.private.CoreAuthentication.SPI"])
  {
    v15 = @"com.apple.private.CoreAuthentication.SPI";
LABEL_10:
    v17 = [LAErrorHelper missingEntitlementError:v15];
    v12[2](v12, 0, v17);
    goto LABEL_11;
  }

  managedContext = self->_managedContext;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000AD9C;
  v18[3] = &unk_1000551B0;
  v19 = v13;
  v20 = v12;
  [managedContext setCredential:v10 type:a4 options:v11 originator:self reply:v18];

  v17 = v19;
LABEL_11:
}

- (void)invalidateWithReply:(id)a3
{
  v4 = a3;
  v5 = +[Request requestFromCurrentConnection];
  v6 = [v5 log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v13 = self;
    v14 = 1024;
    v15 = [v5 identifier];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "invalidateWithReply on %{public}@ rid:%u", buf, 0x12u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000AFF0;
  v9[3] = &unk_1000551D8;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  [(ContextProxy *)self interruptWithReply:v9];
}

- (void)credentialOfType:(int64_t)a3 reply:(id)a4
{
  v6 = a4;
  v7 = +[Request requestFromCurrentConnection];
  v8 = [v7 log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v16 = a3;
    v17 = 2114;
    v18 = self;
    v19 = 1024;
    v20 = [v7 identifier];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "credentialOfType:%d on %{public}@ rid:%u", buf, 0x18u);
  }

  managedContext = self->_managedContext;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000B234;
  v12[3] = &unk_100055200;
  v13 = v7;
  v14 = v6;
  v10 = v6;
  v11 = v7;
  [managedContext credentialOfType:a3 originator:self reply:v12];
}

- (void)setCredentialsUUID:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[Request requestFromCurrentConnection];
  v9 = [v8 log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v17 = self;
    v18 = 1024;
    v19 = [v8 identifier];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "setCredentialsUUID on %{public}@ rid:%u", buf, 0x12u);
  }

  managedContext = self->_managedContext;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000B4D8;
  v13[3] = &unk_1000551B0;
  v14 = v8;
  v15 = v6;
  v11 = v6;
  v12 = v8;
  [managedContext setCredentialsUUID:v7 originator:self reply:v13];
}

- (void)credentialsUUIDWithReply:(id)a3
{
  v4 = a3;
  v5 = +[Request requestFromCurrentConnection];
  v6 = [v5 log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v14 = self;
    v15 = 1024;
    v16 = [v5 identifier];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "credentialsUUID on %{public}@ rid:%u", buf, 0x12u);
  }

  managedContext = self->_managedContext;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000B74C;
  v10[3] = &unk_100055228;
  v11 = v5;
  v12 = v4;
  v8 = v4;
  v9 = v5;
  [managedContext credentialsUUIDWithOriginator:self reply:v10];
}

- (void)credentialEncodingSeedWithReply:(id)a3
{
  v4 = a3;
  v5 = +[Request requestFromCurrentConnection];
  v6 = [v5 log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v14 = self;
    v15 = 1024;
    v16 = [v5 identifier];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "credentialEncodingSeed on %{public}@ rid:%u", buf, 0x12u);
  }

  managedContext = self->_managedContext;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000B9CC;
  v10[3] = &unk_100055200;
  v11 = v5;
  v12 = v4;
  v8 = v4;
  v9 = v5;
  [managedContext credentialEncodingSeedWithReply:v10];
}

- (void)optionsForInternalOperation:(int64_t)a3 reply:(id)a4
{
  v6 = a4;
  v7 = +[Request requestFromCurrentConnection];
  v8 = [v7 log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v16 = a3;
    v17 = 2114;
    v18 = self;
    v19 = 1024;
    v20 = [v7 identifier];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "optionsForInternalOperation:%d on %{public}@ rid:%u", buf, 0x18u);
  }

  managedContext = self->_managedContext;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000BC6C;
  v12[3] = &unk_100055250;
  v13 = v7;
  v14 = v6;
  v10 = v6;
  v11 = v7;
  [managedContext optionsForInternalOperation:a3 originator:self reply:v12];
}

- (void)setOptions:(id)a3 forInternalOperation:(int64_t)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[Request requestFromCurrentConnection];
  v11 = [v10 log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    v19 = [v8 hash];
    v20 = 1024;
    v21 = a4;
    v22 = 2114;
    v23 = self;
    v24 = 1024;
    v25 = [v10 identifier];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "setOptions:%u forInternalOperation:%d on %{public}@ rid:%u", buf, 0x1Eu);
  }

  managedContext = self->_managedContext;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000BF54;
  v15[3] = &unk_1000551B0;
  v16 = v10;
  v17 = v9;
  v13 = v9;
  v14 = v10;
  [managedContext setOptions:v8 forInternalOperation:a4 originator:self reply:v15];
}

- (void)serverPropertyForOption:(int64_t)a3 reply:(id)a4
{
  v6 = a4;
  v7 = +[Request requestFromCurrentConnection];
  v8 = [v7 log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v16 = a3;
    v17 = 2114;
    v18 = self;
    v19 = 1024;
    v20 = [v7 identifier];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "serverPropertyForOption:%d on %{public}@ rid:%u", buf, 0x18u);
  }

  managedContext = self->_managedContext;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000C1C8;
  v12[3] = &unk_100055250;
  v13 = v7;
  v14 = v6;
  v10 = v6;
  v11 = v7;
  [managedContext serverPropertyForOption:a3 reply:v12];
}

- (void)setServerPropertyForOption:(int64_t)a3 value:(id)a4 reply:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = +[Request requestFromCurrentConnection];
  v11 = [v10 log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    v19 = a3;
    v20 = 2114;
    v21 = v8;
    v22 = 2114;
    v23 = self;
    v24 = 1024;
    v25 = [v10 identifier];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "setServerPropertyForOption:%d value:%{public}@ on %{public}@ rid:%u", buf, 0x22u);
  }

  managedContext = self->_managedContext;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000C45C;
  v15[3] = &unk_1000551B0;
  v16 = v10;
  v17 = v9;
  v13 = v9;
  v14 = v10;
  [managedContext setServerPropertyForOption:a3 value:v8 reply:v15];
}

- (void)externalizedContextWithReply:(id)a3
{
  v4 = a3;
  v5 = +[Request requestFromCurrentConnection];
  v6 = [v5 log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v14 = self;
    v15 = 1024;
    v16 = [v5 identifier];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "externalizedContextWithReply on %{public}@ rid:%u", buf, 0x12u);
  }

  managedContext = self->_managedContext;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000C6B4;
  v10[3] = &unk_100055200;
  v11 = v5;
  v12 = v4;
  v8 = v4;
  v9 = v5;
  [managedContext externalizedContextWithReply:v10];
}

- (void)authMethodWithReply:(id)a3
{
  v4 = a3;
  v5 = +[Request requestFromCurrentConnection];
  v6 = [v5 log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v14 = self;
    v15 = 1024;
    v16 = [v5 identifier];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "authMethodWithReply on %{public}@ rid:%u", buf, 0x12u);
  }

  managedContext = self->_managedContext;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000C948;
  v10[3] = &unk_100055200;
  v11 = v5;
  v12 = v4;
  v8 = v4;
  v9 = v5;
  [managedContext authMethodWithReply:v10];
}

- (void)verifyFileVaultUser:(id)a3 volumeUuid:(id)a4 options:(unint64_t)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = +[Request requestFromCurrentConnection];
  v14 = [v13 log];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544386;
    v22 = v10;
    v23 = 2114;
    v24 = v11;
    v25 = 1024;
    v26 = a5;
    v27 = 2114;
    v28 = self;
    v29 = 1024;
    v30 = [v13 identifier];
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "verifyFileVaultUser:%{public}@ volumeUuid:%{public}@, options:%u on %{public}@ rid:%u", buf, 0x2Cu);
  }

  managedContext = self->_managedContext;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000CC3C;
  v18[3] = &unk_1000551B0;
  v19 = v13;
  v20 = v12;
  v16 = v12;
  v17 = v13;
  [managedContext verifyFileVaultUser:v10 volumeUuid:v11 options:a5 reply:v18];
}

- (void)allowTransferToProcess:(int)a3 receiverAuditTokenData:(id)a4 reply:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = +[Request requestFromCurrentConnection];
  v11 = [v10 log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    v20 = a3;
    v21 = 1024;
    v22 = [v8 hash];
    v23 = 2114;
    v24 = self;
    v25 = 1024;
    v26 = [v10 identifier];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "allowTransferToProcess:%d receiverAuditTokenData:%x on %{public}@ rid:%u", buf, 0x1Eu);
  }

  managedContext = self->_managedContext;
  v13 = [v10 caller];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000CEF4;
  v16[3] = &unk_1000551B0;
  v17 = v10;
  v18 = v9;
  v14 = v9;
  v15 = v10;
  [managedContext allowTransferFromCaller:v13 receiverAuditTokenData:v8 reply:v16];
}

- (void)tokenForTransferToUnknownProcess:(id)a3
{
  v4 = a3;
  v5 = +[Request requestFromCurrentConnection];
  v6 = [v5 log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v15 = self;
    v16 = 1024;
    v17 = [v5 identifier];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "tokenForTransferToUnknownProcess on %{public}@ rid:%u", buf, 0x12u);
  }

  managedContext = self->_managedContext;
  v8 = [v5 caller];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000D164;
  v11[3] = &unk_100055200;
  v12 = v5;
  v13 = v4;
  v9 = v4;
  v10 = v5;
  [managedContext tokenForTransferFromCaller:v8 reply:v11];
}

- (void)invalidateWithError:(id)a3
{
  [(LACContextCallbackXPC *)self->_callback invalidatedWithError:a3];
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
  v3 = [v2 BOOLValue];

  return v3;
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