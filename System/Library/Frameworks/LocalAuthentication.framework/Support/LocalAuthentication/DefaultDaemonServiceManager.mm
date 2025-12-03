@interface DefaultDaemonServiceManager
- (id)queue;
- (void)bootstrapServiceWithType:(id)type clientConnection:(id)connection completionHandler:(id)handler;
@end

@implementation DefaultDaemonServiceManager

- (id)queue
{
  v2 = +[DaemonUtils sharedInstance];
  serverQueue = [v2 serverQueue];

  return serverQueue;
}

- (void)bootstrapServiceWithType:(id)type clientConnection:(id)connection completionHandler:(id)handler
{
  typeCopy = type;
  connectionCopy = connection;
  handlerCopy = handler;
  v10 = [&off_100057EC0 objectForKeyedSubscript:typeCopy];
  if (v10)
  {
    v11 = [connectionCopy valueForEntitlement:v10];
    bOOLValue = [v11 BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      secureStorage = [LAErrorHelper missingEntitlementError:v10];
      handlerCopy[2](handlerCopy, 0, secureStorage);
      goto LABEL_12;
    }
  }

  if ([typeCopy isEqualToString:@"kLAServiceTypeSecureStorage"])
  {
    v13 = +[SecureStorageProvider sharedInstance];
    secureStorage = [v13 secureStorage];

    v15 = &OBJC_PROTOCOL___LACSecureStorageService;
LABEL_10:
    v20 = [NSXPCInterface interfaceWithProtocol:v15];
    queue = [(DefaultDaemonServiceManager *)self queue];
    v22 = [[LAServiceAdapter alloc] initWithExportedInterface:v20 exportedObject:secureStorage queue:queue];
    (handlerCopy)[2](handlerCopy, v22, 0);

LABEL_11:
    goto LABEL_12;
  }

  if ([typeCopy isEqualToString:@"kLAServiceTypeRatchet"])
  {
    v16 = +[DaemonServiceLocator sharedInstance];
    v17 = [v16 dto];
    secureStorage = [v17 xpcController];

    v15 = &OBJC_PROTOCOL___LACDTOServiceXPC;
    goto LABEL_10;
  }

  if ([typeCopy isEqualToString:@"kLAServiceTypeEnvironment"])
  {
    v18 = +[DaemonServiceLocator sharedInstance];
    environment = [v18 environment];
    secureStorage = [environment xpcController];

    v15 = &OBJC_PROTOCOL___LACEnvironmentServiceXPC;
    goto LABEL_10;
  }

  if ([typeCopy isEqualToString:@"kLAServiceTypeAnalytics"])
  {
    v23 = +[DaemonServiceLocator sharedInstance];
    analytics = [v23 analytics];
    secureStorage = [analytics xpcController];

    v20 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___LACAnalyticsServiceXPC];
    v25 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___LACAnalyticsSessionXPC];
    [v20 setInterface:v25 forSelector:"startSessionForContext:dialogID:bundleID:reply:" argumentIndex:0 ofReply:1];
    [v20 setInterface:v25 forSelector:"connectSessionForContext:reply:" argumentIndex:0 ofReply:1];
    queue2 = [(DefaultDaemonServiceManager *)self queue];
    v27 = [[LAServiceAdapter alloc] initWithExportedInterface:v20 exportedObject:secureStorage queue:queue2];
    (handlerCopy)[2](handlerCopy, v27, 0);

    goto LABEL_11;
  }

  secureStorage = [NSString stringWithFormat:@"Invalid serviceType: %@", typeCopy];
  v28 = [LAErrorHelper internalErrorWithMessage:secureStorage];
  handlerCopy[2](handlerCopy, 0, v28);

LABEL_12:
}

@end