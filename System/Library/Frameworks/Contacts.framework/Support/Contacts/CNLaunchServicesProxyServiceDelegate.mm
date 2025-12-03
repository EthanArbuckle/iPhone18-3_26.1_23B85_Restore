@interface CNLaunchServicesProxyServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CNLaunchServicesProxyServiceDelegate)init;
- (CNLaunchServicesProxyServiceDelegate)initWithLaunchServices:(id)services;
- (void)applicationForBundleIdentifier:(id)identifier withReply:(id)reply;
- (void)applicationsAvailableForDefaultAppCategory:(id)category withReply:(id)reply;
- (void)applicationsAvailableForHandlingURLScheme:(id)scheme withReply:(id)reply;
- (void)applicationsForUserActivityType:(id)type withReply:(id)reply;
- (void)defaultApplicationForDefaultAppCategory:(id)category withReply:(id)reply;
- (void)openSensitiveURLInBackground:(id)background withOptions:(id)options withReply:(id)reply;
- (void)openUserActivityData:(id)data inApplication:(id)application withReply:(id)reply;
@end

@implementation CNLaunchServicesProxyServiceDelegate

- (CNLaunchServicesProxyServiceDelegate)init
{
  v3 = objc_alloc_init(CNLaunchServices);
  v4 = [(CNLaunchServicesProxyServiceDelegate *)self initWithLaunchServices:v3];

  return v4;
}

- (CNLaunchServicesProxyServiceDelegate)initWithLaunchServices:(id)services
{
  servicesCopy = services;
  v10.receiver = self;
  v10.super_class = CNLaunchServicesProxyServiceDelegate;
  v6 = [(CNLaunchServicesProxyServiceDelegate *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_launchServices, services);
    v8 = v7;
  }

  return v7;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = +[CNEnvironment currentEnvironment];
  entitlementVerifier = [v6 entitlementVerifier];
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  v11 = 0;
  v8 = [entitlementVerifier auditToken:v12 hasBooleanEntitlement:CNEntitlementNameContactsUIFrameworkSPI error:&v11];

  if (v8)
  {
    v9 = +[CNLaunchServicesRemoteAdapter launchServicesAdapterInterface];
    [connectionCopy setExportedInterface:v9];
    [connectionCopy setExportedObject:self];
    [connectionCopy resume];
  }

  return v8;
}

- (void)applicationsForUserActivityType:(id)type withReply:(id)reply
{
  replyCopy = reply;
  typeCopy = type;
  launchServices = [(CNLaunchServicesProxyServiceDelegate *)self launchServices];
  v9 = [launchServices applicationsForUserActivityType:typeCopy];

  (*(reply + 2))(replyCopy, v9, 0);
}

- (void)applicationsAvailableForHandlingURLScheme:(id)scheme withReply:(id)reply
{
  replyCopy = reply;
  schemeCopy = scheme;
  launchServices = [(CNLaunchServicesProxyServiceDelegate *)self launchServices];
  v9 = [launchServices applicationsAvailableForHandlingURLScheme:schemeCopy];

  (*(reply + 2))(replyCopy, v9, 0);
}

- (void)applicationsAvailableForDefaultAppCategory:(id)category withReply:(id)reply
{
  replyCopy = reply;
  integerValue = [category integerValue];
  launchServices = [(CNLaunchServicesProxyServiceDelegate *)self launchServices];
  v8 = [launchServices applicationsAvailableForDefaultAppCategory:integerValue];
  replyCopy[2](replyCopy, v8, 0);
}

- (void)defaultApplicationForDefaultAppCategory:(id)category withReply:(id)reply
{
  replyCopy = reply;
  integerValue = [category integerValue];
  v8 = CNNilToNull;
  launchServices = [(CNLaunchServicesProxyServiceDelegate *)self launchServices];
  v10 = [launchServices defaultApplicationForDefaultAppCategory:integerValue];
  v11 = (*(v8 + 16))(v8, v10);

  replyCopy[2](replyCopy, v11, 0);
}

- (void)applicationForBundleIdentifier:(id)identifier withReply:(id)reply
{
  replyCopy = reply;
  identifierCopy = identifier;
  launchServices = [(CNLaunchServicesProxyServiceDelegate *)self launchServices];
  v9 = [launchServices applicationForBundleIdentifier:identifierCopy];

  (*(reply + 2))(replyCopy, v9, 0);
}

- (void)openUserActivityData:(id)data inApplication:(id)application withReply:(id)reply
{
  replyCopy = reply;
  applicationCopy = application;
  dataCopy = data;
  launchServices = [(CNLaunchServicesProxyServiceDelegate *)self launchServices];
  [launchServices openUserActivityData:dataCopy inApplication:applicationCopy completionHandler:replyCopy];
}

- (void)openSensitiveURLInBackground:(id)background withOptions:(id)options withReply:(id)reply
{
  replyCopy = reply;
  optionsCopy = options;
  backgroundCopy = background;
  launchServices = [(CNLaunchServicesProxyServiceDelegate *)self launchServices];
  [launchServices openSensitiveURLInBackground:backgroundCopy withOptions:optionsCopy completionHandler:replyCopy];
}

@end