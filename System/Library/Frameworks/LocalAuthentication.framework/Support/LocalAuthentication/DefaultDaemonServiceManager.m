@interface DefaultDaemonServiceManager
- (id)queue;
- (void)bootstrapServiceWithType:(id)a3 clientConnection:(id)a4 completionHandler:(id)a5;
@end

@implementation DefaultDaemonServiceManager

- (id)queue
{
  v2 = +[DaemonUtils sharedInstance];
  v3 = [v2 serverQueue];

  return v3;
}

- (void)bootstrapServiceWithType:(id)a3 clientConnection:(id)a4 completionHandler:(id)a5
{
  v29 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [&off_100057EC0 objectForKeyedSubscript:v29];
  if (v10)
  {
    v11 = [v8 valueForEntitlement:v10];
    v12 = [v11 BOOLValue];

    if ((v12 & 1) == 0)
    {
      v14 = [LAErrorHelper missingEntitlementError:v10];
      v9[2](v9, 0, v14);
      goto LABEL_12;
    }
  }

  if ([v29 isEqualToString:@"kLAServiceTypeSecureStorage"])
  {
    v13 = +[SecureStorageProvider sharedInstance];
    v14 = [v13 secureStorage];

    v15 = &OBJC_PROTOCOL___LACSecureStorageService;
LABEL_10:
    v20 = [NSXPCInterface interfaceWithProtocol:v15];
    v21 = [(DefaultDaemonServiceManager *)self queue];
    v22 = [[LAServiceAdapter alloc] initWithExportedInterface:v20 exportedObject:v14 queue:v21];
    (v9)[2](v9, v22, 0);

LABEL_11:
    goto LABEL_12;
  }

  if ([v29 isEqualToString:@"kLAServiceTypeRatchet"])
  {
    v16 = +[DaemonServiceLocator sharedInstance];
    v17 = [v16 dto];
    v14 = [v17 xpcController];

    v15 = &OBJC_PROTOCOL___LACDTOServiceXPC;
    goto LABEL_10;
  }

  if ([v29 isEqualToString:@"kLAServiceTypeEnvironment"])
  {
    v18 = +[DaemonServiceLocator sharedInstance];
    v19 = [v18 environment];
    v14 = [v19 xpcController];

    v15 = &OBJC_PROTOCOL___LACEnvironmentServiceXPC;
    goto LABEL_10;
  }

  if ([v29 isEqualToString:@"kLAServiceTypeAnalytics"])
  {
    v23 = +[DaemonServiceLocator sharedInstance];
    v24 = [v23 analytics];
    v14 = [v24 xpcController];

    v20 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___LACAnalyticsServiceXPC];
    v25 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___LACAnalyticsSessionXPC];
    [v20 setInterface:v25 forSelector:"startSessionForContext:dialogID:bundleID:reply:" argumentIndex:0 ofReply:1];
    [v20 setInterface:v25 forSelector:"connectSessionForContext:reply:" argumentIndex:0 ofReply:1];
    v26 = [(DefaultDaemonServiceManager *)self queue];
    v27 = [[LAServiceAdapter alloc] initWithExportedInterface:v20 exportedObject:v14 queue:v26];
    (v9)[2](v9, v27, 0);

    goto LABEL_11;
  }

  v14 = [NSString stringWithFormat:@"Invalid serviceType: %@", v29];
  v28 = [LAErrorHelper internalErrorWithMessage:v14];
  v9[2](v9, 0, v28);

LABEL_12:
}

@end