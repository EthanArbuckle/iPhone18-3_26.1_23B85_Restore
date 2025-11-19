@interface Context
+ (void)managedContextWithExternalizedContext:(id)a3 processId:(int)a4 userId:(unsigned int)a5 auditSessionId:(int)a6 flags:(int64_t)a7 checkEntitlementBlock:(id)a8 reply:(id)a9;
- (BOOL)_hasProtectedOptions:(id)a3;
- (NSData)externalizedContext;
- (id)_updateOptionsWithServerProperties:(id)a3 policy:(int64_t)a4;
- (void)allowTransferFromCaller:(id)a3 receiverAuditTokenData:(id)a4 reply:(id)a5;
- (void)connectFromCaller:(id)a3 token:(id)a4 senderAuditTokenData:(id)a5 reply:(id)a6;
- (void)contextWasExternalized:(id)a3;
- (void)dealloc;
- (void)evaluateRequest:(id)a3 uiDelegate:(id)a4 originator:(id)a5 reply:(id)a6;
- (void)externalizedContextWithReply:(id)a3;
- (void)failProcessedEvent:(int64_t)a3 failureError:(id)a4 reply:(id)a5;
- (void)retryEvent:(int64_t)a3 originator:(id)a4 reply:(id)a5;
- (void)serverPropertyForOption:(int64_t)a3 reply:(id)a4;
- (void)setCredential:(id)a3 forProcessedEvent:(int64_t)a4 credentialType:(int64_t)a5 reply:(id)a6;
- (void)setCredential:(id)a3 type:(int64_t)a4 options:(id)a5 originator:(id)a6 reply:(id)a7;
- (void)setServerPropertyForOption:(int64_t)a3 value:(id)a4 reply:(id)a5;
- (void)tokenForTransferFromCaller:(id)a3 reply:(id)a4;
@end

@implementation Context

- (NSData)externalizedContext
{
  v2 = [(ContextPlugin *)self->_plugin cachedExternalizedContext];
  v3 = [v2 externalizedContext];

  return v3;
}

- (void)dealloc
{
  v3 = LALogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ deallocated", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = Context;
  [(Context *)&v4 dealloc];
}

+ (void)managedContextWithExternalizedContext:(id)a3 processId:(int)a4 userId:(unsigned int)a5 auditSessionId:(int)a6 flags:(int64_t)a7 checkEntitlementBlock:(id)a8 reply:(id)a9
{
  v14 = a3;
  v15 = a8;
  v16 = a9;
  v17 = +[ContextManager sharedInstance];
  v28 = 0;
  v18 = [v17 loadModule:1 error:&v28];
  v19 = v28;

  if (v18)
  {
    if ((a7 & 1) != 0 && (v15[2](v15, @"com.apple.private.LocalAuthentication.NonDisposableContextPool") & 1) == 0)
    {
      v20 = [LACError missingEntitlementError:@"com.apple.private.LocalAuthentication.NonDisposableContextPool"];
      v16[2](v16, 0, v20);
    }

    else
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100011470;
      v21[3] = &unk_100055548;
      v24 = v16;
      v25 = a4;
      v26 = a5;
      v27 = a6;
      v22 = v14;
      v23 = v18;
      [v23 contextPluginWithExternalizedContext:v22 flags:a7 reply:v21];
    }
  }

  else
  {
    v16[2](v16, 0, v19);
  }
}

- (BOOL)_hasProtectedOptions:(id)a3
{
  v3 = a3;
  v4 = [NSMutableSet setWithObjects:&off_100057F18, &off_100057F30, &off_100057F48, &off_100057F60, &off_100057F78, 0];
  v5 = [v3 allKeys];

  v6 = [NSSet setWithArray:v5];

  [v4 intersectSet:v6];
  v7 = [v4 count] != 0;

  return v7;
}

- (void)evaluateRequest:(id)a3 uiDelegate:(id)a4 originator:(id)a5 reply:(id)a6
{
  v25 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v25 policy];
  v14 = [v25 options];
  v15 = [(Context *)self _updateOptionsWithServerProperties:v14 policy:v13];
  [v25 updateOptions:v15];
  if ((-[Context _hasProtectedUiDelegate:policy:options:](self, "_hasProtectedUiDelegate:policy:options:", v10, v13, v15) || -[Context _hasProtectedOptions:](self, "_hasProtectedOptions:", v15)) && ([v11 checkEntitlement:@"com.apple.private.CoreAuthentication.SPI"] & 1) == 0)
  {
    v17 = LAErrorHelper;
    v18 = @"com.apple.private.CoreAuthentication.SPI";
  }

  else
  {
    if (v13 != 1010 || ([v11 checkEntitlement:@"com.apple.private.LocalAuthentication.SoftwareUpdate"] & 1) != 0)
    {
      v16 = [v15 objectForKeyedSubscript:&off_100057F90];
      if (v16 && ![v11 checkEntitlement:@"com.apple.private.LocalAuthentication.ExtractCredential"])
      {
        v19 = [v25 acl];

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
        v23 = [v11 checkEntitlement:@"com.apple.private.LocalAuthentication.SecureUIRecording"];

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

      [(ContextPlugin *)self->_plugin evaluateRequest:v25 uiDelegate:v10 originator:v11 reply:v12];
      goto LABEL_19;
    }

    v17 = LAErrorHelper;
    v18 = @"com.apple.private.LocalAuthentication.SoftwareUpdate";
  }

LABEL_18:
  v24 = [v17 missingEntitlementError:v18];
  v12[2](v12, 0, v24);

LABEL_19:
}

- (void)setCredential:(id)a3 forProcessedEvent:(int64_t)a4 credentialType:(int64_t)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = +[AuthenticationManager sharedInstance];
  v13 = [(Context *)self plugin];
  v14 = [v12 findMechanismForEvent:a4 mustBeRunning:1 plugin:v13];

  if (v14)
  {
    if (v10)
    {
      [v14 setCredential:v10 credentialType:a5 reply:v11];
    }

    else
    {
      plugin = self->_plugin;
      v19 = [v14 policy];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100011D00;
      v20[3] = &unk_1000551B0;
      v21 = v14;
      v22 = v11;
      [(ContextPlugin *)plugin checkCredentialSatisfied:a5 policy:v19 reply:v20];
    }
  }

  else if (v10)
  {
    v15 = [NSNumber numberWithInteger:a4];
    v16 = [NSString stringWithFormat:@"No running mechanism for event %@.", v15];
    v17 = [LAErrorHelper errorWithCode:-1008 message:v16];
    (*(v11 + 2))(v11, 0, v17);
  }

  else
  {
    (*(v11 + 2))(v11, 1, 0);
  }
}

- (void)setCredential:(id)a3 type:(int64_t)a4 options:(id)a5 originator:(id)a6 reply:(id)a7
{
  plugin = self->_plugin;
  v13 = a7;
  v14 = a6;
  v15 = a3;
  v16 = [(Context *)self updateOptionsWithServerProperties:a5];
  [(ContextPlugin *)plugin setCredential:v15 type:a4 options:v16 originator:v14 reply:v13];
}

- (id)_updateOptionsWithServerProperties:(id)a3 policy:(int64_t)a4
{
  v6 = a3;
  v7 = [NSMutableDictionary dictionaryWithDictionary:v6];
  v8 = [(NSMutableDictionary *)self->_serverProperties copy];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100012150;
  v19[3] = &unk_100055570;
  v9 = v6;
  v20 = v9;
  v10 = v7;
  v21 = v10;
  v22 = self;
  [v8 enumerateKeysAndObjectsUsingBlock:v19];

  if (a4 && LACPolicyLocationBasedDeviceOwnerAuthenticationWithBiometricRatchet != a4)
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
    v18 = [v17 BOOLValue];

    if ((v18 & 1) == 0)
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

- (void)serverPropertyForOption:(int64_t)a3 reply:(id)a4
{
  v6 = a4;
  v7 = sub_1000013FC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109378;
    v11[1] = a3;
    v12 = 2114;
    v13 = self;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "querying option %d on %{public}@", v11, 0x12u);
  }

  serverProperties = self->_serverProperties;
  v9 = [NSNumber numberWithInteger:a3];
  v10 = [(NSMutableDictionary *)serverProperties objectForKeyedSubscript:v9];

  v6[2](v6, v10, 0);
}

- (void)setServerPropertyForOption:(int64_t)a3 value:(id)a4 reply:(id)a5
{
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v11 = sub_1000013FC();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (isKindOfClass)
  {
    if (v12)
    {
      LODWORD(v17) = 67109634;
      HIDWORD(v17) = a3;
      *v18 = 2114;
      *&v18[2] = self;
      *&v18[10] = 2114;
      *&v18[12] = v8;
      v13 = "setting option %d on %{public}@ to %{public}@";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v13, &v17, 0x1Cu);
    }
  }

  else if (v12)
  {
    LODWORD(v17) = 67109634;
    HIDWORD(v17) = a3;
    *v18 = 2114;
    *&v18[2] = self;
    *&v18[10] = 2112;
    *&v18[12] = v8;
    v13 = "setting option %d on %{public}@ to %@";
    goto LABEL_6;
  }

  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    serverProperties = self->_serverProperties;
    v15 = [NSNumber numberWithInteger:a3];
    [(NSMutableDictionary *)serverProperties setObject:v8 forKey:v15];
  }

  else
  {
    v14 = self->_serverProperties;
    v15 = [NSNumber numberWithInteger:a3, v17, *v18, *&v18[16]];
    [(NSMutableDictionary *)v14 removeObjectForKey:v15];
  }

  v9[2](v9, 1, 0);
}

- (void)failProcessedEvent:(int64_t)a3 failureError:(id)a4 reply:(id)a5
{
  v16 = a4;
  v8 = a5;
  v9 = +[AuthenticationManager sharedInstance];
  v10 = [(Context *)self plugin];
  v11 = [v9 findMechanismForEvent:a3 mustBeRunning:0 plugin:v10];

  if (([v11 isRunning] & 1) == 0 && !objc_msgSend(v11, "isRestartable"))
  {
    v14 = [LAErrorHelper errorWithCode:-1008 message:@"Can't stop event, because its mechanism is not running."];
    v8[2](v8, 0, v14);

    goto LABEL_13;
  }

  if ([v11 eventIdentifier] != 7)
  {
    goto LABEL_9;
  }

  v12 = [v11 request];
  if (([v12 isPurposeApplePay] & 1) == 0)
  {

LABEL_9:
    if (v16)
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
  v8[2](v8, 1, 0);
LABEL_13:
}

- (void)retryEvent:(int64_t)a3 originator:(id)a4 reply:(id)a5
{
  v7 = a5;
  v8 = +[AuthenticationManager sharedInstance];
  v9 = [(Context *)self plugin];
  v11 = [v8 findMechanismForEvent:a3 mustBeRunning:1 plugin:v9];

  if (v11)
  {
    [v11 restartWithEventIdentifier:a3 lastAttempt:0];
    v7[2](v7, 1, 0);
  }

  else
  {
    v10 = [LAErrorHelper errorWithCode:-1008 message:@"Can't retry event, because no suitable mechanism is running."];
    v7[2](v7, 0, v10);

    v7 = v10;
  }
}

- (void)externalizedContextWithReply:(id)a3
{
  v4 = a3;
  v5 = [(ContextPlugin *)self->_plugin cachedExternalizedContext];

  if (v5)
  {
    v6 = [(ContextPlugin *)self->_plugin cachedExternalizedContext];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100012ACC;
    v8[3] = &unk_100055598;
    v9 = v4;
    [v6 externalizedContextWithReply:v8];
  }

  else
  {
    v7 = [LAErrorHelper internalErrorWithMessage:@"No externalized context"];
    (*(v4 + 2))(v4, 0, v7);
  }
}

- (void)contextWasExternalized:(id)a3
{
  v4 = a3;
  v5 = +[ContextManager sharedInstance];
  [v5 registerExternalizedContext:v4 forContext:self];
}

- (void)allowTransferFromCaller:(id)a3 receiverAuditTokenData:(id)a4 reply:(id)a5
{
  p_allowedTransfers = &self->_allowedTransfers;
  allowedTransfers = self->_allowedTransfers;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[AllowedTransfer alloc] initWithReceiverAuditTokenData:v10 sender:v11];

  [(NSMutableArray *)allowedTransfers addObject:v12];
  v13 = sub_1000013FC();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_100022DFC(p_allowedTransfers, v13, v14, v15, v16, v17, v18, v19);
  }

  v9[2](v9, 1, 0);
}

- (void)tokenForTransferFromCaller:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = SecRandomCopyBytes(kSecRandomDefault, 0x20uLL, bytes);
  if (v8)
  {
    v9 = [NSString stringWithFormat:@"Failed generating token: %x (err: %d)", v8, *__error()];
    v10 = [LAErrorHelper internalErrorWithMessage:v9];
    v7[2](v7, 0, v10);

    v7 = v10;
  }

  else
  {
    v9 = [NSData dataWithBytes:bytes length:32];
    allowedTransfers = self->_allowedTransfers;
    p_allowedTransfers = &self->_allowedTransfers;
    v13 = [[AllowedTransfer alloc] initWithServerToken:v9 sender:v6];
    [(NSMutableArray *)allowedTransfers addObject:v13];

    v14 = sub_1000013FC();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_100022DFC(p_allowedTransfers, v14, v15, v16, v17, v18, v19, v20);
    }

    (v7)[2](v7, v9, 0);
  }
}

- (void)connectFromCaller:(id)a3 token:(id)a4 senderAuditTokenData:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = sub_1000013FC();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *v46 = self;
    *&v46[8] = 1024;
    *v47 = [v10 pid];
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "connecting to %{public}@ from %d", buf, 0x12u);
  }

  v15 = sub_1000013FC();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v34 = [v12 hash];
    v35 = [v10 auditTokenData];
    v36 = [v35 hash];
    v37 = [v11 hash];
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
    v21 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"PID %d is not allowed to connect to this context.", [v10 pid]);
    v33 = [LAErrorHelper errorWithCode:-1007 message:v21];
    v13[2](v13, 0, v33);

    goto LABEL_20;
  }

  v20 = v19;
  v39 = v13;
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
      if ([v24 isReceiver:v10 allowedToConnectWithServerToken:v11 senderAuditTokenData:v12])
      {
        v25 = v24;

        v21 = v25;
      }
    }

    v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v40 objects:v44 count:16];
  }

  while (v20);

  v13 = v39;
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