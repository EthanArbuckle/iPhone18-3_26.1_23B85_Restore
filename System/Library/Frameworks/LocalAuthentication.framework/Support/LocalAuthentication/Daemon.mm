@interface Daemon
+ (id)sharedInstance;
- (Daemon)init;
- (id)_proxyWithContext:(id)context callback:(id)callback clientId:(unint64_t)id request:(id)request;
- (void)connectToContextWithUUID:(id)d callback:(id)callback clientId:(unint64_t)id token:(id)token senderAuditTokenData:(id)data reply:(id)reply;
- (void)connectToExistingContext:(id)context callback:(id)callback clientId:(unint64_t)id flags:(int64_t)flags reply:(id)reply;
- (void)connectToExistingContext:(id)context userId:(unsigned int)id connection:(id)connection checkEntitlementBlock:(id)block callback:(id)callback clientId:(unint64_t)clientId flags:(int64_t)flags reply:(id)self0;
- (void)createContextWithCompletion:(id)completion;
- (void)dumpStatusWithCompletion:(id)completion;
- (void)notifyEvent:(int64_t)event options:(id)options reply:(id)reply;
- (void)prearmTouchIdWithReply:(id)reply;
@end

@implementation Daemon

+ (id)sharedInstance
{
  if (qword_100063068 != -1)
  {
    sub_100022CA8();
  }

  v3 = qword_100063060;

  return v3;
}

- (Daemon)init
{
  v6.receiver = self;
  v6.super_class = Daemon;
  v2 = [(Daemon *)&v6 init];
  if (v2)
  {
    v3 = +[DaemonServiceManagerFactory build];
    serviceManager = v2->_serviceManager;
    v2->_serviceManager = v3;
  }

  return v2;
}

- (void)createContextWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = getuid();
  v6 = +[NSXPCConnection currentConnection];
  v7 = [[LACWeakBox alloc] initWithReceiver:self];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000F2C0;
  v9[3] = &unk_1000553A0;
  v10 = completionCopy;
  v8 = completionCopy;
  [(Daemon *)self connectToExistingContext:0 userId:v5 connection:v6 checkEntitlementBlock:&stru_100055378 callback:v7 clientId:0 flags:0 reply:v9];
}

- (void)connectToExistingContext:(id)context callback:(id)callback clientId:(unint64_t)id flags:(int64_t)flags reply:(id)reply
{
  replyCopy = reply;
  callbackCopy = callback;
  contextCopy = context;
  +[NSXPCConnection currentConnection];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000FA6C;
  v19 = v18[3] = &unk_100055440;
  v15 = v19;
  v16 = objc_retainBlock(v18);
  v17 = +[NSXPCConnection currentConnection];
  -[Daemon connectToExistingContext:userId:connection:checkEntitlementBlock:callback:clientId:flags:reply:](self, "connectToExistingContext:userId:connection:checkEntitlementBlock:callback:clientId:flags:reply:", contextCopy, [v17 effectiveUserIdentifier], v15, v16, callbackCopy, id, flags, replyCopy);
}

- (void)connectToExistingContext:(id)context userId:(unsigned int)id connection:(id)connection checkEntitlementBlock:(id)block callback:(id)callback clientId:(unint64_t)clientId flags:(int64_t)flags reply:(id)self0
{
  contextCopy = context;
  connectionCopy = connection;
  blockCopy = block;
  callbackCopy = callback;
  replyCopy = reply;
  processIdentifier = [connectionCopy processIdentifier];
  objc_initWeak(location, callbackCopy);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10000FC58;
  v27[3] = &unk_100055468;
  v29 = processIdentifier;
  objc_copyWeak(&v28, location);
  v20 = objc_retainBlock(v27);
  auditSessionIdentifier = [connectionCopy auditSessionIdentifier];
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    memset(v26, 0, sizeof(v26));
  }

  LOBYTE(v23) = 0;
  LODWORD(v22) = auditSessionIdentifier;
  -[Daemon _connectToExistingContext:callback:clientId:flags:processId:userId:auditSessionId:auditToken:cApiOrigin:checkEntitlementBlock:invalidationBlock:connectionHash:reply:](self, "_connectToExistingContext:callback:clientId:flags:processId:userId:auditSessionId:auditToken:cApiOrigin:checkEntitlementBlock:invalidationBlock:connectionHash:reply:", contextCopy, callbackCopy, clientId, flags, processIdentifier, id, v22, v26, v23, blockCopy, v20, [connectionCopy hash], replyCopy);

  objc_destroyWeak(&v28);
  objc_destroyWeak(location);
}

- (void)connectToContextWithUUID:(id)d callback:(id)callback clientId:(unint64_t)id token:(id)token senderAuditTokenData:(id)data reply:(id)reply
{
  callbackCopy = callback;
  tokenCopy = token;
  dataCopy = data;
  replyCopy = reply;
  dCopy = d;
  v19 = +[ContextManager sharedInstance];
  v20 = [v19 contextForUUID:dCopy];

  if (v20)
  {
    v21 = +[Request requestFromCurrentConnection];
    caller = [v21 caller];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10000FED4;
    v24[3] = &unk_100055490;
    v29 = replyCopy;
    v24[4] = self;
    v25 = v20;
    idCopy = id;
    v26 = callbackCopy;
    v27 = v21;
    v28 = v19;
    v23 = v21;
    [v25 connectFromCaller:caller token:tokenCopy senderAuditTokenData:dataCopy reply:v24];
  }

  else
  {
    v23 = [LAErrorHelper errorWithCode:-10 message:@"Context not found."];
    (*(replyCopy + 2))(replyCopy, 0, 0, v23);
  }
}

- (id)_proxyWithContext:(id)context callback:(id)callback clientId:(unint64_t)id request:(id)request
{
  contextCopy = context;
  callbackCopy = callback;
  requestCopy = request;
  [requestCopy caller];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000101D4;
  v10 = v29[3] = &unk_100055440;
  v30 = v10;
  v11 = objc_retainBlock(v29);
  identifier = [requestCopy identifier];
  v13 = [v10 pid];
  objc_initWeak(&location, callbackCopy);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000101E0;
  v24[3] = &unk_1000554B8;
  v26 = identifier;
  v27 = v13;
  objc_copyWeak(&v25, &location);
  v14 = objc_retainBlock(v24);
  v15 = [ContextProxy alloc];
  v16 = [v10 pid];
  euid = [v10 euid];
  asid = [v10 asid];
  if (v10)
  {
    [v10 auditToken];
  }

  else
  {
    memset(v23, 0, sizeof(v23));
  }

  v19 = [(ContextProxy *)v15 initWithContext:contextCopy processId:v16 userId:euid auditSessionId:asid auditToken:v23 cApiOrigin:0 checkEntitlementBlock:v11 invalidationBlock:v14 callback:callbackCopy clientId:id];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  return v19;
}

- (void)prearmTouchIdWithReply:(id)reply
{
  replyCopy = reply;
  v4 = sub_1000013B8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "prearmTouchIdWithReply", v11, 2u);
  }

  v5 = +[NSXPCConnection currentConnection];
  v6 = [v5 valueForEntitlement:@"com.apple.private.CoreAuthentication.SPI"];
  bOOLValue = [v6 BOOLValue];

  if (bOOLValue)
  {
    v8 = [[EvaluationRequest alloc] initWithPolicy:1 options:&__NSDictionary0__struct contextID:0];
    v9 = +[NSXPCConnection currentConnection];
    v10 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v9 effectiveUserIdentifier]);
    [TouchIdPrearmContext prearmForUser:v10 request:v8 reply:replyCopy];
  }

  else
  {
    v8 = [LAErrorHelper missingEntitlementError:@"com.apple.private.CoreAuthentication.SPI"];
    replyCopy[2](replyCopy, 0, v8);
  }
}

- (void)notifyEvent:(int64_t)event options:(id)options reply:(id)reply
{
  optionsCopy = options;
  replyCopy = reply;
  v9 = sub_1000013B8();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v17[0] = 67109378;
    v17[1] = event;
    v18 = 2112;
    v19 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "notifyEvent: %d, options: %@", v17, 0x12u);
  }

  v10 = +[NSXPCConnection currentConnection];
  v11 = [v10 valueForEntitlement:@"com.apple.private.CoreAuthentication.SPI"];
  bOOLValue = [v11 BOOLValue];

  if (bOOLValue)
  {
    if (event == 2)
    {
      goto LABEL_11;
    }

    if (event == 1)
    {
      v16 = +[PushButtonMonitor sharedInstance];
      [v16 axApplePayConfirmation];

      replyCopy[2](replyCopy, 1, 0);
      goto LABEL_15;
    }

    if (event)
    {
      v13 = [LAErrorHelper errorPlatformDoesNotSupportAction:@"Event notification"];
      goto LABEL_10;
    }

    if (!+[DaemonUtils deviceHasTouchIDAndSecureDoublePress])
    {
LABEL_11:
      v14 = [optionsCopy objectForKeyedSubscript:&off_100057F00];
      if (!v14)
      {
        v14 = +[NSDate date];
      }

      v15 = +[PushButtonMonitor sharedInstance];
      [v15 doubleTappedAt:v14];

      replyCopy[2](replyCopy, 1, 0);
      goto LABEL_14;
    }

    v13 = [LAErrorHelper parameterErrorWithMessage:@"LANotifyEventPowerButtonDoublePress has no effect"];
  }

  else
  {
    v13 = [LAErrorHelper missingEntitlementError:@"com.apple.private.CoreAuthentication.SPI"];
  }

LABEL_10:
  v14 = v13;
  replyCopy[2](replyCopy, 0, v13);
LABEL_14:

LABEL_15:
}

- (void)dumpStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = sub_1000013B8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v19 = getpid();
    v20 = 1024;
    v21 = geteuid();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Dumping status information for coreauthd[%u] (user %u)...", buf, 0xEu);
  }

  v5 = +[NSXPCConnection currentConnection];
  v6 = [v5 valueForEntitlement:@"com.apple.private.LocalAuthentication.StatusDump"];
  bOOLValue = [v6 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v15 = [LAErrorHelper missingEntitlementError:@"com.apple.private.LocalAuthentication.StatusDump"];
LABEL_8:
    dumpStatus = v15;
    completionCopy[2](completionCopy, 0, v15);
    goto LABEL_9;
  }

  if ((os_variant_allows_internal_security_policies() & 1) == 0)
  {
    v15 = [LAErrorHelper internalErrorWithMessage:@"Status dump not allowed on production builds"];
    goto LABEL_8;
  }

  v8 = +[ContextManager sharedInstance];
  dumpStatus = [v8 dumpStatus];

  v16[0] = @"environment";
  v10 = +[EnvironmentManager sharedInstance];
  dumpStatus2 = [v10 dumpStatus];
  v17[0] = dumpStatus2;
  v17[1] = dumpStatus;
  v16[1] = @"contexts";
  v16[2] = @"context#";
  v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [dumpStatus count]);
  v17[2] = v12;
  v16[3] = @"process";
  v13 = [NSString stringWithFormat:@"coreauthd[%u]", getpid()];
  v17[3] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:4];

  (completionCopy)[2](completionCopy, v14, 0);
LABEL_9:
}

@end