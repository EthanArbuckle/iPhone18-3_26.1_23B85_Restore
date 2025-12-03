@interface Context
+ (void)managedContextWithExternalizedContext:(id)context processId:(int)id userId:(unsigned int)userId auditSessionId:(int)sessionId flags:(int64_t)flags checkEntitlementBlock:(id)block reply:(id)reply;
- (BOOL)_hasProtectedOptions:(id)options;
- (NSData)externalizedContext;
- (id)_updateOptionsWithServerProperties:(id)properties policy:(int64_t)policy;
- (void)allowTransferFromCaller:(id)caller receiverAuditTokenData:(id)data reply:(id)reply;
- (void)connectFromCaller:(id)caller token:(id)token senderAuditTokenData:(id)data reply:(id)reply;
- (void)contextWasExternalized:(id)externalized;
- (void)dealloc;
- (void)evaluateRequest:(id)request uiDelegate:(id)delegate originator:(id)originator reply:(id)reply;
- (void)externalizedContextWithReply:(id)reply;
- (void)failProcessedEvent:(int64_t)event failureError:(id)error reply:(id)reply;
- (void)retryEvent:(int64_t)event originator:(id)originator reply:(id)reply;
- (void)serverPropertyForOption:(int64_t)option reply:(id)reply;
- (void)setCredential:(id)credential forProcessedEvent:(int64_t)event credentialType:(int64_t)type reply:(id)reply;
- (void)setCredential:(id)credential type:(int64_t)type options:(id)options originator:(id)originator reply:(id)reply;
- (void)setServerPropertyForOption:(int64_t)option value:(id)value reply:(id)reply;
- (void)tokenForTransferFromCaller:(id)caller reply:(id)reply;
@end

@implementation Context

- (NSData)externalizedContext
{
  cachedExternalizedContext = [(ContextPlugin *)self->_plugin cachedExternalizedContext];
  externalizedContext = [cachedExternalizedContext externalizedContext];

  return externalizedContext;
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

  v4.receiver = self;
  v4.super_class = Context;
  [(Context *)&v4 dealloc];
}

+ (void)managedContextWithExternalizedContext:(id)context processId:(int)id userId:(unsigned int)userId auditSessionId:(int)sessionId flags:(int64_t)flags checkEntitlementBlock:(id)block reply:(id)reply
{
  contextCopy = context;
  blockCopy = block;
  replyCopy = reply;
  v17 = +[ContextManager sharedInstance];
  v28 = 0;
  v18 = [v17 loadModule:1 error:&v28];
  v19 = v28;

  if (v18)
  {
    if ((flags & 1) != 0 && (blockCopy[2](blockCopy, @"com.apple.private.LocalAuthentication.NonDisposableContextPool") & 1) == 0)
    {
      v20 = [LACError missingEntitlementError:@"com.apple.private.LocalAuthentication.NonDisposableContextPool"];
      replyCopy[2](replyCopy, 0, v20);
    }

    else
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100011470;
      v21[3] = &unk_100055548;
      v24 = replyCopy;
      idCopy = id;
      userIdCopy = userId;
      sessionIdCopy = sessionId;
      v22 = contextCopy;
      v23 = v18;
      [v23 contextPluginWithExternalizedContext:v22 flags:flags reply:v21];
    }
  }

  else
  {
    replyCopy[2](replyCopy, 0, v19);
  }
}

- (BOOL)_hasProtectedOptions:(id)options
{
  optionsCopy = options;
  v4 = [NSMutableSet setWithObjects:&off_100057F18, &off_100057F30, &off_100057F48, &off_100057F60, &off_100057F78, 0];
  allKeys = [optionsCopy allKeys];

  v6 = [NSSet setWithArray:allKeys];

  [v4 intersectSet:v6];
  v7 = [v4 count] != 0;

  return v7;
}

- (void)evaluateRequest:(id)request uiDelegate:(id)delegate originator:(id)originator reply:(id)reply
{
  requestCopy = request;
  delegateCopy = delegate;
  originatorCopy = originator;
  replyCopy = reply;
  policy = [requestCopy policy];
  options = [requestCopy options];
  v15 = [(Context *)self _updateOptionsWithServerProperties:options policy:policy];
  [requestCopy updateOptions:v15];
  if ((-[Context _hasProtectedUiDelegate:policy:options:](self, "_hasProtectedUiDelegate:policy:options:", delegateCopy, policy, v15) || -[Context _hasProtectedOptions:](self, "_hasProtectedOptions:", v15)) && ([originatorCopy checkEntitlement:@"com.apple.private.CoreAuthentication.SPI"] & 1) == 0)
  {
    v17 = LAErrorHelper;
    v18 = @"com.apple.private.CoreAuthentication.SPI";
  }

  else
  {
    if (policy != 1010 || ([originatorCopy checkEntitlement:@"com.apple.private.LocalAuthentication.SoftwareUpdate"] & 1) != 0)
    {
      v16 = [v15 objectForKeyedSubscript:&off_100057F90];
      if (v16 && ![originatorCopy checkEntitlement:@"com.apple.private.LocalAuthentication.ExtractCredential"])
      {
        v19 = [requestCopy acl];

        if (!v19)
        {
          v17 = LAErrorHelper;
          v18 = @"com.apple.private.LocalAuthentication.ExtractCredential";
          goto LABEL_18;
        }
      }

      else
      {
      }

      v20 = [NSNumber numberWithInteger:LACPolicyOptionSecureUIRecording];
      v21 = [v15 objectForKeyedSubscript:v20];
      if (v21)
      {
        v22 = v21;
        v23 = [originatorCopy checkEntitlement:@"com.apple.private.LocalAuthentication.SecureUIRecording"];

        if ((v23 & 1) == 0)
        {
          v17 = LACError;
          v18 = @"com.apple.private.LocalAuthentication.SecureUIRecording";
          goto LABEL_18;
        }
      }

      else
      {
      }

      [(ContextPlugin *)self->_plugin evaluateRequest:requestCopy uiDelegate:delegateCopy originator:originatorCopy reply:replyCopy];
      goto LABEL_19;
    }

    v17 = LAErrorHelper;
    v18 = @"com.apple.private.LocalAuthentication.SoftwareUpdate";
  }

LABEL_18:
  v24 = [v17 missingEntitlementError:v18];
  replyCopy[2](replyCopy, 0, v24);

LABEL_19:
}

- (void)setCredential:(id)credential forProcessedEvent:(int64_t)event credentialType:(int64_t)type reply:(id)reply
{
  credentialCopy = credential;
  replyCopy = reply;
  v12 = +[AuthenticationManager sharedInstance];
  plugin = [(Context *)self plugin];
  v14 = [v12 findMechanismForEvent:event mustBeRunning:1 plugin:plugin];

  if (v14)
  {
    if (credentialCopy)
    {
      [v14 setCredential:credentialCopy credentialType:type reply:replyCopy];
    }

    else
    {
      plugin = self->_plugin;
      policy = [v14 policy];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100011D00;
      v20[3] = &unk_1000551B0;
      v21 = v14;
      v22 = replyCopy;
      [(ContextPlugin *)plugin checkCredentialSatisfied:type policy:policy reply:v20];
    }
  }

  else if (credentialCopy)
  {
    v15 = [NSNumber numberWithInteger:event];
    v16 = [NSString stringWithFormat:@"No running mechanism for event %@.", v15];
    v17 = [LAErrorHelper errorWithCode:-1008 message:v16];
    (*(replyCopy + 2))(replyCopy, 0, v17);
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, 1, 0);
  }
}

- (void)setCredential:(id)credential type:(int64_t)type options:(id)options originator:(id)originator reply:(id)reply
{
  plugin = self->_plugin;
  replyCopy = reply;
  originatorCopy = originator;
  credentialCopy = credential;
  v16 = [(Context *)self updateOptionsWithServerProperties:options];
  [(ContextPlugin *)plugin setCredential:credentialCopy type:type options:v16 originator:originatorCopy reply:replyCopy];
}

- (id)_updateOptionsWithServerProperties:(id)properties policy:(int64_t)policy
{
  propertiesCopy = properties;
  v7 = [NSMutableDictionary dictionaryWithDictionary:propertiesCopy];
  v8 = [(NSMutableDictionary *)self->_serverProperties copy];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100012150;
  v19[3] = &unk_100055570;
  v9 = propertiesCopy;
  v20 = v9;
  v10 = v7;
  v21 = v10;
  selfCopy = self;
  [v8 enumerateKeysAndObjectsUsingBlock:v19];

  if (policy && LACPolicyLocationBasedDeviceOwnerAuthenticationWithBiometricRatchet != policy)
  {
    v11 = [NSNumber numberWithInteger:LACPolicyOptionTimeout];
    v12 = [v10 objectForKeyedSubscript:v11];
    if (v12)
    {

LABEL_5:
      goto LABEL_6;
    }

    v16 = [NSNumber numberWithInteger:LACPolicyOptionNotInteractive];
    v17 = [v10 objectForKeyedSubscript:v16];
    bOOLValue = [v17 BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      [v10 setObject:&off_100057FA8 forKey:&off_100057FC0];
      v11 = sub_1000013FC();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v24) = 300;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Injecting LAOptionTimeout = %d", buf, 8u);
      }

      goto LABEL_5;
    }
  }

LABEL_6:
  if (([v10 isEqual:v9] & 1) == 0)
  {
    v13 = sub_1000013FC();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v24 = v9;
      v25 = 2114;
      v26 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Updated options from %{public}@ to %{public}@", buf, 0x16u);
    }
  }

  v14 = v10;

  return v10;
}

- (void)serverPropertyForOption:(int64_t)option reply:(id)reply
{
  replyCopy = reply;
  v7 = sub_1000013FC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109378;
    v11[1] = option;
    v12 = 2114;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "querying option %d on %{public}@", v11, 0x12u);
  }

  serverProperties = self->_serverProperties;
  v9 = [NSNumber numberWithInteger:option];
  v10 = [(NSMutableDictionary *)serverProperties objectForKeyedSubscript:v9];

  replyCopy[2](replyCopy, v10, 0);
}

- (void)setServerPropertyForOption:(int64_t)option value:(id)value reply:(id)reply
{
  valueCopy = value;
  replyCopy = reply;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v11 = sub_1000013FC();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (isKindOfClass)
  {
    if (v12)
    {
      LODWORD(v17) = 67109634;
      HIDWORD(v17) = option;
      *v18 = 2114;
      *&v18[2] = self;
      *&v18[10] = 2114;
      *&v18[12] = valueCopy;
      v13 = "setting option %d on %{public}@ to %{public}@";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v13, &v17, 0x1Cu);
    }
  }

  else if (v12)
  {
    LODWORD(v17) = 67109634;
    HIDWORD(v17) = option;
    *v18 = 2114;
    *&v18[2] = self;
    *&v18[10] = 2112;
    *&v18[12] = valueCopy;
    v13 = "setting option %d on %{public}@ to %@";
    goto LABEL_6;
  }

  if (valueCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    serverProperties = self->_serverProperties;
    v15 = [NSNumber numberWithInteger:option];
    [(NSMutableDictionary *)serverProperties setObject:valueCopy forKey:v15];
  }

  else
  {
    v14 = self->_serverProperties;
    v15 = [NSNumber numberWithInteger:option, v17, *v18, *&v18[16]];
    [(NSMutableDictionary *)v14 removeObjectForKey:v15];
  }

  replyCopy[2](replyCopy, 1, 0);
}

- (void)failProcessedEvent:(int64_t)event failureError:(id)error reply:(id)reply
{
  errorCopy = error;
  replyCopy = reply;
  v9 = +[AuthenticationManager sharedInstance];
  plugin = [(Context *)self plugin];
  v11 = [v9 findMechanismForEvent:event mustBeRunning:0 plugin:plugin];

  if (([v11 isRunning] & 1) == 0 && !objc_msgSend(v11, "isRestartable"))
  {
    v14 = [LAErrorHelper errorWithCode:-1008 message:@"Can't stop event, because its mechanism is not running."];
    replyCopy[2](replyCopy, 0, v14);

    goto LABEL_13;
  }

  if ([v11 eventIdentifier] != 7)
  {
    goto LABEL_9;
  }

  request = [v11 request];
  if (([request isPurposeApplePay] & 1) == 0)
  {

LABEL_9:
    if (errorCopy)
    {
      [v11 finishRunWithResult:0 error:?];
    }

    else
    {
      v15 = [LAErrorHelper errorWithCode:-1 message:@"Mechanism stopped on client request."];
      [v11 finishRunWithResult:0 error:v15];
    }

    goto LABEL_12;
  }

  v13 = [v11 fallbackToIdentifier:2];

  if (!v13)
  {
    goto LABEL_9;
  }

LABEL_12:
  replyCopy[2](replyCopy, 1, 0);
LABEL_13:
}

- (void)retryEvent:(int64_t)event originator:(id)originator reply:(id)reply
{
  replyCopy = reply;
  v8 = +[AuthenticationManager sharedInstance];
  plugin = [(Context *)self plugin];
  v11 = [v8 findMechanismForEvent:event mustBeRunning:1 plugin:plugin];

  if (v11)
  {
    [v11 restartWithEventIdentifier:event lastAttempt:0];
    replyCopy[2](replyCopy, 1, 0);
  }

  else
  {
    v10 = [LAErrorHelper errorWithCode:-1008 message:@"Can't retry event, because no suitable mechanism is running."];
    replyCopy[2](replyCopy, 0, v10);

    replyCopy = v10;
  }
}

- (void)externalizedContextWithReply:(id)reply
{
  replyCopy = reply;
  cachedExternalizedContext = [(ContextPlugin *)self->_plugin cachedExternalizedContext];

  if (cachedExternalizedContext)
  {
    cachedExternalizedContext2 = [(ContextPlugin *)self->_plugin cachedExternalizedContext];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100012ACC;
    v8[3] = &unk_100055598;
    v9 = replyCopy;
    [cachedExternalizedContext2 externalizedContextWithReply:v8];
  }

  else
  {
    v7 = [LAErrorHelper internalErrorWithMessage:@"No externalized context"];
    (*(replyCopy + 2))(replyCopy, 0, v7);
  }
}

- (void)contextWasExternalized:(id)externalized
{
  externalizedCopy = externalized;
  v5 = +[ContextManager sharedInstance];
  [v5 registerExternalizedContext:externalizedCopy forContext:self];
}

- (void)allowTransferFromCaller:(id)caller receiverAuditTokenData:(id)data reply:(id)reply
{
  p_allowedTransfers = &self->_allowedTransfers;
  allowedTransfers = self->_allowedTransfers;
  replyCopy = reply;
  dataCopy = data;
  callerCopy = caller;
  v12 = [[AllowedTransfer alloc] initWithReceiverAuditTokenData:dataCopy sender:callerCopy];

  [(NSMutableArray *)allowedTransfers addObject:v12];
  v13 = sub_1000013FC();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_100022DFC(p_allowedTransfers, v13, v14, v15, v16, v17, v18, v19);
  }

  replyCopy[2](replyCopy, 1, 0);
}

- (void)tokenForTransferFromCaller:(id)caller reply:(id)reply
{
  callerCopy = caller;
  replyCopy = reply;
  v8 = SecRandomCopyBytes(kSecRandomDefault, 0x20uLL, bytes);
  if (v8)
  {
    v9 = [NSString stringWithFormat:@"Failed generating token: %x (err: %d)", v8, *__error()];
    v10 = [LAErrorHelper internalErrorWithMessage:v9];
    replyCopy[2](replyCopy, 0, v10);

    replyCopy = v10;
  }

  else
  {
    v9 = [NSData dataWithBytes:bytes length:32];
    allowedTransfers = self->_allowedTransfers;
    p_allowedTransfers = &self->_allowedTransfers;
    v13 = [[AllowedTransfer alloc] initWithServerToken:v9 sender:callerCopy];
    [(NSMutableArray *)allowedTransfers addObject:v13];

    v14 = sub_1000013FC();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_100022DFC(p_allowedTransfers, v14, v15, v16, v17, v18, v19, v20);
    }

    (replyCopy)[2](replyCopy, v9, 0);
  }
}

- (void)connectFromCaller:(id)caller token:(id)token senderAuditTokenData:(id)data reply:(id)reply
{
  callerCopy = caller;
  tokenCopy = token;
  dataCopy = data;
  replyCopy = reply;
  v14 = sub_1000013FC();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *v46 = self;
    *&v46[8] = 1024;
    *v47 = [callerCopy pid];
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "connecting to %{public}@ from %d", buf, 0x12u);
  }

  v15 = sub_1000013FC();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v34 = [dataCopy hash];
    auditTokenData = [callerCopy auditTokenData];
    v36 = [auditTokenData hash];
    v37 = [tokenCopy hash];
    allowedTransfers = self->_allowedTransfers;
    *buf = 67109890;
    *v46 = v34;
    *&v46[4] = 1024;
    *&v46[6] = v36;
    *v47 = 1024;
    *&v47[2] = v37;
    v48 = 2112;
    v49 = allowedTransfers;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "checking access for SAT: %x, RAT: %x, ST: %x against: %@", buf, 0x1Eu);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v17 = self->_allowedTransfers;
  p_allowedTransfers = &self->_allowedTransfers;
  v18 = v17;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (!v19)
  {

LABEL_19:
    v21 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"PID %d is not allowed to connect to this context.", [callerCopy pid]);
    v33 = [LAErrorHelper errorWithCode:-1007 message:v21];
    replyCopy[2](replyCopy, 0, v33);

    goto LABEL_20;
  }

  v20 = v19;
  v39 = replyCopy;
  v21 = 0;
  v22 = *v41;
  do
  {
    for (i = 0; i != v20; i = i + 1)
    {
      if (*v41 != v22)
      {
        objc_enumerationMutation(v18);
      }

      v24 = *(*(&v40 + 1) + 8 * i);
      if ([v24 isReceiver:callerCopy allowedToConnectWithServerToken:tokenCopy senderAuditTokenData:dataCopy])
      {
        v25 = v24;

        v21 = v25;
      }
    }

    v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v40 objects:v44 count:16];
  }

  while (v20);

  replyCopy = v39;
  if (!v21)
  {
    goto LABEL_19;
  }

  [(NSMutableArray *)*p_allowedTransfers removeObject:v21];
  v26 = sub_1000013FC();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    sub_100022E6C(p_allowedTransfers, v26, v27, v28, v29, v30, v31, v32);
  }

  v39[2](v39, 1, 0);
LABEL_20:
}

@end