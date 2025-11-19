@interface Daemon
+ (id)sharedInstance;
- (Daemon)init;
- (id)_proxyWithContext:(id)a3 callback:(id)a4 clientId:(unint64_t)a5 request:(id)a6;
- (void)connectToContextWithUUID:(id)a3 callback:(id)a4 clientId:(unint64_t)a5 token:(id)a6 senderAuditTokenData:(id)a7 reply:(id)a8;
- (void)connectToExistingContext:(id)a3 callback:(id)a4 clientId:(unint64_t)a5 flags:(int64_t)a6 reply:(id)a7;
- (void)connectToExistingContext:(id)a3 userId:(unsigned int)a4 connection:(id)a5 checkEntitlementBlock:(id)a6 callback:(id)a7 clientId:(unint64_t)a8 flags:(int64_t)a9 reply:(id)a10;
- (void)createContextWithCompletion:(id)a3;
- (void)dumpStatusWithCompletion:(id)a3;
- (void)notifyEvent:(int64_t)a3 options:(id)a4 reply:(id)a5;
- (void)prearmTouchIdWithReply:(id)a3;
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

- (void)createContextWithCompletion:(id)a3
{
  v4 = a3;
  v5 = getuid();
  v6 = +[NSXPCConnection currentConnection];
  v7 = [[LACWeakBox alloc] initWithReceiver:self];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000F2C0;
  v9[3] = &unk_1000553A0;
  v10 = v4;
  v8 = v4;
  [(Daemon *)self connectToExistingContext:0 userId:v5 connection:v6 checkEntitlementBlock:&stru_100055378 callback:v7 clientId:0 flags:0 reply:v9];
}

- (void)connectToExistingContext:(id)a3 callback:(id)a4 clientId:(unint64_t)a5 flags:(int64_t)a6 reply:(id)a7
{
  v12 = a7;
  v13 = a4;
  v14 = a3;
  +[NSXPCConnection currentConnection];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000FA6C;
  v19 = v18[3] = &unk_100055440;
  v15 = v19;
  v16 = objc_retainBlock(v18);
  v17 = +[NSXPCConnection currentConnection];
  -[Daemon connectToExistingContext:userId:connection:checkEntitlementBlock:callback:clientId:flags:reply:](self, "connectToExistingContext:userId:connection:checkEntitlementBlock:callback:clientId:flags:reply:", v14, [v17 effectiveUserIdentifier], v15, v16, v13, a5, a6, v12);
}

- (void)connectToExistingContext:(id)a3 userId:(unsigned int)a4 connection:(id)a5 checkEntitlementBlock:(id)a6 callback:(id)a7 clientId:(unint64_t)a8 flags:(int64_t)a9 reply:(id)a10
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a10;
  v19 = [v15 processIdentifier];
  objc_initWeak(location, v17);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10000FC58;
  v27[3] = &unk_100055468;
  v29 = v19;
  objc_copyWeak(&v28, location);
  v20 = objc_retainBlock(v27);
  v21 = [v15 auditSessionIdentifier];
  if (v15)
  {
    [v15 auditToken];
  }

  else
  {
    memset(v26, 0, sizeof(v26));
  }

  LOBYTE(v23) = 0;
  LODWORD(v22) = v21;
  -[Daemon _connectToExistingContext:callback:clientId:flags:processId:userId:auditSessionId:auditToken:cApiOrigin:checkEntitlementBlock:invalidationBlock:connectionHash:reply:](self, "_connectToExistingContext:callback:clientId:flags:processId:userId:auditSessionId:auditToken:cApiOrigin:checkEntitlementBlock:invalidationBlock:connectionHash:reply:", v14, v17, a8, a9, v19, a4, v22, v26, v23, v16, v20, [v15 hash], v18);

  objc_destroyWeak(&v28);
  objc_destroyWeak(location);
}

- (void)connectToContextWithUUID:(id)a3 callback:(id)a4 clientId:(unint64_t)a5 token:(id)a6 senderAuditTokenData:(id)a7 reply:(id)a8
{
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a3;
  v19 = +[ContextManager sharedInstance];
  v20 = [v19 contextForUUID:v18];

  if (v20)
  {
    v21 = +[Request requestFromCurrentConnection];
    v22 = [v21 caller];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10000FED4;
    v24[3] = &unk_100055490;
    v29 = v17;
    v24[4] = self;
    v25 = v20;
    v30 = a5;
    v26 = v14;
    v27 = v21;
    v28 = v19;
    v23 = v21;
    [v25 connectFromCaller:v22 token:v15 senderAuditTokenData:v16 reply:v24];
  }

  else
  {
    v23 = [LAErrorHelper errorWithCode:-10 message:@"Context not found."];
    (*(v17 + 2))(v17, 0, 0, v23);
  }
}

- (id)_proxyWithContext:(id)a3 callback:(id)a4 clientId:(unint64_t)a5 request:(id)a6
{
  v22 = a3;
  v8 = a4;
  v9 = a6;
  [v9 caller];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000101D4;
  v10 = v29[3] = &unk_100055440;
  v30 = v10;
  v11 = objc_retainBlock(v29);
  v12 = [v9 identifier];
  v13 = [v10 pid];
  objc_initWeak(&location, v8);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000101E0;
  v24[3] = &unk_1000554B8;
  v26 = v12;
  v27 = v13;
  objc_copyWeak(&v25, &location);
  v14 = objc_retainBlock(v24);
  v15 = [ContextProxy alloc];
  v16 = [v10 pid];
  v17 = [v10 euid];
  v18 = [v10 asid];
  if (v10)
  {
    [v10 auditToken];
  }

  else
  {
    memset(v23, 0, sizeof(v23));
  }

  v19 = [(ContextProxy *)v15 initWithContext:v22 processId:v16 userId:v17 auditSessionId:v18 auditToken:v23 cApiOrigin:0 checkEntitlementBlock:v11 invalidationBlock:v14 callback:v8 clientId:a5];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  return v19;
}

- (void)prearmTouchIdWithReply:(id)a3
{
  v3 = a3;
  v4 = sub_1000013B8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "prearmTouchIdWithReply", v11, 2u);
  }

  v5 = +[NSXPCConnection currentConnection];
  v6 = [v5 valueForEntitlement:@"com.apple.private.CoreAuthentication.SPI"];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    v8 = [[EvaluationRequest alloc] initWithPolicy:1 options:&__NSDictionary0__struct contextID:0];
    v9 = +[NSXPCConnection currentConnection];
    v10 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v9 effectiveUserIdentifier]);
    [TouchIdPrearmContext prearmForUser:v10 request:v8 reply:v3];
  }

  else
  {
    v8 = [LAErrorHelper missingEntitlementError:@"com.apple.private.CoreAuthentication.SPI"];
    v3[2](v3, 0, v8);
  }
}

- (void)notifyEvent:(int64_t)a3 options:(id)a4 reply:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = sub_1000013B8();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v17[0] = 67109378;
    v17[1] = a3;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "notifyEvent: %d, options: %@", v17, 0x12u);
  }

  v10 = +[NSXPCConnection currentConnection];
  v11 = [v10 valueForEntitlement:@"com.apple.private.CoreAuthentication.SPI"];
  v12 = [v11 BOOLValue];

  if (v12)
  {
    if (a3 == 2)
    {
      goto LABEL_11;
    }

    if (a3 == 1)
    {
      v16 = +[PushButtonMonitor sharedInstance];
      [v16 axApplePayConfirmation];

      v8[2](v8, 1, 0);
      goto LABEL_15;
    }

    if (a3)
    {
      v13 = [LAErrorHelper errorPlatformDoesNotSupportAction:@"Event notification"];
      goto LABEL_10;
    }

    if (!+[DaemonUtils deviceHasTouchIDAndSecureDoublePress])
    {
LABEL_11:
      v14 = [v7 objectForKeyedSubscript:&off_100057F00];
      if (!v14)
      {
        v14 = +[NSDate date];
      }

      v15 = +[PushButtonMonitor sharedInstance];
      [v15 doubleTappedAt:v14];

      v8[2](v8, 1, 0);
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
  v8[2](v8, 0, v13);
LABEL_14:

LABEL_15:
}

- (void)dumpStatusWithCompletion:(id)a3
{
  v3 = a3;
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
  v7 = [v6 BOOLValue];

  if ((v7 & 1) == 0)
  {
    v15 = [LAErrorHelper missingEntitlementError:@"com.apple.private.LocalAuthentication.StatusDump"];
LABEL_8:
    v9 = v15;
    v3[2](v3, 0, v15);
    goto LABEL_9;
  }

  if ((os_variant_allows_internal_security_policies() & 1) == 0)
  {
    v15 = [LAErrorHelper internalErrorWithMessage:@"Status dump not allowed on production builds"];
    goto LABEL_8;
  }

  v8 = +[ContextManager sharedInstance];
  v9 = [v8 dumpStatus];

  v16[0] = @"environment";
  v10 = +[EnvironmentManager sharedInstance];
  v11 = [v10 dumpStatus];
  v17[0] = v11;
  v17[1] = v9;
  v16[1] = @"contexts";
  v16[2] = @"context#";
  v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 count]);
  v17[2] = v12;
  v16[3] = @"process";
  v13 = [NSString stringWithFormat:@"coreauthd[%u]", getpid()];
  v17[3] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:4];

  (v3)[2](v3, v14, 0);
LABEL_9:
}

@end